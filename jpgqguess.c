//--------------------------------------------------------------------------
// Program to pull the information out of various types of EXIF digital 
// camera files and show it in a reasonably consistent way
//
// This module handles guessing of jpeg quality from quantization table
//
// Using code from Andy Spiegl
//--------------------------------------------------------------------------
#include "jhead.h"

// for the DQT marker -- start --
// Sample quantization tables from JPEG spec --- only needed for
// guesstimate of quality factor.  Note these are in zigzag order.

static int std_luminance_quant_tbl[64] = {
    16,  11,  12,  14,  12,  10,  16,  14,
    13,  14,  18,  17,  16,  19,  24,  40,
    26,  24,  22,  22,  24,  49,  35,  37,
    29,  40,  58,  51,  61,  60,  57,  51,
    56,  55,  64,  72,  92,  78,  64,  68,
    87,  69,  55,  56,  80, 109,  81,  87,
    95,  98, 103, 104, 103,  62,  77, 113,
   121, 112, 100, 120,  92, 101, 103,  99
};

static int std_chrominance_quant_tbl[64] = {
    17,  18,  18,  24,  21,  24,  47,  26,
    26,  47,  99,  66,  56,  66,  99,  99,
    99,  99,  99,  99,  99,  99,  99,  99,
    99,  99,  99,  99,  99,  99,  99,  99,
    99,  99,  99,  99,  99,  99,  99,  99,
    99,  99,  99,  99,  99,  99,  99,  99,
    99,  99,  99,  99,  99,  99,  99,  99,
    99,  99,  99,  99,  99,  99,  99,  99
};

static int *deftabs[2] =
    { std_luminance_quant_tbl, std_chrominance_quant_tbl };

// jpeg_zigzag_order[i] is the zigzag-order position of the i'th element
// of a DCT block read in natural order (left to right, top to bottom).

static int jpeg_zigzag_order[64] = {
     0,  1,  5,  6, 14, 15, 27, 28,
     2,  4,  7, 13, 16, 26, 29, 42,
     3,  8, 12, 17, 25, 30, 41, 43,
     9, 11, 18, 24, 31, 40, 44, 53,
    10, 19, 23, 32, 39, 45, 52, 54,
    20, 22, 33, 38, 46, 51, 55, 60,
    21, 34, 37, 47, 50, 56, 59, 61,
    35, 36, 48, 49, 57, 58, 62, 63
};
// for the DQT marker -- end --





//--------------------------------------------------------------------------
// Process an DQT (Define Quantization Table) marker.
//
// Code mostly "stolen" from jpegdump:
//  Copyright (c) 1992 Handmade Software, Inc.
//  by Allan N. Hessenflow
//
// We want to print out the "Approximate quality factor"
//--------------------------------------------------------------------------
//
// The numbers printed in the `Approximate quality factor' line are as follows:
//  Quality: an estimate of the quality factor used when cjpeg was run.
//    Scaling factor (scale): mean ratio between quantization table entries
//    and JPEG sample table entries, times 100.
//  Variance (var): squared standard deviation of the above ratio.
//    If this is larger than about 2, then the table is not a simple
//    multiple of the standard's sample table, so the file was NOT
//    generated by cjpeg and the quality estimate is dubious.
//--------------------------------------------------------------------------
void process_DQT (const uchar * Data, int length)
{
    int a;
    int c;
    int tableindex, coefindex, row, col;
    unsigned int table[64];
    int *reftable = NULL;
    double cumsf = 0.0, cumsf2 = 0.0;
    int allones = 1;
    
    a=2; // first two bytes is length
    while (a<length)
    {
        c = Data[a++];
        tableindex = c & 0x0f;
        if (ShowTags>1){
            printf("DQT:  table %d precision %d\n", tableindex, (c>>4) ? 16 : 8);
        }
        if (tableindex < 2){
            reftable = deftabs[tableindex];
        }

        // Read in the table, compute statistics relative to reference table 
        if (a+64 > length) {
            ErrNonfatal("DQT section too short",0,0);
            return;
        }
        for (coefindex = 0; coefindex < 64; coefindex++) {
            unsigned int val;
            if (c>>4) {
                register unsigned int temp;
                //sink值在loop中怎么验证？，sink值在loop中怎么一致性测试？（随时记住终态），a的值是否受不可信输入的影响
                temp=(unsigned int) (Data[a++]); //CVE-2020-6624 //SLIVER_SINK
                temp *= 256;
                val=(unsigned int) Data[a++] + temp;
            } else {
                val=(unsigned int) Data[a++];
            }
            table[coefindex] = val;
            if (reftable) {
                double x;
                // scaling factor in percent 
                x = 100.0 * (double)val / (double)reftable[coefindex];
                cumsf += x;
                cumsf2 += x * x;
                // separate check for all-ones table (Q 100)
                if (val != 1) allones = 0;
            }
        }
        // If requested, print table in normal array order 
        if (ShowTags>2){
            for (row=0; row<8; row++) {
                printf("    ");
                for (col=0; col<8; col++) {
                    printf("%5u ", table[jpeg_zigzag_order[row*8+col]]);
                }
                printf("\n");
            }
        }
        // Print summary stats 
        if (reftable) { // terse output includes quality 
            double qual, var;
            cumsf /= 64.0;    // mean scale factor 
            cumsf2 /= 64.0;
            var = cumsf2 - (cumsf * cumsf); // variance 
            if (allones){      // special case for all-ones table 
                qual = 100.0;
            }else if (cumsf <= 100.0){
                qual = (200.0 - cumsf) / 2.0;
            }else{
                qual = 5000.0 / cumsf;
            }
            if (ShowTags>1)  printf("  ");

            if (ShowTags){
                printf("Approximate quality factor for qtable %d: %.0f (scale %.2f, var %.2f)\n",
                     tableindex, qual, cumsf, var);
            }
            if (tableindex == 0){
                ImageInfo.QualityGuess = (int)(qual+0.5);
            }
        }
    }
}


//--------------------------------------------------------------------------
// Process an DHT (Define Huffmann Tables) marker.
//
// Code mostly "stolen" from jpegdump:
//  Copyright (c) 1992 Handmade Software, Inc.
//  by Allan N. Hessenflow
//--------------------------------------------------------------------------
void process_DHT (const uchar * Data, int length)
{
    int a, i;
    int c, c2;
    unsigned char huff[16];
    if (ShowTags>1){
        printf("DHT (length %d bytes)\n", length);
    }

    a=2; // first two bytes is length
    while (a<length)
    {
        c = Data[a++];
        if (ShowTags>1){
            printf("  table %d\n", c);
        }
        if (a+16 > length){
            tooshort:
            ErrFatal("Huff table too short");
        }

        for (i=0; i<16; i++) {
            huff[i]=(unsigned char) Data[a++];
        }
        for (i=0; i<16; i++) {
            if (ShowTags>2){
                printf("  bits %2d (codes=%3u) ", i+1, (unsigned int) huff[i]);
            }
            if (a+huff[i] > length){
                goto tooshort;
            }
            while (huff[i]--) {
                c2 = Data[a++];
                if (ShowTags>2){
                    printf("  $%02x ", c2);
                }
            }
            if (ShowTags>2){
                printf("\n");
            }
        }
    }
}


