; ModuleID = 'exif.c'
source_filename = "exif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageInfo_t = type { [4097 x i8], i64, %struct.anon, i32, [32 x i8], [40 x i8], [20 x i8], i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [16000 x i8], i32, i32, i32, i32, i8, i32, [10 x i32], i32, i32, [31 x i8], [31 x i8], [20 x i8], i32 }
%struct.anon = type { i8, i8, i16, i16 }
%struct.TagTable_t = type { i16, i8* }
%struct.Section_t = type { i8*, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@MotorolaOrder = dso_local global i32 0, align 4, !dbg !0
@NumOrientations = dso_local global i32 0, align 4, !dbg !42
@BytesPerFormat = dso_local constant [13 x i32] [i32 0, i32 1, i32 1, i32 2, i32 4, i32 8, i32 1, i32 1, i32 2, i32 4, i32 8, i32 4, i32 8], align 16, !dbg !44
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%hd\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%u/%u\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Unknown format %d:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Illegal format code %d in Exif header\00", align 1
@FocalplaneXRes = internal global double 0.000000e+00, align 8, !dbg !62
@FocalplaneUnits = internal global double 0.000000e+00, align 8, !dbg !64
@ExifImageWidth = internal global i32 0, align 4, !dbg !66
@OrientationPtr = internal global [2 x i8*] zeroinitializer, align 16, !dbg !68
@OrientationNumFormat = internal global [2 x i32] zeroinitializer, align 4, !dbg !73
@ShowTags = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Exif header %u bytes long\0A\00", align 1
@process_EXIF.ExifHeader = internal global [7 x i8] c"Exif\00\00\00", align 1, !dbg !50
@.str.12 = private unnamed_addr constant [22 x i8] c"Incorrect Exif header\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"II\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Exif section in Intel order\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"MM\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Exif section in Motorola order\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Invalid Exif alignment marker.\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Invalid Exif start (1)\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"invalid offset for first Exif IFD value\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Suspicious offset of first Exif IFD value\00", align 1
@DirWithThumbnailPtrs = internal global i8* null, align 8, !dbg !60
@ImageInfo = external dso_local global %struct.ImageInfo_t, align 8
@DumpExifMap = external dso_local global i32, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"Map: %05d- End of exif\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Map: %05d \00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Exif\00\00II\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Could not allocate memory\00", align 1
@OrientTab = internal global [9 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.260, i32 0, i32 0)], align 16, !dbg !87
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"%d%*c%d%*c%d%*c%d:%d:%d\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"File name    : %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"File size    : %d bytes\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"File date    : %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Camera make  : %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Camera model : %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Date/Time    : %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"Resolution   : %d x %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Orientation  : %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Color/bw     : Black and white\0A\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"Flash used   : Yes\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c" (Strobe light not detected)\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c" (Strobe light detected) \00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c" (manual)\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c" (manual, return light not detected)\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c" (manual, return light  detected)\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c" (auto)\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c" (auto, return light not detected)\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c" (auto, return light detected)\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c" (red eye reduction mode)\00", align 1
@.str.48 = private unnamed_addr constant [52 x i8] c" (red eye reduction mode return light not detected)\00", align 1
@.str.49 = private unnamed_addr constant [49 x i8] c" (red eye reduction mode return light  detected)\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c" (manual, red eye reduction mode)\00", align 1
@.str.51 = private unnamed_addr constant [61 x i8] c" (manual, red eye reduction mode, return light not detected)\00", align 1
@.str.52 = private unnamed_addr constant [49 x i8] c" (red eye reduction mode, return light detected)\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c" (auto, red eye reduction mode)\00", align 1
@.str.54 = private unnamed_addr constant [59 x i8] c" (auto, red eye reduction mode, return light not detected)\00", align 1
@.str.55 = private unnamed_addr constant [55 x i8] c" (auto, red eye reduction mode, return light detected)\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"Flash used   : No\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"Focal length : %4.1fmm\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"  (35mm equivalent: %dmm)\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"Digital Zoom : %1.3fx\0A\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"CCD width    : %4.2fmm\0A\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"Exposure time: %6.4f s \00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"Exposure time: %5.3f s \00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c" (1/%d)\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"Aperture     : f/%3.1f\0A\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"Focus dist.  : Infinite\0A\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"Focus dist.  : %4.2fm\0A\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"ISO equiv.   : %2d\0A\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"Exposure bias: %4.2f\0A\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"Whitebalance : Manual\0A\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"Whitebalance : Auto\0A\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"Light Source : Daylight\0A\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"Light Source : Fluorescent\0A\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"Light Source : Incandescent\0A\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"Light Source : Flash\0A\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"Light Source : Fine weather\0A\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"Light Source : Shade\0A\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"Metering Mode: \00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"average\0A\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"center weight\0A\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"spot\0A\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"multi spot\0A\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"pattern\0A\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"partial\0A\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"other\0A\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"unknown (%d)\0A\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c"Exposure     : Manual\0A\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"Exposure     : program (auto)\0A\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"Exposure     : aperture priority (semi-auto)\0A\00", align 1
@.str.89 = private unnamed_addr constant [45 x i8] c"Exposure     : shutter priority (semi-auto)\0A\00", align 1
@.str.90 = private unnamed_addr constant [64 x i8] c"Exposure     : Creative Program (based towards depth of field)\0A\00", align 1
@.str.91 = private unnamed_addr constant [66 x i8] c"Exposure     : Action program (based towards fast shutter speed)\0A\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"Exposure     : Portrait Mode\0A\00", align 1
@.str.93 = private unnamed_addr constant [31 x i8] c"Exposure     : LandscapeMode \0A\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"Exposure Mode: Manual\0A\00", align 1
@.str.95 = private unnamed_addr constant [32 x i8] c"Exposure Mode: Auto bracketing\0A\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"Focus range  : \00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"distant\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"Jpeg process : Unknown\0A\00", align 1
@ProcessTable = internal constant [13 x %struct.TagTable_t] [%struct.TagTable_t { i16 192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.261, i32 0, i32 0) }, %struct.TagTable_t { i16 193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i32 0, i32 0) }, %struct.TagTable_t { i16 194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.263, i32 0, i32 0) }, %struct.TagTable_t { i16 195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.264, i32 0, i32 0) }, %struct.TagTable_t { i16 197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.265, i32 0, i32 0) }, %struct.TagTable_t { i16 198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.266, i32 0, i32 0) }, %struct.TagTable_t { i16 199, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.267, i32 0, i32 0) }, %struct.TagTable_t { i16 201, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.268, i32 0, i32 0) }, %struct.TagTable_t { i16 202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.269, i32 0, i32 0) }, %struct.TagTable_t { i16 203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.270, i32 0, i32 0) }, %struct.TagTable_t { i16 205, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.271, i32 0, i32 0) }, %struct.TagTable_t { i16 206, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.272, i32 0, i32 0) }, %struct.TagTable_t { i16 207, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.273, i32 0, i32 0) }], align 16, !dbg !94
@.str.101 = private unnamed_addr constant [19 x i8] c"Jpeg process : %s\0A\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"GPS Latitude : %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"GPS Longitude: %s\0A\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"GPS Altitude : %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"JPEG Quality : %d\0A\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"Comment      : \00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"\0AComment      : \00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"%.*ls\0A\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c" %dx%d\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c" (%1.1f)\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c" f/%3.1f\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c" f(35)=%dmm\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c" (flash)\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c" (bw)\00", align 1
@.str.116 = private unnamed_addr constant [62 x i8] c"Maximum Exif directory nesting exceeded (corrupt Exif header)\00", align 1
@.str.117 = private unnamed_addr constant [47 x i8] c"Illegally sized Exif subdirectory (%d entries)\00", align 1
@.str.118 = private unnamed_addr constant [27 x i8] c"Map: %05u-%05u: Directory\0A\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"(dir has %d entries)\0A\00", align 1
@.str.120 = private unnamed_addr constant [46 x i8] c"Illegal number format %d for tag %04x in Exif\00", align 1
@.str.121 = private unnamed_addr constant [44 x i8] c"Too many components %d for tag %04x in Exif\00", align 1
@.str.122 = private unnamed_addr constant [43 x i8] c"Illegal value pointer for tag %04x in Exif\00", align 1
@.str.123 = private unnamed_addr constant [37 x i8] c"Map: %05u-%05u:   Data for tag %04x\0A\00", align 1
@.str.124 = private unnamed_addr constant [19 x i8] c"%s    Maker note: \00", align 1
@.str.125 = private unnamed_addr constant [32 x i8] c"%s    Unknown Tag %04x Value = \00", align 1
@TagTable = internal constant [106 x %struct.TagTable_t] [%struct.TagTable_t { i16 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i32 0, i32 0) }, %struct.TagTable_t { i16 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.147, i32 0, i32 0) }, %struct.TagTable_t { i16 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i32 0, i32 0) }, %struct.TagTable_t { i16 257, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i32 0, i32 0) }, %struct.TagTable_t { i16 258, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i32 0, i32 0) }, %struct.TagTable_t { i16 259, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0) }, %struct.TagTable_t { i16 262, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.152, i32 0, i32 0) }, %struct.TagTable_t { i16 266, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i32 0, i32 0) }, %struct.TagTable_t { i16 269, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0) }, %struct.TagTable_t { i16 270, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.155, i32 0, i32 0) }, %struct.TagTable_t { i16 271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0) }, %struct.TagTable_t { i16 272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.157, i32 0, i32 0) }, %struct.TagTable_t { i16 273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.158, i32 0, i32 0) }, %struct.TagTable_t { i16 274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0) }, %struct.TagTable_t { i16 277, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0) }, %struct.TagTable_t { i16 278, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0) }, %struct.TagTable_t { i16 279, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.162, i32 0, i32 0) }, %struct.TagTable_t { i16 282, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i32 0, i32 0) }, %struct.TagTable_t { i16 283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.164, i32 0, i32 0) }, %struct.TagTable_t { i16 284, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.165, i32 0, i32 0) }, %struct.TagTable_t { i16 296, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.166, i32 0, i32 0) }, %struct.TagTable_t { i16 301, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.167, i32 0, i32 0) }, %struct.TagTable_t { i16 305, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0) }, %struct.TagTable_t { i16 306, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.169, i32 0, i32 0) }, %struct.TagTable_t { i16 315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i32 0, i32 0) }, %struct.TagTable_t { i16 318, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i32 0, i32 0) }, %struct.TagTable_t { i16 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.172, i32 0, i32 0) }, %struct.TagTable_t { i16 342, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.173, i32 0, i32 0) }, %struct.TagTable_t { i16 512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.174, i32 0, i32 0) }, %struct.TagTable_t { i16 513, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.175, i32 0, i32 0) }, %struct.TagTable_t { i16 514, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.176, i32 0, i32 0) }, %struct.TagTable_t { i16 529, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.177, i32 0, i32 0) }, %struct.TagTable_t { i16 530, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.178, i32 0, i32 0) }, %struct.TagTable_t { i16 531, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.179, i32 0, i32 0) }, %struct.TagTable_t { i16 532, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.180, i32 0, i32 0) }, %struct.TagTable_t { i16 4097, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.181, i32 0, i32 0) }, %struct.TagTable_t { i16 4098, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.182, i32 0, i32 0) }, %struct.TagTable_t { i16 -32115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.183, i32 0, i32 0) }, %struct.TagTable_t { i16 -32114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i32 0, i32 0) }, %struct.TagTable_t { i16 -32113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.185, i32 0, i32 0) }, %struct.TagTable_t { i16 -32104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.186, i32 0, i32 0) }, %struct.TagTable_t { i16 -32102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.187, i32 0, i32 0) }, %struct.TagTable_t { i16 -32099, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i32 0, i32 0) }, %struct.TagTable_t { i16 -31813, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.189, i32 0, i32 0) }, %struct.TagTable_t { i16 -30871, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.190, i32 0, i32 0) }, %struct.TagTable_t { i16 -30861, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.191, i32 0, i32 0) }, %struct.TagTable_t { i16 -30686, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.192, i32 0, i32 0) }, %struct.TagTable_t { i16 -30684, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.193, i32 0, i32 0) }, %struct.TagTable_t { i16 -30683, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.194, i32 0, i32 0) }, %struct.TagTable_t { i16 -30681, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.195, i32 0, i32 0) }, %struct.TagTable_t { i16 -30680, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.196, i32 0, i32 0) }, %struct.TagTable_t { i16 -28672, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i32 0, i32 0) }, %struct.TagTable_t { i16 -28669, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.198, i32 0, i32 0) }, %struct.TagTable_t { i16 -28668, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.199, i32 0, i32 0) }, %struct.TagTable_t { i16 -28415, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.200, i32 0, i32 0) }, %struct.TagTable_t { i16 -28414, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.201, i32 0, i32 0) }, %struct.TagTable_t { i16 -28159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.202, i32 0, i32 0) }, %struct.TagTable_t { i16 -28158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.203, i32 0, i32 0) }, %struct.TagTable_t { i16 -28157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.204, i32 0, i32 0) }, %struct.TagTable_t { i16 -28156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.205, i32 0, i32 0) }, %struct.TagTable_t { i16 -28155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.206, i32 0, i32 0) }, %struct.TagTable_t { i16 -28154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.207, i32 0, i32 0) }, %struct.TagTable_t { i16 -28153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.208, i32 0, i32 0) }, %struct.TagTable_t { i16 -28152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.209, i32 0, i32 0) }, %struct.TagTable_t { i16 -28151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.210, i32 0, i32 0) }, %struct.TagTable_t { i16 -28150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.211, i32 0, i32 0) }, %struct.TagTable_t { i16 -28036, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i32 0, i32 0) }, %struct.TagTable_t { i16 -28026, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.213, i32 0, i32 0) }, %struct.TagTable_t { i16 -28016, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.214, i32 0, i32 0) }, %struct.TagTable_t { i16 -28015, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.215, i32 0, i32 0) }, %struct.TagTable_t { i16 -28014, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.216, i32 0, i32 0) }, %struct.TagTable_t { i16 -25445, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.217, i32 0, i32 0) }, %struct.TagTable_t { i16 -25444, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.218, i32 0, i32 0) }, %struct.TagTable_t { i16 -25443, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.219, i32 0, i32 0) }, %struct.TagTable_t { i16 -25442, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.220, i32 0, i32 0) }, %struct.TagTable_t { i16 -25441, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.221, i32 0, i32 0) }, %struct.TagTable_t { i16 -24576, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.222, i32 0, i32 0) }, %struct.TagTable_t { i16 -24575, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.223, i32 0, i32 0) }, %struct.TagTable_t { i16 -24574, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.224, i32 0, i32 0) }, %struct.TagTable_t { i16 -24573, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.225, i32 0, i32 0) }, %struct.TagTable_t { i16 -24572, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.226, i32 0, i32 0) }, %struct.TagTable_t { i16 -24571, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.227, i32 0, i32 0) }, %struct.TagTable_t { i16 -24053, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.228, i32 0, i32 0) }, %struct.TagTable_t { i16 -24052, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.229, i32 0, i32 0) }, %struct.TagTable_t { i16 -24050, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.230, i32 0, i32 0) }, %struct.TagTable_t { i16 -24049, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.231, i32 0, i32 0) }, %struct.TagTable_t { i16 -24048, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.232, i32 0, i32 0) }, %struct.TagTable_t { i16 -24044, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.233, i32 0, i32 0) }, %struct.TagTable_t { i16 -24043, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.234, i32 0, i32 0) }, %struct.TagTable_t { i16 -24041, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.235, i32 0, i32 0) }, %struct.TagTable_t { i16 -23808, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.236, i32 0, i32 0) }, %struct.TagTable_t { i16 -23807, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.237, i32 0, i32 0) }, %struct.TagTable_t { i16 -23806, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.238, i32 0, i32 0) }, %struct.TagTable_t { i16 -23551, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.239, i32 0, i32 0) }, %struct.TagTable_t { i16 -23550, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.240, i32 0, i32 0) }, %struct.TagTable_t { i16 -23549, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.241, i32 0, i32 0) }, %struct.TagTable_t { i16 -23548, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.242, i32 0, i32 0) }, %struct.TagTable_t { i16 -23547, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.243, i32 0, i32 0) }, %struct.TagTable_t { i16 -28140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.244, i32 0, i32 0) }, %struct.TagTable_t { i16 -23546, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.245, i32 0, i32 0) }, %struct.TagTable_t { i16 -23545, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.246, i32 0, i32 0) }, %struct.TagTable_t { i16 -23544, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.247, i32 0, i32 0) }, %struct.TagTable_t { i16 -23543, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.248, i32 0, i32 0) }, %struct.TagTable_t { i16 -23542, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.249, i32 0, i32 0) }, %struct.TagTable_t { i16 -23540, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.250, i32 0, i32 0) }, %struct.TagTable_t { i16 -23520, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.251, i32 0, i32 0) }], align 16, !dbg !76
@.str.126 = private unnamed_addr constant [12 x i8] c"%s    %s = \00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.129 = private unnamed_addr constant [48 x i8] c"More than %d date fields in Exif.  This is nuts\00", align 1
@.str.130 = private unnamed_addr constant [48 x i8] c"Windows XP commend and other comment in header\0A\00", align 1
@.str.131 = private unnamed_addr constant [34 x i8] c"Multiple comments in exif header\0A\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"More than two orientation in Exif\00", align 1
@.str.134 = private unnamed_addr constant [36 x i8] c"Undefined rotation value %d in Exif\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"%s    Exif Dir:\00", align 1
@.str.136 = private unnamed_addr constant [19 x i8] c"%s    Interop Dir:\00", align 1
@.str.137 = private unnamed_addr constant [45 x i8] c"Illegal Exif or interop ofset directory link\00", align 1
@.str.138 = private unnamed_addr constant [20 x i8] c"%s    GPS info dir:\00", align 1
@.str.139 = private unnamed_addr constant [35 x i8] c"Illegal GPS directory link in Exif\00", align 1
@.str.140 = private unnamed_addr constant [45 x i8] c"Thumbnail removed with Jhead 1.3 or earlier\0A\00", align 1
@.str.141 = private unnamed_addr constant [41 x i8] c"Illegal subdirectory link in Exif header\00", align 1
@.str.142 = private unnamed_addr constant [27 x i8] c"%s    Continued directory \00", align 1
@.str.143 = private unnamed_addr constant [27 x i8] c"Map: %05d-%05d: Thumbnail\0A\00", align 1
@.str.144 = private unnamed_addr constant [40 x i8] c"Thumbnail incorrectly placed in header\0A\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"Thumbnail size: %u bytes\0A\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"InteropIndex\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"InteropVersion\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"ImageWidth\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"ImageLength\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@.str.152 = private unnamed_addr constant [26 x i8] c"PhotometricInterpretation\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"FillOrder\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"DocumentName\00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"ImageDescription\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"Make\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"Model\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"StripOffsets\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"SamplesPerPixel\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"RowsPerStrip\00", align 1
@.str.162 = private unnamed_addr constant [16 x i8] c"StripByteCounts\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"XResolution\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"YResolution\00", align 1
@.str.165 = private unnamed_addr constant [20 x i8] c"PlanarConfiguration\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"ResolutionUnit\00", align 1
@.str.167 = private unnamed_addr constant [17 x i8] c"TransferFunction\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"DateTime\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"Artist\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"WhitePoint\00", align 1
@.str.172 = private unnamed_addr constant [22 x i8] c"PrimaryChromaticities\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"TransferRange\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"JPEGProc\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"ThumbnailOffset\00", align 1
@.str.176 = private unnamed_addr constant [16 x i8] c"ThumbnailLength\00", align 1
@.str.177 = private unnamed_addr constant [18 x i8] c"YCbCrCoefficients\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"YCbCrSubSampling\00", align 1
@.str.179 = private unnamed_addr constant [17 x i8] c"YCbCrPositioning\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"ReferenceBlackWhite\00", align 1
@.str.181 = private unnamed_addr constant [18 x i8] c"RelatedImageWidth\00", align 1
@.str.182 = private unnamed_addr constant [19 x i8] c"RelatedImageLength\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"CFARepeatPatternDim\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"CFAPattern\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"BatteryLevel\00", align 1
@.str.186 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"ExposureTime\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"FNumber\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"IPTC/NAA\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"ExifOffset\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"InterColorProfile\00", align 1
@.str.192 = private unnamed_addr constant [16 x i8] c"ExposureProgram\00", align 1
@.str.193 = private unnamed_addr constant [20 x i8] c"SpectralSensitivity\00", align 1
@.str.194 = private unnamed_addr constant [15 x i8] c"GPS Dir offset\00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c"ISOSpeedRatings\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"OECF\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"ExifVersion\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"DateTimeOriginal\00", align 1
@.str.199 = private unnamed_addr constant [18 x i8] c"DateTimeDigitized\00", align 1
@.str.200 = private unnamed_addr constant [24 x i8] c"ComponentsConfiguration\00", align 1
@.str.201 = private unnamed_addr constant [23 x i8] c"CompressedBitsPerPixel\00", align 1
@.str.202 = private unnamed_addr constant [18 x i8] c"ShutterSpeedValue\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"ApertureValue\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"BrightnessValue\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"ExposureBiasValue\00", align 1
@.str.206 = private unnamed_addr constant [17 x i8] c"MaxApertureValue\00", align 1
@.str.207 = private unnamed_addr constant [16 x i8] c"SubjectDistance\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"MeteringMode\00", align 1
@.str.209 = private unnamed_addr constant [12 x i8] c"LightSource\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"Flash\00", align 1
@.str.211 = private unnamed_addr constant [12 x i8] c"FocalLength\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"MakerNote\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"UserComment\00", align 1
@.str.214 = private unnamed_addr constant [11 x i8] c"SubSecTime\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"SubSecTimeOriginal\00", align 1
@.str.216 = private unnamed_addr constant [20 x i8] c"SubSecTimeDigitized\00", align 1
@.str.217 = private unnamed_addr constant [17 x i8] c"Windows-XP Title\00", align 1
@.str.218 = private unnamed_addr constant [19 x i8] c"Windows-XP comment\00", align 1
@.str.219 = private unnamed_addr constant [18 x i8] c"Windows-XP author\00", align 1
@.str.220 = private unnamed_addr constant [20 x i8] c"Windows-XP keywords\00", align 1
@.str.221 = private unnamed_addr constant [19 x i8] c"Windows-XP subject\00", align 1
@.str.222 = private unnamed_addr constant [16 x i8] c"FlashPixVersion\00", align 1
@.str.223 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.224 = private unnamed_addr constant [15 x i8] c"ExifImageWidth\00", align 1
@.str.225 = private unnamed_addr constant [16 x i8] c"ExifImageLength\00", align 1
@.str.226 = private unnamed_addr constant [17 x i8] c"RelatedAudioFile\00", align 1
@.str.227 = private unnamed_addr constant [23 x i8] c"InteroperabilityOffset\00", align 1
@.str.228 = private unnamed_addr constant [12 x i8] c"FlashEnergy\00", align 1
@.str.229 = private unnamed_addr constant [25 x i8] c"SpatialFrequencyResponse\00", align 1
@.str.230 = private unnamed_addr constant [22 x i8] c"FocalPlaneXResolution\00", align 1
@.str.231 = private unnamed_addr constant [22 x i8] c"FocalPlaneYResolution\00", align 1
@.str.232 = private unnamed_addr constant [25 x i8] c"FocalPlaneResolutionUnit\00", align 1
@.str.233 = private unnamed_addr constant [16 x i8] c"SubjectLocation\00", align 1
@.str.234 = private unnamed_addr constant [14 x i8] c"ExposureIndex\00", align 1
@.str.235 = private unnamed_addr constant [14 x i8] c"SensingMethod\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c"FileSource\00", align 1
@.str.237 = private unnamed_addr constant [10 x i8] c"SceneType\00", align 1
@.str.238 = private unnamed_addr constant [12 x i8] c"CFA Pattern\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"CustomRendered\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"ExposureMode\00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"WhiteBalance\00", align 1
@.str.242 = private unnamed_addr constant [17 x i8] c"DigitalZoomRatio\00", align 1
@.str.243 = private unnamed_addr constant [22 x i8] c"FocalLengthIn35mmFilm\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"SubjectArea\00", align 1
@.str.245 = private unnamed_addr constant [17 x i8] c"SceneCaptureType\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"GainControl\00", align 1
@.str.247 = private unnamed_addr constant [9 x i8] c"Contrast\00", align 1
@.str.248 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"Sharpness\00", align 1
@.str.250 = private unnamed_addr constant [21 x i8] c"SubjectDistanceRange\00", align 1
@.str.251 = private unnamed_addr constant [14 x i8] c"ImageUniqueId\00", align 1
@.str.252 = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.254 = private unnamed_addr constant [16 x i8] c"flip horizontal\00", align 1
@.str.255 = private unnamed_addr constant [11 x i8] c"rotate 180\00", align 1
@.str.256 = private unnamed_addr constant [14 x i8] c"flip vertical\00", align 1
@.str.257 = private unnamed_addr constant [10 x i8] c"transpose\00", align 1
@.str.258 = private unnamed_addr constant [10 x i8] c"rotate 90\00", align 1
@.str.259 = private unnamed_addr constant [11 x i8] c"transverse\00", align 1
@.str.260 = private unnamed_addr constant [11 x i8] c"rotate 270\00", align 1
@.str.261 = private unnamed_addr constant [9 x i8] c"Baseline\00", align 1
@.str.262 = private unnamed_addr constant [20 x i8] c"Extended sequential\00", align 1
@.str.263 = private unnamed_addr constant [12 x i8] c"Progressive\00", align 1
@.str.264 = private unnamed_addr constant [9 x i8] c"Lossless\00", align 1
@.str.265 = private unnamed_addr constant [24 x i8] c"Differential sequential\00", align 1
@.str.266 = private unnamed_addr constant [25 x i8] c"Differential progressive\00", align 1
@.str.267 = private unnamed_addr constant [22 x i8] c"Differential lossless\00", align 1
@.str.268 = private unnamed_addr constant [39 x i8] c"Extended sequential, arithmetic coding\00", align 1
@.str.269 = private unnamed_addr constant [31 x i8] c"Progressive, arithmetic coding\00", align 1
@.str.270 = private unnamed_addr constant [28 x i8] c"Lossless, arithmetic coding\00", align 1
@.str.271 = private unnamed_addr constant [43 x i8] c"Differential sequential, arithmetic coding\00", align 1
@.str.272 = private unnamed_addr constant [44 x i8] c"Differential progressive, arithmetic coding\00", align 1
@.str.273 = private unnamed_addr constant [41 x i8] c"Differential lossless, arithmetic coding\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @Get16u(i8* %Short) #0 !dbg !101 {
entry:
  %retval = alloca i32, align 4
  %Short.addr = alloca i8*, align 8
  store i8* %Short, i8** %Short.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Short.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i32, i32* @MotorolaOrder, align 4, !dbg !106
  %tobool = icmp ne i32 %0, 0, !dbg !106
  br i1 %tobool, label %if.then, label %if.else, !dbg !108

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %Short.addr, align 8, !dbg !109
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !111
  %2 = load i8, i8* %arrayidx, align 1, !dbg !111
  %conv = zext i8 %2 to i32, !dbg !111
  %shl = shl i32 %conv, 8, !dbg !112
  %3 = load i8*, i8** %Short.addr, align 8, !dbg !113
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !114
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !114
  %conv2 = zext i8 %4 to i32, !dbg !114
  %or = or i32 %shl, %conv2, !dbg !115
  store i32 %or, i32* %retval, align 4, !dbg !116
  br label %return, !dbg !116

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %Short.addr, align 8, !dbg !117
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !119
  %6 = load i8, i8* %arrayidx3, align 1, !dbg !119
  %conv4 = zext i8 %6 to i32, !dbg !119
  %shl5 = shl i32 %conv4, 8, !dbg !120
  %7 = load i8*, i8** %Short.addr, align 8, !dbg !121
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !122
  %8 = load i8, i8* %arrayidx6, align 1, !dbg !122
  %conv7 = zext i8 %8 to i32, !dbg !122
  %or8 = or i32 %shl5, %conv7, !dbg !123
  store i32 %or8, i32* %retval, align 4, !dbg !124
  br label %return, !dbg !124

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !125
  ret i32 %9, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @Get32s(i8* %Long) #0 !dbg !126 {
entry:
  %retval = alloca i32, align 4
  %Long.addr = alloca i8*, align 8
  store i8* %Long, i8** %Long.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Long.addr, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = load i32, i32* @MotorolaOrder, align 4, !dbg !129
  %tobool = icmp ne i32 %0, 0, !dbg !129
  br i1 %tobool, label %if.then, label %if.else, !dbg !131

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %Long.addr, align 8, !dbg !132
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !134
  %2 = load i8, i8* %arrayidx, align 1, !dbg !134
  %conv = sext i8 %2 to i32, !dbg !134
  %shl = shl i32 %conv, 24, !dbg !135
  %3 = load i8*, i8** %Long.addr, align 8, !dbg !136
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !137
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !137
  %conv2 = zext i8 %4 to i32, !dbg !137
  %shl3 = shl i32 %conv2, 16, !dbg !138
  %or = or i32 %shl, %shl3, !dbg !139
  %5 = load i8*, i8** %Long.addr, align 8, !dbg !140
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !141
  %6 = load i8, i8* %arrayidx4, align 1, !dbg !141
  %conv5 = zext i8 %6 to i32, !dbg !141
  %shl6 = shl i32 %conv5, 8, !dbg !142
  %or7 = or i32 %or, %shl6, !dbg !143
  %7 = load i8*, i8** %Long.addr, align 8, !dbg !144
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 3, !dbg !145
  %8 = load i8, i8* %arrayidx8, align 1, !dbg !145
  %conv9 = zext i8 %8 to i32, !dbg !145
  %shl10 = shl i32 %conv9, 0, !dbg !146
  %or11 = or i32 %or7, %shl10, !dbg !147
  store i32 %or11, i32* %retval, align 4, !dbg !148
  br label %return, !dbg !148

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %Long.addr, align 8, !dbg !149
  %call = call i64 @strlen(i8* %9) #8, !dbg !151
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %call), !dbg !152
  %10 = load i8*, i8** %Long.addr, align 8, !dbg !153
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !154
  %11 = load i8, i8* %arrayidx13, align 1, !dbg !154
  %conv14 = sext i8 %11 to i32, !dbg !154
  %shl15 = shl i32 %conv14, 24, !dbg !155
  %12 = load i8*, i8** %Long.addr, align 8, !dbg !156
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !157
  %13 = load i8, i8* %arrayidx16, align 1, !dbg !157
  %conv17 = zext i8 %13 to i32, !dbg !157
  %shl18 = shl i32 %conv17, 16, !dbg !158
  %or19 = or i32 %shl15, %shl18, !dbg !159
  %14 = load i8*, i8** %Long.addr, align 8, !dbg !160
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !161
  %15 = load i8, i8* %arrayidx20, align 1, !dbg !161
  %conv21 = zext i8 %15 to i32, !dbg !161
  %shl22 = shl i32 %conv21, 8, !dbg !162
  %or23 = or i32 %or19, %shl22, !dbg !163
  %16 = load i8*, i8** %Long.addr, align 8, !dbg !164
  %arrayidx24 = getelementptr inbounds i8, i8* %16, i64 0, !dbg !165
  %17 = load i8, i8* %arrayidx24, align 1, !dbg !165
  %conv25 = zext i8 %17 to i32, !dbg !165
  %shl26 = shl i32 %conv25, 0, !dbg !166
  %or27 = or i32 %or23, %shl26, !dbg !167
  store i32 %or27, i32* %retval, align 4, !dbg !168
  br label %return, !dbg !168

return:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !169
  ret i32 %18, !dbg !169
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @Put32u(i8* %Value, i32 %PutValue) #0 !dbg !170 {
entry:
  %Value.addr = alloca i8*, align 8
  %PutValue.addr = alloca i32, align 4
  store i8* %Value, i8** %Value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Value.addr, metadata !173, metadata !DIExpression()), !dbg !174
  store i32 %PutValue, i32* %PutValue.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %PutValue.addr, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i32, i32* @MotorolaOrder, align 4, !dbg !177
  %tobool = icmp ne i32 %0, 0, !dbg !177
  br i1 %tobool, label %if.then, label %if.else, !dbg !179

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %PutValue.addr, align 4, !dbg !180
  %shr = lshr i32 %1, 24, !dbg !182
  %conv = trunc i32 %shr to i8, !dbg !183
  %2 = load i8*, i8** %Value.addr, align 8, !dbg !184
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0, !dbg !185
  store i8 %conv, i8* %arrayidx, align 1, !dbg !186
  %3 = load i32, i32* %PutValue.addr, align 4, !dbg !187
  %shr1 = lshr i32 %3, 16, !dbg !188
  %conv2 = trunc i32 %shr1 to i8, !dbg !189
  %4 = load i8*, i8** %Value.addr, align 8, !dbg !190
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !191
  store i8 %conv2, i8* %arrayidx3, align 1, !dbg !192
  %5 = load i32, i32* %PutValue.addr, align 4, !dbg !193
  %shr4 = lshr i32 %5, 8, !dbg !194
  %conv5 = trunc i32 %shr4 to i8, !dbg !195
  %6 = load i8*, i8** %Value.addr, align 8, !dbg !196
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !197
  store i8 %conv5, i8* %arrayidx6, align 1, !dbg !198
  %7 = load i32, i32* %PutValue.addr, align 4, !dbg !199
  %conv7 = trunc i32 %7 to i8, !dbg !200
  %8 = load i8*, i8** %Value.addr, align 8, !dbg !201
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 3, !dbg !202
  store i8 %conv7, i8* %arrayidx8, align 1, !dbg !203
  br label %if.end, !dbg !204

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %PutValue.addr, align 4, !dbg !205
  %conv9 = trunc i32 %9 to i8, !dbg !207
  %10 = load i8*, i8** %Value.addr, align 8, !dbg !208
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !209
  store i8 %conv9, i8* %arrayidx10, align 1, !dbg !210
  %11 = load i32, i32* %PutValue.addr, align 4, !dbg !211
  %shr11 = lshr i32 %11, 8, !dbg !212
  %conv12 = trunc i32 %shr11 to i8, !dbg !213
  %12 = load i8*, i8** %Value.addr, align 8, !dbg !214
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !215
  store i8 %conv12, i8* %arrayidx13, align 1, !dbg !216
  %13 = load i32, i32* %PutValue.addr, align 4, !dbg !217
  %shr14 = lshr i32 %13, 16, !dbg !218
  %conv15 = trunc i32 %shr14 to i8, !dbg !219
  %14 = load i8*, i8** %Value.addr, align 8, !dbg !220
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !221
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !222
  %15 = load i32, i32* %PutValue.addr, align 4, !dbg !223
  %shr17 = lshr i32 %15, 24, !dbg !224
  %conv18 = trunc i32 %shr17 to i8, !dbg !225
  %16 = load i8*, i8** %Value.addr, align 8, !dbg !226
  %arrayidx19 = getelementptr inbounds i8, i8* %16, i64 3, !dbg !227
  store i8 %conv18, i8* %arrayidx19, align 1, !dbg !228
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @Get32u(i8* %Long) #0 !dbg !230 {
entry:
  %Long.addr = alloca i8*, align 8
  store i8* %Long, i8** %Long.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Long.addr, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = load i8*, i8** %Long.addr, align 8, !dbg !235
  %call = call i32 @Get32s(i8* %0), !dbg !236
  ret i32 %call, !dbg !237
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @PrintFormatNumber(i8* %ValuePtr, i32 %Format, i32 %ByteCount) #0 !dbg !238 {
entry:
  %ValuePtr.addr = alloca i8*, align 8
  %Format.addr = alloca i32, align 4
  %ByteCount.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %ValuePtr, i8** %ValuePtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ValuePtr.addr, metadata !241, metadata !DIExpression()), !dbg !242
  store i32 %Format, i32* %Format.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %Format.addr, metadata !243, metadata !DIExpression()), !dbg !244
  store i32 %ByteCount, i32* %ByteCount.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ByteCount.addr, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %s, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %n, metadata !249, metadata !DIExpression()), !dbg !250
  store i32 0, i32* %n, align 4, !dbg !251
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4, !dbg !254
  %cmp = icmp slt i32 %0, 16, !dbg !256
  br i1 %cmp, label %for.body, label %for.end, !dbg !257

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %Format.addr, align 4, !dbg !258
  switch i32 %1, label %sw.default [
    i32 6, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb4
    i32 9, label %sw.bb4
    i32 8, label %sw.bb7
    i32 5, label %sw.bb12
    i32 10, label %sw.bb16
    i32 11, label %sw.bb21
    i32 12, label %sw.bb24
  ], !dbg !260

sw.bb:                                            ; preds = %for.body, %for.body
  %2 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !261
  %3 = load i8, i8* %2, align 1, !dbg !263
  %conv = zext i8 %3 to i32, !dbg !263
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %conv), !dbg !264
  store i32 1, i32* %s, align 4, !dbg !265
  br label %sw.epilog, !dbg !266

sw.bb1:                                           ; preds = %for.body
  %4 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !267
  %call2 = call i32 @Get16u(i8* %4), !dbg !268
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %call2), !dbg !269
  store i32 2, i32* %s, align 4, !dbg !270
  br label %sw.epilog, !dbg !271

sw.bb4:                                           ; preds = %for.body, %for.body
  %5 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !272
  %call5 = call i32 @Get32s(i8* %5), !dbg !273
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %call5), !dbg !274
  store i32 4, i32* %s, align 4, !dbg !275
  br label %sw.epilog, !dbg !276

sw.bb7:                                           ; preds = %for.body
  %6 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !277
  %call8 = call i32 @Get16u(i8* %6), !dbg !278
  %conv9 = trunc i32 %call8 to i16, !dbg !279
  %conv10 = sext i16 %conv9 to i32, !dbg !279
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %conv10), !dbg !280
  store i32 2, i32* %s, align 4, !dbg !281
  br label %sw.epilog, !dbg !282

sw.bb12:                                          ; preds = %for.body
  %7 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !283
  %call13 = call i32 @Get32s(i8* %7), !dbg !284
  %8 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !285
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 4, !dbg !286
  %call14 = call i32 @Get32s(i8* %add.ptr), !dbg !287
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %call13, i32 %call14), !dbg !288
  store i32 8, i32* %s, align 4, !dbg !289
  br label %sw.epilog, !dbg !290

sw.bb16:                                          ; preds = %for.body
  %9 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !291
  %call17 = call i32 @Get32s(i8* %9), !dbg !292
  %10 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !293
  %add.ptr18 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !294
  %call19 = call i32 @Get32s(i8* %add.ptr18), !dbg !295
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %call17, i32 %call19), !dbg !296
  store i32 8, i32* %s, align 4, !dbg !297
  br label %sw.epilog, !dbg !298

sw.bb21:                                          ; preds = %for.body
  %11 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !299
  %12 = bitcast i8* %11 to float*, !dbg !300
  %13 = load float, float* %12, align 4, !dbg !301
  %conv22 = fpext float %13 to double, !dbg !302
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), double %conv22), !dbg !303
  store i32 8, i32* %s, align 4, !dbg !304
  br label %sw.epilog, !dbg !305

sw.bb24:                                          ; preds = %for.body
  %14 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !306
  %15 = bitcast i8* %14 to double*, !dbg !307
  %16 = load double, double* %15, align 8, !dbg !308
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), double %16), !dbg !309
  store i32 8, i32* %s, align 4, !dbg !310
  br label %sw.epilog, !dbg !311

sw.default:                                       ; preds = %for.body
  %17 = load i32, i32* %Format.addr, align 4, !dbg !312
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %17), !dbg !313
  br label %if.end35, !dbg !314

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb21, %sw.bb16, %sw.bb12, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %18 = load i32, i32* %s, align 4, !dbg !315
  %19 = load i32, i32* %ByteCount.addr, align 4, !dbg !316
  %sub = sub nsw i32 %19, %18, !dbg !316
  store i32 %sub, i32* %ByteCount.addr, align 4, !dbg !316
  %20 = load i32, i32* %ByteCount.addr, align 4, !dbg !317
  %cmp27 = icmp sle i32 %20, 0, !dbg !319
  br i1 %cmp27, label %if.then, label %if.end, !dbg !320

if.then:                                          ; preds = %sw.epilog
  br label %for.end, !dbg !321

if.end:                                           ; preds = %sw.epilog
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)), !dbg !322
  %21 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !323
  %22 = load i32, i32* %s, align 4, !dbg !324
  %idx.ext = sext i32 %22 to i64, !dbg !325
  %add.ptr30 = getelementptr inbounds i8, i8* %21, i64 %idx.ext, !dbg !325
  store i8* %add.ptr30, i8** %ValuePtr.addr, align 8, !dbg !326
  br label %for.inc, !dbg !327

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %n, align 4, !dbg !328
  %inc = add nsw i32 %23, 1, !dbg !328
  store i32 %inc, i32* %n, align 4, !dbg !328
  br label %for.cond, !dbg !329, !llvm.loop !330

for.end:                                          ; preds = %if.then, %for.cond
  %24 = load i32, i32* %n, align 4, !dbg !333
  %cmp31 = icmp sge i32 %24, 16, !dbg !335
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !336

if.then33:                                        ; preds = %for.end
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)), !dbg !337
  br label %if.end35, !dbg !337

if.end35:                                         ; preds = %sw.default, %if.then33, %for.end
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local double @ConvertAnyFormat(i8* %ValuePtr, i32 %Format) #0 !dbg !339 {
entry:
  %ValuePtr.addr = alloca i8*, align 8
  %Format.addr = alloca i32, align 4
  %Value = alloca double, align 8
  %Num = alloca i32, align 4
  %Den = alloca i32, align 4
  store i8* %ValuePtr, i8** %ValuePtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ValuePtr.addr, metadata !342, metadata !DIExpression()), !dbg !343
  store i32 %Format, i32* %Format.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %Format.addr, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata double* %Value, metadata !346, metadata !DIExpression()), !dbg !347
  store double 0.000000e+00, double* %Value, align 8, !dbg !348
  %0 = load i32, i32* %Format.addr, align 4, !dbg !349
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 5, label %sw.bb8
    i32 10, label %sw.bb8
    i32 8, label %sw.bb22
    i32 9, label %sw.bb26
    i32 11, label %sw.bb29
    i32 12, label %sw.bb31
  ], !dbg !350

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !351
  %2 = load i8, i8* %1, align 1, !dbg !353
  %conv = sitofp i8 %2 to double, !dbg !353
  store double %conv, double* %Value, align 8, !dbg !354
  br label %sw.epilog, !dbg !355

sw.bb1:                                           ; preds = %entry
  %3 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !356
  %4 = load i8, i8* %3, align 1, !dbg !357
  %conv2 = uitofp i8 %4 to double, !dbg !357
  store double %conv2, double* %Value, align 8, !dbg !358
  br label %sw.epilog, !dbg !359

sw.bb3:                                           ; preds = %entry
  %5 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !360
  %call = call i32 @Get16u(i8* %5), !dbg !361
  %conv4 = sitofp i32 %call to double, !dbg !361
  store double %conv4, double* %Value, align 8, !dbg !362
  br label %sw.epilog, !dbg !363

sw.bb5:                                           ; preds = %entry
  %6 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !364
  %call6 = call i32 @Get32u(i8* %6), !dbg !365
  %conv7 = uitofp i32 %call6 to double, !dbg !365
  store double %conv7, double* %Value, align 8, !dbg !366
  br label %sw.epilog, !dbg !367

sw.bb8:                                           ; preds = %entry, %entry
  call void @llvm.dbg.declare(metadata i32* %Num, metadata !368, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %Den, metadata !371, metadata !DIExpression()), !dbg !372
  %7 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !373
  %call9 = call i32 @Get32s(i8* %7), !dbg !374
  store i32 %call9, i32* %Num, align 4, !dbg !375
  %8 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !376
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 4, !dbg !377
  %call10 = call i32 @Get32s(i8* %add.ptr), !dbg !378
  store i32 %call10, i32* %Den, align 4, !dbg !379
  %9 = load i32, i32* %Den, align 4, !dbg !380
  %cmp = icmp eq i32 %9, 0, !dbg !382
  br i1 %cmp, label %if.then, label %if.else, !dbg !383

if.then:                                          ; preds = %sw.bb8
  store double 0.000000e+00, double* %Value, align 8, !dbg !384
  br label %if.end21, !dbg !386

if.else:                                          ; preds = %sw.bb8
  %10 = load i32, i32* %Format.addr, align 4, !dbg !387
  %cmp12 = icmp eq i32 %10, 10, !dbg !390
  br i1 %cmp12, label %if.then14, label %if.else17, !dbg !391

if.then14:                                        ; preds = %if.else
  %11 = load i32, i32* %Num, align 4, !dbg !392
  %conv15 = sitofp i32 %11 to double, !dbg !394
  %12 = load i32, i32* %Den, align 4, !dbg !395
  %conv16 = sitofp i32 %12 to double, !dbg !395
  %div = fdiv double %conv15, %conv16, !dbg !396
  store double %div, double* %Value, align 8, !dbg !397
  br label %if.end, !dbg !398

if.else17:                                        ; preds = %if.else
  %13 = load i32, i32* %Num, align 4, !dbg !399
  %conv18 = uitofp i32 %13 to double, !dbg !401
  %14 = load i32, i32* %Den, align 4, !dbg !402
  %conv19 = uitofp i32 %14 to double, !dbg !403
  %div20 = fdiv double %conv18, %conv19, !dbg !404
  store double %div20, double* %Value, align 8, !dbg !405
  br label %if.end

if.end:                                           ; preds = %if.else17, %if.then14
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  br label %sw.epilog, !dbg !406

sw.bb22:                                          ; preds = %entry
  %15 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !407
  %call23 = call i32 @Get16u(i8* %15), !dbg !408
  %conv24 = trunc i32 %call23 to i16, !dbg !409
  %conv25 = sitofp i16 %conv24 to double, !dbg !409
  store double %conv25, double* %Value, align 8, !dbg !410
  br label %sw.epilog, !dbg !411

sw.bb26:                                          ; preds = %entry
  %16 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !412
  %call27 = call i32 @Get32s(i8* %16), !dbg !413
  %conv28 = sitofp i32 %call27 to double, !dbg !413
  store double %conv28, double* %Value, align 8, !dbg !414
  br label %sw.epilog, !dbg !415

sw.bb29:                                          ; preds = %entry
  %17 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !416
  %18 = bitcast i8* %17 to float*, !dbg !417
  %19 = load float, float* %18, align 4, !dbg !418
  %conv30 = fpext float %19 to double, !dbg !419
  store double %conv30, double* %Value, align 8, !dbg !420
  br label %sw.epilog, !dbg !421

sw.bb31:                                          ; preds = %entry
  %20 = load i8*, i8** %ValuePtr.addr, align 8, !dbg !422
  %21 = bitcast i8* %20 to double*, !dbg !423
  %22 = load double, double* %21, align 8, !dbg !424
  store double %22, double* %Value, align 8, !dbg !425
  br label %sw.epilog, !dbg !426

sw.default:                                       ; preds = %entry
  %23 = load i32, i32* %Format.addr, align 4, !dbg !427
  call void @ErrNonfatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %23, i32 0), !dbg !428
  br label %sw.epilog, !dbg !429

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %sw.bb29, %sw.bb26, %sw.bb22, %if.end21, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %24 = load double, double* %Value, align 8, !dbg !430
  ret double %24, !dbg !431
}

declare dso_local void @ErrNonfatal(i8*, i32, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @Clear_EXIF() #0 !dbg !432 {
entry:
  store double 0.000000e+00, double* @FocalplaneXRes, align 8, !dbg !435
  store double 0.000000e+00, double* @FocalplaneUnits, align 8, !dbg !436
  store i32 0, i32* @ExifImageWidth, align 4, !dbg !437
  store i32 0, i32* @NumOrientations, align 4, !dbg !438
  store i32 0, i32* @MotorolaOrder, align 4, !dbg !439
  store i8* null, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @OrientationPtr, i64 0, i64 1), align 8, !dbg !440
  store i8* null, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @OrientationPtr, i64 0, i64 0), align 16, !dbg !441
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @OrientationNumFormat, i64 0, i64 1), align 4, !dbg !442
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @OrientationNumFormat, i64 0, i64 0), align 4, !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @process_EXIF(i8* %ExifSection, i32 %length) #0 !dbg !52 {
entry:
  %ExifSection.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %FirstOffset = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %ExifSection, i8** %ExifSection.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ExifSection.addr, metadata !445, metadata !DIExpression()), !dbg !446
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !447, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata i32* %FirstOffset, metadata !449, metadata !DIExpression()), !dbg !450
  call void @Clear_EXIF(), !dbg !451
  %0 = load i32, i32* @ShowTags, align 4, !dbg !452
  %tobool = icmp ne i32 %0, 0, !dbg !452
  br i1 %tobool, label %if.then, label %if.end, !dbg !454

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %length.addr, align 4, !dbg !455
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %1), !dbg !457
  br label %if.end, !dbg !458

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %ExifSection.addr, align 8, !dbg !459
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 2, !dbg !462
  %call1 = call i32 @memcmp(i8* %add.ptr, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @process_EXIF.ExifHeader, i64 0, i64 0), i64 6) #8, !dbg !463
  %tobool2 = icmp ne i32 %call1, 0, !dbg !463
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !464

if.then3:                                         ; preds = %if.end
  call void @ErrNonfatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 0), !dbg !465
  br label %if.end87, !dbg !467

if.end4:                                          ; preds = %if.end
  %3 = load i8*, i8** %ExifSection.addr, align 8, !dbg !468
  %add.ptr5 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !470
  %call6 = call i32 @memcmp(i8* %add.ptr5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 2) #8, !dbg !471
  %cmp = icmp eq i32 %call6, 0, !dbg !472
  br i1 %cmp, label %if.then7, label %if.else, !dbg !473

if.then7:                                         ; preds = %if.end4
  %4 = load i32, i32* @ShowTags, align 4, !dbg !474
  %tobool8 = icmp ne i32 %4, 0, !dbg !474
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !477

if.then9:                                         ; preds = %if.then7
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0)), !dbg !478
  br label %if.end11, !dbg !478

if.end11:                                         ; preds = %if.then9, %if.then7
  store i32 0, i32* @MotorolaOrder, align 4, !dbg !479
  br label %if.end22, !dbg !480

if.else:                                          ; preds = %if.end4
  %5 = load i8*, i8** %ExifSection.addr, align 8, !dbg !481
  %add.ptr12 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !484
  %call13 = call i32 @memcmp(i8* %add.ptr12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 2) #8, !dbg !485
  %cmp14 = icmp eq i32 %call13, 0, !dbg !486
  br i1 %cmp14, label %if.then15, label %if.else20, !dbg !487

if.then15:                                        ; preds = %if.else
  %6 = load i32, i32* @ShowTags, align 4, !dbg !488
  %tobool16 = icmp ne i32 %6, 0, !dbg !488
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !491

if.then17:                                        ; preds = %if.then15
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0)), !dbg !492
  br label %if.end19, !dbg !492

if.end19:                                         ; preds = %if.then17, %if.then15
  store i32 1, i32* @MotorolaOrder, align 4, !dbg !493
  br label %if.end21, !dbg !494

if.else20:                                        ; preds = %if.else
  call void @ErrNonfatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 0, i32 0), !dbg !495
  br label %if.end87, !dbg !497

if.end21:                                         ; preds = %if.end19
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end11
  %7 = load i8*, i8** %ExifSection.addr, align 8, !dbg !498
  %add.ptr23 = getelementptr inbounds i8, i8* %7, i64 10, !dbg !500
  %call24 = call i32 @Get16u(i8* %add.ptr23), !dbg !501
  %cmp25 = icmp ne i32 %call24, 42, !dbg !502
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !503

if.then26:                                        ; preds = %if.end22
  call void @ErrNonfatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 0, i32 0), !dbg !504
  br label %if.end87, !dbg !506

if.end27:                                         ; preds = %if.end22
  %8 = load i8*, i8** %ExifSection.addr, align 8, !dbg !507
  %add.ptr28 = getelementptr inbounds i8, i8* %8, i64 12, !dbg !508
  %call29 = call i32 @Get32u(i8* %add.ptr28), !dbg !509
  store i32 %call29, i32* %FirstOffset, align 4, !dbg !510
  %9 = load i32, i32* %FirstOffset, align 4, !dbg !511
  %cmp30 = icmp slt i32 %9, 8, !dbg !513
  br i1 %cmp30, label %if.then32, label %lor.lhs.false, !dbg !514

lor.lhs.false:                                    ; preds = %if.end27
  %10 = load i32, i32* %FirstOffset, align 4, !dbg !515
  %cmp31 = icmp sgt i32 %10, 16, !dbg !516
  br i1 %cmp31, label %if.then32, label %if.end40, !dbg !517

if.then32:                                        ; preds = %lor.lhs.false, %if.end27
  %11 = load i32, i32* %FirstOffset, align 4, !dbg !518
  %cmp33 = icmp slt i32 %11, 16, !dbg !521
  br i1 %cmp33, label %if.then38, label %lor.lhs.false34, !dbg !522

lor.lhs.false34:                                  ; preds = %if.then32
  %12 = load i32, i32* %FirstOffset, align 4, !dbg !523
  %13 = load i32, i32* %length.addr, align 4, !dbg !524
  %sub = sub nsw i32 %13, 16, !dbg !525
  %cmp35 = icmp sgt i32 %12, %sub, !dbg !526
  br i1 %cmp35, label %if.then38, label %lor.lhs.false36, !dbg !527

lor.lhs.false36:                                  ; preds = %lor.lhs.false34
  %14 = load i32, i32* %length.addr, align 4, !dbg !528
  %cmp37 = icmp slt i32 %14, 16, !dbg !529
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !530

if.then38:                                        ; preds = %lor.lhs.false36, %lor.lhs.false34, %if.then32
  call void @ErrNonfatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i32 0, i32 0), !dbg !531
  br label %if.end87, !dbg !533

if.end39:                                         ; preds = %lor.lhs.false36
  call void @ErrNonfatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i32 0, i32 0), !dbg !534
  br label %if.end40, !dbg !535

if.end40:                                         ; preds = %if.end39, %lor.lhs.false
  store i8* null, i8** @DirWithThumbnailPtrs, align 8, !dbg !536
  %15 = load i8*, i8** %ExifSection.addr, align 8, !dbg !537
  %add.ptr41 = getelementptr inbounds i8, i8* %15, i64 8, !dbg !538
  %16 = load i32, i32* %FirstOffset, align 4, !dbg !539
  %idx.ext = sext i32 %16 to i64, !dbg !540
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr41, i64 %idx.ext, !dbg !540
  %17 = load i8*, i8** %ExifSection.addr, align 8, !dbg !541
  %add.ptr43 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !542
  %18 = load i32, i32* %length.addr, align 4, !dbg !543
  %sub44 = sub nsw i32 %18, 8, !dbg !544
  call void @ProcessExifDir(i8* %add.ptr42, i8* %add.ptr43, i32 %sub44, i32 0), !dbg !545
  %19 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !546
  %20 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 35), align 4, !dbg !547
  %cmp45 = icmp sge i32 %19, %20, !dbg !548
  %21 = zext i1 %cmp45 to i64, !dbg !549
  %cond = select i1 %cmp45, i32 1, i32 0, !dbg !549
  %conv = trunc i32 %cond to i8, !dbg !549
  store i8 %conv, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 36), align 8, !dbg !550
  %22 = load i32, i32* @DumpExifMap, align 4, !dbg !551
  %tobool46 = icmp ne i32 %22, 0, !dbg !551
  br i1 %tobool46, label %if.then47, label %if.end68, !dbg !553

if.then47:                                        ; preds = %if.end40
  call void @llvm.dbg.declare(metadata i32* %a, metadata !554, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata i32* %b, metadata !557, metadata !DIExpression()), !dbg !558
  %23 = load i32, i32* %length.addr, align 4, !dbg !559
  %sub48 = sub nsw i32 %23, 8, !dbg !560
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %sub48), !dbg !561
  store i32 0, i32* %a, align 4, !dbg !562
  br label %for.cond, !dbg !564

for.cond:                                         ; preds = %for.inc66, %if.then47
  %24 = load i32, i32* %a, align 4, !dbg !565
  %25 = load i32, i32* %length.addr, align 4, !dbg !567
  %sub50 = sub nsw i32 %25, 8, !dbg !568
  %cmp51 = icmp slt i32 %24, %sub50, !dbg !569
  br i1 %cmp51, label %for.body, label %for.end67, !dbg !570

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %a, align 4, !dbg !571
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %26), !dbg !573
  store i32 0, i32* %b, align 4, !dbg !574
  br label %for.cond54, !dbg !576

for.cond54:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %b, align 4, !dbg !577
  %cmp55 = icmp slt i32 %27, 10, !dbg !579
  br i1 %cmp55, label %for.body57, label %for.end, !dbg !580

for.body57:                                       ; preds = %for.cond54
  %28 = load i8*, i8** %ExifSection.addr, align 8, !dbg !581
  %add.ptr58 = getelementptr inbounds i8, i8* %28, i64 8, !dbg !582
  %29 = load i32, i32* %a, align 4, !dbg !583
  %idx.ext59 = sext i32 %29 to i64, !dbg !584
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr58, i64 %idx.ext59, !dbg !584
  %30 = load i32, i32* %b, align 4, !dbg !585
  %idx.ext61 = sext i32 %30 to i64, !dbg !586
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr60, i64 %idx.ext61, !dbg !586
  %31 = load i8, i8* %add.ptr62, align 1, !dbg !587
  %conv63 = zext i8 %31 to i32, !dbg !587
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %conv63), !dbg !588
  br label %for.inc, !dbg !588

for.inc:                                          ; preds = %for.body57
  %32 = load i32, i32* %b, align 4, !dbg !589
  %inc = add nsw i32 %32, 1, !dbg !589
  store i32 %inc, i32* %b, align 4, !dbg !589
  br label %for.cond54, !dbg !590, !llvm.loop !591

for.end:                                          ; preds = %for.cond54
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)), !dbg !593
  br label %for.inc66, !dbg !594

for.inc66:                                        ; preds = %for.end
  %33 = load i32, i32* %a, align 4, !dbg !595
  %add = add nsw i32 %33, 10, !dbg !595
  store i32 %add, i32* %a, align 4, !dbg !595
  br label %for.cond, !dbg !596, !llvm.loop !597

for.end67:                                        ; preds = %for.cond
  br label %if.end68, !dbg !599

if.end68:                                         ; preds = %for.end67, %if.end40
  %34 = load double, double* @FocalplaneXRes, align 8, !dbg !600
  %cmp69 = fcmp une double %34, 0.000000e+00, !dbg !602
  br i1 %cmp69, label %land.lhs.true, label %if.end87, !dbg !603

land.lhs.true:                                    ; preds = %if.end68
  %35 = load i32, i32* @ExifImageWidth, align 4, !dbg !604
  %cmp71 = icmp ne i32 %35, 0, !dbg !605
  br i1 %cmp71, label %if.then73, label %if.end87, !dbg !606

if.then73:                                        ; preds = %land.lhs.true
  %36 = load i32, i32* @ExifImageWidth, align 4, !dbg !607
  %conv74 = sitofp i32 %36 to double, !dbg !607
  %37 = load double, double* @FocalplaneUnits, align 8, !dbg !609
  %mul = fmul double %conv74, %37, !dbg !610
  %38 = load double, double* @FocalplaneXRes, align 8, !dbg !611
  %div = fdiv double %mul, %38, !dbg !612
  %conv75 = fptrunc double %div to float, !dbg !613
  store float %conv75, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 17), align 8, !dbg !614
  %39 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 13), align 8, !dbg !615
  %tobool76 = fcmp une float %39, 0.000000e+00, !dbg !617
  br i1 %tobool76, label %land.lhs.true77, label %if.end86, !dbg !618

land.lhs.true77:                                  ; preds = %if.then73
  %40 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 20), align 4, !dbg !619
  %cmp78 = icmp eq i32 %40, 0, !dbg !620
  br i1 %cmp78, label %if.then80, label %if.end86, !dbg !621

if.then80:                                        ; preds = %land.lhs.true77
  %41 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 13), align 8, !dbg !622
  %42 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 17), align 8, !dbg !624
  %div81 = fdiv float %41, %42, !dbg !625
  %mul82 = fmul float %div81, 3.600000e+01, !dbg !626
  %conv83 = fpext float %mul82 to double, !dbg !627
  %add84 = fadd double %conv83, 5.000000e-01, !dbg !628
  %conv85 = fptosi double %add84 to i32, !dbg !629
  store i32 %conv85, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 20), align 4, !dbg !630
  br label %if.end86, !dbg !631

if.end86:                                         ; preds = %if.then80, %land.lhs.true77, %if.then73
  br label %if.end87, !dbg !632

if.end87:                                         ; preds = %if.then3, %if.else20, %if.then26, %if.then38, %if.end86, %land.lhs.true, %if.end68
  ret void, !dbg !633
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @ProcessExifDir(i8* %DirStart, i8* %OffsetBase, i32 %ExifLength, i32 %NestingLevel) #0 !dbg !634 {
entry:
  %DirStart.addr = alloca i8*, align 8
  %OffsetBase.addr = alloca i8*, align 8
  %ExifLength.addr = alloca i32, align 4
  %NestingLevel.addr = alloca i32, align 4
  %de = alloca i32, align 4
  %a = alloca i32, align 4
  %NumDirEntries = alloca i32, align 4
  %ThumbnailOffset = alloca i32, align 4
  %ThumbnailSize = alloca i32, align 4
  %IndentString = alloca [25 x i8], align 16
  %DirEnd = alloca i8*, align 8
  %Tag = alloca i32, align 4
  %Format = alloca i32, align 4
  %Components = alloca i32, align 4
  %ValuePtr = alloca i8*, align 8
  %ByteCount = alloca i32, align 4
  %DirEntry = alloca i8*, align 8
  %OffsetVal = alloca i32, align 4
  %NoPrint = alloca i32, align 4
  %msiz = alloca i32, align 4
  %c = alloca i32, align 4
  %SubdirStart = alloca i8*, align 8
  %SubdirStart432 = alloca i8*, align 8
  %SubdirStart487 = alloca i8*, align 8
  %Offset = alloca i32, align 4
  store i8* %DirStart, i8** %DirStart.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %DirStart.addr, metadata !637, metadata !DIExpression()), !dbg !638
  store i8* %OffsetBase, i8** %OffsetBase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %OffsetBase.addr, metadata !639, metadata !DIExpression()), !dbg !640
  store i32 %ExifLength, i32* %ExifLength.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ExifLength.addr, metadata !641, metadata !DIExpression()), !dbg !642
  store i32 %NestingLevel, i32* %NestingLevel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %NestingLevel.addr, metadata !643, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.declare(metadata i32* %de, metadata !645, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.declare(metadata i32* %a, metadata !647, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.declare(metadata i32* %NumDirEntries, metadata !649, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata i32* %ThumbnailOffset, metadata !651, metadata !DIExpression()), !dbg !652
  store i32 0, i32* %ThumbnailOffset, align 4, !dbg !652
  call void @llvm.dbg.declare(metadata i32* %ThumbnailSize, metadata !653, metadata !DIExpression()), !dbg !654
  store i32 0, i32* %ThumbnailSize, align 4, !dbg !654
  call void @llvm.dbg.declare(metadata [25 x i8]* %IndentString, metadata !655, metadata !DIExpression()), !dbg !659
  %0 = load i32, i32* %NestingLevel.addr, align 4, !dbg !660
  %cmp = icmp sgt i32 %0, 4, !dbg !662
  br i1 %cmp, label %if.then, label %if.end, !dbg !663

if.then:                                          ; preds = %entry
  call void @ErrNonfatal(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.116, i64 0, i64 0), i32 0, i32 0), !dbg !664
  br label %if.end577, !dbg !666

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %IndentString, i64 0, i64 0, !dbg !667
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 32, i64 25, i1 false), !dbg !667
  %1 = load i32, i32* %NestingLevel.addr, align 4, !dbg !668
  %mul = mul nsw i32 %1, 4, !dbg !669
  %idxprom = sext i32 %mul to i64, !dbg !670
  %arrayidx = getelementptr inbounds [25 x i8], [25 x i8]* %IndentString, i64 0, i64 %idxprom, !dbg !670
  store i8 0, i8* %arrayidx, align 1, !dbg !671
  %2 = load i8*, i8** %DirStart.addr, align 8, !dbg !672
  %call = call i32 @Get16u(i8* %2), !dbg !673
  store i32 %call, i32* %NumDirEntries, align 4, !dbg !674
  call void @llvm.dbg.declare(metadata i8** %DirEnd, metadata !675, metadata !DIExpression()), !dbg !677
  %3 = load i8*, i8** %DirStart.addr, align 8, !dbg !678
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 2, !dbg !678
  %4 = load i32, i32* %NumDirEntries, align 4, !dbg !678
  %mul1 = mul nsw i32 12, %4, !dbg !678
  %idx.ext = sext i32 %mul1 to i64, !dbg !678
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext, !dbg !678
  store i8* %add.ptr2, i8** %DirEnd, align 8, !dbg !679
  %5 = load i8*, i8** %DirEnd, align 8, !dbg !680
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !682
  %6 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !683
  %7 = load i32, i32* %ExifLength.addr, align 4, !dbg !684
  %idx.ext4 = sext i32 %7 to i64, !dbg !685
  %add.ptr5 = getelementptr inbounds i8, i8* %6, i64 %idx.ext4, !dbg !685
  %cmp6 = icmp ugt i8* %add.ptr3, %add.ptr5, !dbg !686
  br i1 %cmp6, label %if.then7, label %if.end17, !dbg !687

if.then7:                                         ; preds = %if.end
  %8 = load i8*, i8** %DirEnd, align 8, !dbg !688
  %add.ptr8 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !691
  %9 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !692
  %10 = load i32, i32* %ExifLength.addr, align 4, !dbg !693
  %idx.ext9 = sext i32 %10 to i64, !dbg !694
  %add.ptr10 = getelementptr inbounds i8, i8* %9, i64 %idx.ext9, !dbg !694
  %cmp11 = icmp eq i8* %add.ptr8, %add.ptr10, !dbg !695
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !696

lor.lhs.false:                                    ; preds = %if.then7
  %11 = load i8*, i8** %DirEnd, align 8, !dbg !697
  %12 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !698
  %13 = load i32, i32* %ExifLength.addr, align 4, !dbg !699
  %idx.ext12 = sext i32 %13 to i64, !dbg !700
  %add.ptr13 = getelementptr inbounds i8, i8* %12, i64 %idx.ext12, !dbg !700
  %cmp14 = icmp eq i8* %11, %add.ptr13, !dbg !701
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !702

if.then15:                                        ; preds = %lor.lhs.false, %if.then7
  br label %if.end16, !dbg !703

if.else:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %NumDirEntries, align 4, !dbg !705
  call void @ErrNonfatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.117, i64 0, i64 0), i32 %14, i32 0), !dbg !707
  br label %if.end577, !dbg !708

if.end16:                                         ; preds = %if.then15
  br label %if.end17, !dbg !709

if.end17:                                         ; preds = %if.end16, %if.end
  %15 = load i32, i32* @DumpExifMap, align 4, !dbg !710
  %tobool = icmp ne i32 %15, 0, !dbg !710
  br i1 %tobool, label %if.then18, label %if.end25, !dbg !712

if.then18:                                        ; preds = %if.end17
  %16 = load i8*, i8** %DirStart.addr, align 8, !dbg !713
  %17 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !715
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64, !dbg !716
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64, !dbg !716
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !716
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !717
  %18 = load i8*, i8** %DirEnd, align 8, !dbg !718
  %add.ptr19 = getelementptr inbounds i8, i8* %18, i64 4, !dbg !719
  %19 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !720
  %sub.ptr.lhs.cast20 = ptrtoint i8* %add.ptr19 to i64, !dbg !721
  %sub.ptr.rhs.cast21 = ptrtoint i8* %19 to i64, !dbg !721
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21, !dbg !721
  %conv23 = trunc i64 %sub.ptr.sub22 to i32, !dbg !722
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.118, i64 0, i64 0), i32 %conv, i32 %conv23), !dbg !723
  br label %if.end25, !dbg !724

if.end25:                                         ; preds = %if.then18, %if.end17
  %20 = load i32, i32* @ShowTags, align 4, !dbg !725
  %tobool26 = icmp ne i32 %20, 0, !dbg !725
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !727

if.then27:                                        ; preds = %if.end25
  %21 = load i32, i32* %NumDirEntries, align 4, !dbg !728
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.119, i64 0, i64 0), i32 %21), !dbg !730
  br label %if.end29, !dbg !731

if.end29:                                         ; preds = %if.then27, %if.end25
  store i32 0, i32* %de, align 4, !dbg !732
  br label %for.cond, !dbg !734

for.cond:                                         ; preds = %for.inc484, %if.end29
  %22 = load i32, i32* %de, align 4, !dbg !735
  %23 = load i32, i32* %NumDirEntries, align 4, !dbg !737
  %cmp30 = icmp slt i32 %22, %23, !dbg !738
  br i1 %cmp30, label %for.body, label %for.end486, !dbg !739

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %Tag, metadata !740, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.declare(metadata i32* %Format, metadata !743, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.declare(metadata i32* %Components, metadata !745, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata i8** %ValuePtr, metadata !747, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.declare(metadata i32* %ByteCount, metadata !749, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.declare(metadata i8** %DirEntry, metadata !751, metadata !DIExpression()), !dbg !752
  %24 = load i8*, i8** %DirStart.addr, align 8, !dbg !753
  %add.ptr32 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !753
  %25 = load i32, i32* %de, align 4, !dbg !753
  %mul33 = mul nsw i32 12, %25, !dbg !753
  %idx.ext34 = sext i32 %mul33 to i64, !dbg !753
  %add.ptr35 = getelementptr inbounds i8, i8* %add.ptr32, i64 %idx.ext34, !dbg !753
  store i8* %add.ptr35, i8** %DirEntry, align 8, !dbg !754
  %26 = load i8*, i8** %DirEntry, align 8, !dbg !755
  %call36 = call i32 @Get16u(i8* %26), !dbg !756
  store i32 %call36, i32* %Tag, align 4, !dbg !757
  %27 = load i8*, i8** %DirEntry, align 8, !dbg !758
  %add.ptr37 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !759
  %call38 = call i32 @Get16u(i8* %add.ptr37), !dbg !760
  store i32 %call38, i32* %Format, align 4, !dbg !761
  %28 = load i8*, i8** %DirEntry, align 8, !dbg !762
  %add.ptr39 = getelementptr inbounds i8, i8* %28, i64 4, !dbg !763
  %call40 = call i32 @Get32u(i8* %add.ptr39), !dbg !764
  store i32 %call40, i32* %Components, align 4, !dbg !765
  %29 = load i32, i32* %Format, align 4, !dbg !766
  %sub = sub nsw i32 %29, 1, !dbg !768
  %cmp41 = icmp sge i32 %sub, 12, !dbg !769
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !770

if.then43:                                        ; preds = %for.body
  %30 = load i32, i32* %Format, align 4, !dbg !771
  %31 = load i32, i32* %Tag, align 4, !dbg !773
  call void @ErrNonfatal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.120, i64 0, i64 0), i32 %30, i32 %31), !dbg !774
  br label %for.inc484, !dbg !775

if.end44:                                         ; preds = %for.body
  %32 = load i32, i32* %Components, align 4, !dbg !776
  %cmp45 = icmp ugt i32 %32, 65536, !dbg !778
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !779

if.then47:                                        ; preds = %if.end44
  %33 = load i32, i32* %Components, align 4, !dbg !780
  %34 = load i32, i32* %Tag, align 4, !dbg !782
  call void @ErrNonfatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.121, i64 0, i64 0), i32 %33, i32 %34), !dbg !783
  br label %for.inc484, !dbg !784

if.end48:                                         ; preds = %if.end44
  %35 = load i32, i32* %Components, align 4, !dbg !785
  %36 = load i32, i32* %Format, align 4, !dbg !786
  %idxprom49 = sext i32 %36 to i64, !dbg !787
  %arrayidx50 = getelementptr inbounds [13 x i32], [13 x i32]* @BytesPerFormat, i64 0, i64 %idxprom49, !dbg !787
  %37 = load i32, i32* %arrayidx50, align 4, !dbg !787
  %mul51 = mul nsw i32 %35, %37, !dbg !788
  store i32 %mul51, i32* %ByteCount, align 4, !dbg !789
  %38 = load i32, i32* %ByteCount, align 4, !dbg !790
  %cmp52 = icmp sgt i32 %38, 4, !dbg !792
  br i1 %cmp52, label %if.then54, label %if.else78, !dbg !793

if.then54:                                        ; preds = %if.end48
  call void @llvm.dbg.declare(metadata i32* %OffsetVal, metadata !794, metadata !DIExpression()), !dbg !796
  %39 = load i8*, i8** %DirEntry, align 8, !dbg !797
  %add.ptr55 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !798
  %call56 = call i32 @Get32u(i8* %add.ptr55), !dbg !799
  store i32 %call56, i32* %OffsetVal, align 4, !dbg !800
  %40 = load i32, i32* %OffsetVal, align 4, !dbg !801
  %41 = load i32, i32* %ByteCount, align 4, !dbg !803
  %add = add nsw i32 %40, %41, !dbg !804
  %42 = load i32, i32* %ExifLength.addr, align 4, !dbg !805
  %cmp57 = icmp sgt i32 %add, %42, !dbg !806
  br i1 %cmp57, label %if.then65, label %lor.lhs.false59, !dbg !807

lor.lhs.false59:                                  ; preds = %if.then54
  %43 = load i32, i32* %OffsetVal, align 4, !dbg !808
  %cmp60 = icmp slt i32 %43, 0, !dbg !809
  br i1 %cmp60, label %if.then65, label %lor.lhs.false62, !dbg !810

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %44 = load i32, i32* %OffsetVal, align 4, !dbg !811
  %cmp63 = icmp sgt i32 %44, 65536, !dbg !812
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !813

if.then65:                                        ; preds = %lor.lhs.false62, %lor.lhs.false59, %if.then54
  %45 = load i32, i32* %Tag, align 4, !dbg !814
  call void @ErrNonfatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.122, i64 0, i64 0), i32 %45, i32 0), !dbg !816
  br label %for.inc484, !dbg !817

if.end66:                                         ; preds = %lor.lhs.false62
  %46 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !818
  %47 = load i32, i32* %OffsetVal, align 4, !dbg !819
  %idx.ext67 = sext i32 %47 to i64, !dbg !820
  %add.ptr68 = getelementptr inbounds i8, i8* %46, i64 %idx.ext67, !dbg !820
  store i8* %add.ptr68, i8** %ValuePtr, align 8, !dbg !821
  %48 = load i32, i32* %OffsetVal, align 4, !dbg !822
  %49 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 35), align 4, !dbg !824
  %cmp69 = icmp sgt i32 %48, %49, !dbg !825
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !826

if.then71:                                        ; preds = %if.end66
  %50 = load i32, i32* %OffsetVal, align 4, !dbg !827
  store i32 %50, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 35), align 4, !dbg !829
  br label %if.end72, !dbg !830

if.end72:                                         ; preds = %if.then71, %if.end66
  %51 = load i32, i32* @DumpExifMap, align 4, !dbg !831
  %tobool73 = icmp ne i32 %51, 0, !dbg !831
  br i1 %tobool73, label %if.then74, label %if.end77, !dbg !833

if.then74:                                        ; preds = %if.end72
  %52 = load i32, i32* %OffsetVal, align 4, !dbg !834
  %53 = load i32, i32* %OffsetVal, align 4, !dbg !836
  %54 = load i32, i32* %ByteCount, align 4, !dbg !837
  %add75 = add nsw i32 %53, %54, !dbg !838
  %55 = load i32, i32* %Tag, align 4, !dbg !839
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.123, i64 0, i64 0), i32 %52, i32 %add75, i32 %55), !dbg !840
  br label %if.end77, !dbg !841

if.end77:                                         ; preds = %if.then74, %if.end72
  br label %if.end80, !dbg !842

if.else78:                                        ; preds = %if.end48
  %56 = load i8*, i8** %DirEntry, align 8, !dbg !843
  %add.ptr79 = getelementptr inbounds i8, i8* %56, i64 8, !dbg !845
  store i8* %add.ptr79, i8** %ValuePtr, align 8, !dbg !846
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.end77
  %57 = load i32, i32* %Tag, align 4, !dbg !847
  %cmp81 = icmp eq i32 %57, 37500, !dbg !849
  br i1 %cmp81, label %if.then83, label %if.end89, !dbg !850

if.then83:                                        ; preds = %if.end80
  %58 = load i32, i32* @ShowTags, align 4, !dbg !851
  %tobool84 = icmp ne i32 %58, 0, !dbg !851
  br i1 %tobool84, label %if.then85, label %if.end88, !dbg !854

if.then85:                                        ; preds = %if.then83
  %arraydecay86 = getelementptr inbounds [25 x i8], [25 x i8]* %IndentString, i64 0, i64 0, !dbg !855
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.124, i64 0, i64 0), i8* %arraydecay86), !dbg !857
  br label %if.end88, !dbg !858

if.end88:                                         ; preds = %if.then85, %if.then83
  %59 = load i8*, i8** %ValuePtr, align 8, !dbg !859
  %60 = load i32, i32* %ByteCount, align 4, !dbg !860
  %61 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !861
  %62 = load i32, i32* %ExifLength.addr, align 4, !dbg !862
  call void @ProcessMakerNote(i8* %59, i32 %60, i8* %61, i32 %62), !dbg !863
  br label %for.inc484, !dbg !864

if.end89:                                         ; preds = %if.end80
  %63 = load i32, i32* @ShowTags, align 4, !dbg !865
  %tobool90 = icmp ne i32 %63, 0, !dbg !865
  br i1 %tobool90, label %if.then91, label %if.end149, !dbg !867

if.then91:                                        ; preds = %if.end89
  store i32 0, i32* %a, align 4, !dbg !868
  br label %for.cond92, !dbg !871

for.cond92:                                       ; preds = %for.inc, %if.then91
  %64 = load i32, i32* %a, align 4, !dbg !872
  %conv93 = sext i32 %64 to i64, !dbg !872
  %cmp94 = icmp uge i64 %conv93, 106, !dbg !876
  br i1 %cmp94, label %if.then96, label %if.end99, !dbg !877

if.then96:                                        ; preds = %for.cond92
  %arraydecay97 = getelementptr inbounds [25 x i8], [25 x i8]* %IndentString, i64 0, i64 0, !dbg !878
  %65 = load i32, i32* %Tag, align 4, !dbg !880
  %call98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.125, i64 0, i64 0), i8* %arraydecay97, i32 %65), !dbg !881
  br label %for.end, !dbg !882

if.end99:                                         ; preds = %for.cond92
  %66 = load i32, i32* %a, align 4, !dbg !883
  %idxprom100 = sext i32 %66 to i64, !dbg !885
  %arrayidx101 = getelementptr inbounds [106 x %struct.TagTable_t], [106 x %struct.TagTable_t]* @TagTable, i64 0, i64 %idxprom100, !dbg !885
  %Tag102 = getelementptr inbounds %struct.TagTable_t, %struct.TagTable_t* %arrayidx101, i32 0, i32 0, !dbg !886
  %67 = load i16, i16* %Tag102, align 16, !dbg !886
  %conv103 = zext i16 %67 to i32, !dbg !885
  %68 = load i32, i32* %Tag, align 4, !dbg !887
  %cmp104 = icmp eq i32 %conv103, %68, !dbg !888
  br i1 %cmp104, label %if.then106, label %if.end111, !dbg !889

if.then106:                                       ; preds = %if.end99
  %arraydecay107 = getelementptr inbounds [25 x i8], [25 x i8]* %IndentString, i64 0, i64 0, !dbg !890
  %69 = load i32, i32* %a, align 4, !dbg !892
  %idxprom108 = sext i32 %69 to i64, !dbg !893
  %arrayidx109 = getelementptr inbounds [106 x %struct.TagTable_t], [106 x %struct.TagTable_t]* @TagTable, i64 0, i64 %idxprom108, !dbg !893
  %Desc = getelementptr inbounds %struct.TagTable_t, %struct.TagTable_t* %arrayidx109, i32 0, i32 1, !dbg !894
  %70 = load i8*, i8** %Desc, align 8, !dbg !894
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i64 0, i64 0), i8* %arraydecay107, i8* %70), !dbg !895
  br label %for.end, !dbg !896

if.end111:                                        ; preds = %if.end99
  br label %for.inc, !dbg !897

for.inc:                                          ; preds = %if.end111
  %71 = load i32, i32* %a, align 4, !dbg !898
  %inc = add nsw i32 %71, 1, !dbg !898
  store i32 %inc, i32* %a, align 4, !dbg !898
  br label %for.cond92, !dbg !899, !llvm.loop !900

for.end:                                          ; preds = %if.then106, %if.then96
  %72 = load i32, i32* %Format, align 4, !dbg !903
  switch i32 %72, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb119
    i32 2, label %sw.bb119
  ], !dbg !904

sw.bb:                                            ; preds = %for.end
  %73 = load i32, i32* %ByteCount, align 4, !dbg !905
  %cmp112 = icmp sgt i32 %73, 1, !dbg !908
  br i1 %cmp112, label %if.then114, label %if.else116, !dbg !909

if.then114:                                       ; preds = %sw.bb
  %74 = load i32, i32* %ByteCount, align 4, !dbg !910
  %div = sdiv i32 %74, 2, !dbg !912
  %75 = load i8*, i8** %ValuePtr, align 8, !dbg !913
  %76 = bitcast i8* %75 to i32*, !dbg !914
  %call115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i64 0, i64 0), i32 %div, i32* %76), !dbg !915
  br label %if.end118, !dbg !916

if.else116:                                       ; preds = %sw.bb
  %77 = load i8*, i8** %ValuePtr, align 8, !dbg !917
  %78 = load i32, i32* %Format, align 4, !dbg !919
  %79 = load i32, i32* %ByteCount, align 4, !dbg !920
  call void @PrintFormatNumber(i8* %77, i32 %78, i32 %79), !dbg !921
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)), !dbg !922
  br label %if.end118

if.end118:                                        ; preds = %if.else116, %if.then114
  br label %sw.epilog, !dbg !923

sw.bb119:                                         ; preds = %for.end, %for.end
  call void @llvm.dbg.declare(metadata i32* %NoPrint, metadata !924, metadata !DIExpression()), !dbg !926
  store i32 0, i32* %NoPrint, align 4, !dbg !926
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0)), !dbg !927
  store i32 0, i32* %a, align 4, !dbg !928
  br label %for.cond121, !dbg !930

for.cond121:                                      ; preds = %for.inc144, %sw.bb119
  %80 = load i32, i32* %a, align 4, !dbg !931
  %81 = load i32, i32* %ByteCount, align 4, !dbg !933
  %cmp122 = icmp slt i32 %80, %81, !dbg !934
  br i1 %cmp122, label %for.body124, label %for.end146, !dbg !935

for.body124:                                      ; preds = %for.cond121
  %82 = load i8*, i8** %ValuePtr, align 8, !dbg !936
  %83 = load i32, i32* %a, align 4, !dbg !939
  %idxprom125 = sext i32 %83 to i64, !dbg !936
  %arrayidx126 = getelementptr inbounds i8, i8* %82, i64 %idxprom125, !dbg !936
  %84 = load i8, i8* %arrayidx126, align 1, !dbg !936
  %conv127 = zext i8 %84 to i32, !dbg !936
  %cmp128 = icmp sge i32 %conv127, 32, !dbg !940
  br i1 %cmp128, label %if.then130, label %if.else135, !dbg !941

if.then130:                                       ; preds = %for.body124
  %85 = load i8*, i8** %ValuePtr, align 8, !dbg !942
  %86 = load i32, i32* %a, align 4, !dbg !944
  %idxprom131 = sext i32 %86 to i64, !dbg !942
  %arrayidx132 = getelementptr inbounds i8, i8* %85, i64 %idxprom131, !dbg !942
  %87 = load i8, i8* %arrayidx132, align 1, !dbg !942
  %conv133 = zext i8 %87 to i32, !dbg !942
  %call134 = call i32 @putchar(i32 %conv133), !dbg !945
  store i32 0, i32* %NoPrint, align 4, !dbg !946
  br label %if.end143, !dbg !947

if.else135:                                       ; preds = %for.body124
  %88 = load i32, i32* %NoPrint, align 4, !dbg !948
  %tobool136 = icmp ne i32 %88, 0, !dbg !948
  br i1 %tobool136, label %if.end142, label %land.lhs.true, !dbg !951

land.lhs.true:                                    ; preds = %if.else135
  %89 = load i32, i32* %a, align 4, !dbg !952
  %90 = load i32, i32* %ByteCount, align 4, !dbg !953
  %sub137 = sub nsw i32 %90, 1, !dbg !954
  %cmp138 = icmp ne i32 %89, %sub137, !dbg !955
  br i1 %cmp138, label %if.then140, label %if.end142, !dbg !956

if.then140:                                       ; preds = %land.lhs.true
  %call141 = call i32 @putchar(i32 63), !dbg !957
  store i32 1, i32* %NoPrint, align 4, !dbg !959
  br label %if.end142, !dbg !960

if.end142:                                        ; preds = %if.then140, %land.lhs.true, %if.else135
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.then130
  br label %for.inc144, !dbg !961

for.inc144:                                       ; preds = %if.end143
  %91 = load i32, i32* %a, align 4, !dbg !962
  %inc145 = add nsw i32 %91, 1, !dbg !962
  store i32 %inc145, i32* %a, align 4, !dbg !962
  br label %for.cond121, !dbg !963, !llvm.loop !964

for.end146:                                       ; preds = %for.cond121
  %call147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i64 0, i64 0)), !dbg !966
  br label %sw.epilog, !dbg !967

sw.default:                                       ; preds = %for.end
  %92 = load i8*, i8** %ValuePtr, align 8, !dbg !968
  %93 = load i32, i32* %Format, align 4, !dbg !969
  %94 = load i32, i32* %ByteCount, align 4, !dbg !970
  call void @PrintFormatNumber(i8* %92, i32 %93, i32 %94), !dbg !971
  %call148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)), !dbg !972
  br label %sw.epilog, !dbg !973

sw.epilog:                                        ; preds = %sw.default, %for.end146, %if.end118
  br label %if.end149, !dbg !974

if.end149:                                        ; preds = %sw.epilog, %if.end89
  %95 = load i32, i32* %Tag, align 4, !dbg !975
  switch i32 %95, label %sw.epilog483 [
    i32 271, label %sw.bb150
    i32 272, label %sw.bb155
    i32 36867, label %sw.bb164
    i32 36868, label %sw.bb166
    i32 306, label %sw.bb166
    i32 40092, label %sw.bb187
    i32 37510, label %sw.bb205
    i32 33437, label %sw.bb278
    i32 37378, label %sw.bb281
    i32 37381, label %sw.bb281
    i32 37386, label %sw.bb292
    i32 37382, label %sw.bb295
    i32 33434, label %sw.bb298
    i32 37377, label %sw.bb301
    i32 37385, label %sw.bb312
    i32 274, label %sw.bb315
    i32 40963, label %sw.bb338
    i32 40962, label %sw.bb338
    i32 41486, label %sw.bb345
    i32 41488, label %sw.bb347
    i32 37380, label %sw.bb356
    i32 41987, label %sw.bb359
    i32 37384, label %sw.bb362
    i32 37383, label %sw.bb365
    i32 34850, label %sw.bb368
    i32 41493, label %sw.bb371
    i32 41986, label %sw.bb378
    i32 34855, label %sw.bb381
    i32 41988, label %sw.bb384
    i32 513, label %sw.bb387
    i32 514, label %sw.bb390
    i32 34665, label %sw.bb397
    i32 40965, label %sw.bb403
    i32 34853, label %sw.bb426
    i32 41989, label %sw.bb446
    i32 41996, label %sw.bb449
    i32 282, label %sw.bb452
    i32 283, label %sw.bb464
    i32 296, label %sw.bb476
  ], !dbg !976

sw.bb150:                                         ; preds = %if.end149
  %96 = load i8*, i8** %ValuePtr, align 8, !dbg !977
  %97 = load i32, i32* %ByteCount, align 4, !dbg !979
  %cmp151 = icmp slt i32 %97, 31, !dbg !980
  br i1 %cmp151, label %cond.true, label %cond.false, !dbg !979

cond.true:                                        ; preds = %sw.bb150
  %98 = load i32, i32* %ByteCount, align 4, !dbg !981
  br label %cond.end, !dbg !979

cond.false:                                       ; preds = %sw.bb150
  br label %cond.end, !dbg !979

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %98, %cond.true ], [ 31, %cond.false ], !dbg !979
  %conv153 = sext i32 %cond to i64, !dbg !979
  %call154 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 4, i64 0), i8* %96, i64 %conv153) #9, !dbg !982
  br label %sw.epilog483, !dbg !983

sw.bb155:                                         ; preds = %if.end149
  %99 = load i8*, i8** %ValuePtr, align 8, !dbg !984
  %100 = load i32, i32* %ByteCount, align 4, !dbg !985
  %cmp156 = icmp slt i32 %100, 39, !dbg !986
  br i1 %cmp156, label %cond.true158, label %cond.false159, !dbg !985

cond.true158:                                     ; preds = %sw.bb155
  %101 = load i32, i32* %ByteCount, align 4, !dbg !987
  br label %cond.end160, !dbg !985

cond.false159:                                    ; preds = %sw.bb155
  br label %cond.end160, !dbg !985

cond.end160:                                      ; preds = %cond.false159, %cond.true158
  %cond161 = phi i32 [ %101, %cond.true158 ], [ 39, %cond.false159 ], !dbg !985
  %conv162 = sext i32 %cond161 to i64, !dbg !985
  %call163 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 5, i64 0), i8* %99, i64 %conv162) #9, !dbg !988
  br label %sw.epilog483, !dbg !989

sw.bb164:                                         ; preds = %if.end149
  %102 = load i8*, i8** %ValuePtr, align 8, !dbg !990
  %call165 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0), i8* %102, i64 19) #9, !dbg !991
  br label %sw.bb166, !dbg !991

sw.bb166:                                         ; preds = %if.end149, %if.end149, %sw.bb164
  %call167 = call i16** @__ctype_b_loc() #10, !dbg !992
  %103 = load i16*, i16** %call167, align 8, !dbg !992
  %104 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0), align 4, !dbg !992
  %conv168 = sext i8 %104 to i32, !dbg !992
  %idxprom169 = sext i32 %conv168 to i64, !dbg !992
  %arrayidx170 = getelementptr inbounds i16, i16* %103, i64 %idxprom169, !dbg !992
  %105 = load i16, i16* %arrayidx170, align 2, !dbg !992
  %conv171 = zext i16 %105 to i32, !dbg !992
  %and = and i32 %conv171, 2048, !dbg !992
  %tobool172 = icmp ne i32 %and, 0, !dbg !992
  br i1 %tobool172, label %if.end175, label %if.then173, !dbg !994

if.then173:                                       ; preds = %sw.bb166
  %106 = load i8*, i8** %ValuePtr, align 8, !dbg !995
  %call174 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0), i8* %106, i64 19) #9, !dbg !997
  br label %if.end175, !dbg !998

if.end175:                                        ; preds = %if.then173, %sw.bb166
  %107 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 39), align 8, !dbg !999
  %cmp176 = icmp sge i32 %107, 10, !dbg !1001
  br i1 %cmp176, label %if.then178, label %if.end179, !dbg !1002

if.then178:                                       ; preds = %if.end175
  call void @ErrNonfatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.129, i64 0, i64 0), i32 10, i32 0), !dbg !1003
  br label %sw.epilog483, !dbg !1005

if.end179:                                        ; preds = %if.end175
  %108 = load i8*, i8** %ValuePtr, align 8, !dbg !1006
  %109 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1007
  %sub.ptr.lhs.cast180 = ptrtoint i8* %108 to i64, !dbg !1008
  %sub.ptr.rhs.cast181 = ptrtoint i8* %109 to i64, !dbg !1008
  %sub.ptr.sub182 = sub i64 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181, !dbg !1008
  %conv183 = trunc i64 %sub.ptr.sub182 to i32, !dbg !1009
  %110 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 39), align 8, !dbg !1010
  %inc184 = add nsw i32 %110, 1, !dbg !1010
  store i32 %inc184, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 39), align 8, !dbg !1010
  %idxprom185 = sext i32 %110 to i64, !dbg !1011
  %arrayidx186 = getelementptr inbounds [10 x i32], [10 x i32]* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 38), i64 0, i64 %idxprom185, !dbg !1011
  store i32 %conv183, i32* %arrayidx186, align 4, !dbg !1012
  br label %sw.epilog483, !dbg !1013

sw.bb187:                                         ; preds = %if.end149
  %111 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 31, i64 0), align 8, !dbg !1014
  %tobool188 = icmp ne i8 %111, 0, !dbg !1014
  br i1 %tobool188, label %if.then189, label %if.end194, !dbg !1016

if.then189:                                       ; preds = %sw.bb187
  %112 = load i32, i32* @ShowTags, align 4, !dbg !1017
  %tobool190 = icmp ne i32 %112, 0, !dbg !1017
  br i1 %tobool190, label %if.then191, label %if.end193, !dbg !1020

if.then191:                                       ; preds = %if.then189
  %call192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.130, i64 0, i64 0)), !dbg !1021
  br label %if.end193, !dbg !1021

if.end193:                                        ; preds = %if.then191, %if.then189
  br label %sw.epilog483, !dbg !1022

if.end194:                                        ; preds = %sw.bb187
  %113 = load i32, i32* %ByteCount, align 4, !dbg !1023
  %cmp195 = icmp sgt i32 %113, 1, !dbg !1025
  br i1 %cmp195, label %if.then197, label %if.end204, !dbg !1026

if.then197:                                       ; preds = %if.end194
  %114 = load i32, i32* %ByteCount, align 4, !dbg !1027
  %cmp198 = icmp sgt i32 %114, 16000, !dbg !1030
  br i1 %cmp198, label %if.then200, label %if.end201, !dbg !1031

if.then200:                                       ; preds = %if.then197
  store i32 16000, i32* %ByteCount, align 4, !dbg !1032
  br label %if.end201, !dbg !1033

if.end201:                                        ; preds = %if.then200, %if.then197
  %115 = load i8*, i8** %ValuePtr, align 8, !dbg !1034
  %116 = load i32, i32* %ByteCount, align 4, !dbg !1035
  %conv202 = sext i32 %116 to i64, !dbg !1035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 31, i64 0), i8* align 1 %115, i64 %conv202, i1 false), !dbg !1036
  %117 = load i32, i32* %ByteCount, align 4, !dbg !1037
  %div203 = sdiv i32 %117, 2, !dbg !1038
  store i32 %div203, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 32), align 8, !dbg !1039
  br label %if.end204, !dbg !1040

if.end204:                                        ; preds = %if.end201, %if.end194
  br label %sw.epilog483, !dbg !1041

sw.bb205:                                         ; preds = %if.end149
  %118 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 31, i64 0), align 8, !dbg !1042
  %tobool206 = icmp ne i8 %118, 0, !dbg !1042
  br i1 %tobool206, label %if.then207, label %if.end212, !dbg !1044

if.then207:                                       ; preds = %sw.bb205
  %119 = load i32, i32* @ShowTags, align 4, !dbg !1045
  %tobool208 = icmp ne i32 %119, 0, !dbg !1045
  br i1 %tobool208, label %if.then209, label %if.end211, !dbg !1048

if.then209:                                       ; preds = %if.then207
  %call210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.131, i64 0, i64 0)), !dbg !1049
  br label %if.end211, !dbg !1049

if.end211:                                        ; preds = %if.then209, %if.then207
  br label %sw.epilog483, !dbg !1050

if.end212:                                        ; preds = %sw.bb205
  %120 = load i32, i32* %ByteCount, align 4, !dbg !1051
  store i32 %120, i32* %a, align 4, !dbg !1053
  br label %for.cond213, !dbg !1054

for.cond213:                                      ; preds = %if.end227, %if.end212
  %121 = load i32, i32* %a, align 4, !dbg !1055
  %dec = add nsw i32 %121, -1, !dbg !1055
  store i32 %dec, i32* %a, align 4, !dbg !1055
  %122 = load i8*, i8** %ValuePtr, align 8, !dbg !1058
  %123 = load i32, i32* %a, align 4, !dbg !1060
  %idxprom214 = sext i32 %123 to i64, !dbg !1061
  %arrayidx215 = getelementptr inbounds i8, i8* %122, i64 %idxprom214, !dbg !1061
  %124 = load i8, i8* %arrayidx215, align 1, !dbg !1061
  %conv216 = zext i8 %124 to i32, !dbg !1061
  %cmp217 = icmp eq i32 %conv216, 32, !dbg !1062
  br i1 %cmp217, label %if.then219, label %if.else222, !dbg !1063

if.then219:                                       ; preds = %for.cond213
  %125 = load i8*, i8** %ValuePtr, align 8, !dbg !1064
  %126 = load i32, i32* %a, align 4, !dbg !1066
  %idxprom220 = sext i32 %126 to i64, !dbg !1067
  %arrayidx221 = getelementptr inbounds i8, i8* %125, i64 %idxprom220, !dbg !1067
  store i8 0, i8* %arrayidx221, align 1, !dbg !1068
  br label %if.end223, !dbg !1069

if.else222:                                       ; preds = %for.cond213
  br label %for.end228, !dbg !1070

if.end223:                                        ; preds = %if.then219
  %127 = load i32, i32* %a, align 4, !dbg !1072
  %cmp224 = icmp eq i32 %127, 0, !dbg !1074
  br i1 %cmp224, label %if.then226, label %if.end227, !dbg !1075

if.then226:                                       ; preds = %if.end223
  br label %for.end228, !dbg !1076

if.end227:                                        ; preds = %if.end223
  br label %for.cond213, !dbg !1077, !llvm.loop !1078

for.end228:                                       ; preds = %if.then226, %if.else222
  call void @llvm.dbg.declare(metadata i32* %msiz, metadata !1081, metadata !DIExpression()), !dbg !1083
  %128 = load i32, i32* %ExifLength.addr, align 4, !dbg !1084
  %conv229 = sext i32 %128 to i64, !dbg !1084
  %129 = load i8*, i8** %ValuePtr, align 8, !dbg !1085
  %130 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1086
  %sub.ptr.lhs.cast230 = ptrtoint i8* %129 to i64, !dbg !1087
  %sub.ptr.rhs.cast231 = ptrtoint i8* %130 to i64, !dbg !1087
  %sub.ptr.sub232 = sub i64 %sub.ptr.lhs.cast230, %sub.ptr.rhs.cast231, !dbg !1087
  %sub233 = sub nsw i64 %conv229, %sub.ptr.sub232, !dbg !1088
  %conv234 = trunc i64 %sub233 to i32, !dbg !1084
  store i32 %conv234, i32* %msiz, align 4, !dbg !1083
  %131 = load i32, i32* %msiz, align 4, !dbg !1089
  %132 = load i32, i32* %ByteCount, align 4, !dbg !1091
  %cmp235 = icmp sgt i32 %131, %132, !dbg !1092
  br i1 %cmp235, label %if.then237, label %if.end238, !dbg !1093

if.then237:                                       ; preds = %for.end228
  %133 = load i32, i32* %ByteCount, align 4, !dbg !1094
  store i32 %133, i32* %msiz, align 4, !dbg !1095
  br label %if.end238, !dbg !1096

if.end238:                                        ; preds = %if.then237, %for.end228
  %134 = load i32, i32* %msiz, align 4, !dbg !1097
  %cmp239 = icmp sgt i32 %134, 15999, !dbg !1099
  br i1 %cmp239, label %if.then241, label %if.end242, !dbg !1100

if.then241:                                       ; preds = %if.end238
  store i32 15999, i32* %msiz, align 4, !dbg !1101
  br label %if.end242, !dbg !1102

if.end242:                                        ; preds = %if.then241, %if.end238
  %135 = load i32, i32* %msiz, align 4, !dbg !1103
  %cmp243 = icmp sgt i32 %135, 5, !dbg !1105
  br i1 %cmp243, label %land.lhs.true245, label %if.else274, !dbg !1106

land.lhs.true245:                                 ; preds = %if.end242
  %136 = load i8*, i8** %ValuePtr, align 8, !dbg !1107
  %call246 = call i32 @memcmp(i8* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i64 0, i64 0), i64 5) #8, !dbg !1108
  %cmp247 = icmp eq i32 %call246, 0, !dbg !1109
  br i1 %cmp247, label %if.then249, label %if.else274, !dbg !1110

if.then249:                                       ; preds = %land.lhs.true245
  store i32 5, i32* %a, align 4, !dbg !1111
  br label %for.cond250, !dbg !1114

for.cond250:                                      ; preds = %for.inc271, %if.then249
  %137 = load i32, i32* %a, align 4, !dbg !1115
  %cmp251 = icmp slt i32 %137, 10, !dbg !1117
  br i1 %cmp251, label %land.rhs, label %land.end, !dbg !1118

land.rhs:                                         ; preds = %for.cond250
  %138 = load i32, i32* %a, align 4, !dbg !1119
  %139 = load i32, i32* %msiz, align 4, !dbg !1120
  %cmp253 = icmp slt i32 %138, %139, !dbg !1121
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond250
  %140 = phi i1 [ false, %for.cond250 ], [ %cmp253, %land.rhs ], !dbg !1122
  br i1 %140, label %for.body255, label %for.end273, !dbg !1123

for.body255:                                      ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %c, metadata !1124, metadata !DIExpression()), !dbg !1126
  %141 = load i8*, i8** %ValuePtr, align 8, !dbg !1127
  %142 = load i32, i32* %a, align 4, !dbg !1128
  %idxprom256 = sext i32 %142 to i64, !dbg !1129
  %arrayidx257 = getelementptr inbounds i8, i8* %141, i64 %idxprom256, !dbg !1129
  %143 = load i8, i8* %arrayidx257, align 1, !dbg !1129
  %conv258 = zext i8 %143 to i32, !dbg !1129
  store i32 %conv258, i32* %c, align 4, !dbg !1126
  %144 = load i32, i32* %c, align 4, !dbg !1130
  %cmp259 = icmp ne i32 %144, 0, !dbg !1132
  br i1 %cmp259, label %land.lhs.true261, label %if.end270, !dbg !1133

land.lhs.true261:                                 ; preds = %for.body255
  %145 = load i32, i32* %c, align 4, !dbg !1134
  %cmp262 = icmp ne i32 %145, 32, !dbg !1135
  br i1 %cmp262, label %if.then264, label %if.end270, !dbg !1136

if.then264:                                       ; preds = %land.lhs.true261
  %146 = load i8*, i8** %ValuePtr, align 8, !dbg !1137
  %147 = load i32, i32* %a, align 4, !dbg !1139
  %idx.ext265 = sext i32 %147 to i64, !dbg !1140
  %add.ptr266 = getelementptr inbounds i8, i8* %146, i64 %idx.ext265, !dbg !1140
  %148 = load i32, i32* %msiz, align 4, !dbg !1141
  %149 = load i32, i32* %a, align 4, !dbg !1142
  %sub267 = sub nsw i32 %148, %149, !dbg !1143
  %conv268 = sext i32 %sub267 to i64, !dbg !1141
  %call269 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 31, i64 0), i8* %add.ptr266, i64 %conv268) #9, !dbg !1144
  br label %for.end273, !dbg !1145

if.end270:                                        ; preds = %land.lhs.true261, %for.body255
  br label %for.inc271, !dbg !1146

for.inc271:                                       ; preds = %if.end270
  %150 = load i32, i32* %a, align 4, !dbg !1147
  %inc272 = add nsw i32 %150, 1, !dbg !1147
  store i32 %inc272, i32* %a, align 4, !dbg !1147
  br label %for.cond250, !dbg !1148, !llvm.loop !1149

for.end273:                                       ; preds = %if.then264, %land.end
  br label %if.end277, !dbg !1151

if.else274:                                       ; preds = %land.lhs.true245, %if.end242
  %151 = load i8*, i8** %ValuePtr, align 8, !dbg !1152
  %152 = load i32, i32* %msiz, align 4, !dbg !1154
  %conv275 = sext i32 %152 to i64, !dbg !1154
  %call276 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 31, i64 0), i8* %151, i64 %conv275) #9, !dbg !1155
  br label %if.end277

if.end277:                                        ; preds = %if.else274, %for.end273
  br label %sw.epilog483, !dbg !1156

sw.bb278:                                         ; preds = %if.end149
  %153 = load i8*, i8** %ValuePtr, align 8, !dbg !1157
  %154 = load i32, i32* %Format, align 4, !dbg !1158
  %call279 = call double @ConvertAnyFormat(i8* %153, i32 %154), !dbg !1159
  %conv280 = fptrunc double %call279 to float, !dbg !1160
  store float %conv280, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 15), align 8, !dbg !1161
  br label %sw.epilog483, !dbg !1162

sw.bb281:                                         ; preds = %if.end149, %if.end149
  %155 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 15), align 8, !dbg !1163
  %cmp282 = fcmp oeq float %155, 0.000000e+00, !dbg !1165
  br i1 %cmp282, label %if.then284, label %if.end291, !dbg !1166

if.then284:                                       ; preds = %sw.bb281
  %156 = load i8*, i8** %ValuePtr, align 8, !dbg !1167
  %157 = load i32, i32* %Format, align 4, !dbg !1169
  %call285 = call double @ConvertAnyFormat(i8* %156, i32 %157), !dbg !1170
  %call286 = call double @log(double 2.000000e+00) #9, !dbg !1171
  %mul287 = fmul double %call285, %call286, !dbg !1172
  %mul288 = fmul double %mul287, 5.000000e-01, !dbg !1173
  %call289 = call double @exp(double %mul288) #9, !dbg !1174
  %conv290 = fptrunc double %call289 to float, !dbg !1175
  store float %conv290, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 15), align 8, !dbg !1176
  br label %if.end291, !dbg !1177

if.end291:                                        ; preds = %if.then284, %sw.bb281
  br label %sw.epilog483, !dbg !1178

sw.bb292:                                         ; preds = %if.end149
  %158 = load i8*, i8** %ValuePtr, align 8, !dbg !1179
  %159 = load i32, i32* %Format, align 4, !dbg !1180
  %call293 = call double @ConvertAnyFormat(i8* %158, i32 %159), !dbg !1181
  %conv294 = fptrunc double %call293 to float, !dbg !1182
  store float %conv294, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 13), align 8, !dbg !1183
  br label %sw.epilog483, !dbg !1184

sw.bb295:                                         ; preds = %if.end149
  %160 = load i8*, i8** %ValuePtr, align 8, !dbg !1185
  %161 = load i32, i32* %Format, align 4, !dbg !1186
  %call296 = call double @ConvertAnyFormat(i8* %160, i32 %161), !dbg !1187
  %conv297 = fptrunc double %call296 to float, !dbg !1188
  store float %conv297, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 16), align 4, !dbg !1189
  br label %sw.epilog483, !dbg !1190

sw.bb298:                                         ; preds = %if.end149
  %162 = load i8*, i8** %ValuePtr, align 8, !dbg !1191
  %163 = load i32, i32* %Format, align 4, !dbg !1192
  %call299 = call double @ConvertAnyFormat(i8* %162, i32 %163), !dbg !1193
  %conv300 = fptrunc double %call299 to float, !dbg !1194
  store float %conv300, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !1195
  br label %sw.epilog483, !dbg !1196

sw.bb301:                                         ; preds = %if.end149
  %164 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !1197
  %cmp302 = fcmp oeq float %164, 0.000000e+00, !dbg !1199
  br i1 %cmp302, label %if.then304, label %if.end311, !dbg !1200

if.then304:                                       ; preds = %sw.bb301
  %165 = load i8*, i8** %ValuePtr, align 8, !dbg !1201
  %166 = load i32, i32* %Format, align 4, !dbg !1203
  %call305 = call double @ConvertAnyFormat(i8* %165, i32 %166), !dbg !1204
  %call306 = call double @log(double 2.000000e+00) #9, !dbg !1205
  %mul307 = fmul double %call305, %call306, !dbg !1206
  %call308 = call double @exp(double %mul307) #9, !dbg !1207
  %div309 = fdiv double 1.000000e+00, %call308, !dbg !1208
  %conv310 = fptrunc double %div309 to float, !dbg !1209
  store float %conv310, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !1210
  br label %if.end311, !dbg !1211

if.end311:                                        ; preds = %if.then304, %sw.bb301
  br label %sw.epilog483, !dbg !1212

sw.bb312:                                         ; preds = %if.end149
  %167 = load i8*, i8** %ValuePtr, align 8, !dbg !1213
  %168 = load i32, i32* %Format, align 4, !dbg !1214
  %call313 = call double @ConvertAnyFormat(i8* %167, i32 %168), !dbg !1215
  %conv314 = fptosi double %call313 to i32, !dbg !1216
  store i32 %conv314, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 12), align 4, !dbg !1217
  br label %sw.epilog483, !dbg !1218

sw.bb315:                                         ; preds = %if.end149
  %169 = load i32, i32* @NumOrientations, align 4, !dbg !1219
  %cmp316 = icmp sge i32 %169, 2, !dbg !1221
  br i1 %cmp316, label %if.then318, label %if.end319, !dbg !1222

if.then318:                                       ; preds = %sw.bb315
  call void @ErrNonfatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.133, i64 0, i64 0), i32 0, i32 0), !dbg !1223
  br label %sw.epilog483, !dbg !1225

if.end319:                                        ; preds = %sw.bb315
  %170 = load i8*, i8** %ValuePtr, align 8, !dbg !1226
  %171 = load i32, i32* @NumOrientations, align 4, !dbg !1227
  %idxprom320 = sext i32 %171 to i64, !dbg !1228
  %arrayidx321 = getelementptr inbounds [2 x i8*], [2 x i8*]* @OrientationPtr, i64 0, i64 %idxprom320, !dbg !1228
  store i8* %170, i8** %arrayidx321, align 8, !dbg !1229
  %172 = load i32, i32* %Format, align 4, !dbg !1230
  %173 = load i32, i32* @NumOrientations, align 4, !dbg !1231
  %idxprom322 = sext i32 %173 to i64, !dbg !1232
  %arrayidx323 = getelementptr inbounds [2 x i32], [2 x i32]* @OrientationNumFormat, i64 0, i64 %idxprom322, !dbg !1232
  store i32 %172, i32* %arrayidx323, align 4, !dbg !1233
  %174 = load i32, i32* @NumOrientations, align 4, !dbg !1234
  %cmp324 = icmp eq i32 %174, 0, !dbg !1236
  br i1 %cmp324, label %if.then326, label %if.end329, !dbg !1237

if.then326:                                       ; preds = %if.end319
  %175 = load i8*, i8** %ValuePtr, align 8, !dbg !1238
  %176 = load i32, i32* %Format, align 4, !dbg !1240
  %call327 = call double @ConvertAnyFormat(i8* %175, i32 %176), !dbg !1241
  %conv328 = fptosi double %call327 to i32, !dbg !1242
  store i32 %conv328, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !1243
  br label %if.end329, !dbg !1244

if.end329:                                        ; preds = %if.then326, %if.end319
  %177 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !1245
  %cmp330 = icmp slt i32 %177, 0, !dbg !1247
  br i1 %cmp330, label %if.then335, label %lor.lhs.false332, !dbg !1248

lor.lhs.false332:                                 ; preds = %if.end329
  %178 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !1249
  %cmp333 = icmp sgt i32 %178, 8, !dbg !1250
  br i1 %cmp333, label %if.then335, label %if.end336, !dbg !1251

if.then335:                                       ; preds = %lor.lhs.false332, %if.end329
  %179 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !1252
  call void @ErrNonfatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.134, i64 0, i64 0), i32 %179, i32 0), !dbg !1254
  br label %if.end336, !dbg !1255

if.end336:                                        ; preds = %if.then335, %lor.lhs.false332
  %180 = load i32, i32* @NumOrientations, align 4, !dbg !1256
  %add337 = add nsw i32 %180, 1, !dbg !1256
  store i32 %add337, i32* @NumOrientations, align 4, !dbg !1256
  br label %sw.epilog483, !dbg !1257

sw.bb338:                                         ; preds = %if.end149, %if.end149
  %181 = load i8*, i8** %ValuePtr, align 8, !dbg !1258
  %182 = load i32, i32* %Format, align 4, !dbg !1259
  %call339 = call double @ConvertAnyFormat(i8* %181, i32 %182), !dbg !1260
  %conv340 = fptosi double %call339 to i32, !dbg !1261
  store i32 %conv340, i32* %a, align 4, !dbg !1262
  %183 = load i32, i32* @ExifImageWidth, align 4, !dbg !1263
  %184 = load i32, i32* %a, align 4, !dbg !1265
  %cmp341 = icmp slt i32 %183, %184, !dbg !1266
  br i1 %cmp341, label %if.then343, label %if.end344, !dbg !1267

if.then343:                                       ; preds = %sw.bb338
  %185 = load i32, i32* %a, align 4, !dbg !1268
  store i32 %185, i32* @ExifImageWidth, align 4, !dbg !1269
  br label %if.end344, !dbg !1270

if.end344:                                        ; preds = %if.then343, %sw.bb338
  br label %sw.epilog483, !dbg !1271

sw.bb345:                                         ; preds = %if.end149
  %186 = load i8*, i8** %ValuePtr, align 8, !dbg !1272
  %187 = load i32, i32* %Format, align 4, !dbg !1273
  %call346 = call double @ConvertAnyFormat(i8* %186, i32 %187), !dbg !1274
  store double %call346, double* @FocalplaneXRes, align 8, !dbg !1275
  br label %sw.epilog483, !dbg !1276

sw.bb347:                                         ; preds = %if.end149
  %188 = load i8*, i8** %ValuePtr, align 8, !dbg !1277
  %189 = load i32, i32* %Format, align 4, !dbg !1278
  %call348 = call double @ConvertAnyFormat(i8* %188, i32 %189), !dbg !1279
  %conv349 = fptosi double %call348 to i32, !dbg !1280
  switch i32 %conv349, label %sw.epilog355 [
    i32 1, label %sw.bb350
    i32 2, label %sw.bb351
    i32 3, label %sw.bb352
    i32 4, label %sw.bb353
    i32 5, label %sw.bb354
  ], !dbg !1281

sw.bb350:                                         ; preds = %sw.bb347
  store double 2.540000e+01, double* @FocalplaneUnits, align 8, !dbg !1282
  br label %sw.epilog355, !dbg !1284

sw.bb351:                                         ; preds = %sw.bb347
  store double 2.540000e+01, double* @FocalplaneUnits, align 8, !dbg !1285
  br label %sw.epilog355, !dbg !1286

sw.bb352:                                         ; preds = %sw.bb347
  store double 1.000000e+01, double* @FocalplaneUnits, align 8, !dbg !1287
  br label %sw.epilog355, !dbg !1288

sw.bb353:                                         ; preds = %sw.bb347
  store double 1.000000e+00, double* @FocalplaneUnits, align 8, !dbg !1289
  br label %sw.epilog355, !dbg !1290

sw.bb354:                                         ; preds = %sw.bb347
  store double 1.000000e-03, double* @FocalplaneUnits, align 8, !dbg !1291
  br label %sw.epilog355, !dbg !1292

sw.epilog355:                                     ; preds = %sw.bb347, %sw.bb354, %sw.bb353, %sw.bb352, %sw.bb351, %sw.bb350
  br label %sw.epilog483, !dbg !1293

sw.bb356:                                         ; preds = %if.end149
  %190 = load i8*, i8** %ValuePtr, align 8, !dbg !1294
  %191 = load i32, i32* %Format, align 4, !dbg !1295
  %call357 = call double @ConvertAnyFormat(i8* %190, i32 %191), !dbg !1296
  %conv358 = fptrunc double %call357 to float, !dbg !1297
  store float %conv358, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 18), align 4, !dbg !1298
  br label %sw.epilog483, !dbg !1299

sw.bb359:                                         ; preds = %if.end149
  %192 = load i8*, i8** %ValuePtr, align 8, !dbg !1300
  %193 = load i32, i32* %Format, align 4, !dbg !1301
  %call360 = call double @ConvertAnyFormat(i8* %192, i32 %193), !dbg !1302
  %conv361 = fptosi double %call360 to i32, !dbg !1303
  store i32 %conv361, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 21), align 8, !dbg !1304
  br label %sw.epilog483, !dbg !1305

sw.bb362:                                         ; preds = %if.end149
  %194 = load i8*, i8** %ValuePtr, align 8, !dbg !1306
  %195 = load i32, i32* %Format, align 4, !dbg !1307
  %call363 = call double @ConvertAnyFormat(i8* %194, i32 %195), !dbg !1308
  %conv364 = fptosi double %call363 to i32, !dbg !1309
  store i32 %conv364, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 26), align 4, !dbg !1310
  br label %sw.epilog483, !dbg !1311

sw.bb365:                                         ; preds = %if.end149
  %196 = load i8*, i8** %ValuePtr, align 8, !dbg !1312
  %197 = load i32, i32* %Format, align 4, !dbg !1313
  %call366 = call double @ConvertAnyFormat(i8* %196, i32 %197), !dbg !1314
  %conv367 = fptosi double %call366 to i32, !dbg !1315
  store i32 %conv367, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 22), align 4, !dbg !1316
  br label %sw.epilog483, !dbg !1317

sw.bb368:                                         ; preds = %if.end149
  %198 = load i8*, i8** %ValuePtr, align 8, !dbg !1318
  %199 = load i32, i32* %Format, align 4, !dbg !1319
  %call369 = call double @ConvertAnyFormat(i8* %198, i32 %199), !dbg !1320
  %conv370 = fptosi double %call369 to i32, !dbg !1321
  store i32 %conv370, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 23), align 8, !dbg !1322
  br label %sw.epilog483, !dbg !1323

sw.bb371:                                         ; preds = %if.end149
  %200 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 25), align 8, !dbg !1324
  %cmp372 = icmp eq i32 %200, 0, !dbg !1326
  br i1 %cmp372, label %if.then374, label %if.end377, !dbg !1327

if.then374:                                       ; preds = %sw.bb371
  %201 = load i8*, i8** %ValuePtr, align 8, !dbg !1328
  %202 = load i32, i32* %Format, align 4, !dbg !1330
  %call375 = call double @ConvertAnyFormat(i8* %201, i32 %202), !dbg !1331
  %conv376 = fptosi double %call375 to i32, !dbg !1332
  store i32 %conv376, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 25), align 8, !dbg !1333
  br label %if.end377, !dbg !1334

if.end377:                                        ; preds = %if.then374, %sw.bb371
  br label %sw.epilog483, !dbg !1335

sw.bb378:                                         ; preds = %if.end149
  %203 = load i8*, i8** %ValuePtr, align 8, !dbg !1336
  %204 = load i32, i32* %Format, align 4, !dbg !1337
  %call379 = call double @ConvertAnyFormat(i8* %203, i32 %204), !dbg !1338
  %conv380 = fptosi double %call379 to i32, !dbg !1339
  store i32 %conv380, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 24), align 4, !dbg !1340
  br label %sw.epilog483, !dbg !1341

sw.bb381:                                         ; preds = %if.end149
  %205 = load i8*, i8** %ValuePtr, align 8, !dbg !1342
  %206 = load i32, i32* %Format, align 4, !dbg !1343
  %call382 = call double @ConvertAnyFormat(i8* %205, i32 %206), !dbg !1344
  %conv383 = fptosi double %call382 to i32, !dbg !1345
  store i32 %conv383, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 25), align 8, !dbg !1346
  br label %sw.epilog483, !dbg !1347

sw.bb384:                                         ; preds = %if.end149
  %207 = load i8*, i8** %ValuePtr, align 8, !dbg !1348
  %208 = load i32, i32* %Format, align 4, !dbg !1349
  %call385 = call double @ConvertAnyFormat(i8* %207, i32 %208), !dbg !1350
  %conv386 = fptrunc double %call385 to float, !dbg !1351
  store float %conv386, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 19), align 8, !dbg !1352
  br label %sw.epilog483, !dbg !1353

sw.bb387:                                         ; preds = %if.end149
  %209 = load i8*, i8** %ValuePtr, align 8, !dbg !1354
  %210 = load i32, i32* %Format, align 4, !dbg !1355
  %call388 = call double @ConvertAnyFormat(i8* %209, i32 %210), !dbg !1356
  %conv389 = fptoui double %call388 to i32, !dbg !1357
  store i32 %conv389, i32* %ThumbnailOffset, align 4, !dbg !1358
  %211 = load i8*, i8** %DirStart.addr, align 8, !dbg !1359
  store i8* %211, i8** @DirWithThumbnailPtrs, align 8, !dbg !1360
  br label %sw.epilog483, !dbg !1361

sw.bb390:                                         ; preds = %if.end149
  %212 = load i8*, i8** %ValuePtr, align 8, !dbg !1362
  %213 = load i32, i32* %Format, align 4, !dbg !1363
  %call391 = call double @ConvertAnyFormat(i8* %212, i32 %213), !dbg !1364
  %conv392 = fptoui double %call391 to i32, !dbg !1365
  store i32 %conv392, i32* %ThumbnailSize, align 4, !dbg !1366
  %214 = load i8*, i8** %ValuePtr, align 8, !dbg !1367
  %215 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1368
  %sub.ptr.lhs.cast393 = ptrtoint i8* %214 to i64, !dbg !1369
  %sub.ptr.rhs.cast394 = ptrtoint i8* %215 to i64, !dbg !1369
  %sub.ptr.sub395 = sub i64 %sub.ptr.lhs.cast393, %sub.ptr.rhs.cast394, !dbg !1369
  %conv396 = trunc i64 %sub.ptr.sub395 to i32, !dbg !1367
  store i32 %conv396, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 37), align 4, !dbg !1370
  br label %sw.epilog483, !dbg !1371

sw.bb397:                                         ; preds = %if.end149
  %216 = load i32, i32* @ShowTags, align 4, !dbg !1372
  %tobool398 = icmp ne i32 %216, 0, !dbg !1372
  br i1 %tobool398, label %if.then399, label %if.end402, !dbg !1374

if.then399:                                       ; preds = %sw.bb397
  %arraydecay400 = getelementptr inbounds [25 x i8], [25 x i8]* %IndentString, i64 0, i64 0, !dbg !1375
  %call401 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.135, i64 0, i64 0), i8* %arraydecay400), !dbg !1376
  br label %if.end402, !dbg !1376

if.end402:                                        ; preds = %if.then399, %sw.bb397
  br label %sw.bb403, !dbg !1372

sw.bb403:                                         ; preds = %if.end149, %if.end402
  %217 = load i32, i32* %Tag, align 4, !dbg !1377
  %cmp404 = icmp eq i32 %217, 40965, !dbg !1379
  br i1 %cmp404, label %land.lhs.true406, label %if.end411, !dbg !1380

land.lhs.true406:                                 ; preds = %sw.bb403
  %218 = load i32, i32* @ShowTags, align 4, !dbg !1381
  %tobool407 = icmp ne i32 %218, 0, !dbg !1381
  br i1 %tobool407, label %if.then408, label %if.end411, !dbg !1382

if.then408:                                       ; preds = %land.lhs.true406
  %arraydecay409 = getelementptr inbounds [25 x i8], [25 x i8]* %IndentString, i64 0, i64 0, !dbg !1383
  %call410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.136, i64 0, i64 0), i8* %arraydecay409), !dbg !1384
  br label %if.end411, !dbg !1384

if.end411:                                        ; preds = %if.then408, %land.lhs.true406, %sw.bb403
  call void @llvm.dbg.declare(metadata i8** %SubdirStart, metadata !1385, metadata !DIExpression()), !dbg !1387
  %219 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1388
  %220 = load i8*, i8** %ValuePtr, align 8, !dbg !1389
  %call412 = call i32 @Get32u(i8* %220), !dbg !1390
  %idx.ext413 = zext i32 %call412 to i64, !dbg !1391
  %add.ptr414 = getelementptr inbounds i8, i8* %219, i64 %idx.ext413, !dbg !1391
  store i8* %add.ptr414, i8** %SubdirStart, align 8, !dbg !1392
  %221 = load i8*, i8** %SubdirStart, align 8, !dbg !1393
  %222 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1395
  %cmp415 = icmp ult i8* %221, %222, !dbg !1396
  br i1 %cmp415, label %if.then422, label %lor.lhs.false417, !dbg !1397

lor.lhs.false417:                                 ; preds = %if.end411
  %223 = load i8*, i8** %SubdirStart, align 8, !dbg !1398
  %224 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1399
  %225 = load i32, i32* %ExifLength.addr, align 4, !dbg !1400
  %idx.ext418 = sext i32 %225 to i64, !dbg !1401
  %add.ptr419 = getelementptr inbounds i8, i8* %224, i64 %idx.ext418, !dbg !1401
  %cmp420 = icmp ugt i8* %223, %add.ptr419, !dbg !1402
  br i1 %cmp420, label %if.then422, label %if.else423, !dbg !1403

if.then422:                                       ; preds = %lor.lhs.false417, %if.end411
  call void @ErrNonfatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.137, i64 0, i64 0), i32 0, i32 0), !dbg !1404
  br label %if.end425, !dbg !1406

if.else423:                                       ; preds = %lor.lhs.false417
  %226 = load i8*, i8** %SubdirStart, align 8, !dbg !1407
  %227 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1409
  %228 = load i32, i32* %ExifLength.addr, align 4, !dbg !1410
  %229 = load i32, i32* %NestingLevel.addr, align 4, !dbg !1411
  %add424 = add nsw i32 %229, 1, !dbg !1412
  call void @ProcessExifDir(i8* %226, i8* %227, i32 %228, i32 %add424), !dbg !1413
  br label %if.end425

if.end425:                                        ; preds = %if.else423, %if.then422
  br label %for.inc484, !dbg !1414

sw.bb426:                                         ; preds = %if.end149
  %230 = load i32, i32* @ShowTags, align 4, !dbg !1415
  %tobool427 = icmp ne i32 %230, 0, !dbg !1415
  br i1 %tobool427, label %if.then428, label %if.end431, !dbg !1417

if.then428:                                       ; preds = %sw.bb426
  %arraydecay429 = getelementptr inbounds [25 x i8], [25 x i8]* %IndentString, i64 0, i64 0, !dbg !1418
  %call430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.138, i64 0, i64 0), i8* %arraydecay429), !dbg !1419
  br label %if.end431, !dbg !1419

if.end431:                                        ; preds = %if.then428, %sw.bb426
  call void @llvm.dbg.declare(metadata i8** %SubdirStart432, metadata !1420, metadata !DIExpression()), !dbg !1422
  %231 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1423
  %232 = load i8*, i8** %ValuePtr, align 8, !dbg !1424
  %call433 = call i32 @Get32u(i8* %232), !dbg !1425
  %idx.ext434 = zext i32 %call433 to i64, !dbg !1426
  %add.ptr435 = getelementptr inbounds i8, i8* %231, i64 %idx.ext434, !dbg !1426
  store i8* %add.ptr435, i8** %SubdirStart432, align 8, !dbg !1427
  %233 = load i8*, i8** %SubdirStart432, align 8, !dbg !1428
  %234 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1430
  %cmp436 = icmp ult i8* %233, %234, !dbg !1431
  br i1 %cmp436, label %if.then443, label %lor.lhs.false438, !dbg !1432

lor.lhs.false438:                                 ; preds = %if.end431
  %235 = load i8*, i8** %SubdirStart432, align 8, !dbg !1433
  %236 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1434
  %237 = load i32, i32* %ExifLength.addr, align 4, !dbg !1435
  %idx.ext439 = sext i32 %237 to i64, !dbg !1436
  %add.ptr440 = getelementptr inbounds i8, i8* %236, i64 %idx.ext439, !dbg !1436
  %cmp441 = icmp ugt i8* %235, %add.ptr440, !dbg !1437
  br i1 %cmp441, label %if.then443, label %if.else444, !dbg !1438

if.then443:                                       ; preds = %lor.lhs.false438, %if.end431
  call void @ErrNonfatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.139, i64 0, i64 0), i32 0, i32 0), !dbg !1439
  br label %if.end445, !dbg !1441

if.else444:                                       ; preds = %lor.lhs.false438
  %238 = load i8*, i8** %SubdirStart432, align 8, !dbg !1442
  %239 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1444
  %240 = load i32, i32* %ExifLength.addr, align 4, !dbg !1445
  call void @ProcessGpsInfo(i8* %238, i8* %239, i32 %240), !dbg !1446
  br label %if.end445

if.end445:                                        ; preds = %if.else444, %if.then443
  br label %for.inc484, !dbg !1447

sw.bb446:                                         ; preds = %if.end149
  %241 = load i8*, i8** %ValuePtr, align 8, !dbg !1448
  %242 = load i32, i32* %Format, align 4, !dbg !1449
  %call447 = call double @ConvertAnyFormat(i8* %241, i32 %242), !dbg !1450
  %conv448 = fptoui double %call447 to i32, !dbg !1451
  store i32 %conv448, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 20), align 4, !dbg !1452
  br label %sw.epilog483, !dbg !1453

sw.bb449:                                         ; preds = %if.end149
  %243 = load i8*, i8** %ValuePtr, align 8, !dbg !1454
  %244 = load i32, i32* %Format, align 4, !dbg !1455
  %call450 = call double @ConvertAnyFormat(i8* %243, i32 %244), !dbg !1456
  %conv451 = fptosi double %call450 to i32, !dbg !1457
  store i32 %conv451, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 27), align 8, !dbg !1458
  br label %sw.epilog483, !dbg !1459

sw.bb452:                                         ; preds = %if.end149
  %245 = load i32, i32* %NestingLevel.addr, align 4, !dbg !1460
  %cmp453 = icmp eq i32 %245, 0, !dbg !1462
  br i1 %cmp453, label %if.then455, label %if.end463, !dbg !1463

if.then455:                                       ; preds = %sw.bb452
  %246 = load i8*, i8** %ValuePtr, align 8, !dbg !1464
  %247 = load i32, i32* %Format, align 4, !dbg !1466
  %call456 = call double @ConvertAnyFormat(i8* %246, i32 %247), !dbg !1467
  %conv457 = fptrunc double %call456 to float, !dbg !1468
  store float %conv457, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 28), align 4, !dbg !1469
  %248 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 29), align 8, !dbg !1470
  %conv458 = fpext float %248 to double, !dbg !1472
  %cmp459 = fcmp oeq double %conv458, 0.000000e+00, !dbg !1473
  br i1 %cmp459, label %if.then461, label %if.end462, !dbg !1474

if.then461:                                       ; preds = %if.then455
  %249 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 28), align 4, !dbg !1475
  store float %249, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 29), align 8, !dbg !1476
  br label %if.end462, !dbg !1477

if.end462:                                        ; preds = %if.then461, %if.then455
  br label %if.end463, !dbg !1478

if.end463:                                        ; preds = %if.end462, %sw.bb452
  br label %sw.epilog483, !dbg !1479

sw.bb464:                                         ; preds = %if.end149
  %250 = load i32, i32* %NestingLevel.addr, align 4, !dbg !1480
  %cmp465 = icmp eq i32 %250, 0, !dbg !1482
  br i1 %cmp465, label %if.then467, label %if.end475, !dbg !1483

if.then467:                                       ; preds = %sw.bb464
  %251 = load i8*, i8** %ValuePtr, align 8, !dbg !1484
  %252 = load i32, i32* %Format, align 4, !dbg !1486
  %call468 = call double @ConvertAnyFormat(i8* %251, i32 %252), !dbg !1487
  %conv469 = fptrunc double %call468 to float, !dbg !1488
  store float %conv469, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 29), align 8, !dbg !1489
  %253 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 28), align 4, !dbg !1490
  %conv470 = fpext float %253 to double, !dbg !1492
  %cmp471 = fcmp oeq double %conv470, 0.000000e+00, !dbg !1493
  br i1 %cmp471, label %if.then473, label %if.end474, !dbg !1494

if.then473:                                       ; preds = %if.then467
  %254 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 29), align 8, !dbg !1495
  store float %254, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 28), align 4, !dbg !1496
  br label %if.end474, !dbg !1497

if.end474:                                        ; preds = %if.then473, %if.then467
  br label %if.end475, !dbg !1498

if.end475:                                        ; preds = %if.end474, %sw.bb464
  br label %sw.epilog483, !dbg !1499

sw.bb476:                                         ; preds = %if.end149
  %255 = load i32, i32* %NestingLevel.addr, align 4, !dbg !1500
  %cmp477 = icmp eq i32 %255, 0, !dbg !1502
  br i1 %cmp477, label %if.then479, label %if.end482, !dbg !1503

if.then479:                                       ; preds = %sw.bb476
  %256 = load i8*, i8** %ValuePtr, align 8, !dbg !1504
  %257 = load i32, i32* %Format, align 4, !dbg !1506
  %call480 = call double @ConvertAnyFormat(i8* %256, i32 %257), !dbg !1507
  %conv481 = fptosi double %call480 to i32, !dbg !1508
  store i32 %conv481, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 30), align 4, !dbg !1509
  br label %if.end482, !dbg !1510

if.end482:                                        ; preds = %if.then479, %sw.bb476
  br label %sw.epilog483, !dbg !1511

sw.epilog483:                                     ; preds = %if.end149, %if.end482, %if.end475, %if.end463, %sw.bb449, %sw.bb446, %sw.bb390, %sw.bb387, %sw.bb384, %sw.bb381, %sw.bb378, %if.end377, %sw.bb368, %sw.bb365, %sw.bb362, %sw.bb359, %sw.bb356, %sw.epilog355, %sw.bb345, %if.end344, %if.end336, %if.then318, %sw.bb312, %if.end311, %sw.bb298, %sw.bb295, %sw.bb292, %if.end291, %sw.bb278, %if.end277, %if.end211, %if.end204, %if.end193, %if.end179, %if.then178, %cond.end160, %cond.end
  br label %for.inc484, !dbg !1512

for.inc484:                                       ; preds = %sw.epilog483, %if.end445, %if.end425, %if.end88, %if.then65, %if.then47, %if.then43
  %258 = load i32, i32* %de, align 4, !dbg !1513
  %inc485 = add nsw i32 %258, 1, !dbg !1513
  store i32 %inc485, i32* %de, align 4, !dbg !1513
  br label %for.cond, !dbg !1514, !llvm.loop !1515

for.end486:                                       ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %SubdirStart487, metadata !1517, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.declare(metadata i32* %Offset, metadata !1520, metadata !DIExpression()), !dbg !1521
  %259 = load i8*, i8** %DirStart.addr, align 8, !dbg !1522
  %add.ptr488 = getelementptr inbounds i8, i8* %259, i64 2, !dbg !1522
  %260 = load i32, i32* %NumDirEntries, align 4, !dbg !1522
  %mul489 = mul nsw i32 12, %260, !dbg !1522
  %idx.ext490 = sext i32 %mul489 to i64, !dbg !1522
  %add.ptr491 = getelementptr inbounds i8, i8* %add.ptr488, i64 %idx.ext490, !dbg !1522
  %add.ptr492 = getelementptr inbounds i8, i8* %add.ptr491, i64 4, !dbg !1524
  %261 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1525
  %262 = load i32, i32* %ExifLength.addr, align 4, !dbg !1526
  %idx.ext493 = sext i32 %262 to i64, !dbg !1527
  %add.ptr494 = getelementptr inbounds i8, i8* %261, i64 %idx.ext493, !dbg !1527
  %cmp495 = icmp ule i8* %add.ptr492, %add.ptr494, !dbg !1528
  br i1 %cmp495, label %if.then497, label %if.else550, !dbg !1529

if.then497:                                       ; preds = %for.end486
  %263 = load i8*, i8** %DirStart.addr, align 8, !dbg !1530
  %add.ptr498 = getelementptr inbounds i8, i8* %263, i64 2, !dbg !1532
  %264 = load i32, i32* %NumDirEntries, align 4, !dbg !1533
  %mul499 = mul nsw i32 12, %264, !dbg !1534
  %idx.ext500 = sext i32 %mul499 to i64, !dbg !1535
  %add.ptr501 = getelementptr inbounds i8, i8* %add.ptr498, i64 %idx.ext500, !dbg !1535
  %call502 = call i32 @Get32u(i8* %add.ptr501), !dbg !1536
  store i32 %call502, i32* %Offset, align 4, !dbg !1537
  %265 = load i32, i32* %Offset, align 4, !dbg !1538
  %tobool503 = icmp ne i32 %265, 0, !dbg !1538
  br i1 %tobool503, label %if.then504, label %if.end549, !dbg !1540

if.then504:                                       ; preds = %if.then497
  %266 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1541
  %267 = load i32, i32* %Offset, align 4, !dbg !1543
  %idx.ext505 = sext i32 %267 to i64, !dbg !1544
  %add.ptr506 = getelementptr inbounds i8, i8* %266, i64 %idx.ext505, !dbg !1544
  store i8* %add.ptr506, i8** %SubdirStart487, align 8, !dbg !1545
  %268 = load i8*, i8** %SubdirStart487, align 8, !dbg !1546
  %269 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1548
  %270 = load i32, i32* %ExifLength.addr, align 4, !dbg !1549
  %idx.ext507 = sext i32 %270 to i64, !dbg !1550
  %add.ptr508 = getelementptr inbounds i8, i8* %269, i64 %idx.ext507, !dbg !1550
  %cmp509 = icmp ugt i8* %268, %add.ptr508, !dbg !1551
  br i1 %cmp509, label %if.then514, label %lor.lhs.false511, !dbg !1552

lor.lhs.false511:                                 ; preds = %if.then504
  %271 = load i8*, i8** %SubdirStart487, align 8, !dbg !1553
  %272 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1554
  %cmp512 = icmp ult i8* %271, %272, !dbg !1555
  br i1 %cmp512, label %if.then514, label %if.else530, !dbg !1556

if.then514:                                       ; preds = %lor.lhs.false511, %if.then504
  %273 = load i8*, i8** %SubdirStart487, align 8, !dbg !1557
  %274 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1560
  %cmp515 = icmp ugt i8* %273, %274, !dbg !1561
  br i1 %cmp515, label %land.lhs.true517, label %if.else528, !dbg !1562

land.lhs.true517:                                 ; preds = %if.then514
  %275 = load i8*, i8** %SubdirStart487, align 8, !dbg !1563
  %276 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1564
  %277 = load i32, i32* %ExifLength.addr, align 4, !dbg !1565
  %idx.ext518 = sext i32 %277 to i64, !dbg !1566
  %add.ptr519 = getelementptr inbounds i8, i8* %276, i64 %idx.ext518, !dbg !1566
  %add.ptr520 = getelementptr inbounds i8, i8* %add.ptr519, i64 20, !dbg !1567
  %cmp521 = icmp ult i8* %275, %add.ptr520, !dbg !1568
  br i1 %cmp521, label %if.then523, label %if.else528, !dbg !1569

if.then523:                                       ; preds = %land.lhs.true517
  %278 = load i32, i32* @ShowTags, align 4, !dbg !1570
  %tobool524 = icmp ne i32 %278, 0, !dbg !1570
  br i1 %tobool524, label %if.then525, label %if.end527, !dbg !1573

if.then525:                                       ; preds = %if.then523
  %call526 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.140, i64 0, i64 0)), !dbg !1574
  br label %if.end527, !dbg !1574

if.end527:                                        ; preds = %if.then525, %if.then523
  br label %if.end529, !dbg !1575

if.else528:                                       ; preds = %land.lhs.true517, %if.then514
  call void @ErrNonfatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.141, i64 0, i64 0), i32 0, i32 0), !dbg !1576
  br label %if.end529

if.end529:                                        ; preds = %if.else528, %if.end527
  br label %if.end544, !dbg !1578

if.else530:                                       ; preds = %lor.lhs.false511
  %279 = load i8*, i8** %SubdirStart487, align 8, !dbg !1579
  %add.ptr531 = getelementptr inbounds i8, i8* %279, i64 2, !dbg !1582
  %280 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1583
  %281 = load i32, i32* %ExifLength.addr, align 4, !dbg !1584
  %idx.ext532 = sext i32 %281 to i64, !dbg !1585
  %add.ptr533 = getelementptr inbounds i8, i8* %280, i64 %idx.ext532, !dbg !1585
  %cmp534 = icmp ule i8* %add.ptr531, %add.ptr533, !dbg !1586
  br i1 %cmp534, label %if.then536, label %if.end543, !dbg !1587

if.then536:                                       ; preds = %if.else530
  %282 = load i32, i32* @ShowTags, align 4, !dbg !1588
  %tobool537 = icmp ne i32 %282, 0, !dbg !1588
  br i1 %tobool537, label %if.then538, label %if.end541, !dbg !1591

if.then538:                                       ; preds = %if.then536
  %arraydecay539 = getelementptr inbounds [25 x i8], [25 x i8]* %IndentString, i64 0, i64 0, !dbg !1592
  %call540 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.142, i64 0, i64 0), i8* %arraydecay539), !dbg !1593
  br label %if.end541, !dbg !1593

if.end541:                                        ; preds = %if.then538, %if.then536
  %283 = load i8*, i8** %SubdirStart487, align 8, !dbg !1594
  %284 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !1595
  %285 = load i32, i32* %ExifLength.addr, align 4, !dbg !1596
  %286 = load i32, i32* %NestingLevel.addr, align 4, !dbg !1597
  %add542 = add nsw i32 %286, 1, !dbg !1598
  call void @ProcessExifDir(i8* %283, i8* %284, i32 %285, i32 %add542), !dbg !1599
  br label %if.end543, !dbg !1600

if.end543:                                        ; preds = %if.end541, %if.else530
  br label %if.end544

if.end544:                                        ; preds = %if.end543, %if.end529
  %287 = load i32, i32* %Offset, align 4, !dbg !1601
  %288 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 35), align 4, !dbg !1603
  %cmp545 = icmp sgt i32 %287, %288, !dbg !1604
  br i1 %cmp545, label %if.then547, label %if.end548, !dbg !1605

if.then547:                                       ; preds = %if.end544
  %289 = load i32, i32* %Offset, align 4, !dbg !1606
  store i32 %289, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 35), align 4, !dbg !1608
  br label %if.end548, !dbg !1609

if.end548:                                        ; preds = %if.then547, %if.end544
  br label %if.end549, !dbg !1610

if.end549:                                        ; preds = %if.end548, %if.then497
  br label %if.end551, !dbg !1611

if.else550:                                       ; preds = %for.end486
  br label %if.end551

if.end551:                                        ; preds = %if.else550, %if.end549
  %290 = load i32, i32* %ThumbnailOffset, align 4, !dbg !1612
  %tobool552 = icmp ne i32 %290, 0, !dbg !1612
  br i1 %tobool552, label %if.then553, label %if.end577, !dbg !1614

if.then553:                                       ; preds = %if.end551
  store i8 0, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 36), align 8, !dbg !1615
  %291 = load i32, i32* @DumpExifMap, align 4, !dbg !1617
  %tobool554 = icmp ne i32 %291, 0, !dbg !1617
  br i1 %tobool554, label %if.then555, label %if.end558, !dbg !1619

if.then555:                                       ; preds = %if.then553
  %292 = load i32, i32* %ThumbnailOffset, align 4, !dbg !1620
  %293 = load i32, i32* %ThumbnailOffset, align 4, !dbg !1622
  %294 = load i32, i32* %ThumbnailSize, align 4, !dbg !1623
  %add556 = add nsw i32 %293, %294, !dbg !1624
  %call557 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.143, i64 0, i64 0), i32 %292, i32 %add556), !dbg !1625
  br label %if.end558, !dbg !1626

if.end558:                                        ; preds = %if.then555, %if.then553
  %295 = load i32, i32* %ThumbnailOffset, align 4, !dbg !1627
  %296 = load i32, i32* %ExifLength.addr, align 4, !dbg !1629
  %cmp559 = icmp sle i32 %295, %296, !dbg !1630
  br i1 %cmp559, label %if.then561, label %if.end576, !dbg !1631

if.then561:                                       ; preds = %if.end558
  %297 = load i32, i32* %ThumbnailSize, align 4, !dbg !1632
  %298 = load i32, i32* %ExifLength.addr, align 4, !dbg !1635
  %299 = load i32, i32* %ThumbnailOffset, align 4, !dbg !1636
  %sub562 = sub nsw i32 %298, %299, !dbg !1637
  %cmp563 = icmp sgt i32 %297, %sub562, !dbg !1638
  br i1 %cmp563, label %if.then565, label %if.end571, !dbg !1639

if.then565:                                       ; preds = %if.then561
  %300 = load i32, i32* %ExifLength.addr, align 4, !dbg !1640
  %301 = load i32, i32* %ThumbnailOffset, align 4, !dbg !1642
  %sub566 = sub nsw i32 %300, %301, !dbg !1643
  store i32 %sub566, i32* %ThumbnailSize, align 4, !dbg !1644
  %302 = load i32, i32* @ShowTags, align 4, !dbg !1645
  %tobool567 = icmp ne i32 %302, 0, !dbg !1645
  br i1 %tobool567, label %if.then568, label %if.end570, !dbg !1647

if.then568:                                       ; preds = %if.then565
  %call569 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.144, i64 0, i64 0)), !dbg !1648
  br label %if.end570, !dbg !1648

if.end570:                                        ; preds = %if.then568, %if.then565
  br label %if.end571, !dbg !1649

if.end571:                                        ; preds = %if.end570, %if.then561
  %303 = load i32, i32* %ThumbnailOffset, align 4, !dbg !1650
  store i32 %303, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !1651
  %304 = load i32, i32* %ThumbnailSize, align 4, !dbg !1652
  store i32 %304, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 34), align 8, !dbg !1653
  %305 = load i32, i32* @ShowTags, align 4, !dbg !1654
  %tobool572 = icmp ne i32 %305, 0, !dbg !1654
  br i1 %tobool572, label %if.then573, label %if.end575, !dbg !1656

if.then573:                                       ; preds = %if.end571
  %306 = load i32, i32* %ThumbnailSize, align 4, !dbg !1657
  %call574 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i64 0, i64 0), i32 %306), !dbg !1659
  br label %if.end575, !dbg !1660

if.end575:                                        ; preds = %if.then573, %if.end571
  br label %if.end576, !dbg !1661

if.end576:                                        ; preds = %if.end575, %if.end558
  br label %if.end577, !dbg !1662

if.end577:                                        ; preds = %if.then, %if.else, %if.end576, %if.end551
  ret void, !dbg !1663
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @create_EXIF() #0 !dbg !1664 {
entry:
  %Buffer = alloca [256 x i8], align 16
  %NumEntries = alloca i16, align 2
  %DataWriteIndex = alloca i32, align 4
  %DateIndex = alloca i32, align 4
  %DirIndex = alloca i32, align 4
  %DirContinuation = alloca i32, align 4
  %NewBuf = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata [256 x i8]* %Buffer, metadata !1665, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.declare(metadata i16* %NumEntries, metadata !1670, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.declare(metadata i32* %DataWriteIndex, metadata !1672, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.declare(metadata i32* %DateIndex, metadata !1674, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.declare(metadata i32* %DirIndex, metadata !1676, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.declare(metadata i32* %DirContinuation, metadata !1678, metadata !DIExpression()), !dbg !1679
  store i32 0, i32* @MotorolaOrder, align 4, !dbg !1680
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1681
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2, !dbg !1682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i64 8, i1 false), !dbg !1683
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1684
  %add.ptr2 = getelementptr inbounds i8, i8* %arraydecay1, i64 10, !dbg !1685
  call void @Put16u(i8* %add.ptr2, i16 zeroext 42), !dbg !1686
  store i32 16, i32* %DataWriteIndex, align 4, !dbg !1687
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1688
  %add.ptr4 = getelementptr inbounds i8, i8* %arraydecay3, i64 12, !dbg !1689
  %0 = load i32, i32* %DataWriteIndex, align 4, !dbg !1690
  %sub = sub nsw i32 %0, 8, !dbg !1691
  call void @Put32u(i8* %add.ptr4, i32 %sub), !dbg !1692
  %1 = load i32, i32* %DataWriteIndex, align 4, !dbg !1693
  store i32 %1, i32* %DirIndex, align 4, !dbg !1695
  store i16 2, i16* %NumEntries, align 2, !dbg !1696
  %2 = load i16, i16* %NumEntries, align 2, !dbg !1697
  %conv = zext i16 %2 to i32, !dbg !1697
  %mul = mul nsw i32 %conv, 12, !dbg !1698
  %add = add nsw i32 2, %mul, !dbg !1699
  %add5 = add nsw i32 %add, 4, !dbg !1700
  %3 = load i32, i32* %DataWriteIndex, align 4, !dbg !1701
  %add6 = add nsw i32 %3, %add5, !dbg !1701
  store i32 %add6, i32* %DataWriteIndex, align 4, !dbg !1701
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1702
  %4 = load i32, i32* %DirIndex, align 4, !dbg !1703
  %idx.ext = sext i32 %4 to i64, !dbg !1704
  %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay7, i64 %idx.ext, !dbg !1704
  %5 = load i16, i16* %NumEntries, align 2, !dbg !1705
  call void @Put16u(i8* %add.ptr8, i16 zeroext %5), !dbg !1706
  %6 = load i32, i32* %DirIndex, align 4, !dbg !1707
  %add9 = add nsw i32 %6, 2, !dbg !1707
  store i32 %add9, i32* %DirIndex, align 4, !dbg !1707
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1708
  %7 = load i32, i32* %DirIndex, align 4, !dbg !1710
  %idx.ext11 = sext i32 %7 to i64, !dbg !1711
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay10, i64 %idx.ext11, !dbg !1711
  call void @Put16u(i8* %add.ptr12, i16 zeroext 306), !dbg !1712
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1713
  %8 = load i32, i32* %DirIndex, align 4, !dbg !1714
  %idx.ext14 = sext i32 %8 to i64, !dbg !1715
  %add.ptr15 = getelementptr inbounds i8, i8* %arraydecay13, i64 %idx.ext14, !dbg !1715
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr15, i64 2, !dbg !1716
  call void @Put16u(i8* %add.ptr16, i16 zeroext 2), !dbg !1717
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1718
  %9 = load i32, i32* %DirIndex, align 4, !dbg !1719
  %idx.ext18 = sext i32 %9 to i64, !dbg !1720
  %add.ptr19 = getelementptr inbounds i8, i8* %arraydecay17, i64 %idx.ext18, !dbg !1720
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr19, i64 4, !dbg !1721
  call void @Put32u(i8* %add.ptr20, i32 20), !dbg !1722
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1723
  %10 = load i32, i32* %DirIndex, align 4, !dbg !1724
  %idx.ext22 = sext i32 %10 to i64, !dbg !1725
  %add.ptr23 = getelementptr inbounds i8, i8* %arraydecay21, i64 %idx.ext22, !dbg !1725
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr23, i64 8, !dbg !1726
  %11 = load i32, i32* %DataWriteIndex, align 4, !dbg !1727
  %sub25 = sub nsw i32 %11, 8, !dbg !1728
  call void @Put32u(i8* %add.ptr24, i32 %sub25), !dbg !1729
  %12 = load i32, i32* %DirIndex, align 4, !dbg !1730
  %add26 = add nsw i32 %12, 12, !dbg !1730
  store i32 %add26, i32* %DirIndex, align 4, !dbg !1730
  %13 = load i32, i32* %DataWriteIndex, align 4, !dbg !1731
  store i32 %13, i32* %DateIndex, align 4, !dbg !1732
  %14 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 39), align 8, !dbg !1733
  %tobool = icmp ne i32 %14, 0, !dbg !1735
  br i1 %tobool, label %if.then, label %if.else, !dbg !1736

if.then:                                          ; preds = %entry
  %arraydecay27 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1737
  %15 = load i32, i32* %DataWriteIndex, align 4, !dbg !1739
  %idx.ext28 = sext i32 %15 to i64, !dbg !1740
  %add.ptr29 = getelementptr inbounds i8, i8* %arraydecay27, i64 %idx.ext28, !dbg !1740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr29, i8* align 4 getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0), i64 19, i1 false), !dbg !1741
  %16 = load i32, i32* %DataWriteIndex, align 4, !dbg !1742
  %add30 = add nsw i32 %16, 19, !dbg !1743
  %idxprom = sext i32 %add30 to i64, !dbg !1744
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 %idxprom, !dbg !1744
  store i8 0, i8* %arrayidx, align 1, !dbg !1745
  br label %if.end, !dbg !1746

if.else:                                          ; preds = %entry
  %arraydecay31 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1747
  %17 = load i32, i32* %DataWriteIndex, align 4, !dbg !1749
  %idx.ext32 = sext i32 %17 to i64, !dbg !1750
  %add.ptr33 = getelementptr inbounds i8, i8* %arraydecay31, i64 %idx.ext32, !dbg !1750
  call void @FileTimeAsString(i8* %add.ptr33), !dbg !1751
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %DataWriteIndex, align 4, !dbg !1752
  %add34 = add nsw i32 %18, 20, !dbg !1752
  store i32 %add34, i32* %DataWriteIndex, align 4, !dbg !1752
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1753
  %19 = load i32, i32* %DirIndex, align 4, !dbg !1754
  %idx.ext36 = sext i32 %19 to i64, !dbg !1755
  %add.ptr37 = getelementptr inbounds i8, i8* %arraydecay35, i64 %idx.ext36, !dbg !1755
  call void @Put16u(i8* %add.ptr37, i16 zeroext -30871), !dbg !1756
  %arraydecay38 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1757
  %20 = load i32, i32* %DirIndex, align 4, !dbg !1758
  %idx.ext39 = sext i32 %20 to i64, !dbg !1759
  %add.ptr40 = getelementptr inbounds i8, i8* %arraydecay38, i64 %idx.ext39, !dbg !1759
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr40, i64 2, !dbg !1760
  call void @Put16u(i8* %add.ptr41, i16 zeroext 4), !dbg !1761
  %arraydecay42 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1762
  %21 = load i32, i32* %DirIndex, align 4, !dbg !1763
  %idx.ext43 = sext i32 %21 to i64, !dbg !1764
  %add.ptr44 = getelementptr inbounds i8, i8* %arraydecay42, i64 %idx.ext43, !dbg !1764
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr44, i64 4, !dbg !1765
  call void @Put32u(i8* %add.ptr45, i32 1), !dbg !1766
  %arraydecay46 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1767
  %22 = load i32, i32* %DirIndex, align 4, !dbg !1768
  %idx.ext47 = sext i32 %22 to i64, !dbg !1769
  %add.ptr48 = getelementptr inbounds i8, i8* %arraydecay46, i64 %idx.ext47, !dbg !1769
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr48, i64 8, !dbg !1770
  %23 = load i32, i32* %DataWriteIndex, align 4, !dbg !1771
  %sub50 = sub nsw i32 %23, 8, !dbg !1772
  call void @Put32u(i8* %add.ptr49, i32 %sub50), !dbg !1773
  %24 = load i32, i32* %DirIndex, align 4, !dbg !1774
  %add51 = add nsw i32 %24, 12, !dbg !1774
  store i32 %add51, i32* %DirIndex, align 4, !dbg !1774
  %25 = load i32, i32* %DirIndex, align 4, !dbg !1775
  store i32 %25, i32* %DirContinuation, align 4, !dbg !1776
  %26 = load i32, i32* %DataWriteIndex, align 4, !dbg !1777
  store i32 %26, i32* %DirIndex, align 4, !dbg !1779
  store i16 1, i16* %NumEntries, align 2, !dbg !1780
  %27 = load i16, i16* %NumEntries, align 2, !dbg !1781
  %conv52 = zext i16 %27 to i32, !dbg !1781
  %mul53 = mul nsw i32 %conv52, 12, !dbg !1782
  %add54 = add nsw i32 2, %mul53, !dbg !1783
  %add55 = add nsw i32 %add54, 4, !dbg !1784
  %28 = load i32, i32* %DataWriteIndex, align 4, !dbg !1785
  %add56 = add nsw i32 %28, %add55, !dbg !1785
  store i32 %add56, i32* %DataWriteIndex, align 4, !dbg !1785
  %arraydecay57 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1786
  %29 = load i32, i32* %DirIndex, align 4, !dbg !1787
  %idx.ext58 = sext i32 %29 to i64, !dbg !1788
  %add.ptr59 = getelementptr inbounds i8, i8* %arraydecay57, i64 %idx.ext58, !dbg !1788
  %30 = load i16, i16* %NumEntries, align 2, !dbg !1789
  call void @Put16u(i8* %add.ptr59, i16 zeroext %30), !dbg !1790
  %31 = load i32, i32* %DirIndex, align 4, !dbg !1791
  %add60 = add nsw i32 %31, 2, !dbg !1791
  store i32 %add60, i32* %DirIndex, align 4, !dbg !1791
  %arraydecay61 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1792
  %32 = load i32, i32* %DirIndex, align 4, !dbg !1793
  %idx.ext62 = sext i32 %32 to i64, !dbg !1794
  %add.ptr63 = getelementptr inbounds i8, i8* %arraydecay61, i64 %idx.ext62, !dbg !1794
  call void @Put16u(i8* %add.ptr63, i16 zeroext -28669), !dbg !1795
  %arraydecay64 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1796
  %33 = load i32, i32* %DirIndex, align 4, !dbg !1797
  %idx.ext65 = sext i32 %33 to i64, !dbg !1798
  %add.ptr66 = getelementptr inbounds i8, i8* %arraydecay64, i64 %idx.ext65, !dbg !1798
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr66, i64 2, !dbg !1799
  call void @Put16u(i8* %add.ptr67, i16 zeroext 2), !dbg !1800
  %arraydecay68 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1801
  %34 = load i32, i32* %DirIndex, align 4, !dbg !1802
  %idx.ext69 = sext i32 %34 to i64, !dbg !1803
  %add.ptr70 = getelementptr inbounds i8, i8* %arraydecay68, i64 %idx.ext69, !dbg !1803
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr70, i64 4, !dbg !1804
  call void @Put32u(i8* %add.ptr71, i32 20), !dbg !1805
  %arraydecay72 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1806
  %35 = load i32, i32* %DirIndex, align 4, !dbg !1807
  %idx.ext73 = sext i32 %35 to i64, !dbg !1808
  %add.ptr74 = getelementptr inbounds i8, i8* %arraydecay72, i64 %idx.ext73, !dbg !1808
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr74, i64 8, !dbg !1809
  %36 = load i32, i32* %DataWriteIndex, align 4, !dbg !1810
  %sub76 = sub nsw i32 %36, 8, !dbg !1811
  call void @Put32u(i8* %add.ptr75, i32 %sub76), !dbg !1812
  %37 = load i32, i32* %DirIndex, align 4, !dbg !1813
  %add77 = add nsw i32 %37, 12, !dbg !1813
  store i32 %add77, i32* %DirIndex, align 4, !dbg !1813
  %arraydecay78 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1814
  %38 = load i32, i32* %DataWriteIndex, align 4, !dbg !1815
  %idx.ext79 = sext i32 %38 to i64, !dbg !1816
  %add.ptr80 = getelementptr inbounds i8, i8* %arraydecay78, i64 %idx.ext79, !dbg !1816
  %arraydecay81 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1817
  %39 = load i32, i32* %DateIndex, align 4, !dbg !1818
  %idx.ext82 = sext i32 %39 to i64, !dbg !1819
  %add.ptr83 = getelementptr inbounds i8, i8* %arraydecay81, i64 %idx.ext82, !dbg !1819
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr80, i8* align 1 %add.ptr83, i64 20, i1 false), !dbg !1820
  %40 = load i32, i32* %DataWriteIndex, align 4, !dbg !1821
  %add84 = add nsw i32 %40, 20, !dbg !1821
  store i32 %add84, i32* %DataWriteIndex, align 4, !dbg !1821
  %arraydecay85 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1822
  %41 = load i32, i32* %DirIndex, align 4, !dbg !1823
  %idx.ext86 = sext i32 %41 to i64, !dbg !1824
  %add.ptr87 = getelementptr inbounds i8, i8* %arraydecay85, i64 %idx.ext86, !dbg !1824
  call void @Put32u(i8* %add.ptr87, i32 0), !dbg !1825
  %arraydecay88 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1826
  %42 = load i32, i32* %DirContinuation, align 4, !dbg !1828
  %idx.ext89 = sext i32 %42 to i64, !dbg !1829
  %add.ptr90 = getelementptr inbounds i8, i8* %arraydecay88, i64 %idx.ext89, !dbg !1829
  %43 = load i32, i32* %DataWriteIndex, align 4, !dbg !1830
  %sub91 = sub nsw i32 %43, 8, !dbg !1831
  call void @Put32u(i8* %add.ptr90, i32 %sub91), !dbg !1832
  %44 = load i32, i32* %DataWriteIndex, align 4, !dbg !1833
  store i32 %44, i32* %DirIndex, align 4, !dbg !1834
  store i16 2, i16* %NumEntries, align 2, !dbg !1835
  %45 = load i16, i16* %NumEntries, align 2, !dbg !1836
  %conv92 = zext i16 %45 to i32, !dbg !1836
  %mul93 = mul nsw i32 %conv92, 12, !dbg !1837
  %add94 = add nsw i32 2, %mul93, !dbg !1838
  %add95 = add nsw i32 %add94, 4, !dbg !1839
  %46 = load i32, i32* %DataWriteIndex, align 4, !dbg !1840
  %add96 = add nsw i32 %46, %add95, !dbg !1840
  store i32 %add96, i32* %DataWriteIndex, align 4, !dbg !1840
  %arraydecay97 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1841
  %47 = load i32, i32* %DirIndex, align 4, !dbg !1842
  %idx.ext98 = sext i32 %47 to i64, !dbg !1843
  %add.ptr99 = getelementptr inbounds i8, i8* %arraydecay97, i64 %idx.ext98, !dbg !1843
  %48 = load i16, i16* %NumEntries, align 2, !dbg !1844
  call void @Put16u(i8* %add.ptr99, i16 zeroext %48), !dbg !1845
  %49 = load i32, i32* %DirIndex, align 4, !dbg !1846
  %add100 = add nsw i32 %49, 2, !dbg !1846
  store i32 %add100, i32* %DirIndex, align 4, !dbg !1846
  %arraydecay101 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1847
  %50 = load i32, i32* %DirIndex, align 4, !dbg !1849
  %idx.ext102 = sext i32 %50 to i64, !dbg !1850
  %add.ptr103 = getelementptr inbounds i8, i8* %arraydecay101, i64 %idx.ext102, !dbg !1850
  call void @Put16u(i8* %add.ptr103, i16 zeroext 513), !dbg !1851
  %arraydecay104 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1852
  %51 = load i32, i32* %DirIndex, align 4, !dbg !1853
  %idx.ext105 = sext i32 %51 to i64, !dbg !1854
  %add.ptr106 = getelementptr inbounds i8, i8* %arraydecay104, i64 %idx.ext105, !dbg !1854
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr106, i64 2, !dbg !1855
  call void @Put16u(i8* %add.ptr107, i16 zeroext 4), !dbg !1856
  %arraydecay108 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1857
  %52 = load i32, i32* %DirIndex, align 4, !dbg !1858
  %idx.ext109 = sext i32 %52 to i64, !dbg !1859
  %add.ptr110 = getelementptr inbounds i8, i8* %arraydecay108, i64 %idx.ext109, !dbg !1859
  %add.ptr111 = getelementptr inbounds i8, i8* %add.ptr110, i64 4, !dbg !1860
  call void @Put32u(i8* %add.ptr111, i32 1), !dbg !1861
  %arraydecay112 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1862
  %53 = load i32, i32* %DirIndex, align 4, !dbg !1863
  %idx.ext113 = sext i32 %53 to i64, !dbg !1864
  %add.ptr114 = getelementptr inbounds i8, i8* %arraydecay112, i64 %idx.ext113, !dbg !1864
  %add.ptr115 = getelementptr inbounds i8, i8* %add.ptr114, i64 8, !dbg !1865
  %54 = load i32, i32* %DataWriteIndex, align 4, !dbg !1866
  %sub116 = sub nsw i32 %54, 8, !dbg !1867
  call void @Put32u(i8* %add.ptr115, i32 %sub116), !dbg !1868
  %55 = load i32, i32* %DirIndex, align 4, !dbg !1869
  %add117 = add nsw i32 %55, 12, !dbg !1869
  store i32 %add117, i32* %DirIndex, align 4, !dbg !1869
  %arraydecay118 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1870
  %56 = load i32, i32* %DirIndex, align 4, !dbg !1872
  %idx.ext119 = sext i32 %56 to i64, !dbg !1873
  %add.ptr120 = getelementptr inbounds i8, i8* %arraydecay118, i64 %idx.ext119, !dbg !1873
  call void @Put16u(i8* %add.ptr120, i16 zeroext 514), !dbg !1874
  %arraydecay121 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1875
  %57 = load i32, i32* %DirIndex, align 4, !dbg !1876
  %idx.ext122 = sext i32 %57 to i64, !dbg !1877
  %add.ptr123 = getelementptr inbounds i8, i8* %arraydecay121, i64 %idx.ext122, !dbg !1877
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr123, i64 2, !dbg !1878
  call void @Put16u(i8* %add.ptr124, i16 zeroext 4), !dbg !1879
  %arraydecay125 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1880
  %58 = load i32, i32* %DirIndex, align 4, !dbg !1881
  %idx.ext126 = sext i32 %58 to i64, !dbg !1882
  %add.ptr127 = getelementptr inbounds i8, i8* %arraydecay125, i64 %idx.ext126, !dbg !1882
  %add.ptr128 = getelementptr inbounds i8, i8* %add.ptr127, i64 4, !dbg !1883
  call void @Put32u(i8* %add.ptr128, i32 1), !dbg !1884
  %arraydecay129 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1885
  %59 = load i32, i32* %DirIndex, align 4, !dbg !1886
  %idx.ext130 = sext i32 %59 to i64, !dbg !1887
  %add.ptr131 = getelementptr inbounds i8, i8* %arraydecay129, i64 %idx.ext130, !dbg !1887
  %add.ptr132 = getelementptr inbounds i8, i8* %add.ptr131, i64 8, !dbg !1888
  call void @Put32u(i8* %add.ptr132, i32 0), !dbg !1889
  %60 = load i32, i32* %DirIndex, align 4, !dbg !1890
  %add133 = add nsw i32 %60, 12, !dbg !1890
  store i32 %add133, i32* %DirIndex, align 4, !dbg !1890
  %arraydecay134 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1891
  %61 = load i32, i32* %DirIndex, align 4, !dbg !1892
  %idx.ext135 = sext i32 %61 to i64, !dbg !1893
  %add.ptr136 = getelementptr inbounds i8, i8* %arraydecay134, i64 %idx.ext135, !dbg !1893
  call void @Put32u(i8* %add.ptr136, i32 0), !dbg !1894
  %62 = load i32, i32* %DataWriteIndex, align 4, !dbg !1895
  %shr = ashr i32 %62, 8, !dbg !1896
  %conv137 = trunc i32 %shr to i8, !dbg !1897
  %arrayidx138 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1898
  store i8 %conv137, i8* %arrayidx138, align 16, !dbg !1899
  %63 = load i32, i32* %DataWriteIndex, align 4, !dbg !1900
  %conv139 = trunc i32 %63 to i8, !dbg !1901
  %arrayidx140 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 1, !dbg !1902
  store i8 %conv139, i8* %arrayidx140, align 1, !dbg !1903
  %call = call i32 @RemoveSectionType(i32 225), !dbg !1904
  call void @llvm.dbg.declare(metadata i8** %NewBuf, metadata !1905, metadata !DIExpression()), !dbg !1907
  %64 = load i32, i32* %DataWriteIndex, align 4, !dbg !1908
  %conv141 = sext i32 %64 to i64, !dbg !1908
  %call142 = call noalias i8* @malloc(i64 %conv141) #9, !dbg !1909
  store i8* %call142, i8** %NewBuf, align 8, !dbg !1907
  %65 = load i8*, i8** %NewBuf, align 8, !dbg !1910
  %cmp = icmp eq i8* %65, null, !dbg !1912
  br i1 %cmp, label %if.then144, label %if.end145, !dbg !1913

if.then144:                                       ; preds = %if.end
  call void @ErrFatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0)), !dbg !1914
  br label %if.end145, !dbg !1916

if.end145:                                        ; preds = %if.then144, %if.end
  %66 = load i8*, i8** %NewBuf, align 8, !dbg !1917
  %arraydecay146 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i64 0, i64 0, !dbg !1918
  %67 = load i32, i32* %DataWriteIndex, align 4, !dbg !1919
  %conv147 = sext i32 %67 to i64, !dbg !1919
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %66, i8* align 16 %arraydecay146, i64 %conv147, i1 false), !dbg !1918
  %68 = load i8*, i8** %NewBuf, align 8, !dbg !1920
  %69 = load i32, i32* %DataWriteIndex, align 4, !dbg !1921
  %call148 = call %struct.Section_t* @CreateSection(i32 225, i8* %68, i32 %69), !dbg !1922
  %70 = load i8*, i8** %NewBuf, align 8, !dbg !1923
  %71 = load i32, i32* %DataWriteIndex, align 4, !dbg !1924
  call void @process_EXIF(i8* %70, i32 %71), !dbg !1925
  ret void, !dbg !1926
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @Put16u(i8* %Short, i16 zeroext %PutValue) #0 !dbg !1927 {
entry:
  %Short.addr = alloca i8*, align 8
  %PutValue.addr = alloca i16, align 2
  store i8* %Short, i8** %Short.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Short.addr, metadata !1930, metadata !DIExpression()), !dbg !1931
  store i16 %PutValue, i16* %PutValue.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %PutValue.addr, metadata !1932, metadata !DIExpression()), !dbg !1933
  %0 = load i32, i32* @MotorolaOrder, align 4, !dbg !1934
  %tobool = icmp ne i32 %0, 0, !dbg !1934
  br i1 %tobool, label %if.then, label %if.else, !dbg !1936

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %PutValue.addr, align 2, !dbg !1937
  %conv = zext i16 %1 to i32, !dbg !1937
  %shr = ashr i32 %conv, 8, !dbg !1939
  %conv1 = trunc i32 %shr to i8, !dbg !1940
  %2 = load i8*, i8** %Short.addr, align 8, !dbg !1941
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1942
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !1943
  %3 = load i16, i16* %PutValue.addr, align 2, !dbg !1944
  %conv2 = trunc i16 %3 to i8, !dbg !1945
  %4 = load i8*, i8** %Short.addr, align 8, !dbg !1946
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1947
  store i8 %conv2, i8* %arrayidx3, align 1, !dbg !1948
  br label %if.end, !dbg !1949

if.else:                                          ; preds = %entry
  %5 = load i16, i16* %PutValue.addr, align 2, !dbg !1950
  %conv4 = trunc i16 %5 to i8, !dbg !1952
  %6 = load i8*, i8** %Short.addr, align 8, !dbg !1953
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1954
  store i8 %conv4, i8* %arrayidx5, align 1, !dbg !1955
  %7 = load i16, i16* %PutValue.addr, align 2, !dbg !1956
  %conv6 = zext i16 %7 to i32, !dbg !1956
  %shr7 = ashr i32 %conv6, 8, !dbg !1957
  %conv8 = trunc i32 %shr7 to i8, !dbg !1958
  %8 = load i8*, i8** %Short.addr, align 8, !dbg !1959
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1960
  store i8 %conv8, i8* %arrayidx9, align 1, !dbg !1961
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1962
}

declare dso_local void @FileTimeAsString(i8*) #2

declare dso_local i32 @RemoveSectionType(i32) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

declare dso_local void @ErrFatal(i8*) #2

declare dso_local %struct.Section_t* @CreateSection(i32, i8*, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @ClearOrientation() #0 !dbg !1963 {
entry:
  %retval = alloca i8*, align 8
  %a = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !1966, metadata !DIExpression()), !dbg !1967
  %0 = load i32, i32* @NumOrientations, align 4, !dbg !1968
  %cmp = icmp eq i32 %0, 0, !dbg !1970
  br i1 %cmp, label %if.then, label %if.end, !dbg !1971

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !1972
  br label %return, !dbg !1972

if.end:                                           ; preds = %entry
  store i32 0, i32* %a, align 4, !dbg !1973
  br label %for.cond, !dbg !1975

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %a, align 4, !dbg !1976
  %2 = load i32, i32* @NumOrientations, align 4, !dbg !1978
  %cmp1 = icmp slt i32 %1, %2, !dbg !1979
  br i1 %cmp1, label %for.body, label %for.end, !dbg !1980

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %a, align 4, !dbg !1981
  %idxprom = sext i32 %3 to i64, !dbg !1983
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @OrientationNumFormat, i64 0, i64 %idxprom, !dbg !1983
  %4 = load i32, i32* %arrayidx, align 4, !dbg !1983
  switch i32 %4, label %sw.default [
    i32 6, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb4
    i32 4, label %sw.bb7
    i32 9, label %sw.bb7
  ], !dbg !1984

sw.bb:                                            ; preds = %for.body, %for.body
  %5 = load i32, i32* %a, align 4, !dbg !1985
  %idxprom2 = sext i32 %5 to i64, !dbg !1987
  %arrayidx3 = getelementptr inbounds [2 x i8*], [2 x i8*]* @OrientationPtr, i64 0, i64 %idxprom2, !dbg !1987
  %6 = load i8*, i8** %arrayidx3, align 8, !dbg !1987
  store i8 1, i8* %6, align 1, !dbg !1988
  br label %sw.epilog, !dbg !1989

sw.bb4:                                           ; preds = %for.body
  %7 = load i32, i32* %a, align 4, !dbg !1990
  %idxprom5 = sext i32 %7 to i64, !dbg !1991
  %arrayidx6 = getelementptr inbounds [2 x i8*], [2 x i8*]* @OrientationPtr, i64 0, i64 %idxprom5, !dbg !1991
  %8 = load i8*, i8** %arrayidx6, align 8, !dbg !1991
  call void @Put16u(i8* %8, i16 zeroext 1), !dbg !1992
  br label %sw.epilog, !dbg !1993

sw.bb7:                                           ; preds = %for.body, %for.body
  %9 = load i32, i32* %a, align 4, !dbg !1994
  %idxprom8 = sext i32 %9 to i64, !dbg !1995
  %arrayidx9 = getelementptr inbounds [2 x i8*], [2 x i8*]* @OrientationPtr, i64 0, i64 %idxprom8, !dbg !1995
  %10 = load i8*, i8** %arrayidx9, align 8, !dbg !1995
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 4, i1 false), !dbg !1996
  %11 = load i32, i32* @MotorolaOrder, align 4, !dbg !1997
  %tobool = icmp ne i32 %11, 0, !dbg !1997
  br i1 %tobool, label %if.then10, label %if.else, !dbg !1999

if.then10:                                        ; preds = %sw.bb7
  %12 = load i32, i32* %a, align 4, !dbg !2000
  %idxprom11 = sext i32 %12 to i64, !dbg !2002
  %arrayidx12 = getelementptr inbounds [2 x i8*], [2 x i8*]* @OrientationPtr, i64 0, i64 %idxprom11, !dbg !2002
  %13 = load i8*, i8** %arrayidx12, align 8, !dbg !2002
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !2003
  store i8 1, i8* %arrayidx13, align 1, !dbg !2004
  br label %if.end17, !dbg !2005

if.else:                                          ; preds = %sw.bb7
  %14 = load i32, i32* %a, align 4, !dbg !2006
  %idxprom14 = sext i32 %14 to i64, !dbg !2008
  %arrayidx15 = getelementptr inbounds [2 x i8*], [2 x i8*]* @OrientationPtr, i64 0, i64 %idxprom14, !dbg !2008
  %15 = load i8*, i8** %arrayidx15, align 8, !dbg !2008
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 0, !dbg !2009
  store i8 1, i8* %arrayidx16, align 1, !dbg !2010
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10
  br label %sw.epilog, !dbg !2011

sw.default:                                       ; preds = %for.body
  store i8* null, i8** %retval, align 8, !dbg !2012
  br label %return, !dbg !2012

sw.epilog:                                        ; preds = %if.end17, %sw.bb4, %sw.bb
  br label %for.inc, !dbg !2013

for.inc:                                          ; preds = %sw.epilog
  %16 = load i32, i32* %a, align 4, !dbg !2014
  %inc = add nsw i32 %16, 1, !dbg !2014
  store i32 %inc, i32* %a, align 4, !dbg !2014
  br label %for.cond, !dbg !2015, !llvm.loop !2016

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !2018
  %cmp18 = icmp sge i32 %17, 1, !dbg !2020
  br i1 %cmp18, label %land.lhs.true, label %if.else23, !dbg !2021

land.lhs.true:                                    ; preds = %for.end
  %18 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !2022
  %cmp19 = icmp sle i32 %18, 8, !dbg !2023
  br i1 %cmp19, label %if.then20, label %if.else23, !dbg !2024

if.then20:                                        ; preds = %land.lhs.true
  %19 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !2025
  %idxprom21 = sext i32 %19 to i64, !dbg !2027
  %arrayidx22 = getelementptr inbounds [9 x i8*], [9 x i8*]* @OrientTab, i64 0, i64 %idxprom21, !dbg !2027
  %20 = load i8*, i8** %arrayidx22, align 8, !dbg !2027
  store i8* %20, i8** %retval, align 8, !dbg !2028
  br label %return, !dbg !2028

if.else23:                                        ; preds = %land.lhs.true, %for.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0), i8** %retval, align 8, !dbg !2029
  br label %return, !dbg !2029

return:                                           ; preds = %if.else23, %if.then20, %sw.default, %if.then
  %21 = load i8*, i8** %retval, align 8, !dbg !2031
  ret i8* %21, !dbg !2031
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @Exif2tm(%struct.tm* %timeptr, i8* %ExifTime) #0 !dbg !2032 {
entry:
  %retval = alloca i32, align 4
  %timeptr.addr = alloca %struct.tm*, align 8
  %ExifTime.addr = alloca i8*, align 8
  %a = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.tm* %timeptr, %struct.tm** %timeptr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tm** %timeptr.addr, metadata !2051, metadata !DIExpression()), !dbg !2052
  store i8* %ExifTime, i8** %ExifTime.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ExifTime.addr, metadata !2053, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.declare(metadata i32* %a, metadata !2055, metadata !DIExpression()), !dbg !2056
  %0 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2057
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 6, !dbg !2058
  store i32 -1, i32* %tm_wday, align 8, !dbg !2059
  %1 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2060
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 0, !dbg !2061
  store i32 0, i32* %tm_sec, align 8, !dbg !2062
  %2 = load i8*, i8** %ExifTime.addr, align 8, !dbg !2063
  %3 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2064
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5, !dbg !2065
  %4 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2066
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4, !dbg !2067
  %5 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2068
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3, !dbg !2069
  %6 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2070
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2, !dbg !2071
  %7 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2072
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1, !dbg !2073
  %8 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2074
  %tm_sec1 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0, !dbg !2075
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32* %tm_year, i32* %tm_mon, i32* %tm_mday, i32* %tm_hour, i32* %tm_min, i32* %tm_sec1) #9, !dbg !2076
  store i32 %call, i32* %a, align 4, !dbg !2077
  %9 = load i32, i32* %a, align 4, !dbg !2078
  %cmp = icmp sge i32 %9, 5, !dbg !2080
  br i1 %cmp, label %if.then, label %if.end19, !dbg !2081

if.then:                                          ; preds = %entry
  %10 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2082
  %tm_year2 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5, !dbg !2085
  %11 = load i32, i32* %tm_year2, align 4, !dbg !2085
  %cmp3 = icmp sle i32 %11, 12, !dbg !2086
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !2087

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2088
  %tm_mday4 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 3, !dbg !2089
  %13 = load i32, i32* %tm_mday4, align 4, !dbg !2089
  %cmp5 = icmp sgt i32 %13, 2000, !dbg !2090
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !2091

land.lhs.true6:                                   ; preds = %land.lhs.true
  %14 = load i8*, i8** %ExifTime.addr, align 8, !dbg !2092
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 2, !dbg !2092
  %15 = load i8, i8* %arrayidx, align 1, !dbg !2092
  %conv = sext i8 %15 to i32, !dbg !2092
  %cmp7 = icmp eq i32 %conv, 46, !dbg !2093
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !2094

if.then9:                                         ; preds = %land.lhs.true6
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !2095, metadata !DIExpression()), !dbg !2097
  %16 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2098
  %tm_year10 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 5, !dbg !2099
  %17 = load i32, i32* %tm_year10, align 4, !dbg !2099
  store i32 %17, i32* %tmp, align 4, !dbg !2100
  %18 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2101
  %tm_mday11 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 3, !dbg !2102
  %19 = load i32, i32* %tm_mday11, align 4, !dbg !2102
  %20 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2103
  %tm_year12 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 5, !dbg !2104
  store i32 %19, i32* %tm_year12, align 4, !dbg !2105
  %21 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2106
  %tm_mon13 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 4, !dbg !2107
  %22 = load i32, i32* %tm_mon13, align 8, !dbg !2107
  %23 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2108
  %tm_mday14 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 3, !dbg !2109
  store i32 %22, i32* %tm_mday14, align 4, !dbg !2110
  %24 = load i32, i32* %tmp, align 4, !dbg !2111
  %25 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2112
  %tm_mon15 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 4, !dbg !2113
  store i32 %24, i32* %tm_mon15, align 8, !dbg !2114
  br label %if.end, !dbg !2115

if.end:                                           ; preds = %if.then9, %land.lhs.true6, %land.lhs.true, %if.then
  %26 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2116
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 8, !dbg !2117
  store i32 -1, i32* %tm_isdst, align 8, !dbg !2118
  %27 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2119
  %tm_mon16 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 4, !dbg !2120
  %28 = load i32, i32* %tm_mon16, align 8, !dbg !2121
  %sub = sub nsw i32 %28, 1, !dbg !2121
  store i32 %sub, i32* %tm_mon16, align 8, !dbg !2121
  %29 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !2122
  %tm_year17 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 5, !dbg !2123
  %30 = load i32, i32* %tm_year17, align 4, !dbg !2124
  %sub18 = sub nsw i32 %30, 1900, !dbg !2124
  store i32 %sub18, i32* %tm_year17, align 4, !dbg !2124
  store i32 1, i32* %retval, align 4, !dbg !2125
  br label %return, !dbg !2125

if.end19:                                         ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2126
  br label %return, !dbg !2126

return:                                           ; preds = %if.end19, %if.end
  %31 = load i32, i32* %retval, align 4, !dbg !2127
  ret i32 %31, !dbg !2127
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @ShowImageInfo(i32 %ShowFileInfo) #0 !dbg !2128 {
entry:
  %ShowFileInfo.addr = alloca i32, align 4
  %Temp = alloca [20 x i8], align 16
  %a = alloca i32, align 4
  %a248 = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %ShowFileInfo, i32* %ShowFileInfo.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ShowFileInfo.addr, metadata !2131, metadata !DIExpression()), !dbg !2132
  %0 = load i32, i32* %ShowFileInfo.addr, align 4, !dbg !2133
  %tobool = icmp ne i32 %0, 0, !dbg !2133
  br i1 %tobool, label %if.then, label %if.end, !dbg !2135

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 0, i64 0)), !dbg !2136
  %1 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 3), align 8, !dbg !2138
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 %1), !dbg !2139
  call void @llvm.dbg.declare(metadata [20 x i8]* %Temp, metadata !2140, metadata !DIExpression()), !dbg !2145
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %Temp, i64 0, i64 0, !dbg !2146
  call void @FileTimeAsString(i8* %arraydecay), !dbg !2147
  %arraydecay2 = getelementptr inbounds [20 x i8], [20 x i8]* %Temp, i64 0, i64 0, !dbg !2148
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i8* %arraydecay2), !dbg !2149
  br label %if.end, !dbg !2150

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 4, i64 0), align 4, !dbg !2151
  %tobool4 = icmp ne i8 %2, 0, !dbg !2151
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !2153

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 4, i64 0)), !dbg !2154
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 5, i64 0)), !dbg !2156
  br label %if.end8, !dbg !2157

if.end8:                                          ; preds = %if.then5, %if.end
  %3 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0), align 4, !dbg !2158
  %tobool9 = icmp ne i8 %3, 0, !dbg !2158
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2160

if.then10:                                        ; preds = %if.end8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0)), !dbg !2161
  br label %if.end12, !dbg !2163

if.end12:                                         ; preds = %if.then10, %if.end8
  %4 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 8), align 4, !dbg !2164
  %5 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 7), align 8, !dbg !2165
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 %4, i32 %5), !dbg !2166
  %6 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !2167
  %cmp = icmp sgt i32 %6, 1, !dbg !2169
  br i1 %cmp, label %land.lhs.true, label %if.end17, !dbg !2170

land.lhs.true:                                    ; preds = %if.end12
  %7 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !2171
  %cmp14 = icmp sle i32 %7, 8, !dbg !2172
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !2173

if.then15:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !2174
  %idxprom = sext i32 %8 to i64, !dbg !2176
  %arrayidx = getelementptr inbounds [9 x i8*], [9 x i8*]* @OrientTab, i64 0, i64 %idxprom, !dbg !2176
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !2176
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0), i8* %9), !dbg !2177
  br label %if.end17, !dbg !2178

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %if.end12
  %10 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 10), align 4, !dbg !2179
  %cmp18 = icmp eq i32 %10, 0, !dbg !2181
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !2182

if.then19:                                        ; preds = %if.end17
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0)), !dbg !2183
  br label %if.end21, !dbg !2185

if.end21:                                         ; preds = %if.then19, %if.end17
  %11 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 12), align 4, !dbg !2186
  %cmp22 = icmp sge i32 %11, 0, !dbg !2188
  br i1 %cmp22, label %if.then23, label %if.end66, !dbg !2189

if.then23:                                        ; preds = %if.end21
  %12 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 12), align 4, !dbg !2190
  %and = and i32 %12, 1, !dbg !2193
  %tobool24 = icmp ne i32 %and, 0, !dbg !2193
  br i1 %tobool24, label %if.then25, label %if.else, !dbg !2194

if.then25:                                        ; preds = %if.then23
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0)), !dbg !2195
  %13 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 12), align 4, !dbg !2197
  switch i32 %13, label %sw.epilog [
    i32 5, label %sw.bb
    i32 7, label %sw.bb28
    i32 9, label %sw.bb30
    i32 13, label %sw.bb32
    i32 15, label %sw.bb34
    i32 25, label %sw.bb36
    i32 29, label %sw.bb38
    i32 31, label %sw.bb40
    i32 65, label %sw.bb42
    i32 69, label %sw.bb44
    i32 71, label %sw.bb46
    i32 73, label %sw.bb48
    i32 77, label %sw.bb50
    i32 79, label %sw.bb52
    i32 89, label %sw.bb54
    i32 93, label %sw.bb56
    i32 95, label %sw.bb58
  ], !dbg !2198

sw.bb:                                            ; preds = %if.then25
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i64 0, i64 0)), !dbg !2199
  br label %sw.epilog, !dbg !2201

sw.bb28:                                          ; preds = %if.then25
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i64 0, i64 0)), !dbg !2202
  br label %sw.epilog, !dbg !2203

sw.bb30:                                          ; preds = %if.then25
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)), !dbg !2204
  br label %sw.epilog, !dbg !2205

sw.bb32:                                          ; preds = %if.then25
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i64 0, i64 0)), !dbg !2206
  br label %sw.epilog, !dbg !2207

sw.bb34:                                          ; preds = %if.then25
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0)), !dbg !2208
  br label %sw.epilog, !dbg !2209

sw.bb36:                                          ; preds = %if.then25
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)), !dbg !2210
  br label %sw.epilog, !dbg !2211

sw.bb38:                                          ; preds = %if.then25
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.45, i64 0, i64 0)), !dbg !2212
  br label %sw.epilog, !dbg !2213

sw.bb40:                                          ; preds = %if.then25
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0)), !dbg !2214
  br label %sw.epilog, !dbg !2215

sw.bb42:                                          ; preds = %if.then25
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i64 0, i64 0)), !dbg !2216
  br label %sw.epilog, !dbg !2217

sw.bb44:                                          ; preds = %if.then25
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.48, i64 0, i64 0)), !dbg !2218
  br label %sw.epilog, !dbg !2219

sw.bb46:                                          ; preds = %if.then25
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.49, i64 0, i64 0)), !dbg !2220
  br label %sw.epilog, !dbg !2221

sw.bb48:                                          ; preds = %if.then25
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i64 0, i64 0)), !dbg !2222
  br label %sw.epilog, !dbg !2223

sw.bb50:                                          ; preds = %if.then25
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.51, i64 0, i64 0)), !dbg !2224
  br label %sw.epilog, !dbg !2225

sw.bb52:                                          ; preds = %if.then25
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52, i64 0, i64 0)), !dbg !2226
  br label %sw.epilog, !dbg !2227

sw.bb54:                                          ; preds = %if.then25
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0)), !dbg !2228
  br label %sw.epilog, !dbg !2229

sw.bb56:                                          ; preds = %if.then25
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.54, i64 0, i64 0)), !dbg !2230
  br label %sw.epilog, !dbg !2231

sw.bb58:                                          ; preds = %if.then25
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.55, i64 0, i64 0)), !dbg !2232
  br label %sw.epilog, !dbg !2233

sw.epilog:                                        ; preds = %if.then25, %sw.bb58, %sw.bb56, %sw.bb54, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb
  br label %if.end64, !dbg !2234

if.else:                                          ; preds = %if.then23
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i64 0, i64 0)), !dbg !2235
  %14 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 12), align 4, !dbg !2237
  switch i32 %14, label %sw.epilog63 [
    i32 24, label %sw.bb61
  ], !dbg !2238

sw.bb61:                                          ; preds = %if.else
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)), !dbg !2239
  br label %sw.epilog63, !dbg !2241

sw.epilog63:                                      ; preds = %if.else, %sw.bb61
  br label %if.end64

if.end64:                                         ; preds = %sw.epilog63, %sw.epilog
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)), !dbg !2242
  br label %if.end66, !dbg !2243

if.end66:                                         ; preds = %if.end64, %if.end21
  %15 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 13), align 8, !dbg !2244
  %tobool67 = fcmp une float %15, 0.000000e+00, !dbg !2246
  br i1 %tobool67, label %if.then68, label %if.end75, !dbg !2247

if.then68:                                        ; preds = %if.end66
  %16 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 13), align 8, !dbg !2248
  %conv = fpext float %16 to double, !dbg !2250
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0), double %conv), !dbg !2251
  %17 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 20), align 4, !dbg !2252
  %tobool70 = icmp ne i32 %17, 0, !dbg !2254
  br i1 %tobool70, label %if.then71, label %if.end73, !dbg !2255

if.then71:                                        ; preds = %if.then68
  %18 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 20), align 4, !dbg !2256
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i64 0, i64 0), i32 %18), !dbg !2258
  br label %if.end73, !dbg !2259

if.end73:                                         ; preds = %if.then71, %if.then68
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)), !dbg !2260
  br label %if.end75, !dbg !2261

if.end75:                                         ; preds = %if.end73, %if.end66
  %19 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 19), align 8, !dbg !2262
  %cmp76 = fcmp ogt float %19, 1.000000e+00, !dbg !2264
  br i1 %cmp76, label %if.then78, label %if.end81, !dbg !2265

if.then78:                                        ; preds = %if.end75
  %20 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 19), align 8, !dbg !2266
  %conv79 = fpext float %20 to double, !dbg !2268
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i64 0, i64 0), double %conv79), !dbg !2269
  br label %if.end81, !dbg !2270

if.end81:                                         ; preds = %if.then78, %if.end75
  %21 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 17), align 8, !dbg !2271
  %tobool82 = fcmp une float %21, 0.000000e+00, !dbg !2273
  br i1 %tobool82, label %if.then83, label %if.end86, !dbg !2274

if.then83:                                        ; preds = %if.end81
  %22 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 17), align 8, !dbg !2275
  %conv84 = fpext float %22 to double, !dbg !2277
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i64 0, i64 0), double %conv84), !dbg !2278
  br label %if.end86, !dbg !2279

if.end86:                                         ; preds = %if.then83, %if.end81
  %23 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !2280
  %tobool87 = fcmp une float %23, 0.000000e+00, !dbg !2282
  br i1 %tobool87, label %if.then88, label %if.end108, !dbg !2283

if.then88:                                        ; preds = %if.end86
  %24 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !2284
  %conv89 = fpext float %24 to double, !dbg !2287
  %cmp90 = fcmp olt double %conv89, 1.000000e-02, !dbg !2288
  br i1 %cmp90, label %if.then92, label %if.else95, !dbg !2289

if.then92:                                        ; preds = %if.then88
  %25 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !2290
  %conv93 = fpext float %25 to double, !dbg !2292
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0), double %conv93), !dbg !2293
  br label %if.end98, !dbg !2294

if.else95:                                        ; preds = %if.then88
  %26 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !2295
  %conv96 = fpext float %26 to double, !dbg !2297
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i64 0, i64 0), double %conv96), !dbg !2298
  br label %if.end98

if.end98:                                         ; preds = %if.else95, %if.then92
  %27 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !2299
  %conv99 = fpext float %27 to double, !dbg !2301
  %cmp100 = fcmp ole double %conv99, 5.000000e-01, !dbg !2302
  br i1 %cmp100, label %if.then102, label %if.end106, !dbg !2303

if.then102:                                       ; preds = %if.end98
  %28 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !2304
  %div = fdiv float 1.000000e+00, %28, !dbg !2306
  %conv103 = fpext float %div to double, !dbg !2307
  %add = fadd double 5.000000e-01, %conv103, !dbg !2308
  %conv104 = fptosi double %add to i32, !dbg !2309
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), i32 %conv104), !dbg !2310
  br label %if.end106, !dbg !2311

if.end106:                                        ; preds = %if.then102, %if.end98
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)), !dbg !2312
  br label %if.end108, !dbg !2313

if.end108:                                        ; preds = %if.end106, %if.end86
  %29 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 15), align 8, !dbg !2314
  %tobool109 = fcmp une float %29, 0.000000e+00, !dbg !2316
  br i1 %tobool109, label %if.then110, label %if.end113, !dbg !2317

if.then110:                                       ; preds = %if.end108
  %30 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 15), align 8, !dbg !2318
  %conv111 = fpext float %30 to double, !dbg !2320
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i64 0, i64 0), double %conv111), !dbg !2321
  br label %if.end113, !dbg !2322

if.end113:                                        ; preds = %if.then110, %if.end108
  %31 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 16), align 4, !dbg !2323
  %tobool114 = fcmp une float %31, 0.000000e+00, !dbg !2325
  br i1 %tobool114, label %if.then115, label %if.end124, !dbg !2326

if.then115:                                       ; preds = %if.end113
  %32 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 16), align 4, !dbg !2327
  %cmp116 = fcmp olt float %32, 0.000000e+00, !dbg !2330
  br i1 %cmp116, label %if.then118, label %if.else120, !dbg !2331

if.then118:                                       ; preds = %if.then115
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0)), !dbg !2332
  br label %if.end123, !dbg !2334

if.else120:                                       ; preds = %if.then115
  %33 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 16), align 4, !dbg !2335
  %conv121 = fpext float %33 to double, !dbg !2337
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i64 0, i64 0), double %conv121), !dbg !2338
  br label %if.end123

if.end123:                                        ; preds = %if.else120, %if.then118
  br label %if.end124, !dbg !2339

if.end124:                                        ; preds = %if.end123, %if.end113
  %34 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 25), align 8, !dbg !2340
  %tobool125 = icmp ne i32 %34, 0, !dbg !2342
  br i1 %tobool125, label %if.then126, label %if.end128, !dbg !2343

if.then126:                                       ; preds = %if.end124
  %35 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 25), align 8, !dbg !2344
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i64 0, i64 0), i32 %35), !dbg !2346
  br label %if.end128, !dbg !2347

if.end128:                                        ; preds = %if.then126, %if.end124
  %36 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 18), align 4, !dbg !2348
  %tobool129 = fcmp une float %36, 0.000000e+00, !dbg !2350
  br i1 %tobool129, label %if.then130, label %if.end133, !dbg !2351

if.then130:                                       ; preds = %if.end128
  %37 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 18), align 4, !dbg !2352
  %conv131 = fpext float %37 to double, !dbg !2354
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double %conv131), !dbg !2355
  br label %if.end133, !dbg !2356

if.end133:                                        ; preds = %if.then130, %if.end128
  %38 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 21), align 8, !dbg !2357
  switch i32 %38, label %sw.epilog138 [
    i32 1, label %sw.bb134
    i32 0, label %sw.bb136
  ], !dbg !2358

sw.bb134:                                         ; preds = %if.end133
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0)), !dbg !2359
  br label %sw.epilog138, !dbg !2361

sw.bb136:                                         ; preds = %if.end133
  %call137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i64 0, i64 0)), !dbg !2362
  br label %sw.epilog138, !dbg !2363

sw.epilog138:                                     ; preds = %if.end133, %sw.bb136, %sw.bb134
  %39 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 26), align 4, !dbg !2364
  switch i32 %39, label %sw.default [
    i32 1, label %sw.bb139
    i32 2, label %sw.bb141
    i32 3, label %sw.bb143
    i32 4, label %sw.bb145
    i32 9, label %sw.bb147
    i32 11, label %sw.bb149
  ], !dbg !2365

sw.bb139:                                         ; preds = %sw.epilog138
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i64 0, i64 0)), !dbg !2366
  br label %sw.epilog151, !dbg !2368

sw.bb141:                                         ; preds = %sw.epilog138
  %call142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i64 0, i64 0)), !dbg !2369
  br label %sw.epilog151, !dbg !2370

sw.bb143:                                         ; preds = %sw.epilog138
  %call144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i64 0, i64 0)), !dbg !2371
  br label %sw.epilog151, !dbg !2372

sw.bb145:                                         ; preds = %sw.epilog138
  %call146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i64 0, i64 0)), !dbg !2373
  br label %sw.epilog151, !dbg !2374

sw.bb147:                                         ; preds = %sw.epilog138
  %call148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.75, i64 0, i64 0)), !dbg !2375
  br label %sw.epilog151, !dbg !2376

sw.bb149:                                         ; preds = %sw.epilog138
  %call150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i64 0, i64 0)), !dbg !2377
  br label %sw.epilog151, !dbg !2378

sw.default:                                       ; preds = %sw.epilog138
  br label %sw.epilog151, !dbg !2379

sw.epilog151:                                     ; preds = %sw.default, %sw.bb149, %sw.bb147, %sw.bb145, %sw.bb143, %sw.bb141, %sw.bb139
  %40 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 22), align 4, !dbg !2380
  %cmp152 = icmp sgt i32 %40, 0, !dbg !2382
  br i1 %cmp152, label %if.then154, label %if.end173, !dbg !2383

if.then154:                                       ; preds = %sw.epilog151
  %call155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i64 0, i64 0)), !dbg !2384
  %41 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 22), align 4, !dbg !2386
  switch i32 %41, label %sw.default170 [
    i32 1, label %sw.bb156
    i32 2, label %sw.bb158
    i32 3, label %sw.bb160
    i32 4, label %sw.bb162
    i32 5, label %sw.bb164
    i32 6, label %sw.bb166
    i32 255, label %sw.bb168
  ], !dbg !2387

sw.bb156:                                         ; preds = %if.then154
  %call157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0)), !dbg !2388
  br label %sw.epilog172, !dbg !2390

sw.bb158:                                         ; preds = %if.then154
  %call159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i64 0, i64 0)), !dbg !2391
  br label %sw.epilog172, !dbg !2392

sw.bb160:                                         ; preds = %if.then154
  %call161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0)), !dbg !2393
  br label %sw.epilog172, !dbg !2394

sw.bb162:                                         ; preds = %if.then154
  %call163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0)), !dbg !2395
  br label %sw.epilog172, !dbg !2396

sw.bb164:                                         ; preds = %if.then154
  %call165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0)), !dbg !2397
  br label %sw.epilog172, !dbg !2398

sw.bb166:                                         ; preds = %if.then154
  %call167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i64 0, i64 0)), !dbg !2399
  br label %sw.epilog172, !dbg !2400

sw.bb168:                                         ; preds = %if.then154
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)), !dbg !2401
  br label %sw.epilog172, !dbg !2402

sw.default170:                                    ; preds = %if.then154
  %42 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 22), align 4, !dbg !2403
  %call171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0), i32 %42), !dbg !2404
  br label %sw.epilog172, !dbg !2405

sw.epilog172:                                     ; preds = %sw.default170, %sw.bb168, %sw.bb166, %sw.bb164, %sw.bb162, %sw.bb160, %sw.bb158, %sw.bb156
  br label %if.end173, !dbg !2406

if.end173:                                        ; preds = %sw.epilog172, %sw.epilog151
  %43 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 23), align 8, !dbg !2407
  %tobool174 = icmp ne i32 %43, 0, !dbg !2409
  br i1 %tobool174, label %if.then175, label %if.end194, !dbg !2410

if.then175:                                       ; preds = %if.end173
  %44 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 23), align 8, !dbg !2411
  switch i32 %44, label %sw.default192 [
    i32 1, label %sw.bb176
    i32 2, label %sw.bb178
    i32 3, label %sw.bb180
    i32 4, label %sw.bb182
    i32 5, label %sw.bb184
    i32 6, label %sw.bb186
    i32 7, label %sw.bb188
    i32 8, label %sw.bb190
  ], !dbg !2413

sw.bb176:                                         ; preds = %if.then175
  %call177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.86, i64 0, i64 0)), !dbg !2414
  br label %sw.epilog193, !dbg !2416

sw.bb178:                                         ; preds = %if.then175
  %call179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.87, i64 0, i64 0)), !dbg !2417
  br label %sw.epilog193, !dbg !2418

sw.bb180:                                         ; preds = %if.then175
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.88, i64 0, i64 0)), !dbg !2419
  br label %sw.epilog193, !dbg !2420

sw.bb182:                                         ; preds = %if.then175
  %call183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.89, i64 0, i64 0)), !dbg !2421
  br label %sw.epilog193, !dbg !2422

sw.bb184:                                         ; preds = %if.then175
  %call185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.90, i64 0, i64 0)), !dbg !2423
  br label %sw.epilog193, !dbg !2424

sw.bb186:                                         ; preds = %if.then175
  %call187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.91, i64 0, i64 0)), !dbg !2425
  br label %sw.epilog193, !dbg !2426

sw.bb188:                                         ; preds = %if.then175
  %call189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.92, i64 0, i64 0)), !dbg !2427
  br label %sw.epilog193, !dbg !2428

sw.bb190:                                         ; preds = %if.then175
  %call191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.93, i64 0, i64 0)), !dbg !2429
  br label %sw.epilog193, !dbg !2430

sw.default192:                                    ; preds = %if.then175
  br label %sw.epilog193, !dbg !2431

sw.epilog193:                                     ; preds = %sw.default192, %sw.bb190, %sw.bb188, %sw.bb186, %sw.bb184, %sw.bb182, %sw.bb180, %sw.bb178, %sw.bb176
  br label %if.end194, !dbg !2432

if.end194:                                        ; preds = %sw.epilog193, %if.end173
  %45 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 24), align 4, !dbg !2433
  switch i32 %45, label %sw.epilog200 [
    i32 0, label %sw.bb195
    i32 1, label %sw.bb196
    i32 2, label %sw.bb198
  ], !dbg !2434

sw.bb195:                                         ; preds = %if.end194
  br label %sw.epilog200, !dbg !2435

sw.bb196:                                         ; preds = %if.end194
  %call197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i64 0, i64 0)), !dbg !2437
  br label %sw.epilog200, !dbg !2438

sw.bb198:                                         ; preds = %if.end194
  %call199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.95, i64 0, i64 0)), !dbg !2439
  br label %sw.epilog200, !dbg !2440

sw.epilog200:                                     ; preds = %if.end194, %sw.bb198, %sw.bb196, %sw.bb195
  %46 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 27), align 8, !dbg !2441
  %tobool201 = icmp ne i32 %46, 0, !dbg !2443
  br i1 %tobool201, label %if.then202, label %if.end212, !dbg !2444

if.then202:                                       ; preds = %sw.epilog200
  %call203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i64 0, i64 0)), !dbg !2445
  %47 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 27), align 8, !dbg !2447
  switch i32 %47, label %sw.epilog210 [
    i32 1, label %sw.bb204
    i32 2, label %sw.bb206
    i32 3, label %sw.bb208
  ], !dbg !2448

sw.bb204:                                         ; preds = %if.then202
  %call205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i64 0, i64 0)), !dbg !2449
  br label %sw.epilog210, !dbg !2451

sw.bb206:                                         ; preds = %if.then202
  %call207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0)), !dbg !2452
  br label %sw.epilog210, !dbg !2453

sw.bb208:                                         ; preds = %if.then202
  %call209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i64 0, i64 0)), !dbg !2454
  br label %sw.epilog210, !dbg !2455

sw.epilog210:                                     ; preds = %if.then202, %sw.bb208, %sw.bb206, %sw.bb204
  %call211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)), !dbg !2456
  br label %if.end212, !dbg !2457

if.end212:                                        ; preds = %sw.epilog210, %sw.epilog200
  %48 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 11), align 8, !dbg !2458
  %cmp213 = icmp ne i32 %48, 192, !dbg !2460
  br i1 %cmp213, label %if.then215, label %if.end232, !dbg !2461

if.then215:                                       ; preds = %if.end212
  call void @llvm.dbg.declare(metadata i32* %a, metadata !2462, metadata !DIExpression()), !dbg !2464
  store i32 0, i32* %a, align 4, !dbg !2465
  br label %for.cond, !dbg !2467

for.cond:                                         ; preds = %for.inc, %if.then215
  %49 = load i32, i32* %a, align 4, !dbg !2468
  %conv216 = zext i32 %49 to i64, !dbg !2468
  %cmp217 = icmp uge i64 %conv216, 13, !dbg !2472
  br i1 %cmp217, label %if.then219, label %if.end221, !dbg !2473

if.then219:                                       ; preds = %for.cond
  %call220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.100, i64 0, i64 0)), !dbg !2474
  br label %for.end, !dbg !2476

if.end221:                                        ; preds = %for.cond
  %50 = load i32, i32* %a, align 4, !dbg !2477
  %idxprom222 = zext i32 %50 to i64, !dbg !2479
  %arrayidx223 = getelementptr inbounds [13 x %struct.TagTable_t], [13 x %struct.TagTable_t]* @ProcessTable, i64 0, i64 %idxprom222, !dbg !2479
  %Tag = getelementptr inbounds %struct.TagTable_t, %struct.TagTable_t* %arrayidx223, i32 0, i32 0, !dbg !2480
  %51 = load i16, i16* %Tag, align 16, !dbg !2480
  %conv224 = zext i16 %51 to i32, !dbg !2479
  %52 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 11), align 8, !dbg !2481
  %cmp225 = icmp eq i32 %conv224, %52, !dbg !2482
  br i1 %cmp225, label %if.then227, label %if.end231, !dbg !2483

if.then227:                                       ; preds = %if.end221
  %53 = load i32, i32* %a, align 4, !dbg !2484
  %idxprom228 = zext i32 %53 to i64, !dbg !2486
  %arrayidx229 = getelementptr inbounds [13 x %struct.TagTable_t], [13 x %struct.TagTable_t]* @ProcessTable, i64 0, i64 %idxprom228, !dbg !2486
  %Desc = getelementptr inbounds %struct.TagTable_t, %struct.TagTable_t* %arrayidx229, i32 0, i32 1, !dbg !2487
  %54 = load i8*, i8** %Desc, align 8, !dbg !2487
  %call230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i64 0, i64 0), i8* %54), !dbg !2488
  br label %for.end, !dbg !2489

if.end231:                                        ; preds = %if.end221
  br label %for.inc, !dbg !2490

for.inc:                                          ; preds = %if.end231
  %55 = load i32, i32* %a, align 4, !dbg !2491
  %inc = add i32 %55, 1, !dbg !2491
  store i32 %inc, i32* %a, align 4, !dbg !2491
  br label %for.cond, !dbg !2492, !llvm.loop !2493

for.end:                                          ; preds = %if.then227, %if.then219
  br label %if.end232, !dbg !2496

if.end232:                                        ; preds = %for.end, %if.end212
  %56 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 40), align 4, !dbg !2497
  %tobool233 = icmp ne i32 %56, 0, !dbg !2499
  br i1 %tobool233, label %if.then234, label %if.end241, !dbg !2500

if.then234:                                       ; preds = %if.end232
  %call235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 41, i64 0)), !dbg !2501
  %call236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.103, i64 0, i64 0), i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 42, i64 0)), !dbg !2503
  %57 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 43, i64 0), align 2, !dbg !2504
  %tobool237 = icmp ne i8 %57, 0, !dbg !2504
  br i1 %tobool237, label %if.then238, label %if.end240, !dbg !2506

if.then238:                                       ; preds = %if.then234
  %call239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.104, i64 0, i64 0), i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 43, i64 0)), !dbg !2507
  br label %if.end240, !dbg !2507

if.end240:                                        ; preds = %if.then238, %if.then234
  br label %if.end241, !dbg !2508

if.end241:                                        ; preds = %if.end240, %if.end232
  %58 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 44), align 4, !dbg !2509
  %tobool242 = icmp ne i32 %58, 0, !dbg !2511
  br i1 %tobool242, label %if.then243, label %if.end245, !dbg !2512

if.then243:                                       ; preds = %if.end241
  %59 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 44), align 4, !dbg !2513
  %call244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i64 0, i64 0), i32 %59), !dbg !2515
  br label %if.end245, !dbg !2516

if.end245:                                        ; preds = %if.then243, %if.end241
  %60 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 31, i64 0), align 8, !dbg !2517
  %tobool246 = icmp ne i8 %60, 0, !dbg !2517
  br i1 %tobool246, label %if.then247, label %if.end286, !dbg !2519

if.then247:                                       ; preds = %if.end245
  call void @llvm.dbg.declare(metadata i32* %a248, metadata !2520, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.declare(metadata i32* %c, metadata !2523, metadata !DIExpression()), !dbg !2524
  %call249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i64 0, i64 0)), !dbg !2525
  %61 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 32), align 8, !dbg !2526
  %tobool250 = icmp ne i32 %61, 0, !dbg !2528
  br i1 %tobool250, label %if.else283, label %if.then251, !dbg !2529

if.then251:                                       ; preds = %if.then247
  store i32 0, i32* %a248, align 4, !dbg !2530
  br label %for.cond252, !dbg !2533

for.cond252:                                      ; preds = %for.inc279, %if.then251
  %62 = load i32, i32* %a248, align 4, !dbg !2534
  %cmp253 = icmp slt i32 %62, 16000, !dbg !2536
  br i1 %cmp253, label %for.body, label %for.end281, !dbg !2537

for.body:                                         ; preds = %for.cond252
  %63 = load i32, i32* %a248, align 4, !dbg !2538
  %idxprom255 = sext i32 %63 to i64, !dbg !2540
  %arrayidx256 = getelementptr inbounds [16000 x i8], [16000 x i8]* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 31), i64 0, i64 %idxprom255, !dbg !2540
  %64 = load i8, i8* %arrayidx256, align 1, !dbg !2540
  %conv257 = sext i8 %64 to i32, !dbg !2540
  store i32 %conv257, i32* %c, align 4, !dbg !2541
  %65 = load i32, i32* %c, align 4, !dbg !2542
  %cmp258 = icmp eq i32 %65, 0, !dbg !2544
  br i1 %cmp258, label %if.then260, label %if.end261, !dbg !2545

if.then260:                                       ; preds = %for.body
  br label %for.end281, !dbg !2546

if.end261:                                        ; preds = %for.body
  %66 = load i32, i32* %c, align 4, !dbg !2547
  %cmp262 = icmp eq i32 %66, 10, !dbg !2549
  br i1 %cmp262, label %if.then264, label %if.else276, !dbg !2550

if.then264:                                       ; preds = %if.end261
  %67 = load i32, i32* %a248, align 4, !dbg !2551
  %add265 = add nsw i32 %67, 1, !dbg !2554
  %idxprom266 = sext i32 %add265 to i64, !dbg !2555
  %arrayidx267 = getelementptr inbounds [16000 x i8], [16000 x i8]* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 31), i64 0, i64 %idxprom266, !dbg !2555
  %68 = load i8, i8* %arrayidx267, align 1, !dbg !2555
  %conv268 = sext i8 %68 to i32, !dbg !2555
  %cmp269 = icmp ne i32 %conv268, 0, !dbg !2556
  br i1 %cmp269, label %if.then271, label %if.else273, !dbg !2557

if.then271:                                       ; preds = %if.then264
  %call272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.107, i64 0, i64 0)), !dbg !2558
  br label %if.end275, !dbg !2560

if.else273:                                       ; preds = %if.then264
  %call274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)), !dbg !2561
  br label %if.end275

if.end275:                                        ; preds = %if.else273, %if.then271
  br label %if.end278, !dbg !2563

if.else276:                                       ; preds = %if.end261
  %69 = load i32, i32* %c, align 4, !dbg !2564
  %call277 = call i32 @putchar(i32 %69), !dbg !2566
  br label %if.end278

if.end278:                                        ; preds = %if.else276, %if.end275
  br label %for.inc279, !dbg !2567

for.inc279:                                       ; preds = %if.end278
  %70 = load i32, i32* %a248, align 4, !dbg !2568
  %inc280 = add nsw i32 %70, 1, !dbg !2568
  store i32 %inc280, i32* %a248, align 4, !dbg !2568
  br label %for.cond252, !dbg !2569, !llvm.loop !2570

for.end281:                                       ; preds = %if.then260, %for.cond252
  %call282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)), !dbg !2572
  br label %if.end285, !dbg !2573

if.else283:                                       ; preds = %if.then247
  %71 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 32), align 8, !dbg !2574
  %call284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i64 0, i64 0), i32 %71, i32* bitcast (i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 31, i64 0) to i32*)), !dbg !2576
  br label %if.end285

if.end285:                                        ; preds = %if.else283, %for.end281
  br label %if.end286, !dbg !2577

if.end286:                                        ; preds = %if.end285, %if.end245
  ret void, !dbg !2578
}

declare dso_local i32 @putchar(i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @ShowConciseImageInfo() #0 !dbg !2579 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0), i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 0, i64 0)), !dbg !2580
  %0 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 8), align 4, !dbg !2581
  %1 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 7), align 8, !dbg !2582
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i64 0, i64 0), i32 %0, i32 %1), !dbg !2583
  %2 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !2584
  %tobool = fcmp une float %2, 0.000000e+00, !dbg !2586
  br i1 %tobool, label %if.then, label %if.end9, !dbg !2587

if.then:                                          ; preds = %entry
  %3 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !2588
  %conv = fpext float %3 to double, !dbg !2591
  %cmp = fcmp ole double %conv, 5.000000e-01, !dbg !2592
  br i1 %cmp, label %if.then3, label %if.else, !dbg !2593

if.then3:                                         ; preds = %if.then
  %4 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !2594
  %div = fdiv float 1.000000e+00, %4, !dbg !2596
  %conv4 = fpext float %div to double, !dbg !2597
  %add = fadd double 5.000000e-01, %conv4, !dbg !2598
  %conv5 = fptosi double %add to i32, !dbg !2599
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), i32 %conv5), !dbg !2600
  br label %if.end, !dbg !2601

if.else:                                          ; preds = %if.then
  %5 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 14), align 4, !dbg !2602
  %conv7 = fpext float %5 to double, !dbg !2604
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i64 0, i64 0), double %conv7), !dbg !2605
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end9, !dbg !2606

if.end9:                                          ; preds = %if.end, %entry
  %6 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 15), align 8, !dbg !2607
  %tobool10 = fcmp une float %6, 0.000000e+00, !dbg !2609
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !2610

if.then11:                                        ; preds = %if.end9
  %7 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 15), align 8, !dbg !2611
  %conv12 = fpext float %7 to double, !dbg !2613
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i64 0, i64 0), double %conv12), !dbg !2614
  br label %if.end14, !dbg !2615

if.end14:                                         ; preds = %if.then11, %if.end9
  %8 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 20), align 4, !dbg !2616
  %tobool15 = icmp ne i32 %8, 0, !dbg !2618
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2619

if.then16:                                        ; preds = %if.end14
  %9 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 20), align 4, !dbg !2620
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i64 0, i64 0), i32 %9), !dbg !2622
  br label %if.end18, !dbg !2623

if.end18:                                         ; preds = %if.then16, %if.end14
  %10 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 12), align 4, !dbg !2624
  %cmp19 = icmp sge i32 %10, 0, !dbg !2626
  br i1 %cmp19, label %land.lhs.true, label %if.end24, !dbg !2627

land.lhs.true:                                    ; preds = %if.end18
  %11 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 12), align 4, !dbg !2628
  %and = and i32 %11, 1, !dbg !2629
  %tobool21 = icmp ne i32 %and, 0, !dbg !2629
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !2630

if.then22:                                        ; preds = %land.lhs.true
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i64 0, i64 0)), !dbg !2631
  br label %if.end24, !dbg !2633

if.end24:                                         ; preds = %if.then22, %land.lhs.true, %if.end18
  %12 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 10), align 4, !dbg !2634
  %cmp25 = icmp eq i32 %12, 0, !dbg !2636
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !2637

if.then27:                                        ; preds = %if.end24
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i64 0, i64 0)), !dbg !2638
  br label %if.end29, !dbg !2640

if.end29:                                         ; preds = %if.then27, %if.end24
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)), !dbg !2641
  ret void, !dbg !2642
}

declare dso_local void @ProcessMakerNote(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local double @exp(double) #5

; Function Attrs: nounwind
declare dso_local double @log(double) #5

declare dso_local void @ProcessGpsInfo(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!97, !98, !99}
!llvm.ident = !{!100}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "MotorolaOrder", scope: !2, file: !3, line: 17, type: !36, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !41, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "exif.c", directory: ".")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !26, !23, !7, !28, !29, !30, !32, !33, !34, !36, !31, !25, !37, !40}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !24, line: 41, baseType: !25)
!24 = !DIFile(filename: "./jhead.h", directory: ".")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !39, line: 74, baseType: !36)
!39 = !DIFile(filename: "/home/raoxue/node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "")
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !{!0, !42, !44, !50, !60, !62, !64, !66, !68, !73, !76, !87, !94}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "NumOrientations", scope: !2, file: !3, line: 22, type: !36, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "BytesPerFormat", scope: !2, file: !3, line: 75, type: !46, isLocal: false, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 416, elements: !48)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!48 = !{!49}
!49 = !DISubrange(count: 13)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "ExifHeader", scope: !52, file: !3, line: 1003, type: !57, isLocal: true, isDefinition: true)
!52 = distinct !DISubprogram(name: "process_EXIF", scope: !3, file: !3, line: 992, type: !53, scopeLine: 993, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55, !36}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!56 = !{}
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 56, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 7)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "DirWithThumbnailPtrs", scope: !2, file: !3, line: 13, type: !55, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "FocalplaneXRes", scope: !2, file: !3, line: 14, type: !29, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "FocalplaneUnits", scope: !2, file: !3, line: 15, type: !29, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "ExifImageWidth", scope: !2, file: !3, line: 16, type: !36, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "OrientationPtr", scope: !2, file: !3, line: 20, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 2)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "OrientationNumFormat", scope: !2, file: !3, line: 21, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, elements: !71)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "TagTable", scope: !2, file: !3, line: 189, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 13568, elements: !85)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "TagTable_t", file: !3, line: 27, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 24, size: 128, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "Tag", scope: !81, file: !3, line: 25, baseType: !40, size: 16)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "Desc", scope: !81, file: !3, line: 26, baseType: !26, size: 64, offset: 64)
!85 = !{!86}
!86 = !DISubrange(count: 106)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "OrientTab", scope: !2, file: !3, line: 63, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 576, elements: !92)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!92 = !{!93}
!93 = !DISubrange(count: 9)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "ProcessTable", scope: !2, file: !3, line: 32, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 1664, elements: !48)
!97 = !{i32 7, !"Dwarf Version", i32 4}
!98 = !{i32 2, !"Debug Info Version", i32 3}
!99 = !{i32 1, !"wchar_size", i32 4}
!100 = !{!"clang version 12.0.0"}
!101 = distinct !DISubprogram(name: "Get16u", scope: !3, file: !3, line: 318, type: !102, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!102 = !DISubroutineType(types: !103)
!103 = !{!36, !33}
!104 = !DILocalVariable(name: "Short", arg: 1, scope: !101, file: !3, line: 318, type: !33)
!105 = !DILocation(line: 318, column: 19, scope: !101)
!106 = !DILocation(line: 320, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !101, file: !3, line: 320, column: 9)
!108 = !DILocation(line: 320, column: 9, scope: !101)
!109 = !DILocation(line: 321, column: 27, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 320, column: 23)
!111 = !DILocation(line: 321, column: 17, scope: !110)
!112 = !DILocation(line: 321, column: 37, scope: !110)
!113 = !DILocation(line: 321, column: 55, scope: !110)
!114 = !DILocation(line: 321, column: 45, scope: !110)
!115 = !DILocation(line: 321, column: 43, scope: !110)
!116 = !DILocation(line: 321, column: 9, scope: !110)
!117 = !DILocation(line: 323, column: 27, scope: !118)
!118 = distinct !DILexicalBlock(scope: !107, file: !3, line: 322, column: 10)
!119 = !DILocation(line: 323, column: 17, scope: !118)
!120 = !DILocation(line: 323, column: 37, scope: !118)
!121 = !DILocation(line: 323, column: 55, scope: !118)
!122 = !DILocation(line: 323, column: 45, scope: !118)
!123 = !DILocation(line: 323, column: 43, scope: !118)
!124 = !DILocation(line: 323, column: 9, scope: !118)
!125 = !DILocation(line: 325, column: 1, scope: !101)
!126 = distinct !DISubprogram(name: "Get32s", scope: !3, file: !3, line: 330, type: !102, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!127 = !DILocalVariable(name: "Long", arg: 1, scope: !126, file: !3, line: 330, type: !33)
!128 = !DILocation(line: 330, column: 19, scope: !126)
!129 = !DILocation(line: 332, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !3, line: 332, column: 9)
!131 = !DILocation(line: 332, column: 9, scope: !126)
!132 = !DILocation(line: 333, column: 28, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !3, line: 332, column: 23)
!134 = !DILocation(line: 333, column: 18, scope: !133)
!135 = !DILocation(line: 333, column: 37, scope: !133)
!136 = !DILocation(line: 333, column: 57, scope: !133)
!137 = !DILocation(line: 333, column: 47, scope: !133)
!138 = !DILocation(line: 333, column: 66, scope: !133)
!139 = !DILocation(line: 333, column: 44, scope: !133)
!140 = !DILocation(line: 334, column: 28, scope: !133)
!141 = !DILocation(line: 334, column: 18, scope: !133)
!142 = !DILocation(line: 334, column: 37, scope: !133)
!143 = !DILocation(line: 334, column: 15, scope: !133)
!144 = !DILocation(line: 334, column: 57, scope: !133)
!145 = !DILocation(line: 334, column: 47, scope: !133)
!146 = !DILocation(line: 334, column: 66, scope: !133)
!147 = !DILocation(line: 334, column: 44, scope: !133)
!148 = !DILocation(line: 333, column: 9, scope: !133)
!149 = !DILocation(line: 337, column: 38, scope: !150)
!150 = distinct !DILexicalBlock(scope: !130, file: !3, line: 335, column: 10)
!151 = !DILocation(line: 337, column: 23, scope: !150)
!152 = !DILocation(line: 337, column: 9, scope: !150)
!153 = !DILocation(line: 338, column: 28, scope: !150)
!154 = !DILocation(line: 338, column: 18, scope: !150)
!155 = !DILocation(line: 338, column: 37, scope: !150)
!156 = !DILocation(line: 338, column: 57, scope: !150)
!157 = !DILocation(line: 338, column: 47, scope: !150)
!158 = !DILocation(line: 338, column: 66, scope: !150)
!159 = !DILocation(line: 338, column: 44, scope: !150)
!160 = !DILocation(line: 339, column: 28, scope: !150)
!161 = !DILocation(line: 339, column: 18, scope: !150)
!162 = !DILocation(line: 339, column: 37, scope: !150)
!163 = !DILocation(line: 339, column: 15, scope: !150)
!164 = !DILocation(line: 339, column: 57, scope: !150)
!165 = !DILocation(line: 339, column: 47, scope: !150)
!166 = !DILocation(line: 339, column: 66, scope: !150)
!167 = !DILocation(line: 339, column: 44, scope: !150)
!168 = !DILocation(line: 338, column: 9, scope: !150)
!169 = !DILocation(line: 341, column: 1, scope: !126)
!170 = distinct !DISubprogram(name: "Put32u", scope: !3, file: !3, line: 346, type: !171, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !33, !7}
!173 = !DILocalVariable(name: "Value", arg: 1, scope: !170, file: !3, line: 346, type: !33)
!174 = !DILocation(line: 346, column: 20, scope: !170)
!175 = !DILocalVariable(name: "PutValue", arg: 2, scope: !170, file: !3, line: 346, type: !7)
!176 = !DILocation(line: 346, column: 36, scope: !170)
!177 = !DILocation(line: 348, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !170, file: !3, line: 348, column: 9)
!179 = !DILocation(line: 348, column: 9, scope: !170)
!180 = !DILocation(line: 349, column: 39, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !3, line: 348, column: 23)
!182 = !DILocation(line: 349, column: 47, scope: !181)
!183 = !DILocation(line: 349, column: 31, scope: !181)
!184 = !DILocation(line: 349, column: 19, scope: !181)
!185 = !DILocation(line: 349, column: 9, scope: !181)
!186 = !DILocation(line: 349, column: 29, scope: !181)
!187 = !DILocation(line: 350, column: 39, scope: !181)
!188 = !DILocation(line: 350, column: 47, scope: !181)
!189 = !DILocation(line: 350, column: 31, scope: !181)
!190 = !DILocation(line: 350, column: 19, scope: !181)
!191 = !DILocation(line: 350, column: 9, scope: !181)
!192 = !DILocation(line: 350, column: 29, scope: !181)
!193 = !DILocation(line: 351, column: 39, scope: !181)
!194 = !DILocation(line: 351, column: 47, scope: !181)
!195 = !DILocation(line: 351, column: 31, scope: !181)
!196 = !DILocation(line: 351, column: 19, scope: !181)
!197 = !DILocation(line: 351, column: 9, scope: !181)
!198 = !DILocation(line: 351, column: 29, scope: !181)
!199 = !DILocation(line: 352, column: 38, scope: !181)
!200 = !DILocation(line: 352, column: 31, scope: !181)
!201 = !DILocation(line: 352, column: 19, scope: !181)
!202 = !DILocation(line: 352, column: 9, scope: !181)
!203 = !DILocation(line: 352, column: 29, scope: !181)
!204 = !DILocation(line: 353, column: 5, scope: !181)
!205 = !DILocation(line: 354, column: 38, scope: !206)
!206 = distinct !DILexicalBlock(scope: !178, file: !3, line: 353, column: 10)
!207 = !DILocation(line: 354, column: 31, scope: !206)
!208 = !DILocation(line: 354, column: 19, scope: !206)
!209 = !DILocation(line: 354, column: 9, scope: !206)
!210 = !DILocation(line: 354, column: 29, scope: !206)
!211 = !DILocation(line: 355, column: 39, scope: !206)
!212 = !DILocation(line: 355, column: 47, scope: !206)
!213 = !DILocation(line: 355, column: 31, scope: !206)
!214 = !DILocation(line: 355, column: 19, scope: !206)
!215 = !DILocation(line: 355, column: 9, scope: !206)
!216 = !DILocation(line: 355, column: 29, scope: !206)
!217 = !DILocation(line: 356, column: 39, scope: !206)
!218 = !DILocation(line: 356, column: 47, scope: !206)
!219 = !DILocation(line: 356, column: 31, scope: !206)
!220 = !DILocation(line: 356, column: 19, scope: !206)
!221 = !DILocation(line: 356, column: 9, scope: !206)
!222 = !DILocation(line: 356, column: 29, scope: !206)
!223 = !DILocation(line: 357, column: 39, scope: !206)
!224 = !DILocation(line: 357, column: 47, scope: !206)
!225 = !DILocation(line: 357, column: 31, scope: !206)
!226 = !DILocation(line: 357, column: 19, scope: !206)
!227 = !DILocation(line: 357, column: 9, scope: !206)
!228 = !DILocation(line: 357, column: 29, scope: !206)
!229 = !DILocation(line: 359, column: 1, scope: !170)
!230 = distinct !DISubprogram(name: "Get32u", scope: !3, file: !3, line: 364, type: !231, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!231 = !DISubroutineType(types: !232)
!232 = !{!7, !33}
!233 = !DILocalVariable(name: "Long", arg: 1, scope: !230, file: !3, line: 364, type: !33)
!234 = !DILocation(line: 364, column: 24, scope: !230)
!235 = !DILocation(line: 366, column: 29, scope: !230)
!236 = !DILocation(line: 366, column: 22, scope: !230)
!237 = !DILocation(line: 366, column: 5, scope: !230)
!238 = distinct !DISubprogram(name: "PrintFormatNumber", scope: !3, file: !3, line: 372, type: !239, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !33, !36, !36}
!241 = !DILocalVariable(name: "ValuePtr", arg: 1, scope: !238, file: !3, line: 372, type: !33)
!242 = !DILocation(line: 372, column: 31, scope: !238)
!243 = !DILocalVariable(name: "Format", arg: 2, scope: !238, file: !3, line: 372, type: !36)
!244 = !DILocation(line: 372, column: 45, scope: !238)
!245 = !DILocalVariable(name: "ByteCount", arg: 3, scope: !238, file: !3, line: 372, type: !36)
!246 = !DILocation(line: 372, column: 57, scope: !238)
!247 = !DILocalVariable(name: "s", scope: !238, file: !3, line: 374, type: !36)
!248 = !DILocation(line: 374, column: 9, scope: !238)
!249 = !DILocalVariable(name: "n", scope: !238, file: !3, line: 374, type: !36)
!250 = !DILocation(line: 374, column: 11, scope: !238)
!251 = !DILocation(line: 376, column: 10, scope: !252)
!252 = distinct !DILexicalBlock(scope: !238, file: !3, line: 376, column: 5)
!253 = !DILocation(line: 376, column: 9, scope: !252)
!254 = !DILocation(line: 376, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !3, line: 376, column: 5)
!256 = !DILocation(line: 376, column: 14, scope: !255)
!257 = !DILocation(line: 376, column: 5, scope: !252)
!258 = !DILocation(line: 377, column: 16, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 376, column: 22)
!260 = !DILocation(line: 377, column: 9, scope: !259)
!261 = !DILocation(line: 379, column: 57, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !3, line: 377, column: 23)
!263 = !DILocation(line: 379, column: 47, scope: !262)
!264 = !DILocation(line: 379, column: 33, scope: !262)
!265 = !DILocation(line: 379, column: 69, scope: !262)
!266 = !DILocation(line: 379, column: 74, scope: !262)
!267 = !DILocation(line: 380, column: 52, scope: !262)
!268 = !DILocation(line: 380, column: 45, scope: !262)
!269 = !DILocation(line: 380, column: 33, scope: !262)
!270 = !DILocation(line: 380, column: 65, scope: !262)
!271 = !DILocation(line: 380, column: 74, scope: !262)
!272 = !DILocation(line: 382, column: 52, scope: !262)
!273 = !DILocation(line: 382, column: 45, scope: !262)
!274 = !DILocation(line: 382, column: 33, scope: !262)
!275 = !DILocation(line: 382, column: 65, scope: !262)
!276 = !DILocation(line: 382, column: 74, scope: !262)
!277 = !DILocation(line: 383, column: 67, scope: !262)
!278 = !DILocation(line: 383, column: 60, scope: !262)
!279 = !DILocation(line: 383, column: 46, scope: !262)
!280 = !DILocation(line: 383, column: 33, scope: !262)
!281 = !DILocation(line: 383, column: 80, scope: !262)
!282 = !DILocation(line: 383, column: 84, scope: !262)
!283 = !DILocation(line: 385, column: 39, scope: !262)
!284 = !DILocation(line: 385, column: 32, scope: !262)
!285 = !DILocation(line: 385, column: 67, scope: !262)
!286 = !DILocation(line: 385, column: 58, scope: !262)
!287 = !DILocation(line: 385, column: 50, scope: !262)
!288 = !DILocation(line: 385, column: 17, scope: !262)
!289 = !DILocation(line: 386, column: 19, scope: !262)
!290 = !DILocation(line: 387, column: 17, scope: !262)
!291 = !DILocation(line: 390, column: 39, scope: !262)
!292 = !DILocation(line: 390, column: 32, scope: !262)
!293 = !DILocation(line: 390, column: 67, scope: !262)
!294 = !DILocation(line: 390, column: 58, scope: !262)
!295 = !DILocation(line: 390, column: 50, scope: !262)
!296 = !DILocation(line: 390, column: 17, scope: !262)
!297 = !DILocation(line: 391, column: 19, scope: !262)
!298 = !DILocation(line: 392, column: 17, scope: !262)
!299 = !DILocation(line: 394, column: 63, scope: !262)
!300 = !DILocation(line: 394, column: 54, scope: !262)
!301 = !DILocation(line: 394, column: 53, scope: !262)
!302 = !DILocation(line: 394, column: 45, scope: !262)
!303 = !DILocation(line: 394, column: 33, scope: !262)
!304 = !DILocation(line: 394, column: 75, scope: !262)
!305 = !DILocation(line: 394, column: 79, scope: !262)
!306 = !DILocation(line: 395, column: 56, scope: !262)
!307 = !DILocation(line: 395, column: 46, scope: !262)
!308 = !DILocation(line: 395, column: 45, scope: !262)
!309 = !DILocation(line: 395, column: 33, scope: !262)
!310 = !DILocation(line: 395, column: 75, scope: !262)
!311 = !DILocation(line: 395, column: 79, scope: !262)
!312 = !DILocation(line: 397, column: 46, scope: !262)
!313 = !DILocation(line: 397, column: 17, scope: !262)
!314 = !DILocation(line: 398, column: 17, scope: !262)
!315 = !DILocation(line: 400, column: 22, scope: !259)
!316 = !DILocation(line: 400, column: 19, scope: !259)
!317 = !DILocation(line: 401, column: 13, scope: !318)
!318 = distinct !DILexicalBlock(scope: !259, file: !3, line: 401, column: 13)
!319 = !DILocation(line: 401, column: 23, scope: !318)
!320 = !DILocation(line: 401, column: 13, scope: !259)
!321 = !DILocation(line: 401, column: 29, scope: !318)
!322 = !DILocation(line: 402, column: 9, scope: !259)
!323 = !DILocation(line: 403, column: 37, scope: !259)
!324 = !DILocation(line: 403, column: 48, scope: !259)
!325 = !DILocation(line: 403, column: 46, scope: !259)
!326 = !DILocation(line: 403, column: 18, scope: !259)
!327 = !DILocation(line: 405, column: 5, scope: !259)
!328 = !DILocation(line: 376, column: 19, scope: !255)
!329 = !DILocation(line: 376, column: 5, scope: !255)
!330 = distinct !{!330, !257, !331, !332}
!331 = !DILocation(line: 405, column: 5, scope: !252)
!332 = !{!"llvm.loop.mustprogress"}
!333 = !DILocation(line: 406, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !238, file: !3, line: 406, column: 9)
!335 = !DILocation(line: 406, column: 11, scope: !334)
!336 = !DILocation(line: 406, column: 9, scope: !238)
!337 = !DILocation(line: 406, column: 18, scope: !334)
!338 = !DILocation(line: 407, column: 1, scope: !238)
!339 = distinct !DISubprogram(name: "ConvertAnyFormat", scope: !3, file: !3, line: 413, type: !340, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!340 = !DISubroutineType(types: !341)
!341 = !{!29, !33, !36}
!342 = !DILocalVariable(name: "ValuePtr", arg: 1, scope: !339, file: !3, line: 413, type: !33)
!343 = !DILocation(line: 413, column: 32, scope: !339)
!344 = !DILocalVariable(name: "Format", arg: 2, scope: !339, file: !3, line: 413, type: !36)
!345 = !DILocation(line: 413, column: 46, scope: !339)
!346 = !DILocalVariable(name: "Value", scope: !339, file: !3, line: 415, type: !29)
!347 = !DILocation(line: 415, column: 12, scope: !339)
!348 = !DILocation(line: 416, column: 11, scope: !339)
!349 = !DILocation(line: 418, column: 12, scope: !339)
!350 = !DILocation(line: 418, column: 5, scope: !339)
!351 = !DILocation(line: 419, column: 53, scope: !352)
!352 = distinct !DILexicalBlock(scope: !339, file: !3, line: 418, column: 19)
!353 = !DILocation(line: 419, column: 37, scope: !352)
!354 = !DILocation(line: 419, column: 35, scope: !352)
!355 = !DILocation(line: 419, column: 64, scope: !352)
!356 = !DILocation(line: 420, column: 47, scope: !352)
!357 = !DILocation(line: 420, column: 37, scope: !352)
!358 = !DILocation(line: 420, column: 35, scope: !352)
!359 = !DILocation(line: 420, column: 64, scope: !352)
!360 = !DILocation(line: 422, column: 44, scope: !352)
!361 = !DILocation(line: 422, column: 37, scope: !352)
!362 = !DILocation(line: 422, column: 35, scope: !352)
!363 = !DILocation(line: 422, column: 64, scope: !352)
!364 = !DILocation(line: 423, column: 44, scope: !352)
!365 = !DILocation(line: 423, column: 37, scope: !352)
!366 = !DILocation(line: 423, column: 35, scope: !352)
!367 = !DILocation(line: 423, column: 64, scope: !352)
!368 = !DILocalVariable(name: "Num", scope: !369, file: !3, line: 428, type: !36)
!369 = distinct !DILexicalBlock(scope: !352, file: !3, line: 427, column: 13)
!370 = !DILocation(line: 428, column: 21, scope: !369)
!371 = !DILocalVariable(name: "Den", scope: !369, file: !3, line: 428, type: !36)
!372 = !DILocation(line: 428, column: 25, scope: !369)
!373 = !DILocation(line: 429, column: 30, scope: !369)
!374 = !DILocation(line: 429, column: 23, scope: !369)
!375 = !DILocation(line: 429, column: 21, scope: !369)
!376 = !DILocation(line: 430, column: 40, scope: !369)
!377 = !DILocation(line: 430, column: 31, scope: !369)
!378 = !DILocation(line: 430, column: 23, scope: !369)
!379 = !DILocation(line: 430, column: 21, scope: !369)
!380 = !DILocation(line: 431, column: 21, scope: !381)
!381 = distinct !DILexicalBlock(scope: !369, file: !3, line: 431, column: 21)
!382 = !DILocation(line: 431, column: 25, scope: !381)
!383 = !DILocation(line: 431, column: 21, scope: !369)
!384 = !DILocation(line: 432, column: 27, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !3, line: 431, column: 30)
!386 = !DILocation(line: 433, column: 17, scope: !385)
!387 = !DILocation(line: 434, column: 25, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 434, column: 25)
!389 = distinct !DILexicalBlock(scope: !381, file: !3, line: 433, column: 22)
!390 = !DILocation(line: 434, column: 32, scope: !388)
!391 = !DILocation(line: 434, column: 25, scope: !389)
!392 = !DILocation(line: 435, column: 41, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !3, line: 434, column: 49)
!394 = !DILocation(line: 435, column: 33, scope: !393)
!395 = !DILocation(line: 435, column: 45, scope: !393)
!396 = !DILocation(line: 435, column: 44, scope: !393)
!397 = !DILocation(line: 435, column: 31, scope: !393)
!398 = !DILocation(line: 436, column: 21, scope: !393)
!399 = !DILocation(line: 437, column: 51, scope: !400)
!400 = distinct !DILexicalBlock(scope: !388, file: !3, line: 436, column: 26)
!401 = !DILocation(line: 437, column: 33, scope: !400)
!402 = !DILocation(line: 437, column: 73, scope: !400)
!403 = !DILocation(line: 437, column: 55, scope: !400)
!404 = !DILocation(line: 437, column: 54, scope: !400)
!405 = !DILocation(line: 437, column: 31, scope: !400)
!406 = !DILocation(line: 440, column: 17, scope: !369)
!407 = !DILocation(line: 443, column: 58, scope: !352)
!408 = !DILocation(line: 443, column: 51, scope: !352)
!409 = !DILocation(line: 443, column: 37, scope: !352)
!410 = !DILocation(line: 443, column: 35, scope: !352)
!411 = !DILocation(line: 443, column: 70, scope: !352)
!412 = !DILocation(line: 444, column: 44, scope: !352)
!413 = !DILocation(line: 444, column: 37, scope: !352)
!414 = !DILocation(line: 444, column: 35, scope: !352)
!415 = !DILocation(line: 444, column: 70, scope: !352)
!416 = !DILocation(line: 447, column: 55, scope: !352)
!417 = !DILocation(line: 447, column: 46, scope: !352)
!418 = !DILocation(line: 447, column: 45, scope: !352)
!419 = !DILocation(line: 447, column: 37, scope: !352)
!420 = !DILocation(line: 447, column: 35, scope: !352)
!421 = !DILocation(line: 447, column: 70, scope: !352)
!422 = !DILocation(line: 448, column: 48, scope: !352)
!423 = !DILocation(line: 448, column: 38, scope: !352)
!424 = !DILocation(line: 448, column: 37, scope: !352)
!425 = !DILocation(line: 448, column: 35, scope: !352)
!426 = !DILocation(line: 448, column: 70, scope: !352)
!427 = !DILocation(line: 451, column: 65, scope: !352)
!428 = !DILocation(line: 451, column: 13, scope: !352)
!429 = !DILocation(line: 452, column: 5, scope: !352)
!430 = !DILocation(line: 453, column: 12, scope: !339)
!431 = !DILocation(line: 453, column: 5, scope: !339)
!432 = distinct !DISubprogram(name: "Clear_EXIF", scope: !3, file: !3, line: 977, type: !433, scopeLine: 978, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!433 = !DISubroutineType(types: !434)
!434 = !{null}
!435 = !DILocation(line: 979, column: 20, scope: !432)
!436 = !DILocation(line: 980, column: 21, scope: !432)
!437 = !DILocation(line: 981, column: 20, scope: !432)
!438 = !DILocation(line: 982, column: 21, scope: !432)
!439 = !DILocation(line: 983, column: 19, scope: !432)
!440 = !DILocation(line: 984, column: 43, scope: !432)
!441 = !DILocation(line: 984, column: 23, scope: !432)
!442 = !DILocation(line: 985, column: 55, scope: !432)
!443 = !DILocation(line: 985, column: 29, scope: !432)
!444 = !DILocation(line: 986, column: 1, scope: !432)
!445 = !DILocalVariable(name: "ExifSection", arg: 1, scope: !52, file: !3, line: 992, type: !55)
!446 = !DILocation(line: 992, column: 36, scope: !52)
!447 = !DILocalVariable(name: "length", arg: 2, scope: !52, file: !3, line: 992, type: !36)
!448 = !DILocation(line: 992, column: 53, scope: !52)
!449 = !DILocalVariable(name: "FirstOffset", scope: !52, file: !3, line: 994, type: !36)
!450 = !DILocation(line: 994, column: 9, scope: !52)
!451 = !DILocation(line: 996, column: 5, scope: !52)
!452 = !DILocation(line: 998, column: 9, scope: !453)
!453 = distinct !DILexicalBlock(scope: !52, file: !3, line: 998, column: 9)
!454 = !DILocation(line: 998, column: 9, scope: !52)
!455 = !DILocation(line: 999, column: 46, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !3, line: 998, column: 18)
!457 = !DILocation(line: 999, column: 9, scope: !456)
!458 = !DILocation(line: 1000, column: 5, scope: !456)
!459 = !DILocation(line: 1004, column: 20, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1004, column: 13)
!461 = distinct !DILexicalBlock(scope: !52, file: !3, line: 1002, column: 5)
!462 = !DILocation(line: 1004, column: 31, scope: !460)
!463 = !DILocation(line: 1004, column: 13, scope: !460)
!464 = !DILocation(line: 1004, column: 13, scope: !461)
!465 = !DILocation(line: 1005, column: 13, scope: !466)
!466 = distinct !DILexicalBlock(scope: !460, file: !3, line: 1004, column: 49)
!467 = !DILocation(line: 1006, column: 13, scope: !466)
!468 = !DILocation(line: 1010, column: 16, scope: !469)
!469 = distinct !DILexicalBlock(scope: !52, file: !3, line: 1010, column: 9)
!470 = !DILocation(line: 1010, column: 27, scope: !469)
!471 = !DILocation(line: 1010, column: 9, scope: !469)
!472 = !DILocation(line: 1010, column: 38, scope: !469)
!473 = !DILocation(line: 1010, column: 9, scope: !52)
!474 = !DILocation(line: 1011, column: 13, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 1011, column: 13)
!476 = distinct !DILexicalBlock(scope: !469, file: !3, line: 1010, column: 43)
!477 = !DILocation(line: 1011, column: 13, scope: !476)
!478 = !DILocation(line: 1011, column: 23, scope: !475)
!479 = !DILocation(line: 1012, column: 23, scope: !476)
!480 = !DILocation(line: 1013, column: 5, scope: !476)
!481 = !DILocation(line: 1014, column: 20, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 1014, column: 13)
!483 = distinct !DILexicalBlock(scope: !469, file: !3, line: 1013, column: 10)
!484 = !DILocation(line: 1014, column: 31, scope: !482)
!485 = !DILocation(line: 1014, column: 13, scope: !482)
!486 = !DILocation(line: 1014, column: 42, scope: !482)
!487 = !DILocation(line: 1014, column: 13, scope: !483)
!488 = !DILocation(line: 1015, column: 17, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 1015, column: 17)
!490 = distinct !DILexicalBlock(scope: !482, file: !3, line: 1014, column: 47)
!491 = !DILocation(line: 1015, column: 17, scope: !490)
!492 = !DILocation(line: 1015, column: 27, scope: !489)
!493 = !DILocation(line: 1016, column: 27, scope: !490)
!494 = !DILocation(line: 1017, column: 9, scope: !490)
!495 = !DILocation(line: 1018, column: 13, scope: !496)
!496 = distinct !DILexicalBlock(scope: !482, file: !3, line: 1017, column: 14)
!497 = !DILocation(line: 1019, column: 13, scope: !496)
!498 = !DILocation(line: 1024, column: 16, scope: !499)
!499 = distinct !DILexicalBlock(scope: !52, file: !3, line: 1024, column: 9)
!500 = !DILocation(line: 1024, column: 27, scope: !499)
!501 = !DILocation(line: 1024, column: 9, scope: !499)
!502 = !DILocation(line: 1024, column: 32, scope: !499)
!503 = !DILocation(line: 1024, column: 9, scope: !52)
!504 = !DILocation(line: 1025, column: 9, scope: !505)
!505 = distinct !DILexicalBlock(scope: !499, file: !3, line: 1024, column: 40)
!506 = !DILocation(line: 1026, column: 9, scope: !505)
!507 = !DILocation(line: 1029, column: 31, scope: !52)
!508 = !DILocation(line: 1029, column: 42, scope: !52)
!509 = !DILocation(line: 1029, column: 24, scope: !52)
!510 = !DILocation(line: 1029, column: 17, scope: !52)
!511 = !DILocation(line: 1030, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !52, file: !3, line: 1030, column: 9)
!513 = !DILocation(line: 1030, column: 21, scope: !512)
!514 = !DILocation(line: 1030, column: 25, scope: !512)
!515 = !DILocation(line: 1030, column: 28, scope: !512)
!516 = !DILocation(line: 1030, column: 40, scope: !512)
!517 = !DILocation(line: 1030, column: 9, scope: !52)
!518 = !DILocation(line: 1031, column: 13, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 1031, column: 13)
!520 = distinct !DILexicalBlock(scope: !512, file: !3, line: 1030, column: 45)
!521 = !DILocation(line: 1031, column: 25, scope: !519)
!522 = !DILocation(line: 1031, column: 30, scope: !519)
!523 = !DILocation(line: 1031, column: 33, scope: !519)
!524 = !DILocation(line: 1031, column: 47, scope: !519)
!525 = !DILocation(line: 1031, column: 53, scope: !519)
!526 = !DILocation(line: 1031, column: 45, scope: !519)
!527 = !DILocation(line: 1031, column: 57, scope: !519)
!528 = !DILocation(line: 1031, column: 60, scope: !519)
!529 = !DILocation(line: 1031, column: 67, scope: !519)
!530 = !DILocation(line: 1031, column: 13, scope: !520)
!531 = !DILocation(line: 1032, column: 13, scope: !532)
!532 = distinct !DILexicalBlock(scope: !519, file: !3, line: 1031, column: 72)
!533 = !DILocation(line: 1033, column: 13, scope: !532)
!534 = !DILocation(line: 1036, column: 9, scope: !520)
!535 = !DILocation(line: 1037, column: 5, scope: !520)
!536 = !DILocation(line: 1039, column: 26, scope: !52)
!537 = !DILocation(line: 1043, column: 20, scope: !52)
!538 = !DILocation(line: 1043, column: 31, scope: !52)
!539 = !DILocation(line: 1043, column: 34, scope: !52)
!540 = !DILocation(line: 1043, column: 33, scope: !52)
!541 = !DILocation(line: 1043, column: 47, scope: !52)
!542 = !DILocation(line: 1043, column: 58, scope: !52)
!543 = !DILocation(line: 1043, column: 62, scope: !52)
!544 = !DILocation(line: 1043, column: 68, scope: !52)
!545 = !DILocation(line: 1043, column: 5, scope: !52)
!546 = !DILocation(line: 1045, column: 42, scope: !52)
!547 = !DILocation(line: 1045, column: 71, scope: !52)
!548 = !DILocation(line: 1045, column: 58, scope: !52)
!549 = !DILocation(line: 1045, column: 32, scope: !52)
!550 = !DILocation(line: 1045, column: 30, scope: !52)
!551 = !DILocation(line: 1047, column: 9, scope: !552)
!552 = distinct !DILexicalBlock(scope: !52, file: !3, line: 1047, column: 9)
!553 = !DILocation(line: 1047, column: 9, scope: !52)
!554 = !DILocalVariable(name: "a", scope: !555, file: !3, line: 1048, type: !36)
!555 = distinct !DILexicalBlock(scope: !552, file: !3, line: 1047, column: 21)
!556 = !DILocation(line: 1048, column: 13, scope: !555)
!557 = !DILocalVariable(name: "b", scope: !555, file: !3, line: 1048, type: !36)
!558 = !DILocation(line: 1048, column: 15, scope: !555)
!559 = !DILocation(line: 1049, column: 43, scope: !555)
!560 = !DILocation(line: 1049, column: 49, scope: !555)
!561 = !DILocation(line: 1049, column: 9, scope: !555)
!562 = !DILocation(line: 1050, column: 15, scope: !563)
!563 = distinct !DILexicalBlock(scope: !555, file: !3, line: 1050, column: 9)
!564 = !DILocation(line: 1050, column: 14, scope: !563)
!565 = !DILocation(line: 1050, column: 18, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !3, line: 1050, column: 9)
!567 = !DILocation(line: 1050, column: 20, scope: !566)
!568 = !DILocation(line: 1050, column: 26, scope: !566)
!569 = !DILocation(line: 1050, column: 19, scope: !566)
!570 = !DILocation(line: 1050, column: 9, scope: !563)
!571 = !DILocation(line: 1051, column: 33, scope: !572)
!572 = distinct !DILexicalBlock(scope: !566, file: !3, line: 1050, column: 36)
!573 = !DILocation(line: 1051, column: 13, scope: !572)
!574 = !DILocation(line: 1052, column: 19, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !3, line: 1052, column: 13)
!576 = !DILocation(line: 1052, column: 18, scope: !575)
!577 = !DILocation(line: 1052, column: 22, scope: !578)
!578 = distinct !DILexicalBlock(scope: !575, file: !3, line: 1052, column: 13)
!579 = !DILocation(line: 1052, column: 23, scope: !578)
!580 = !DILocation(line: 1052, column: 13, scope: !575)
!581 = !DILocation(line: 1052, column: 49, scope: !578)
!582 = !DILocation(line: 1052, column: 60, scope: !578)
!583 = !DILocation(line: 1052, column: 63, scope: !578)
!584 = !DILocation(line: 1052, column: 62, scope: !578)
!585 = !DILocation(line: 1052, column: 65, scope: !578)
!586 = !DILocation(line: 1052, column: 64, scope: !578)
!587 = !DILocation(line: 1052, column: 47, scope: !578)
!588 = !DILocation(line: 1052, column: 32, scope: !578)
!589 = !DILocation(line: 1052, column: 28, scope: !578)
!590 = !DILocation(line: 1052, column: 13, scope: !578)
!591 = distinct !{!591, !580, !592, !332}
!592 = !DILocation(line: 1052, column: 67, scope: !575)
!593 = !DILocation(line: 1053, column: 13, scope: !572)
!594 = !DILocation(line: 1054, column: 9, scope: !572)
!595 = !DILocation(line: 1050, column: 30, scope: !566)
!596 = !DILocation(line: 1050, column: 9, scope: !566)
!597 = distinct !{!597, !570, !598, !332}
!598 = !DILocation(line: 1054, column: 9, scope: !563)
!599 = !DILocation(line: 1055, column: 5, scope: !555)
!600 = !DILocation(line: 1059, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !52, file: !3, line: 1059, column: 9)
!602 = !DILocation(line: 1059, column: 24, scope: !601)
!603 = !DILocation(line: 1059, column: 29, scope: !601)
!604 = !DILocation(line: 1059, column: 32, scope: !601)
!605 = !DILocation(line: 1059, column: 47, scope: !601)
!606 = !DILocation(line: 1059, column: 9, scope: !52)
!607 = !DILocation(line: 1064, column: 38, scope: !608)
!608 = distinct !DILexicalBlock(scope: !601, file: !3, line: 1059, column: 52)
!609 = !DILocation(line: 1064, column: 55, scope: !608)
!610 = !DILocation(line: 1064, column: 53, scope: !608)
!611 = !DILocation(line: 1064, column: 73, scope: !608)
!612 = !DILocation(line: 1064, column: 71, scope: !608)
!613 = !DILocation(line: 1064, column: 30, scope: !608)
!614 = !DILocation(line: 1064, column: 28, scope: !608)
!615 = !DILocation(line: 1066, column: 23, scope: !616)
!616 = distinct !DILexicalBlock(scope: !608, file: !3, line: 1066, column: 13)
!617 = !DILocation(line: 1066, column: 13, scope: !616)
!618 = !DILocation(line: 1066, column: 35, scope: !616)
!619 = !DILocation(line: 1066, column: 48, scope: !616)
!620 = !DILocation(line: 1066, column: 69, scope: !616)
!621 = !DILocation(line: 1066, column: 13, scope: !608)
!622 = !DILocation(line: 1069, column: 62, scope: !623)
!623 = distinct !DILexicalBlock(scope: !616, file: !3, line: 1066, column: 74)
!624 = !DILocation(line: 1069, column: 84, scope: !623)
!625 = !DILocation(line: 1069, column: 73, scope: !623)
!626 = !DILocation(line: 1069, column: 92, scope: !623)
!627 = !DILocation(line: 1069, column: 52, scope: !623)
!628 = !DILocation(line: 1069, column: 96, scope: !623)
!629 = !DILocation(line: 1069, column: 46, scope: !623)
!630 = !DILocation(line: 1069, column: 44, scope: !623)
!631 = !DILocation(line: 1070, column: 9, scope: !623)
!632 = !DILocation(line: 1071, column: 5, scope: !608)
!633 = !DILocation(line: 1072, column: 1, scope: !52)
!634 = distinct !DISubprogram(name: "ProcessExifDir", scope: !3, file: !3, line: 459, type: !635, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !55, !55, !36, !36}
!637 = !DILocalVariable(name: "DirStart", arg: 1, scope: !634, file: !3, line: 459, type: !55)
!638 = !DILocation(line: 459, column: 44, scope: !634)
!639 = !DILocalVariable(name: "OffsetBase", arg: 2, scope: !634, file: !3, line: 459, type: !55)
!640 = !DILocation(line: 459, column: 70, scope: !634)
!641 = !DILocalVariable(name: "ExifLength", arg: 3, scope: !634, file: !3, line: 460, type: !36)
!642 = !DILocation(line: 460, column: 13, scope: !634)
!643 = !DILocalVariable(name: "NestingLevel", arg: 4, scope: !634, file: !3, line: 460, type: !36)
!644 = !DILocation(line: 460, column: 29, scope: !634)
!645 = !DILocalVariable(name: "de", scope: !634, file: !3, line: 462, type: !36)
!646 = !DILocation(line: 462, column: 9, scope: !634)
!647 = !DILocalVariable(name: "a", scope: !634, file: !3, line: 463, type: !36)
!648 = !DILocation(line: 463, column: 9, scope: !634)
!649 = !DILocalVariable(name: "NumDirEntries", scope: !634, file: !3, line: 464, type: !36)
!650 = !DILocation(line: 464, column: 9, scope: !634)
!651 = !DILocalVariable(name: "ThumbnailOffset", scope: !634, file: !3, line: 465, type: !36)
!652 = !DILocation(line: 465, column: 9, scope: !634)
!653 = !DILocalVariable(name: "ThumbnailSize", scope: !634, file: !3, line: 466, type: !36)
!654 = !DILocation(line: 466, column: 9, scope: !634)
!655 = !DILocalVariable(name: "IndentString", scope: !634, file: !3, line: 467, type: !656)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 200, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 25)
!659 = !DILocation(line: 467, column: 10, scope: !634)
!660 = !DILocation(line: 469, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !634, file: !3, line: 469, column: 9)
!662 = !DILocation(line: 469, column: 22, scope: !661)
!663 = !DILocation(line: 469, column: 9, scope: !634)
!664 = !DILocation(line: 470, column: 9, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !3, line: 469, column: 26)
!666 = !DILocation(line: 471, column: 9, scope: !665)
!667 = !DILocation(line: 474, column: 5, scope: !634)
!668 = !DILocation(line: 475, column: 18, scope: !634)
!669 = !DILocation(line: 475, column: 31, scope: !634)
!670 = !DILocation(line: 475, column: 5, scope: !634)
!671 = !DILocation(line: 475, column: 36, scope: !634)
!672 = !DILocation(line: 478, column: 28, scope: !634)
!673 = !DILocation(line: 478, column: 21, scope: !634)
!674 = !DILocation(line: 478, column: 19, scope: !634)
!675 = !DILocalVariable(name: "DirEnd", scope: !676, file: !3, line: 482, type: !55)
!676 = distinct !DILexicalBlock(scope: !634, file: !3, line: 481, column: 5)
!677 = !DILocation(line: 482, column: 25, scope: !676)
!678 = !DILocation(line: 483, column: 18, scope: !676)
!679 = !DILocation(line: 483, column: 16, scope: !676)
!680 = !DILocation(line: 484, column: 13, scope: !681)
!681 = distinct !DILexicalBlock(scope: !676, file: !3, line: 484, column: 13)
!682 = !DILocation(line: 484, column: 19, scope: !681)
!683 = !DILocation(line: 484, column: 25, scope: !681)
!684 = !DILocation(line: 484, column: 36, scope: !681)
!685 = !DILocation(line: 484, column: 35, scope: !681)
!686 = !DILocation(line: 484, column: 22, scope: !681)
!687 = !DILocation(line: 484, column: 13, scope: !676)
!688 = !DILocation(line: 485, column: 17, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 485, column: 17)
!690 = distinct !DILexicalBlock(scope: !681, file: !3, line: 484, column: 48)
!691 = !DILocation(line: 485, column: 23, scope: !689)
!692 = !DILocation(line: 485, column: 29, scope: !689)
!693 = !DILocation(line: 485, column: 40, scope: !689)
!694 = !DILocation(line: 485, column: 39, scope: !689)
!695 = !DILocation(line: 485, column: 26, scope: !689)
!696 = !DILocation(line: 485, column: 51, scope: !689)
!697 = !DILocation(line: 485, column: 54, scope: !689)
!698 = !DILocation(line: 485, column: 64, scope: !689)
!699 = !DILocation(line: 485, column: 75, scope: !689)
!700 = !DILocation(line: 485, column: 74, scope: !689)
!701 = !DILocation(line: 485, column: 61, scope: !689)
!702 = !DILocation(line: 485, column: 17, scope: !690)
!703 = !DILocation(line: 488, column: 13, scope: !704)
!704 = distinct !DILexicalBlock(scope: !689, file: !3, line: 485, column: 86)
!705 = !DILocation(line: 489, column: 78, scope: !706)
!706 = distinct !DILexicalBlock(scope: !689, file: !3, line: 488, column: 18)
!707 = !DILocation(line: 489, column: 17, scope: !706)
!708 = !DILocation(line: 490, column: 17, scope: !706)
!709 = !DILocation(line: 492, column: 9, scope: !690)
!710 = !DILocation(line: 493, column: 13, scope: !711)
!711 = distinct !DILexicalBlock(scope: !676, file: !3, line: 493, column: 13)
!712 = !DILocation(line: 493, column: 13, scope: !676)
!713 = !DILocation(line: 494, column: 56, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !3, line: 493, column: 25)
!715 = !DILocation(line: 494, column: 65, scope: !714)
!716 = !DILocation(line: 494, column: 64, scope: !714)
!717 = !DILocation(line: 494, column: 50, scope: !714)
!718 = !DILocation(line: 494, column: 84, scope: !714)
!719 = !DILocation(line: 494, column: 90, scope: !714)
!720 = !DILocation(line: 494, column: 93, scope: !714)
!721 = !DILocation(line: 494, column: 92, scope: !714)
!722 = !DILocation(line: 494, column: 78, scope: !714)
!723 = !DILocation(line: 494, column: 13, scope: !714)
!724 = !DILocation(line: 495, column: 9, scope: !714)
!725 = !DILocation(line: 500, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !634, file: !3, line: 500, column: 9)
!727 = !DILocation(line: 500, column: 9, scope: !634)
!728 = !DILocation(line: 501, column: 41, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !3, line: 500, column: 18)
!730 = !DILocation(line: 501, column: 9, scope: !729)
!731 = !DILocation(line: 502, column: 5, scope: !729)
!732 = !DILocation(line: 504, column: 12, scope: !733)
!733 = distinct !DILexicalBlock(scope: !634, file: !3, line: 504, column: 5)
!734 = !DILocation(line: 504, column: 10, scope: !733)
!735 = !DILocation(line: 504, column: 15, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !3, line: 504, column: 5)
!737 = !DILocation(line: 504, column: 18, scope: !736)
!738 = !DILocation(line: 504, column: 17, scope: !736)
!739 = !DILocation(line: 504, column: 5, scope: !733)
!740 = !DILocalVariable(name: "Tag", scope: !741, file: !3, line: 505, type: !36)
!741 = distinct !DILexicalBlock(scope: !736, file: !3, line: 504, column: 37)
!742 = !DILocation(line: 505, column: 13, scope: !741)
!743 = !DILocalVariable(name: "Format", scope: !741, file: !3, line: 505, type: !36)
!744 = !DILocation(line: 505, column: 18, scope: !741)
!745 = !DILocalVariable(name: "Components", scope: !741, file: !3, line: 505, type: !36)
!746 = !DILocation(line: 505, column: 26, scope: !741)
!747 = !DILocalVariable(name: "ValuePtr", scope: !741, file: !3, line: 506, type: !55)
!748 = !DILocation(line: 506, column: 25, scope: !741)
!749 = !DILocalVariable(name: "ByteCount", scope: !741, file: !3, line: 507, type: !36)
!750 = !DILocation(line: 507, column: 13, scope: !741)
!751 = !DILocalVariable(name: "DirEntry", scope: !741, file: !3, line: 508, type: !55)
!752 = !DILocation(line: 508, column: 25, scope: !741)
!753 = !DILocation(line: 509, column: 20, scope: !741)
!754 = !DILocation(line: 509, column: 18, scope: !741)
!755 = !DILocation(line: 511, column: 22, scope: !741)
!756 = !DILocation(line: 511, column: 15, scope: !741)
!757 = !DILocation(line: 511, column: 13, scope: !741)
!758 = !DILocation(line: 512, column: 25, scope: !741)
!759 = !DILocation(line: 512, column: 33, scope: !741)
!760 = !DILocation(line: 512, column: 18, scope: !741)
!761 = !DILocation(line: 512, column: 16, scope: !741)
!762 = !DILocation(line: 513, column: 29, scope: !741)
!763 = !DILocation(line: 513, column: 37, scope: !741)
!764 = !DILocation(line: 513, column: 22, scope: !741)
!765 = !DILocation(line: 513, column: 20, scope: !741)
!766 = !DILocation(line: 515, column: 14, scope: !767)
!767 = distinct !DILexicalBlock(scope: !741, file: !3, line: 515, column: 13)
!768 = !DILocation(line: 515, column: 20, scope: !767)
!769 = !DILocation(line: 515, column: 24, scope: !767)
!770 = !DILocation(line: 515, column: 13, scope: !741)
!771 = !DILocation(line: 517, column: 74, scope: !772)
!772 = distinct !DILexicalBlock(scope: !767, file: !3, line: 515, column: 40)
!773 = !DILocation(line: 517, column: 82, scope: !772)
!774 = !DILocation(line: 517, column: 13, scope: !772)
!775 = !DILocation(line: 518, column: 13, scope: !772)
!776 = !DILocation(line: 521, column: 23, scope: !777)
!777 = distinct !DILexicalBlock(scope: !741, file: !3, line: 521, column: 13)
!778 = !DILocation(line: 521, column: 34, scope: !777)
!779 = !DILocation(line: 521, column: 13, scope: !741)
!780 = !DILocation(line: 522, column: 72, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !3, line: 521, column: 44)
!782 = !DILocation(line: 522, column: 84, scope: !781)
!783 = !DILocation(line: 522, column: 13, scope: !781)
!784 = !DILocation(line: 523, column: 13, scope: !781)
!785 = !DILocation(line: 526, column: 21, scope: !741)
!786 = !DILocation(line: 526, column: 49, scope: !741)
!787 = !DILocation(line: 526, column: 34, scope: !741)
!788 = !DILocation(line: 526, column: 32, scope: !741)
!789 = !DILocation(line: 526, column: 19, scope: !741)
!790 = !DILocation(line: 528, column: 13, scope: !791)
!791 = distinct !DILexicalBlock(scope: !741, file: !3, line: 528, column: 13)
!792 = !DILocation(line: 528, column: 23, scope: !791)
!793 = !DILocation(line: 528, column: 13, scope: !741)
!794 = !DILocalVariable(name: "OffsetVal", scope: !795, file: !3, line: 529, type: !36)
!795 = distinct !DILexicalBlock(scope: !791, file: !3, line: 528, column: 27)
!796 = !DILocation(line: 529, column: 17, scope: !795)
!797 = !DILocation(line: 530, column: 32, scope: !795)
!798 = !DILocation(line: 530, column: 40, scope: !795)
!799 = !DILocation(line: 530, column: 25, scope: !795)
!800 = !DILocation(line: 530, column: 23, scope: !795)
!801 = !DILocation(line: 532, column: 17, scope: !802)
!802 = distinct !DILexicalBlock(scope: !795, file: !3, line: 532, column: 17)
!803 = !DILocation(line: 532, column: 27, scope: !802)
!804 = !DILocation(line: 532, column: 26, scope: !802)
!805 = !DILocation(line: 532, column: 39, scope: !802)
!806 = !DILocation(line: 532, column: 37, scope: !802)
!807 = !DILocation(line: 532, column: 50, scope: !802)
!808 = !DILocation(line: 532, column: 53, scope: !802)
!809 = !DILocation(line: 532, column: 63, scope: !802)
!810 = !DILocation(line: 532, column: 67, scope: !802)
!811 = !DILocation(line: 532, column: 70, scope: !802)
!812 = !DILocation(line: 532, column: 80, scope: !802)
!813 = !DILocation(line: 532, column: 17, scope: !795)
!814 = !DILocation(line: 534, column: 75, scope: !815)
!815 = distinct !DILexicalBlock(scope: !802, file: !3, line: 532, column: 88)
!816 = !DILocation(line: 534, column: 17, scope: !815)
!817 = !DILocation(line: 535, column: 17, scope: !815)
!818 = !DILocation(line: 537, column: 24, scope: !795)
!819 = !DILocation(line: 537, column: 35, scope: !795)
!820 = !DILocation(line: 537, column: 34, scope: !795)
!821 = !DILocation(line: 537, column: 22, scope: !795)
!822 = !DILocation(line: 539, column: 17, scope: !823)
!823 = distinct !DILexicalBlock(scope: !795, file: !3, line: 539, column: 17)
!824 = !DILocation(line: 539, column: 39, scope: !823)
!825 = !DILocation(line: 539, column: 27, scope: !823)
!826 = !DILocation(line: 539, column: 17, scope: !795)
!827 = !DILocation(line: 540, column: 47, scope: !828)
!828 = distinct !DILexicalBlock(scope: !823, file: !3, line: 539, column: 57)
!829 = !DILocation(line: 540, column: 45, scope: !828)
!830 = !DILocation(line: 541, column: 13, scope: !828)
!831 = !DILocation(line: 543, column: 17, scope: !832)
!832 = distinct !DILexicalBlock(scope: !795, file: !3, line: 543, column: 17)
!833 = !DILocation(line: 543, column: 17, scope: !795)
!834 = !DILocation(line: 544, column: 64, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !3, line: 543, column: 29)
!836 = !DILocation(line: 544, column: 75, scope: !835)
!837 = !DILocation(line: 544, column: 85, scope: !835)
!838 = !DILocation(line: 544, column: 84, scope: !835)
!839 = !DILocation(line: 544, column: 96, scope: !835)
!840 = !DILocation(line: 544, column: 17, scope: !835)
!841 = !DILocation(line: 545, column: 13, scope: !835)
!842 = !DILocation(line: 546, column: 9, scope: !795)
!843 = !DILocation(line: 548, column: 24, scope: !844)
!844 = distinct !DILexicalBlock(scope: !791, file: !3, line: 546, column: 14)
!845 = !DILocation(line: 548, column: 32, scope: !844)
!846 = !DILocation(line: 548, column: 22, scope: !844)
!847 = !DILocation(line: 551, column: 13, scope: !848)
!848 = distinct !DILexicalBlock(scope: !741, file: !3, line: 551, column: 13)
!849 = !DILocation(line: 551, column: 17, scope: !848)
!850 = !DILocation(line: 551, column: 13, scope: !741)
!851 = !DILocation(line: 552, column: 17, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 552, column: 17)
!853 = distinct !DILexicalBlock(scope: !848, file: !3, line: 551, column: 35)
!854 = !DILocation(line: 552, column: 17, scope: !853)
!855 = !DILocation(line: 553, column: 45, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 552, column: 26)
!857 = !DILocation(line: 553, column: 17, scope: !856)
!858 = !DILocation(line: 554, column: 13, scope: !856)
!859 = !DILocation(line: 555, column: 30, scope: !853)
!860 = !DILocation(line: 555, column: 40, scope: !853)
!861 = !DILocation(line: 555, column: 51, scope: !853)
!862 = !DILocation(line: 555, column: 63, scope: !853)
!863 = !DILocation(line: 555, column: 13, scope: !853)
!864 = !DILocation(line: 556, column: 13, scope: !853)
!865 = !DILocation(line: 559, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !741, file: !3, line: 559, column: 13)
!867 = !DILocation(line: 559, column: 13, scope: !741)
!868 = !DILocation(line: 561, column: 19, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 561, column: 13)
!870 = distinct !DILexicalBlock(scope: !866, file: !3, line: 559, column: 22)
!871 = !DILocation(line: 561, column: 18, scope: !869)
!872 = !DILocation(line: 562, column: 21, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 562, column: 21)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 561, column: 27)
!875 = distinct !DILexicalBlock(scope: !869, file: !3, line: 561, column: 13)
!876 = !DILocation(line: 562, column: 23, scope: !873)
!877 = !DILocation(line: 562, column: 21, scope: !874)
!878 = !DILocation(line: 563, column: 63, scope: !879)
!879 = distinct !DILexicalBlock(scope: !873, file: !3, line: 562, column: 41)
!880 = !DILocation(line: 563, column: 77, scope: !879)
!881 = !DILocation(line: 563, column: 21, scope: !879)
!882 = !DILocation(line: 564, column: 21, scope: !879)
!883 = !DILocation(line: 566, column: 30, scope: !884)
!884 = distinct !DILexicalBlock(scope: !874, file: !3, line: 566, column: 21)
!885 = !DILocation(line: 566, column: 21, scope: !884)
!886 = !DILocation(line: 566, column: 33, scope: !884)
!887 = !DILocation(line: 566, column: 40, scope: !884)
!888 = !DILocation(line: 566, column: 37, scope: !884)
!889 = !DILocation(line: 566, column: 21, scope: !874)
!890 = !DILocation(line: 567, column: 42, scope: !891)
!891 = distinct !DILexicalBlock(scope: !884, file: !3, line: 566, column: 44)
!892 = !DILocation(line: 567, column: 65, scope: !891)
!893 = !DILocation(line: 567, column: 56, scope: !891)
!894 = !DILocation(line: 567, column: 68, scope: !891)
!895 = !DILocation(line: 567, column: 21, scope: !891)
!896 = !DILocation(line: 568, column: 21, scope: !891)
!897 = !DILocation(line: 570, column: 13, scope: !874)
!898 = !DILocation(line: 561, column: 24, scope: !875)
!899 = !DILocation(line: 561, column: 13, scope: !875)
!900 = distinct !{!900, !901, !902}
!901 = !DILocation(line: 561, column: 13, scope: !869)
!902 = !DILocation(line: 570, column: 13, scope: !869)
!903 = !DILocation(line: 573, column: 20, scope: !870)
!904 = !DILocation(line: 573, column: 13, scope: !870)
!905 = !DILocation(line: 575, column: 24, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 575, column: 24)
!907 = distinct !DILexicalBlock(scope: !870, file: !3, line: 573, column: 27)
!908 = !DILocation(line: 575, column: 33, scope: !906)
!909 = !DILocation(line: 575, column: 24, scope: !907)
!910 = !DILocation(line: 576, column: 43, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !3, line: 575, column: 36)
!912 = !DILocation(line: 576, column: 52, scope: !911)
!913 = !DILocation(line: 576, column: 67, scope: !911)
!914 = !DILocation(line: 576, column: 56, scope: !911)
!915 = !DILocation(line: 576, column: 25, scope: !911)
!916 = !DILocation(line: 577, column: 21, scope: !911)
!917 = !DILocation(line: 578, column: 43, scope: !918)
!918 = distinct !DILexicalBlock(scope: !906, file: !3, line: 577, column: 26)
!919 = !DILocation(line: 578, column: 53, scope: !918)
!920 = !DILocation(line: 578, column: 61, scope: !918)
!921 = !DILocation(line: 578, column: 25, scope: !918)
!922 = !DILocation(line: 579, column: 25, scope: !918)
!923 = !DILocation(line: 581, column: 21, scope: !907)
!924 = !DILocalVariable(name: "NoPrint", scope: !925, file: !3, line: 589, type: !36)
!925 = distinct !DILexicalBlock(scope: !907, file: !3, line: 588, column: 21)
!926 = !DILocation(line: 589, column: 29, scope: !925)
!927 = !DILocation(line: 590, column: 25, scope: !925)
!928 = !DILocation(line: 591, column: 31, scope: !929)
!929 = distinct !DILexicalBlock(scope: !925, file: !3, line: 591, column: 25)
!930 = !DILocation(line: 591, column: 30, scope: !929)
!931 = !DILocation(line: 591, column: 34, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 591, column: 25)
!933 = !DILocation(line: 591, column: 36, scope: !932)
!934 = !DILocation(line: 591, column: 35, scope: !932)
!935 = !DILocation(line: 591, column: 25, scope: !929)
!936 = !DILocation(line: 592, column: 33, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 592, column: 33)
!938 = distinct !DILexicalBlock(scope: !932, file: !3, line: 591, column: 50)
!939 = !DILocation(line: 592, column: 42, scope: !937)
!940 = !DILocation(line: 592, column: 45, scope: !937)
!941 = !DILocation(line: 592, column: 33, scope: !938)
!942 = !DILocation(line: 593, column: 41, scope: !943)
!943 = distinct !DILexicalBlock(scope: !937, file: !3, line: 592, column: 51)
!944 = !DILocation(line: 593, column: 50, scope: !943)
!945 = !DILocation(line: 593, column: 33, scope: !943)
!946 = !DILocation(line: 594, column: 41, scope: !943)
!947 = !DILocation(line: 595, column: 29, scope: !943)
!948 = !DILocation(line: 598, column: 38, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 598, column: 37)
!950 = distinct !DILexicalBlock(scope: !937, file: !3, line: 595, column: 34)
!951 = !DILocation(line: 598, column: 46, scope: !949)
!952 = !DILocation(line: 598, column: 49, scope: !949)
!953 = !DILocation(line: 598, column: 54, scope: !949)
!954 = !DILocation(line: 598, column: 63, scope: !949)
!955 = !DILocation(line: 598, column: 51, scope: !949)
!956 = !DILocation(line: 598, column: 37, scope: !950)
!957 = !DILocation(line: 599, column: 37, scope: !958)
!958 = distinct !DILexicalBlock(scope: !949, file: !3, line: 598, column: 66)
!959 = !DILocation(line: 600, column: 45, scope: !958)
!960 = !DILocation(line: 601, column: 33, scope: !958)
!961 = !DILocation(line: 603, column: 25, scope: !938)
!962 = !DILocation(line: 591, column: 47, scope: !932)
!963 = !DILocation(line: 591, column: 25, scope: !932)
!964 = distinct !{!964, !935, !965, !332}
!965 = !DILocation(line: 603, column: 25, scope: !929)
!966 = !DILocation(line: 604, column: 25, scope: !925)
!967 = !DILocation(line: 606, column: 21, scope: !907)
!968 = !DILocation(line: 610, column: 39, scope: !907)
!969 = !DILocation(line: 610, column: 49, scope: !907)
!970 = !DILocation(line: 610, column: 57, scope: !907)
!971 = !DILocation(line: 610, column: 21, scope: !907)
!972 = !DILocation(line: 611, column: 21, scope: !907)
!973 = !DILocation(line: 612, column: 13, scope: !907)
!974 = !DILocation(line: 613, column: 9, scope: !870)
!975 = !DILocation(line: 616, column: 16, scope: !741)
!976 = !DILocation(line: 616, column: 9, scope: !741)
!977 = !DILocation(line: 619, column: 55, scope: !978)
!978 = distinct !DILexicalBlock(scope: !741, file: !3, line: 616, column: 20)
!979 = !DILocation(line: 619, column: 65, scope: !978)
!980 = !DILocation(line: 619, column: 75, scope: !978)
!981 = !DILocation(line: 619, column: 82, scope: !978)
!982 = !DILocation(line: 619, column: 17, scope: !978)
!983 = !DILocation(line: 620, column: 17, scope: !978)
!984 = !DILocation(line: 623, column: 56, scope: !978)
!985 = !DILocation(line: 623, column: 66, scope: !978)
!986 = !DILocation(line: 623, column: 76, scope: !978)
!987 = !DILocation(line: 623, column: 83, scope: !978)
!988 = !DILocation(line: 623, column: 17, scope: !978)
!989 = !DILocation(line: 624, column: 17, scope: !978)
!990 = !DILocation(line: 628, column: 53, scope: !978)
!991 = !DILocation(line: 628, column: 17, scope: !978)
!992 = !DILocation(line: 633, column: 22, scope: !993)
!993 = distinct !DILexicalBlock(scope: !978, file: !3, line: 633, column: 21)
!994 = !DILocation(line: 633, column: 21, scope: !978)
!995 = !DILocation(line: 636, column: 57, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 633, column: 53)
!997 = !DILocation(line: 636, column: 21, scope: !996)
!998 = !DILocation(line: 637, column: 17, scope: !996)
!999 = !DILocation(line: 639, column: 31, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !978, file: !3, line: 639, column: 21)
!1001 = !DILocation(line: 639, column: 47, scope: !1000)
!1002 = !DILocation(line: 639, column: 21, scope: !978)
!1003 = !DILocation(line: 640, column: 21, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 639, column: 66)
!1005 = !DILocation(line: 641, column: 21, scope: !1004)
!1006 = !DILocation(line: 644, column: 29, scope: !978)
!1007 = !DILocation(line: 644, column: 48, scope: !978)
!1008 = !DILocation(line: 644, column: 38, scope: !978)
!1009 = !DILocation(line: 644, column: 21, scope: !978)
!1010 = !DILocation(line: 643, column: 68, scope: !978)
!1011 = !DILocation(line: 643, column: 17, scope: !978)
!1012 = !DILocation(line: 643, column: 72, scope: !978)
!1013 = !DILocation(line: 645, column: 17, scope: !978)
!1014 = !DILocation(line: 648, column: 21, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !978, file: !3, line: 648, column: 21)
!1016 = !DILocation(line: 648, column: 21, scope: !978)
!1017 = !DILocation(line: 650, column: 25, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 650, column: 25)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 648, column: 43)
!1020 = !DILocation(line: 650, column: 25, scope: !1019)
!1021 = !DILocation(line: 650, column: 35, scope: !1018)
!1022 = !DILocation(line: 651, column: 21, scope: !1019)
!1023 = !DILocation(line: 654, column: 21, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !978, file: !3, line: 654, column: 21)
!1025 = !DILocation(line: 654, column: 31, scope: !1024)
!1026 = !DILocation(line: 654, column: 21, scope: !978)
!1027 = !DILocation(line: 655, column: 25, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 655, column: 25)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 654, column: 35)
!1030 = !DILocation(line: 655, column: 35, scope: !1028)
!1031 = !DILocation(line: 655, column: 25, scope: !1029)
!1032 = !DILocation(line: 655, column: 65, scope: !1028)
!1033 = !DILocation(line: 655, column: 55, scope: !1028)
!1034 = !DILocation(line: 656, column: 48, scope: !1029)
!1035 = !DILocation(line: 656, column: 58, scope: !1029)
!1036 = !DILocation(line: 656, column: 21, scope: !1029)
!1037 = !DILocation(line: 657, column: 51, scope: !1029)
!1038 = !DILocation(line: 657, column: 60, scope: !1029)
!1039 = !DILocation(line: 657, column: 49, scope: !1029)
!1040 = !DILocation(line: 658, column: 17, scope: !1029)
!1041 = !DILocation(line: 659, column: 17, scope: !978)
!1042 = !DILocation(line: 662, column: 21, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !978, file: !3, line: 662, column: 21)
!1044 = !DILocation(line: 662, column: 21, scope: !978)
!1045 = !DILocation(line: 664, column: 25, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 664, column: 25)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 662, column: 43)
!1048 = !DILocation(line: 664, column: 25, scope: !1047)
!1049 = !DILocation(line: 664, column: 35, scope: !1046)
!1050 = !DILocation(line: 665, column: 21, scope: !1047)
!1051 = !DILocation(line: 669, column: 24, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !978, file: !3, line: 669, column: 17)
!1053 = !DILocation(line: 669, column: 23, scope: !1052)
!1054 = !DILocation(line: 669, column: 22, scope: !1052)
!1055 = !DILocation(line: 670, column: 22, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 669, column: 36)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 669, column: 17)
!1058 = !DILocation(line: 671, column: 26, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 671, column: 25)
!1060 = !DILocation(line: 671, column: 36, scope: !1059)
!1061 = !DILocation(line: 671, column: 25, scope: !1059)
!1062 = !DILocation(line: 671, column: 39, scope: !1059)
!1063 = !DILocation(line: 671, column: 25, scope: !1056)
!1064 = !DILocation(line: 672, column: 26, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 671, column: 46)
!1066 = !DILocation(line: 672, column: 36, scope: !1065)
!1067 = !DILocation(line: 672, column: 25, scope: !1065)
!1068 = !DILocation(line: 672, column: 39, scope: !1065)
!1069 = !DILocation(line: 673, column: 21, scope: !1065)
!1070 = !DILocation(line: 674, column: 25, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 673, column: 26)
!1072 = !DILocation(line: 676, column: 25, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 676, column: 25)
!1074 = !DILocation(line: 676, column: 27, scope: !1073)
!1075 = !DILocation(line: 676, column: 25, scope: !1056)
!1076 = !DILocation(line: 676, column: 33, scope: !1073)
!1077 = !DILocation(line: 669, column: 17, scope: !1057)
!1078 = distinct !{!1078, !1079, !1080}
!1079 = !DILocation(line: 669, column: 17, scope: !1052)
!1080 = !DILocation(line: 677, column: 17, scope: !1052)
!1081 = !DILocalVariable(name: "msiz", scope: !1082, file: !3, line: 681, type: !36)
!1082 = distinct !DILexicalBlock(scope: !978, file: !3, line: 680, column: 17)
!1083 = !DILocation(line: 681, column: 25, scope: !1082)
!1084 = !DILocation(line: 681, column: 32, scope: !1082)
!1085 = !DILocation(line: 681, column: 46, scope: !1082)
!1086 = !DILocation(line: 681, column: 55, scope: !1082)
!1087 = !DILocation(line: 681, column: 54, scope: !1082)
!1088 = !DILocation(line: 681, column: 43, scope: !1082)
!1089 = !DILocation(line: 682, column: 25, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 682, column: 25)
!1091 = !DILocation(line: 682, column: 32, scope: !1090)
!1092 = !DILocation(line: 682, column: 30, scope: !1090)
!1093 = !DILocation(line: 682, column: 25, scope: !1082)
!1094 = !DILocation(line: 682, column: 50, scope: !1090)
!1095 = !DILocation(line: 682, column: 48, scope: !1090)
!1096 = !DILocation(line: 682, column: 43, scope: !1090)
!1097 = !DILocation(line: 683, column: 25, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 683, column: 25)
!1099 = !DILocation(line: 683, column: 30, scope: !1098)
!1100 = !DILocation(line: 683, column: 25, scope: !1082)
!1101 = !DILocation(line: 683, column: 57, scope: !1098)
!1102 = !DILocation(line: 683, column: 52, scope: !1098)
!1103 = !DILocation(line: 684, column: 25, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 684, column: 25)
!1105 = !DILocation(line: 684, column: 30, scope: !1104)
!1106 = !DILocation(line: 684, column: 34, scope: !1104)
!1107 = !DILocation(line: 684, column: 44, scope: !1104)
!1108 = !DILocation(line: 684, column: 37, scope: !1104)
!1109 = !DILocation(line: 684, column: 65, scope: !1104)
!1110 = !DILocation(line: 684, column: 25, scope: !1082)
!1111 = !DILocation(line: 685, column: 31, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 685, column: 25)
!1113 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 684, column: 70)
!1114 = !DILocation(line: 685, column: 30, scope: !1112)
!1115 = !DILocation(line: 685, column: 34, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 685, column: 25)
!1117 = !DILocation(line: 685, column: 35, scope: !1116)
!1118 = !DILocation(line: 685, column: 39, scope: !1116)
!1119 = !DILocation(line: 685, column: 42, scope: !1116)
!1120 = !DILocation(line: 685, column: 46, scope: !1116)
!1121 = !DILocation(line: 685, column: 44, scope: !1116)
!1122 = !DILocation(line: 0, scope: !1116)
!1123 = !DILocation(line: 685, column: 25, scope: !1112)
!1124 = !DILocalVariable(name: "c", scope: !1125, file: !3, line: 686, type: !36)
!1125 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 685, column: 55)
!1126 = !DILocation(line: 686, column: 33, scope: !1125)
!1127 = !DILocation(line: 686, column: 38, scope: !1125)
!1128 = !DILocation(line: 686, column: 48, scope: !1125)
!1129 = !DILocation(line: 686, column: 37, scope: !1125)
!1130 = !DILocation(line: 687, column: 33, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 687, column: 33)
!1132 = !DILocation(line: 687, column: 35, scope: !1131)
!1133 = !DILocation(line: 687, column: 43, scope: !1131)
!1134 = !DILocation(line: 687, column: 46, scope: !1131)
!1135 = !DILocation(line: 687, column: 48, scope: !1131)
!1136 = !DILocation(line: 687, column: 33, scope: !1125)
!1137 = !DILocation(line: 688, column: 69, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 687, column: 55)
!1139 = !DILocation(line: 688, column: 78, scope: !1138)
!1140 = !DILocation(line: 688, column: 77, scope: !1138)
!1141 = !DILocation(line: 688, column: 81, scope: !1138)
!1142 = !DILocation(line: 688, column: 86, scope: !1138)
!1143 = !DILocation(line: 688, column: 85, scope: !1138)
!1144 = !DILocation(line: 688, column: 33, scope: !1138)
!1145 = !DILocation(line: 689, column: 33, scope: !1138)
!1146 = !DILocation(line: 691, column: 25, scope: !1125)
!1147 = !DILocation(line: 685, column: 52, scope: !1116)
!1148 = !DILocation(line: 685, column: 25, scope: !1116)
!1149 = distinct !{!1149, !1123, !1150, !332}
!1150 = !DILocation(line: 691, column: 25, scope: !1112)
!1151 = !DILocation(line: 692, column: 21, scope: !1113)
!1152 = !DILocation(line: 693, column: 61, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 692, column: 26)
!1154 = !DILocation(line: 693, column: 71, scope: !1153)
!1155 = !DILocation(line: 693, column: 25, scope: !1153)
!1156 = !DILocation(line: 696, column: 17, scope: !978)
!1157 = !DILocation(line: 701, column: 69, scope: !978)
!1158 = !DILocation(line: 701, column: 79, scope: !978)
!1159 = !DILocation(line: 701, column: 52, scope: !978)
!1160 = !DILocation(line: 701, column: 45, scope: !978)
!1161 = !DILocation(line: 701, column: 43, scope: !978)
!1162 = !DILocation(line: 702, column: 17, scope: !978)
!1163 = !DILocation(line: 708, column: 31, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !978, file: !3, line: 708, column: 21)
!1165 = !DILocation(line: 708, column: 47, scope: !1164)
!1166 = !DILocation(line: 708, column: 21, scope: !978)
!1167 = !DILocation(line: 710, column: 55, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 708, column: 52)
!1169 = !DILocation(line: 710, column: 65, scope: !1168)
!1170 = !DILocation(line: 710, column: 38, scope: !1168)
!1171 = !DILocation(line: 710, column: 73, scope: !1168)
!1172 = !DILocation(line: 710, column: 72, scope: !1168)
!1173 = !DILocation(line: 710, column: 79, scope: !1168)
!1174 = !DILocation(line: 710, column: 34, scope: !1168)
!1175 = !DILocation(line: 710, column: 27, scope: !1168)
!1176 = !DILocation(line: 710, column: 25, scope: !1168)
!1177 = !DILocation(line: 711, column: 17, scope: !1168)
!1178 = !DILocation(line: 712, column: 17, scope: !978)
!1179 = !DILocation(line: 717, column: 65, scope: !978)
!1180 = !DILocation(line: 717, column: 75, scope: !978)
!1181 = !DILocation(line: 717, column: 48, scope: !978)
!1182 = !DILocation(line: 717, column: 41, scope: !978)
!1183 = !DILocation(line: 717, column: 39, scope: !978)
!1184 = !DILocation(line: 718, column: 17, scope: !978)
!1185 = !DILocation(line: 723, column: 62, scope: !978)
!1186 = !DILocation(line: 723, column: 72, scope: !978)
!1187 = !DILocation(line: 723, column: 45, scope: !978)
!1188 = !DILocation(line: 723, column: 38, scope: !978)
!1189 = !DILocation(line: 723, column: 36, scope: !978)
!1190 = !DILocation(line: 724, column: 17, scope: !978)
!1191 = !DILocation(line: 729, column: 66, scope: !978)
!1192 = !DILocation(line: 729, column: 76, scope: !978)
!1193 = !DILocation(line: 729, column: 49, scope: !978)
!1194 = !DILocation(line: 729, column: 42, scope: !978)
!1195 = !DILocation(line: 729, column: 40, scope: !978)
!1196 = !DILocation(line: 730, column: 17, scope: !978)
!1197 = !DILocation(line: 735, column: 31, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !978, file: !3, line: 735, column: 21)
!1199 = !DILocation(line: 735, column: 44, scope: !1198)
!1200 = !DILocation(line: 735, column: 21, scope: !978)
!1201 = !DILocation(line: 737, column: 58, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 735, column: 49)
!1203 = !DILocation(line: 737, column: 68, scope: !1202)
!1204 = !DILocation(line: 737, column: 41, scope: !1202)
!1205 = !DILocation(line: 737, column: 76, scope: !1202)
!1206 = !DILocation(line: 737, column: 75, scope: !1202)
!1207 = !DILocation(line: 737, column: 37, scope: !1202)
!1208 = !DILocation(line: 737, column: 36, scope: !1202)
!1209 = !DILocation(line: 737, column: 27, scope: !1202)
!1210 = !DILocation(line: 737, column: 25, scope: !1202)
!1211 = !DILocation(line: 738, column: 17, scope: !1202)
!1212 = !DILocation(line: 739, column: 17, scope: !978)
!1213 = !DILocation(line: 743, column: 59, scope: !978)
!1214 = !DILocation(line: 743, column: 69, scope: !978)
!1215 = !DILocation(line: 743, column: 42, scope: !978)
!1216 = !DILocation(line: 743, column: 37, scope: !978)
!1217 = !DILocation(line: 743, column: 36, scope: !978)
!1218 = !DILocation(line: 744, column: 17, scope: !978)
!1219 = !DILocation(line: 747, column: 21, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !978, file: !3, line: 747, column: 21)
!1221 = !DILocation(line: 747, column: 37, scope: !1220)
!1222 = !DILocation(line: 747, column: 21, scope: !978)
!1223 = !DILocation(line: 750, column: 21, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 747, column: 42)
!1225 = !DILocation(line: 751, column: 21, scope: !1224)
!1226 = !DILocation(line: 753, column: 51, scope: !978)
!1227 = !DILocation(line: 753, column: 32, scope: !978)
!1228 = !DILocation(line: 753, column: 17, scope: !978)
!1229 = !DILocation(line: 753, column: 49, scope: !978)
!1230 = !DILocation(line: 754, column: 57, scope: !978)
!1231 = !DILocation(line: 754, column: 38, scope: !978)
!1232 = !DILocation(line: 754, column: 17, scope: !978)
!1233 = !DILocation(line: 754, column: 55, scope: !978)
!1234 = !DILocation(line: 755, column: 21, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !978, file: !3, line: 755, column: 21)
!1236 = !DILocation(line: 755, column: 37, scope: !1235)
!1237 = !DILocation(line: 755, column: 21, scope: !978)
!1238 = !DILocation(line: 756, column: 67, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 755, column: 42)
!1240 = !DILocation(line: 756, column: 77, scope: !1239)
!1241 = !DILocation(line: 756, column: 50, scope: !1239)
!1242 = !DILocation(line: 756, column: 45, scope: !1239)
!1243 = !DILocation(line: 756, column: 43, scope: !1239)
!1244 = !DILocation(line: 757, column: 17, scope: !1239)
!1245 = !DILocation(line: 758, column: 31, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !978, file: !3, line: 758, column: 21)
!1247 = !DILocation(line: 758, column: 43, scope: !1246)
!1248 = !DILocation(line: 758, column: 47, scope: !1246)
!1249 = !DILocation(line: 758, column: 60, scope: !1246)
!1250 = !DILocation(line: 758, column: 72, scope: !1246)
!1251 = !DILocation(line: 758, column: 21, scope: !978)
!1252 = !DILocation(line: 759, column: 82, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 758, column: 76)
!1254 = !DILocation(line: 759, column: 21, scope: !1253)
!1255 = !DILocation(line: 760, column: 17, scope: !1253)
!1256 = !DILocation(line: 761, column: 33, scope: !978)
!1257 = !DILocation(line: 762, column: 17, scope: !978)
!1258 = !DILocation(line: 768, column: 43, scope: !978)
!1259 = !DILocation(line: 768, column: 53, scope: !978)
!1260 = !DILocation(line: 768, column: 26, scope: !978)
!1261 = !DILocation(line: 768, column: 21, scope: !978)
!1262 = !DILocation(line: 768, column: 19, scope: !978)
!1263 = !DILocation(line: 769, column: 21, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !978, file: !3, line: 769, column: 21)
!1265 = !DILocation(line: 769, column: 38, scope: !1264)
!1266 = !DILocation(line: 769, column: 36, scope: !1264)
!1267 = !DILocation(line: 769, column: 21, scope: !978)
!1268 = !DILocation(line: 769, column: 58, scope: !1264)
!1269 = !DILocation(line: 769, column: 56, scope: !1264)
!1270 = !DILocation(line: 769, column: 41, scope: !1264)
!1271 = !DILocation(line: 770, column: 17, scope: !978)
!1272 = !DILocation(line: 773, column: 51, scope: !978)
!1273 = !DILocation(line: 773, column: 61, scope: !978)
!1274 = !DILocation(line: 773, column: 34, scope: !978)
!1275 = !DILocation(line: 773, column: 32, scope: !978)
!1276 = !DILocation(line: 774, column: 17, scope: !978)
!1277 = !DILocation(line: 777, column: 46, scope: !978)
!1278 = !DILocation(line: 777, column: 56, scope: !978)
!1279 = !DILocation(line: 777, column: 29, scope: !978)
!1280 = !DILocation(line: 777, column: 24, scope: !978)
!1281 = !DILocation(line: 777, column: 17, scope: !978)
!1282 = !DILocation(line: 778, column: 45, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !978, file: !3, line: 777, column: 64)
!1284 = !DILocation(line: 778, column: 53, scope: !1283)
!1285 = !DILocation(line: 783, column: 41, scope: !1283)
!1286 = !DILocation(line: 784, column: 25, scope: !1283)
!1287 = !DILocation(line: 786, column: 45, scope: !1283)
!1288 = !DILocation(line: 786, column: 53, scope: !1283)
!1289 = !DILocation(line: 787, column: 45, scope: !1283)
!1290 = !DILocation(line: 787, column: 53, scope: !1283)
!1291 = !DILocation(line: 788, column: 45, scope: !1283)
!1292 = !DILocation(line: 788, column: 53, scope: !1283)
!1293 = !DILocation(line: 790, column: 17, scope: !978)
!1294 = !DILocation(line: 793, column: 66, scope: !978)
!1295 = !DILocation(line: 793, column: 76, scope: !978)
!1296 = !DILocation(line: 793, column: 49, scope: !978)
!1297 = !DILocation(line: 793, column: 42, scope: !978)
!1298 = !DILocation(line: 793, column: 40, scope: !978)
!1299 = !DILocation(line: 794, column: 17, scope: !978)
!1300 = !DILocation(line: 797, column: 64, scope: !978)
!1301 = !DILocation(line: 797, column: 74, scope: !978)
!1302 = !DILocation(line: 797, column: 47, scope: !978)
!1303 = !DILocation(line: 797, column: 42, scope: !978)
!1304 = !DILocation(line: 797, column: 40, scope: !978)
!1305 = !DILocation(line: 798, column: 17, scope: !978)
!1306 = !DILocation(line: 801, column: 63, scope: !978)
!1307 = !DILocation(line: 801, column: 73, scope: !978)
!1308 = !DILocation(line: 801, column: 46, scope: !978)
!1309 = !DILocation(line: 801, column: 41, scope: !978)
!1310 = !DILocation(line: 801, column: 39, scope: !978)
!1311 = !DILocation(line: 802, column: 17, scope: !978)
!1312 = !DILocation(line: 805, column: 64, scope: !978)
!1313 = !DILocation(line: 805, column: 74, scope: !978)
!1314 = !DILocation(line: 805, column: 47, scope: !978)
!1315 = !DILocation(line: 805, column: 42, scope: !978)
!1316 = !DILocation(line: 805, column: 40, scope: !978)
!1317 = !DILocation(line: 806, column: 17, scope: !978)
!1318 = !DILocation(line: 809, column: 67, scope: !978)
!1319 = !DILocation(line: 809, column: 77, scope: !978)
!1320 = !DILocation(line: 809, column: 50, scope: !978)
!1321 = !DILocation(line: 809, column: 45, scope: !978)
!1322 = !DILocation(line: 809, column: 43, scope: !978)
!1323 = !DILocation(line: 810, column: 17, scope: !978)
!1324 = !DILocation(line: 813, column: 31, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !978, file: !3, line: 813, column: 21)
!1326 = !DILocation(line: 813, column: 45, scope: !1325)
!1327 = !DILocation(line: 813, column: 21, scope: !978)
!1328 = !DILocation(line: 817, column: 69, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 813, column: 50)
!1330 = !DILocation(line: 817, column: 79, scope: !1329)
!1331 = !DILocation(line: 817, column: 52, scope: !1329)
!1332 = !DILocation(line: 817, column: 47, scope: !1329)
!1333 = !DILocation(line: 817, column: 45, scope: !1329)
!1334 = !DILocation(line: 818, column: 17, scope: !1329)
!1335 = !DILocation(line: 819, column: 17, scope: !978)
!1336 = !DILocation(line: 822, column: 64, scope: !978)
!1337 = !DILocation(line: 822, column: 74, scope: !978)
!1338 = !DILocation(line: 822, column: 47, scope: !978)
!1339 = !DILocation(line: 822, column: 42, scope: !978)
!1340 = !DILocation(line: 822, column: 40, scope: !978)
!1341 = !DILocation(line: 823, column: 17, scope: !978)
!1342 = !DILocation(line: 826, column: 65, scope: !978)
!1343 = !DILocation(line: 826, column: 75, scope: !978)
!1344 = !DILocation(line: 826, column: 48, scope: !978)
!1345 = !DILocation(line: 826, column: 43, scope: !978)
!1346 = !DILocation(line: 826, column: 41, scope: !978)
!1347 = !DILocation(line: 827, column: 17, scope: !978)
!1348 = !DILocation(line: 830, column: 70, scope: !978)
!1349 = !DILocation(line: 830, column: 80, scope: !978)
!1350 = !DILocation(line: 830, column: 53, scope: !978)
!1351 = !DILocation(line: 830, column: 46, scope: !978)
!1352 = !DILocation(line: 830, column: 44, scope: !978)
!1353 = !DILocation(line: 831, column: 17, scope: !978)
!1354 = !DILocation(line: 834, column: 62, scope: !978)
!1355 = !DILocation(line: 834, column: 72, scope: !978)
!1356 = !DILocation(line: 834, column: 45, scope: !978)
!1357 = !DILocation(line: 834, column: 35, scope: !978)
!1358 = !DILocation(line: 834, column: 33, scope: !978)
!1359 = !DILocation(line: 835, column: 40, scope: !978)
!1360 = !DILocation(line: 835, column: 38, scope: !978)
!1361 = !DILocation(line: 836, column: 17, scope: !978)
!1362 = !DILocation(line: 839, column: 60, scope: !978)
!1363 = !DILocation(line: 839, column: 70, scope: !978)
!1364 = !DILocation(line: 839, column: 43, scope: !978)
!1365 = !DILocation(line: 839, column: 33, scope: !978)
!1366 = !DILocation(line: 839, column: 31, scope: !978)
!1367 = !DILocation(line: 840, column: 49, scope: !978)
!1368 = !DILocation(line: 840, column: 58, scope: !978)
!1369 = !DILocation(line: 840, column: 57, scope: !978)
!1370 = !DILocation(line: 840, column: 47, scope: !978)
!1371 = !DILocation(line: 841, column: 17, scope: !978)
!1372 = !DILocation(line: 844, column: 21, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !978, file: !3, line: 844, column: 21)
!1374 = !DILocation(line: 844, column: 21, scope: !978)
!1375 = !DILocation(line: 844, column: 56, scope: !1373)
!1376 = !DILocation(line: 844, column: 31, scope: !1373)
!1377 = !DILocation(line: 847, column: 21, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !978, file: !3, line: 847, column: 21)
!1379 = !DILocation(line: 847, column: 25, scope: !1378)
!1380 = !DILocation(line: 847, column: 47, scope: !1378)
!1381 = !DILocation(line: 847, column: 50, scope: !1378)
!1382 = !DILocation(line: 847, column: 21, scope: !978)
!1383 = !DILocation(line: 847, column: 88, scope: !1378)
!1384 = !DILocation(line: 847, column: 60, scope: !1378)
!1385 = !DILocalVariable(name: "SubdirStart", scope: !1386, file: !3, line: 849, type: !55)
!1386 = distinct !DILexicalBlock(scope: !978, file: !3, line: 848, column: 17)
!1387 = !DILocation(line: 849, column: 37, scope: !1386)
!1388 = !DILocation(line: 850, column: 35, scope: !1386)
!1389 = !DILocation(line: 850, column: 55, scope: !1386)
!1390 = !DILocation(line: 850, column: 48, scope: !1386)
!1391 = !DILocation(line: 850, column: 46, scope: !1386)
!1392 = !DILocation(line: 850, column: 33, scope: !1386)
!1393 = !DILocation(line: 851, column: 25, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 851, column: 25)
!1395 = !DILocation(line: 851, column: 39, scope: !1394)
!1396 = !DILocation(line: 851, column: 37, scope: !1394)
!1397 = !DILocation(line: 851, column: 50, scope: !1394)
!1398 = !DILocation(line: 851, column: 53, scope: !1394)
!1399 = !DILocation(line: 851, column: 67, scope: !1394)
!1400 = !DILocation(line: 851, column: 78, scope: !1394)
!1401 = !DILocation(line: 851, column: 77, scope: !1394)
!1402 = !DILocation(line: 851, column: 65, scope: !1394)
!1403 = !DILocation(line: 851, column: 25, scope: !1386)
!1404 = !DILocation(line: 852, column: 25, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 851, column: 89)
!1406 = !DILocation(line: 853, column: 21, scope: !1405)
!1407 = !DILocation(line: 854, column: 40, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 853, column: 26)
!1409 = !DILocation(line: 854, column: 53, scope: !1408)
!1410 = !DILocation(line: 854, column: 65, scope: !1408)
!1411 = !DILocation(line: 854, column: 77, scope: !1408)
!1412 = !DILocation(line: 854, column: 89, scope: !1408)
!1413 = !DILocation(line: 854, column: 25, scope: !1408)
!1414 = !DILocation(line: 856, column: 21, scope: !1386)
!1415 = !DILocation(line: 861, column: 21, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !978, file: !3, line: 861, column: 21)
!1417 = !DILocation(line: 861, column: 21, scope: !978)
!1418 = !DILocation(line: 861, column: 60, scope: !1416)
!1419 = !DILocation(line: 861, column: 31, scope: !1416)
!1420 = !DILocalVariable(name: "SubdirStart", scope: !1421, file: !3, line: 863, type: !55)
!1421 = distinct !DILexicalBlock(scope: !978, file: !3, line: 862, column: 17)
!1422 = !DILocation(line: 863, column: 37, scope: !1421)
!1423 = !DILocation(line: 864, column: 35, scope: !1421)
!1424 = !DILocation(line: 864, column: 55, scope: !1421)
!1425 = !DILocation(line: 864, column: 48, scope: !1421)
!1426 = !DILocation(line: 864, column: 46, scope: !1421)
!1427 = !DILocation(line: 864, column: 33, scope: !1421)
!1428 = !DILocation(line: 865, column: 25, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 865, column: 25)
!1430 = !DILocation(line: 865, column: 39, scope: !1429)
!1431 = !DILocation(line: 865, column: 37, scope: !1429)
!1432 = !DILocation(line: 865, column: 50, scope: !1429)
!1433 = !DILocation(line: 865, column: 53, scope: !1429)
!1434 = !DILocation(line: 865, column: 67, scope: !1429)
!1435 = !DILocation(line: 865, column: 78, scope: !1429)
!1436 = !DILocation(line: 865, column: 77, scope: !1429)
!1437 = !DILocation(line: 865, column: 65, scope: !1429)
!1438 = !DILocation(line: 865, column: 25, scope: !1421)
!1439 = !DILocation(line: 866, column: 25, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 865, column: 89)
!1441 = !DILocation(line: 867, column: 21, scope: !1440)
!1442 = !DILocation(line: 868, column: 40, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 867, column: 26)
!1444 = !DILocation(line: 868, column: 53, scope: !1443)
!1445 = !DILocation(line: 868, column: 65, scope: !1443)
!1446 = !DILocation(line: 868, column: 25, scope: !1443)
!1447 = !DILocation(line: 870, column: 21, scope: !1421)
!1448 = !DILocation(line: 878, column: 77, scope: !978)
!1449 = !DILocation(line: 878, column: 87, scope: !978)
!1450 = !DILocation(line: 878, column: 60, scope: !978)
!1451 = !DILocation(line: 878, column: 50, scope: !978)
!1452 = !DILocation(line: 878, column: 48, scope: !978)
!1453 = !DILocation(line: 879, column: 17, scope: !978)
!1454 = !DILocation(line: 884, column: 65, scope: !978)
!1455 = !DILocation(line: 884, column: 75, scope: !978)
!1456 = !DILocation(line: 884, column: 48, scope: !978)
!1457 = !DILocation(line: 884, column: 43, scope: !978)
!1458 = !DILocation(line: 884, column: 41, scope: !978)
!1459 = !DILocation(line: 885, column: 17, scope: !978)
!1460 = !DILocation(line: 890, column: 21, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !978, file: !3, line: 890, column: 21)
!1462 = !DILocation(line: 890, column: 33, scope: !1461)
!1463 = !DILocation(line: 890, column: 21, scope: !978)
!1464 = !DILocation(line: 891, column: 69, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 890, column: 38)
!1466 = !DILocation(line: 891, column: 78, scope: !1465)
!1467 = !DILocation(line: 891, column: 52, scope: !1465)
!1468 = !DILocation(line: 891, column: 45, scope: !1465)
!1469 = !DILocation(line: 891, column: 43, scope: !1465)
!1470 = !DILocation(line: 893, column: 35, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 893, column: 25)
!1472 = !DILocation(line: 893, column: 25, scope: !1471)
!1473 = !DILocation(line: 893, column: 47, scope: !1471)
!1474 = !DILocation(line: 893, column: 25, scope: !1465)
!1475 = !DILocation(line: 893, column: 89, scope: !1471)
!1476 = !DILocation(line: 893, column: 77, scope: !1471)
!1477 = !DILocation(line: 893, column: 55, scope: !1471)
!1478 = !DILocation(line: 894, column: 17, scope: !1465)
!1479 = !DILocation(line: 895, column: 17, scope: !978)
!1480 = !DILocation(line: 898, column: 21, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !978, file: !3, line: 898, column: 21)
!1482 = !DILocation(line: 898, column: 33, scope: !1481)
!1483 = !DILocation(line: 898, column: 21, scope: !978)
!1484 = !DILocation(line: 899, column: 69, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 898, column: 38)
!1486 = !DILocation(line: 899, column: 78, scope: !1485)
!1487 = !DILocation(line: 899, column: 52, scope: !1485)
!1488 = !DILocation(line: 899, column: 45, scope: !1485)
!1489 = !DILocation(line: 899, column: 43, scope: !1485)
!1490 = !DILocation(line: 901, column: 35, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 901, column: 25)
!1492 = !DILocation(line: 901, column: 25, scope: !1491)
!1493 = !DILocation(line: 901, column: 47, scope: !1491)
!1494 = !DILocation(line: 901, column: 25, scope: !1485)
!1495 = !DILocation(line: 901, column: 89, scope: !1491)
!1496 = !DILocation(line: 901, column: 77, scope: !1491)
!1497 = !DILocation(line: 901, column: 55, scope: !1491)
!1498 = !DILocation(line: 902, column: 17, scope: !1485)
!1499 = !DILocation(line: 903, column: 17, scope: !978)
!1500 = !DILocation(line: 906, column: 21, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !978, file: !3, line: 906, column: 21)
!1502 = !DILocation(line: 906, column: 33, scope: !1501)
!1503 = !DILocation(line: 906, column: 21, scope: !978)
!1504 = !DILocation(line: 907, column: 71, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 906, column: 38)
!1506 = !DILocation(line: 907, column: 80, scope: !1505)
!1507 = !DILocation(line: 907, column: 54, scope: !1505)
!1508 = !DILocation(line: 907, column: 48, scope: !1505)
!1509 = !DILocation(line: 907, column: 46, scope: !1505)
!1510 = !DILocation(line: 908, column: 17, scope: !1505)
!1511 = !DILocation(line: 909, column: 17, scope: !978)
!1512 = !DILocation(line: 912, column: 5, scope: !741)
!1513 = !DILocation(line: 504, column: 34, scope: !736)
!1514 = !DILocation(line: 504, column: 5, scope: !736)
!1515 = distinct !{!1515, !739, !1516, !332}
!1516 = !DILocation(line: 912, column: 5, scope: !733)
!1517 = !DILocalVariable(name: "SubdirStart", scope: !1518, file: !3, line: 919, type: !55)
!1518 = distinct !DILexicalBlock(scope: !634, file: !3, line: 915, column: 5)
!1519 = !DILocation(line: 919, column: 25, scope: !1518)
!1520 = !DILocalVariable(name: "Offset", scope: !1518, file: !3, line: 920, type: !36)
!1521 = !DILocation(line: 920, column: 13, scope: !1518)
!1522 = !DILocation(line: 922, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 922, column: 13)
!1524 = !DILocation(line: 922, column: 53, scope: !1523)
!1525 = !DILocation(line: 922, column: 60, scope: !1523)
!1526 = !DILocation(line: 922, column: 71, scope: !1523)
!1527 = !DILocation(line: 922, column: 70, scope: !1523)
!1528 = !DILocation(line: 922, column: 57, scope: !1523)
!1529 = !DILocation(line: 922, column: 13, scope: !1518)
!1530 = !DILocation(line: 923, column: 29, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 922, column: 82)
!1532 = !DILocation(line: 923, column: 37, scope: !1531)
!1533 = !DILocation(line: 923, column: 43, scope: !1531)
!1534 = !DILocation(line: 923, column: 42, scope: !1531)
!1535 = !DILocation(line: 923, column: 39, scope: !1531)
!1536 = !DILocation(line: 923, column: 22, scope: !1531)
!1537 = !DILocation(line: 923, column: 20, scope: !1531)
!1538 = !DILocation(line: 924, column: 17, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 924, column: 17)
!1540 = !DILocation(line: 924, column: 17, scope: !1531)
!1541 = !DILocation(line: 925, column: 31, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 924, column: 24)
!1543 = !DILocation(line: 925, column: 44, scope: !1542)
!1544 = !DILocation(line: 925, column: 42, scope: !1542)
!1545 = !DILocation(line: 925, column: 29, scope: !1542)
!1546 = !DILocation(line: 926, column: 21, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 926, column: 21)
!1548 = !DILocation(line: 926, column: 35, scope: !1547)
!1549 = !DILocation(line: 926, column: 46, scope: !1547)
!1550 = !DILocation(line: 926, column: 45, scope: !1547)
!1551 = !DILocation(line: 926, column: 33, scope: !1547)
!1552 = !DILocation(line: 926, column: 57, scope: !1547)
!1553 = !DILocation(line: 926, column: 60, scope: !1547)
!1554 = !DILocation(line: 926, column: 74, scope: !1547)
!1555 = !DILocation(line: 926, column: 72, scope: !1547)
!1556 = !DILocation(line: 926, column: 21, scope: !1542)
!1557 = !DILocation(line: 927, column: 25, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 927, column: 25)
!1559 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 926, column: 85)
!1560 = !DILocation(line: 927, column: 39, scope: !1558)
!1561 = !DILocation(line: 927, column: 37, scope: !1558)
!1562 = !DILocation(line: 927, column: 50, scope: !1558)
!1563 = !DILocation(line: 927, column: 53, scope: !1558)
!1564 = !DILocation(line: 927, column: 67, scope: !1558)
!1565 = !DILocation(line: 927, column: 78, scope: !1558)
!1566 = !DILocation(line: 927, column: 77, scope: !1558)
!1567 = !DILocation(line: 927, column: 88, scope: !1558)
!1568 = !DILocation(line: 927, column: 65, scope: !1558)
!1569 = !DILocation(line: 927, column: 25, scope: !1559)
!1570 = !DILocation(line: 931, column: 29, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 931, column: 29)
!1572 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 927, column: 92)
!1573 = !DILocation(line: 931, column: 29, scope: !1572)
!1574 = !DILocation(line: 931, column: 39, scope: !1571)
!1575 = !DILocation(line: 932, column: 21, scope: !1572)
!1576 = !DILocation(line: 933, column: 25, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 932, column: 26)
!1578 = !DILocation(line: 935, column: 17, scope: !1559)
!1579 = !DILocation(line: 936, column: 25, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 936, column: 25)
!1581 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 935, column: 22)
!1582 = !DILocation(line: 936, column: 36, scope: !1580)
!1583 = !DILocation(line: 936, column: 42, scope: !1580)
!1584 = !DILocation(line: 936, column: 53, scope: !1580)
!1585 = !DILocation(line: 936, column: 52, scope: !1580)
!1586 = !DILocation(line: 936, column: 39, scope: !1580)
!1587 = !DILocation(line: 936, column: 25, scope: !1581)
!1588 = !DILocation(line: 937, column: 29, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 937, column: 29)
!1590 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 936, column: 64)
!1591 = !DILocation(line: 937, column: 29, scope: !1590)
!1592 = !DILocation(line: 937, column: 75, scope: !1589)
!1593 = !DILocation(line: 937, column: 39, scope: !1589)
!1594 = !DILocation(line: 938, column: 40, scope: !1590)
!1595 = !DILocation(line: 938, column: 53, scope: !1590)
!1596 = !DILocation(line: 938, column: 65, scope: !1590)
!1597 = !DILocation(line: 938, column: 77, scope: !1590)
!1598 = !DILocation(line: 938, column: 89, scope: !1590)
!1599 = !DILocation(line: 938, column: 25, scope: !1590)
!1600 = !DILocation(line: 939, column: 21, scope: !1590)
!1601 = !DILocation(line: 941, column: 21, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 941, column: 21)
!1603 = !DILocation(line: 941, column: 40, scope: !1602)
!1604 = !DILocation(line: 941, column: 28, scope: !1602)
!1605 = !DILocation(line: 941, column: 21, scope: !1542)
!1606 = !DILocation(line: 942, column: 51, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 941, column: 58)
!1608 = !DILocation(line: 942, column: 49, scope: !1607)
!1609 = !DILocation(line: 943, column: 17, scope: !1607)
!1610 = !DILocation(line: 944, column: 13, scope: !1542)
!1611 = !DILocation(line: 945, column: 9, scope: !1531)
!1612 = !DILocation(line: 950, column: 9, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !634, file: !3, line: 950, column: 9)
!1614 = !DILocation(line: 950, column: 9, scope: !634)
!1615 = !DILocation(line: 951, column: 34, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 950, column: 25)
!1617 = !DILocation(line: 953, column: 13, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 953, column: 13)
!1619 = !DILocation(line: 953, column: 13, scope: !1616)
!1620 = !DILocation(line: 954, column: 50, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 953, column: 25)
!1622 = !DILocation(line: 954, column: 67, scope: !1621)
!1623 = !DILocation(line: 954, column: 83, scope: !1621)
!1624 = !DILocation(line: 954, column: 82, scope: !1621)
!1625 = !DILocation(line: 954, column: 13, scope: !1621)
!1626 = !DILocation(line: 955, column: 9, scope: !1621)
!1627 = !DILocation(line: 957, column: 13, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 957, column: 13)
!1629 = !DILocation(line: 957, column: 32, scope: !1628)
!1630 = !DILocation(line: 957, column: 29, scope: !1628)
!1631 = !DILocation(line: 957, column: 13, scope: !1616)
!1632 = !DILocation(line: 958, column: 17, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 958, column: 17)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 957, column: 43)
!1635 = !DILocation(line: 958, column: 33, scope: !1633)
!1636 = !DILocation(line: 958, column: 44, scope: !1633)
!1637 = !DILocation(line: 958, column: 43, scope: !1633)
!1638 = !DILocation(line: 958, column: 31, scope: !1633)
!1639 = !DILocation(line: 958, column: 17, scope: !1634)
!1640 = !DILocation(line: 962, column: 33, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 958, column: 60)
!1642 = !DILocation(line: 962, column: 44, scope: !1641)
!1643 = !DILocation(line: 962, column: 43, scope: !1641)
!1644 = !DILocation(line: 962, column: 31, scope: !1641)
!1645 = !DILocation(line: 963, column: 21, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 963, column: 21)
!1647 = !DILocation(line: 963, column: 21, scope: !1641)
!1648 = !DILocation(line: 963, column: 31, scope: !1646)
!1649 = !DILocation(line: 965, column: 13, scope: !1641)
!1650 = !DILocation(line: 967, column: 41, scope: !1634)
!1651 = !DILocation(line: 967, column: 39, scope: !1634)
!1652 = !DILocation(line: 968, column: 39, scope: !1634)
!1653 = !DILocation(line: 968, column: 37, scope: !1634)
!1654 = !DILocation(line: 970, column: 17, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 970, column: 17)
!1656 = !DILocation(line: 970, column: 17, scope: !1634)
!1657 = !DILocation(line: 971, column: 53, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 970, column: 26)
!1659 = !DILocation(line: 971, column: 17, scope: !1658)
!1660 = !DILocation(line: 972, column: 13, scope: !1658)
!1661 = !DILocation(line: 973, column: 9, scope: !1634)
!1662 = !DILocation(line: 974, column: 5, scope: !1616)
!1663 = !DILocation(line: 975, column: 1, scope: !634)
!1664 = distinct !DISubprogram(name: "create_EXIF", scope: !3, file: !3, line: 1079, type: !433, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1665 = !DILocalVariable(name: "Buffer", scope: !1664, file: !3, line: 1081, type: !1666)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !1667)
!1667 = !{!1668}
!1668 = !DISubrange(count: 256)
!1669 = !DILocation(line: 1081, column: 10, scope: !1664)
!1670 = !DILocalVariable(name: "NumEntries", scope: !1664, file: !3, line: 1083, type: !40)
!1671 = !DILocation(line: 1083, column: 20, scope: !1664)
!1672 = !DILocalVariable(name: "DataWriteIndex", scope: !1664, file: !3, line: 1084, type: !36)
!1673 = !DILocation(line: 1084, column: 9, scope: !1664)
!1674 = !DILocalVariable(name: "DateIndex", scope: !1664, file: !3, line: 1085, type: !36)
!1675 = !DILocation(line: 1085, column: 9, scope: !1664)
!1676 = !DILocalVariable(name: "DirIndex", scope: !1664, file: !3, line: 1086, type: !36)
!1677 = !DILocation(line: 1086, column: 9, scope: !1664)
!1678 = !DILocalVariable(name: "DirContinuation", scope: !1664, file: !3, line: 1087, type: !36)
!1679 = !DILocation(line: 1087, column: 9, scope: !1664)
!1680 = !DILocation(line: 1089, column: 19, scope: !1664)
!1681 = !DILocation(line: 1091, column: 12, scope: !1664)
!1682 = !DILocation(line: 1091, column: 18, scope: !1664)
!1683 = !DILocation(line: 1091, column: 5, scope: !1664)
!1684 = !DILocation(line: 1092, column: 12, scope: !1664)
!1685 = !DILocation(line: 1092, column: 18, scope: !1664)
!1686 = !DILocation(line: 1092, column: 5, scope: !1664)
!1687 = !DILocation(line: 1094, column: 20, scope: !1664)
!1688 = !DILocation(line: 1095, column: 12, scope: !1664)
!1689 = !DILocation(line: 1095, column: 18, scope: !1664)
!1690 = !DILocation(line: 1095, column: 23, scope: !1664)
!1691 = !DILocation(line: 1095, column: 37, scope: !1664)
!1692 = !DILocation(line: 1095, column: 5, scope: !1664)
!1693 = !DILocation(line: 1098, column: 20, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1097, column: 5)
!1695 = !DILocation(line: 1098, column: 18, scope: !1694)
!1696 = !DILocation(line: 1099, column: 20, scope: !1694)
!1697 = !DILocation(line: 1100, column: 31, scope: !1694)
!1698 = !DILocation(line: 1100, column: 41, scope: !1694)
!1699 = !DILocation(line: 1100, column: 29, scope: !1694)
!1700 = !DILocation(line: 1100, column: 45, scope: !1694)
!1701 = !DILocation(line: 1100, column: 24, scope: !1694)
!1702 = !DILocation(line: 1102, column: 16, scope: !1694)
!1703 = !DILocation(line: 1102, column: 23, scope: !1694)
!1704 = !DILocation(line: 1102, column: 22, scope: !1694)
!1705 = !DILocation(line: 1102, column: 33, scope: !1694)
!1706 = !DILocation(line: 1102, column: 9, scope: !1694)
!1707 = !DILocation(line: 1103, column: 18, scope: !1694)
!1708 = !DILocation(line: 1108, column: 20, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 1106, column: 9)
!1710 = !DILocation(line: 1108, column: 27, scope: !1709)
!1711 = !DILocation(line: 1108, column: 26, scope: !1709)
!1712 = !DILocation(line: 1108, column: 13, scope: !1709)
!1713 = !DILocation(line: 1109, column: 20, scope: !1709)
!1714 = !DILocation(line: 1109, column: 27, scope: !1709)
!1715 = !DILocation(line: 1109, column: 26, scope: !1709)
!1716 = !DILocation(line: 1109, column: 36, scope: !1709)
!1717 = !DILocation(line: 1109, column: 13, scope: !1709)
!1718 = !DILocation(line: 1110, column: 20, scope: !1709)
!1719 = !DILocation(line: 1110, column: 27, scope: !1709)
!1720 = !DILocation(line: 1110, column: 26, scope: !1709)
!1721 = !DILocation(line: 1110, column: 36, scope: !1709)
!1722 = !DILocation(line: 1110, column: 13, scope: !1709)
!1723 = !DILocation(line: 1111, column: 20, scope: !1709)
!1724 = !DILocation(line: 1111, column: 27, scope: !1709)
!1725 = !DILocation(line: 1111, column: 26, scope: !1709)
!1726 = !DILocation(line: 1111, column: 36, scope: !1709)
!1727 = !DILocation(line: 1111, column: 41, scope: !1709)
!1728 = !DILocation(line: 1111, column: 55, scope: !1709)
!1729 = !DILocation(line: 1111, column: 13, scope: !1709)
!1730 = !DILocation(line: 1112, column: 22, scope: !1709)
!1731 = !DILocation(line: 1114, column: 25, scope: !1709)
!1732 = !DILocation(line: 1114, column: 23, scope: !1709)
!1733 = !DILocation(line: 1115, column: 27, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 1115, column: 17)
!1735 = !DILocation(line: 1115, column: 17, scope: !1734)
!1736 = !DILocation(line: 1115, column: 17, scope: !1709)
!1737 = !DILocation(line: 1117, column: 24, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1115, column: 43)
!1739 = !DILocation(line: 1117, column: 31, scope: !1738)
!1740 = !DILocation(line: 1117, column: 30, scope: !1738)
!1741 = !DILocation(line: 1117, column: 17, scope: !1738)
!1742 = !DILocation(line: 1118, column: 24, scope: !1738)
!1743 = !DILocation(line: 1118, column: 38, scope: !1738)
!1744 = !DILocation(line: 1118, column: 17, scope: !1738)
!1745 = !DILocation(line: 1118, column: 43, scope: !1738)
!1746 = !DILocation(line: 1119, column: 13, scope: !1738)
!1747 = !DILocation(line: 1121, column: 34, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1119, column: 18)
!1749 = !DILocation(line: 1121, column: 41, scope: !1748)
!1750 = !DILocation(line: 1121, column: 40, scope: !1748)
!1751 = !DILocation(line: 1121, column: 17, scope: !1748)
!1752 = !DILocation(line: 1123, column: 28, scope: !1709)
!1753 = !DILocation(line: 1126, column: 20, scope: !1709)
!1754 = !DILocation(line: 1126, column: 27, scope: !1709)
!1755 = !DILocation(line: 1126, column: 26, scope: !1709)
!1756 = !DILocation(line: 1126, column: 13, scope: !1709)
!1757 = !DILocation(line: 1127, column: 20, scope: !1709)
!1758 = !DILocation(line: 1127, column: 27, scope: !1709)
!1759 = !DILocation(line: 1127, column: 26, scope: !1709)
!1760 = !DILocation(line: 1127, column: 36, scope: !1709)
!1761 = !DILocation(line: 1127, column: 13, scope: !1709)
!1762 = !DILocation(line: 1128, column: 20, scope: !1709)
!1763 = !DILocation(line: 1128, column: 27, scope: !1709)
!1764 = !DILocation(line: 1128, column: 26, scope: !1709)
!1765 = !DILocation(line: 1128, column: 36, scope: !1709)
!1766 = !DILocation(line: 1128, column: 13, scope: !1709)
!1767 = !DILocation(line: 1129, column: 20, scope: !1709)
!1768 = !DILocation(line: 1129, column: 27, scope: !1709)
!1769 = !DILocation(line: 1129, column: 26, scope: !1709)
!1770 = !DILocation(line: 1129, column: 36, scope: !1709)
!1771 = !DILocation(line: 1129, column: 41, scope: !1709)
!1772 = !DILocation(line: 1129, column: 55, scope: !1709)
!1773 = !DILocation(line: 1129, column: 13, scope: !1709)
!1774 = !DILocation(line: 1130, column: 22, scope: !1709)
!1775 = !DILocation(line: 1134, column: 27, scope: !1694)
!1776 = !DILocation(line: 1134, column: 25, scope: !1694)
!1777 = !DILocation(line: 1138, column: 20, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1137, column: 5)
!1779 = !DILocation(line: 1138, column: 18, scope: !1778)
!1780 = !DILocation(line: 1139, column: 20, scope: !1778)
!1781 = !DILocation(line: 1140, column: 31, scope: !1778)
!1782 = !DILocation(line: 1140, column: 41, scope: !1778)
!1783 = !DILocation(line: 1140, column: 29, scope: !1778)
!1784 = !DILocation(line: 1140, column: 45, scope: !1778)
!1785 = !DILocation(line: 1140, column: 24, scope: !1778)
!1786 = !DILocation(line: 1142, column: 16, scope: !1778)
!1787 = !DILocation(line: 1142, column: 23, scope: !1778)
!1788 = !DILocation(line: 1142, column: 22, scope: !1778)
!1789 = !DILocation(line: 1142, column: 33, scope: !1778)
!1790 = !DILocation(line: 1142, column: 9, scope: !1778)
!1791 = !DILocation(line: 1143, column: 18, scope: !1778)
!1792 = !DILocation(line: 1146, column: 16, scope: !1778)
!1793 = !DILocation(line: 1146, column: 23, scope: !1778)
!1794 = !DILocation(line: 1146, column: 22, scope: !1778)
!1795 = !DILocation(line: 1146, column: 9, scope: !1778)
!1796 = !DILocation(line: 1147, column: 16, scope: !1778)
!1797 = !DILocation(line: 1147, column: 23, scope: !1778)
!1798 = !DILocation(line: 1147, column: 22, scope: !1778)
!1799 = !DILocation(line: 1147, column: 32, scope: !1778)
!1800 = !DILocation(line: 1147, column: 9, scope: !1778)
!1801 = !DILocation(line: 1148, column: 16, scope: !1778)
!1802 = !DILocation(line: 1148, column: 23, scope: !1778)
!1803 = !DILocation(line: 1148, column: 22, scope: !1778)
!1804 = !DILocation(line: 1148, column: 32, scope: !1778)
!1805 = !DILocation(line: 1148, column: 9, scope: !1778)
!1806 = !DILocation(line: 1149, column: 16, scope: !1778)
!1807 = !DILocation(line: 1149, column: 23, scope: !1778)
!1808 = !DILocation(line: 1149, column: 22, scope: !1778)
!1809 = !DILocation(line: 1149, column: 32, scope: !1778)
!1810 = !DILocation(line: 1149, column: 37, scope: !1778)
!1811 = !DILocation(line: 1149, column: 51, scope: !1778)
!1812 = !DILocation(line: 1149, column: 9, scope: !1778)
!1813 = !DILocation(line: 1150, column: 18, scope: !1778)
!1814 = !DILocation(line: 1152, column: 16, scope: !1778)
!1815 = !DILocation(line: 1152, column: 23, scope: !1778)
!1816 = !DILocation(line: 1152, column: 22, scope: !1778)
!1817 = !DILocation(line: 1152, column: 39, scope: !1778)
!1818 = !DILocation(line: 1152, column: 46, scope: !1778)
!1819 = !DILocation(line: 1152, column: 45, scope: !1778)
!1820 = !DILocation(line: 1152, column: 9, scope: !1778)
!1821 = !DILocation(line: 1153, column: 24, scope: !1778)
!1822 = !DILocation(line: 1156, column: 16, scope: !1778)
!1823 = !DILocation(line: 1156, column: 23, scope: !1778)
!1824 = !DILocation(line: 1156, column: 22, scope: !1778)
!1825 = !DILocation(line: 1156, column: 9, scope: !1778)
!1826 = !DILocation(line: 1161, column: 16, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1159, column: 5)
!1828 = !DILocation(line: 1161, column: 23, scope: !1827)
!1829 = !DILocation(line: 1161, column: 22, scope: !1827)
!1830 = !DILocation(line: 1161, column: 40, scope: !1827)
!1831 = !DILocation(line: 1161, column: 54, scope: !1827)
!1832 = !DILocation(line: 1161, column: 9, scope: !1827)
!1833 = !DILocation(line: 1162, column: 20, scope: !1827)
!1834 = !DILocation(line: 1162, column: 18, scope: !1827)
!1835 = !DILocation(line: 1163, column: 20, scope: !1827)
!1836 = !DILocation(line: 1164, column: 31, scope: !1827)
!1837 = !DILocation(line: 1164, column: 41, scope: !1827)
!1838 = !DILocation(line: 1164, column: 29, scope: !1827)
!1839 = !DILocation(line: 1164, column: 45, scope: !1827)
!1840 = !DILocation(line: 1164, column: 24, scope: !1827)
!1841 = !DILocation(line: 1166, column: 16, scope: !1827)
!1842 = !DILocation(line: 1166, column: 23, scope: !1827)
!1843 = !DILocation(line: 1166, column: 22, scope: !1827)
!1844 = !DILocation(line: 1166, column: 33, scope: !1827)
!1845 = !DILocation(line: 1166, column: 9, scope: !1827)
!1846 = !DILocation(line: 1167, column: 18, scope: !1827)
!1847 = !DILocation(line: 1170, column: 20, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 1168, column: 9)
!1849 = !DILocation(line: 1170, column: 27, scope: !1848)
!1850 = !DILocation(line: 1170, column: 26, scope: !1848)
!1851 = !DILocation(line: 1170, column: 13, scope: !1848)
!1852 = !DILocation(line: 1171, column: 20, scope: !1848)
!1853 = !DILocation(line: 1171, column: 27, scope: !1848)
!1854 = !DILocation(line: 1171, column: 26, scope: !1848)
!1855 = !DILocation(line: 1171, column: 36, scope: !1848)
!1856 = !DILocation(line: 1171, column: 13, scope: !1848)
!1857 = !DILocation(line: 1172, column: 20, scope: !1848)
!1858 = !DILocation(line: 1172, column: 27, scope: !1848)
!1859 = !DILocation(line: 1172, column: 26, scope: !1848)
!1860 = !DILocation(line: 1172, column: 36, scope: !1848)
!1861 = !DILocation(line: 1172, column: 13, scope: !1848)
!1862 = !DILocation(line: 1173, column: 20, scope: !1848)
!1863 = !DILocation(line: 1173, column: 27, scope: !1848)
!1864 = !DILocation(line: 1173, column: 26, scope: !1848)
!1865 = !DILocation(line: 1173, column: 36, scope: !1848)
!1866 = !DILocation(line: 1173, column: 41, scope: !1848)
!1867 = !DILocation(line: 1173, column: 55, scope: !1848)
!1868 = !DILocation(line: 1173, column: 13, scope: !1848)
!1869 = !DILocation(line: 1174, column: 22, scope: !1848)
!1870 = !DILocation(line: 1179, column: 20, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 1177, column: 9)
!1872 = !DILocation(line: 1179, column: 27, scope: !1871)
!1873 = !DILocation(line: 1179, column: 26, scope: !1871)
!1874 = !DILocation(line: 1179, column: 13, scope: !1871)
!1875 = !DILocation(line: 1180, column: 20, scope: !1871)
!1876 = !DILocation(line: 1180, column: 27, scope: !1871)
!1877 = !DILocation(line: 1180, column: 26, scope: !1871)
!1878 = !DILocation(line: 1180, column: 36, scope: !1871)
!1879 = !DILocation(line: 1180, column: 13, scope: !1871)
!1880 = !DILocation(line: 1181, column: 20, scope: !1871)
!1881 = !DILocation(line: 1181, column: 27, scope: !1871)
!1882 = !DILocation(line: 1181, column: 26, scope: !1871)
!1883 = !DILocation(line: 1181, column: 36, scope: !1871)
!1884 = !DILocation(line: 1181, column: 13, scope: !1871)
!1885 = !DILocation(line: 1182, column: 20, scope: !1871)
!1886 = !DILocation(line: 1182, column: 27, scope: !1871)
!1887 = !DILocation(line: 1182, column: 26, scope: !1871)
!1888 = !DILocation(line: 1182, column: 36, scope: !1871)
!1889 = !DILocation(line: 1182, column: 13, scope: !1871)
!1890 = !DILocation(line: 1183, column: 22, scope: !1871)
!1891 = !DILocation(line: 1187, column: 16, scope: !1827)
!1892 = !DILocation(line: 1187, column: 23, scope: !1827)
!1893 = !DILocation(line: 1187, column: 22, scope: !1827)
!1894 = !DILocation(line: 1187, column: 9, scope: !1827)
!1895 = !DILocation(line: 1191, column: 33, scope: !1664)
!1896 = !DILocation(line: 1191, column: 48, scope: !1664)
!1897 = !DILocation(line: 1191, column: 17, scope: !1664)
!1898 = !DILocation(line: 1191, column: 5, scope: !1664)
!1899 = !DILocation(line: 1191, column: 15, scope: !1664)
!1900 = !DILocation(line: 1192, column: 32, scope: !1664)
!1901 = !DILocation(line: 1192, column: 17, scope: !1664)
!1902 = !DILocation(line: 1192, column: 5, scope: !1664)
!1903 = !DILocation(line: 1192, column: 15, scope: !1664)
!1904 = !DILocation(line: 1195, column: 5, scope: !1664)
!1905 = !DILocalVariable(name: "NewBuf", scope: !1906, file: !3, line: 1200, type: !55)
!1906 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1197, column: 5)
!1907 = !DILocation(line: 1200, column: 25, scope: !1906)
!1908 = !DILocation(line: 1200, column: 41, scope: !1906)
!1909 = !DILocation(line: 1200, column: 34, scope: !1906)
!1910 = !DILocation(line: 1201, column: 13, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 1201, column: 13)
!1912 = !DILocation(line: 1201, column: 20, scope: !1911)
!1913 = !DILocation(line: 1201, column: 13, scope: !1906)
!1914 = !DILocation(line: 1202, column: 13, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 1201, column: 28)
!1916 = !DILocation(line: 1203, column: 9, scope: !1915)
!1917 = !DILocation(line: 1204, column: 16, scope: !1906)
!1918 = !DILocation(line: 1204, column: 9, scope: !1906)
!1919 = !DILocation(line: 1204, column: 32, scope: !1906)
!1920 = !DILocation(line: 1206, column: 31, scope: !1906)
!1921 = !DILocation(line: 1206, column: 39, scope: !1906)
!1922 = !DILocation(line: 1206, column: 9, scope: !1906)
!1923 = !DILocation(line: 1210, column: 22, scope: !1906)
!1924 = !DILocation(line: 1210, column: 30, scope: !1906)
!1925 = !DILocation(line: 1210, column: 9, scope: !1906)
!1926 = !DILocation(line: 1212, column: 1, scope: !1664)
!1927 = distinct !DISubprogram(name: "Put16u", scope: !3, file: !3, line: 304, type: !1928, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !33, !40}
!1930 = !DILocalVariable(name: "Short", arg: 1, scope: !1927, file: !3, line: 304, type: !33)
!1931 = !DILocation(line: 304, column: 27, scope: !1927)
!1932 = !DILocalVariable(name: "PutValue", arg: 2, scope: !1927, file: !3, line: 304, type: !40)
!1933 = !DILocation(line: 304, column: 49, scope: !1927)
!1934 = !DILocation(line: 306, column: 9, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 306, column: 9)
!1936 = !DILocation(line: 306, column: 9, scope: !1927)
!1937 = !DILocation(line: 307, column: 39, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 306, column: 23)
!1939 = !DILocation(line: 307, column: 47, scope: !1938)
!1940 = !DILocation(line: 307, column: 31, scope: !1938)
!1941 = !DILocation(line: 307, column: 19, scope: !1938)
!1942 = !DILocation(line: 307, column: 9, scope: !1938)
!1943 = !DILocation(line: 307, column: 29, scope: !1938)
!1944 = !DILocation(line: 308, column: 38, scope: !1938)
!1945 = !DILocation(line: 308, column: 31, scope: !1938)
!1946 = !DILocation(line: 308, column: 19, scope: !1938)
!1947 = !DILocation(line: 308, column: 9, scope: !1938)
!1948 = !DILocation(line: 308, column: 29, scope: !1938)
!1949 = !DILocation(line: 309, column: 5, scope: !1938)
!1950 = !DILocation(line: 310, column: 38, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 309, column: 10)
!1952 = !DILocation(line: 310, column: 31, scope: !1951)
!1953 = !DILocation(line: 310, column: 19, scope: !1951)
!1954 = !DILocation(line: 310, column: 9, scope: !1951)
!1955 = !DILocation(line: 310, column: 29, scope: !1951)
!1956 = !DILocation(line: 311, column: 39, scope: !1951)
!1957 = !DILocation(line: 311, column: 47, scope: !1951)
!1958 = !DILocation(line: 311, column: 31, scope: !1951)
!1959 = !DILocation(line: 311, column: 19, scope: !1951)
!1960 = !DILocation(line: 311, column: 9, scope: !1951)
!1961 = !DILocation(line: 311, column: 29, scope: !1951)
!1962 = !DILocation(line: 313, column: 1, scope: !1927)
!1963 = distinct !DISubprogram(name: "ClearOrientation", scope: !3, file: !3, line: 1218, type: !1964, scopeLine: 1219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!90}
!1966 = !DILocalVariable(name: "a", scope: !1963, file: !3, line: 1220, type: !36)
!1967 = !DILocation(line: 1220, column: 9, scope: !1963)
!1968 = !DILocation(line: 1221, column: 9, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 1221, column: 9)
!1970 = !DILocation(line: 1221, column: 25, scope: !1969)
!1971 = !DILocation(line: 1221, column: 9, scope: !1963)
!1972 = !DILocation(line: 1221, column: 31, scope: !1969)
!1973 = !DILocation(line: 1223, column: 11, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 1223, column: 5)
!1975 = !DILocation(line: 1223, column: 10, scope: !1974)
!1976 = !DILocation(line: 1223, column: 14, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 1223, column: 5)
!1978 = !DILocation(line: 1223, column: 16, scope: !1977)
!1979 = !DILocation(line: 1223, column: 15, scope: !1977)
!1980 = !DILocation(line: 1223, column: 5, scope: !1974)
!1981 = !DILocation(line: 1224, column: 37, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 1223, column: 36)
!1983 = !DILocation(line: 1224, column: 16, scope: !1982)
!1984 = !DILocation(line: 1224, column: 9, scope: !1982)
!1985 = !DILocation(line: 1227, column: 43, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 1224, column: 40)
!1987 = !DILocation(line: 1227, column: 28, scope: !1986)
!1988 = !DILocation(line: 1227, column: 47, scope: !1986)
!1989 = !DILocation(line: 1228, column: 17, scope: !1986)
!1990 = !DILocation(line: 1231, column: 39, scope: !1986)
!1991 = !DILocation(line: 1231, column: 24, scope: !1986)
!1992 = !DILocation(line: 1231, column: 17, scope: !1986)
!1993 = !DILocation(line: 1232, column: 17, scope: !1986)
!1994 = !DILocation(line: 1236, column: 39, scope: !1986)
!1995 = !DILocation(line: 1236, column: 24, scope: !1986)
!1996 = !DILocation(line: 1236, column: 17, scope: !1986)
!1997 = !DILocation(line: 1238, column: 21, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1238, column: 21)
!1999 = !DILocation(line: 1238, column: 21, scope: !1986)
!2000 = !DILocation(line: 1239, column: 46, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 1238, column: 35)
!2002 = !DILocation(line: 1239, column: 31, scope: !2001)
!2003 = !DILocation(line: 1239, column: 21, scope: !2001)
!2004 = !DILocation(line: 1239, column: 53, scope: !2001)
!2005 = !DILocation(line: 1240, column: 17, scope: !2001)
!2006 = !DILocation(line: 1241, column: 46, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 1240, column: 22)
!2008 = !DILocation(line: 1241, column: 31, scope: !2007)
!2009 = !DILocation(line: 1241, column: 21, scope: !2007)
!2010 = !DILocation(line: 1241, column: 53, scope: !2007)
!2011 = !DILocation(line: 1243, column: 17, scope: !1986)
!2012 = !DILocation(line: 1246, column: 17, scope: !1986)
!2013 = !DILocation(line: 1248, column: 5, scope: !1982)
!2014 = !DILocation(line: 1223, column: 33, scope: !1977)
!2015 = !DILocation(line: 1223, column: 5, scope: !1977)
!2016 = distinct !{!2016, !1980, !2017, !332}
!2017 = !DILocation(line: 1248, column: 5, scope: !1974)
!2018 = !DILocation(line: 1250, column: 19, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 1250, column: 9)
!2020 = !DILocation(line: 1250, column: 31, scope: !2019)
!2021 = !DILocation(line: 1250, column: 36, scope: !2019)
!2022 = !DILocation(line: 1250, column: 49, scope: !2019)
!2023 = !DILocation(line: 1250, column: 61, scope: !2019)
!2024 = !DILocation(line: 1250, column: 9, scope: !1963)
!2025 = !DILocation(line: 1251, column: 36, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 1250, column: 66)
!2027 = !DILocation(line: 1251, column: 16, scope: !2026)
!2028 = !DILocation(line: 1251, column: 9, scope: !2026)
!2029 = !DILocation(line: 1253, column: 9, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 1252, column: 10)
!2031 = !DILocation(line: 1255, column: 1, scope: !1963)
!2032 = distinct !DISubprogram(name: "Exif2tm", scope: !3, file: !3, line: 1260, type: !2033, scopeLine: 1261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!36, !2035, !26}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !2037, line: 7, size: 448, elements: !2038)
!2037 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "")
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2050}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2036, file: !2037, line: 9, baseType: !36, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2036, file: !2037, line: 10, baseType: !36, size: 32, offset: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2036, file: !2037, line: 11, baseType: !36, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2036, file: !2037, line: 12, baseType: !36, size: 32, offset: 96)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2036, file: !2037, line: 13, baseType: !36, size: 32, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2036, file: !2037, line: 14, baseType: !36, size: 32, offset: 160)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2036, file: !2037, line: 15, baseType: !36, size: 32, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2036, file: !2037, line: 16, baseType: !36, size: 32, offset: 224)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2036, file: !2037, line: 17, baseType: !36, size: 32, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2036, file: !2037, line: 20, baseType: !2049, size: 64, offset: 320)
!2049 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2036, file: !2037, line: 21, baseType: !90, size: 64, offset: 384)
!2051 = !DILocalVariable(name: "timeptr", arg: 1, scope: !2032, file: !3, line: 1260, type: !2035)
!2052 = !DILocation(line: 1260, column: 25, scope: !2032)
!2053 = !DILocalVariable(name: "ExifTime", arg: 2, scope: !2032, file: !3, line: 1260, type: !26)
!2054 = !DILocation(line: 1260, column: 41, scope: !2032)
!2055 = !DILocalVariable(name: "a", scope: !2032, file: !3, line: 1262, type: !36)
!2056 = !DILocation(line: 1262, column: 9, scope: !2032)
!2057 = !DILocation(line: 1264, column: 5, scope: !2032)
!2058 = !DILocation(line: 1264, column: 14, scope: !2032)
!2059 = !DILocation(line: 1264, column: 22, scope: !2032)
!2060 = !DILocation(line: 1269, column: 5, scope: !2032)
!2061 = !DILocation(line: 1269, column: 14, scope: !2032)
!2062 = !DILocation(line: 1269, column: 21, scope: !2032)
!2063 = !DILocation(line: 1270, column: 16, scope: !2032)
!2064 = !DILocation(line: 1271, column: 14, scope: !2032)
!2065 = !DILocation(line: 1271, column: 23, scope: !2032)
!2066 = !DILocation(line: 1271, column: 33, scope: !2032)
!2067 = !DILocation(line: 1271, column: 42, scope: !2032)
!2068 = !DILocation(line: 1271, column: 51, scope: !2032)
!2069 = !DILocation(line: 1271, column: 60, scope: !2032)
!2070 = !DILocation(line: 1272, column: 14, scope: !2032)
!2071 = !DILocation(line: 1272, column: 23, scope: !2032)
!2072 = !DILocation(line: 1272, column: 33, scope: !2032)
!2073 = !DILocation(line: 1272, column: 42, scope: !2032)
!2074 = !DILocation(line: 1272, column: 51, scope: !2032)
!2075 = !DILocation(line: 1272, column: 60, scope: !2032)
!2076 = !DILocation(line: 1270, column: 9, scope: !2032)
!2077 = !DILocation(line: 1270, column: 7, scope: !2032)
!2078 = !DILocation(line: 1274, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 1274, column: 9)
!2080 = !DILocation(line: 1274, column: 11, scope: !2079)
!2081 = !DILocation(line: 1274, column: 9, scope: !2032)
!2082 = !DILocation(line: 1275, column: 13, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 1275, column: 13)
!2084 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1274, column: 16)
!2085 = !DILocation(line: 1275, column: 22, scope: !2083)
!2086 = !DILocation(line: 1275, column: 30, scope: !2083)
!2087 = !DILocation(line: 1275, column: 36, scope: !2083)
!2088 = !DILocation(line: 1275, column: 39, scope: !2083)
!2089 = !DILocation(line: 1275, column: 48, scope: !2083)
!2090 = !DILocation(line: 1275, column: 56, scope: !2083)
!2091 = !DILocation(line: 1275, column: 63, scope: !2083)
!2092 = !DILocation(line: 1275, column: 66, scope: !2083)
!2093 = !DILocation(line: 1275, column: 78, scope: !2083)
!2094 = !DILocation(line: 1275, column: 13, scope: !2084)
!2095 = !DILocalVariable(name: "tmp", scope: !2096, file: !3, line: 1279, type: !36)
!2096 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 1275, column: 85)
!2097 = !DILocation(line: 1279, column: 17, scope: !2096)
!2098 = !DILocation(line: 1280, column: 19, scope: !2096)
!2099 = !DILocation(line: 1280, column: 28, scope: !2096)
!2100 = !DILocation(line: 1280, column: 17, scope: !2096)
!2101 = !DILocation(line: 1281, column: 32, scope: !2096)
!2102 = !DILocation(line: 1281, column: 41, scope: !2096)
!2103 = !DILocation(line: 1281, column: 13, scope: !2096)
!2104 = !DILocation(line: 1281, column: 22, scope: !2096)
!2105 = !DILocation(line: 1281, column: 30, scope: !2096)
!2106 = !DILocation(line: 1282, column: 32, scope: !2096)
!2107 = !DILocation(line: 1282, column: 41, scope: !2096)
!2108 = !DILocation(line: 1282, column: 13, scope: !2096)
!2109 = !DILocation(line: 1282, column: 22, scope: !2096)
!2110 = !DILocation(line: 1282, column: 30, scope: !2096)
!2111 = !DILocation(line: 1283, column: 31, scope: !2096)
!2112 = !DILocation(line: 1283, column: 13, scope: !2096)
!2113 = !DILocation(line: 1283, column: 22, scope: !2096)
!2114 = !DILocation(line: 1283, column: 29, scope: !2096)
!2115 = !DILocation(line: 1284, column: 9, scope: !2096)
!2116 = !DILocation(line: 1287, column: 9, scope: !2084)
!2117 = !DILocation(line: 1287, column: 18, scope: !2084)
!2118 = !DILocation(line: 1287, column: 27, scope: !2084)
!2119 = !DILocation(line: 1288, column: 9, scope: !2084)
!2120 = !DILocation(line: 1288, column: 18, scope: !2084)
!2121 = !DILocation(line: 1288, column: 25, scope: !2084)
!2122 = !DILocation(line: 1289, column: 9, scope: !2084)
!2123 = !DILocation(line: 1289, column: 18, scope: !2084)
!2124 = !DILocation(line: 1289, column: 26, scope: !2084)
!2125 = !DILocation(line: 1290, column: 9, scope: !2084)
!2126 = !DILocation(line: 1293, column: 5, scope: !2032)
!2127 = !DILocation(line: 1294, column: 1, scope: !2032)
!2128 = distinct !DISubprogram(name: "ShowImageInfo", scope: !3, file: !3, line: 1301, type: !2129, scopeLine: 1302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !36}
!2131 = !DILocalVariable(name: "ShowFileInfo", arg: 1, scope: !2128, file: !3, line: 1301, type: !36)
!2132 = !DILocation(line: 1301, column: 24, scope: !2128)
!2133 = !DILocation(line: 1303, column: 9, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1303, column: 9)
!2135 = !DILocation(line: 1303, column: 9, scope: !2128)
!2136 = !DILocation(line: 1304, column: 9, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1303, column: 22)
!2138 = !DILocation(line: 1305, column: 54, scope: !2137)
!2139 = !DILocation(line: 1305, column: 9, scope: !2137)
!2140 = !DILocalVariable(name: "Temp", scope: !2141, file: !3, line: 1308, type: !2142)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1307, column: 9)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !2143)
!2143 = !{!2144}
!2144 = !DISubrange(count: 20)
!2145 = !DILocation(line: 1308, column: 18, scope: !2141)
!2146 = !DILocation(line: 1309, column: 30, scope: !2141)
!2147 = !DILocation(line: 1309, column: 13, scope: !2141)
!2148 = !DILocation(line: 1310, column: 42, scope: !2141)
!2149 = !DILocation(line: 1310, column: 13, scope: !2141)
!2150 = !DILocation(line: 1312, column: 5, scope: !2137)
!2151 = !DILocation(line: 1314, column: 9, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1314, column: 9)
!2153 = !DILocation(line: 1314, column: 9, scope: !2128)
!2154 = !DILocation(line: 1315, column: 9, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 1314, column: 33)
!2156 = !DILocation(line: 1316, column: 9, scope: !2155)
!2157 = !DILocation(line: 1317, column: 5, scope: !2155)
!2158 = !DILocation(line: 1318, column: 9, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1318, column: 9)
!2160 = !DILocation(line: 1318, column: 9, scope: !2128)
!2161 = !DILocation(line: 1319, column: 9, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 1318, column: 31)
!2163 = !DILocation(line: 1320, column: 5, scope: !2162)
!2164 = !DILocation(line: 1321, column: 49, scope: !2128)
!2165 = !DILocation(line: 1321, column: 66, scope: !2128)
!2166 = !DILocation(line: 1321, column: 5, scope: !2128)
!2167 = !DILocation(line: 1323, column: 19, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1323, column: 9)
!2169 = !DILocation(line: 1323, column: 31, scope: !2168)
!2170 = !DILocation(line: 1323, column: 35, scope: !2168)
!2171 = !DILocation(line: 1323, column: 48, scope: !2168)
!2172 = !DILocation(line: 1323, column: 60, scope: !2168)
!2173 = !DILocation(line: 1323, column: 9, scope: !2128)
!2174 = !DILocation(line: 1325, column: 59, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1323, column: 64)
!2176 = !DILocation(line: 1325, column: 39, scope: !2175)
!2177 = !DILocation(line: 1325, column: 9, scope: !2175)
!2178 = !DILocation(line: 1326, column: 5, scope: !2175)
!2179 = !DILocation(line: 1328, column: 19, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1328, column: 9)
!2181 = !DILocation(line: 1328, column: 27, scope: !2180)
!2182 = !DILocation(line: 1328, column: 9, scope: !2128)
!2183 = !DILocation(line: 1329, column: 9, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 1328, column: 32)
!2185 = !DILocation(line: 1330, column: 5, scope: !2184)
!2186 = !DILocation(line: 1332, column: 19, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1332, column: 9)
!2188 = !DILocation(line: 1332, column: 29, scope: !2187)
!2189 = !DILocation(line: 1332, column: 9, scope: !2128)
!2190 = !DILocation(line: 1333, column: 23, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 1333, column: 13)
!2192 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1332, column: 34)
!2193 = !DILocation(line: 1333, column: 33, scope: !2191)
!2194 = !DILocation(line: 1333, column: 13, scope: !2192)
!2195 = !DILocation(line: 1334, column: 13, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1333, column: 37)
!2197 = !DILocation(line: 1335, column: 31, scope: !2196)
!2198 = !DILocation(line: 1335, column: 13, scope: !2196)
!2199 = !DILocation(line: 1336, column: 24, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 1335, column: 41)
!2201 = !DILocation(line: 1336, column: 64, scope: !2200)
!2202 = !DILocation(line: 1337, column: 24, scope: !2200)
!2203 = !DILocation(line: 1337, column: 61, scope: !2200)
!2204 = !DILocation(line: 1338, column: 24, scope: !2200)
!2205 = !DILocation(line: 1338, column: 45, scope: !2200)
!2206 = !DILocation(line: 1339, column: 24, scope: !2200)
!2207 = !DILocation(line: 1339, column: 72, scope: !2200)
!2208 = !DILocation(line: 1340, column: 24, scope: !2200)
!2209 = !DILocation(line: 1340, column: 69, scope: !2200)
!2210 = !DILocation(line: 1341, column: 24, scope: !2200)
!2211 = !DILocation(line: 1341, column: 43, scope: !2200)
!2212 = !DILocation(line: 1342, column: 24, scope: !2200)
!2213 = !DILocation(line: 1342, column: 70, scope: !2200)
!2214 = !DILocation(line: 1343, column: 24, scope: !2200)
!2215 = !DILocation(line: 1343, column: 66, scope: !2200)
!2216 = !DILocation(line: 1344, column: 24, scope: !2200)
!2217 = !DILocation(line: 1344, column: 61, scope: !2200)
!2218 = !DILocation(line: 1345, column: 24, scope: !2200)
!2219 = !DILocation(line: 1345, column: 87, scope: !2200)
!2220 = !DILocation(line: 1346, column: 24, scope: !2200)
!2221 = !DILocation(line: 1346, column: 84, scope: !2200)
!2222 = !DILocation(line: 1347, column: 24, scope: !2200)
!2223 = !DILocation(line: 1347, column: 69, scope: !2200)
!2224 = !DILocation(line: 1348, column: 24, scope: !2200)
!2225 = !DILocation(line: 1348, column: 96, scope: !2200)
!2226 = !DILocation(line: 1349, column: 24, scope: !2200)
!2227 = !DILocation(line: 1349, column: 84, scope: !2200)
!2228 = !DILocation(line: 1350, column: 24, scope: !2200)
!2229 = !DILocation(line: 1350, column: 67, scope: !2200)
!2230 = !DILocation(line: 1351, column: 24, scope: !2200)
!2231 = !DILocation(line: 1351, column: 94, scope: !2200)
!2232 = !DILocation(line: 1352, column: 24, scope: !2200)
!2233 = !DILocation(line: 1352, column: 90, scope: !2200)
!2234 = !DILocation(line: 1354, column: 9, scope: !2196)
!2235 = !DILocation(line: 1355, column: 13, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1354, column: 14)
!2237 = !DILocation(line: 1356, column: 31, scope: !2236)
!2238 = !DILocation(line: 1356, column: 13, scope: !2236)
!2239 = !DILocation(line: 1357, column: 24, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 1356, column: 41)
!2241 = !DILocation(line: 1357, column: 43, scope: !2240)
!2242 = !DILocation(line: 1360, column: 9, scope: !2192)
!2243 = !DILocation(line: 1361, column: 5, scope: !2192)
!2244 = !DILocation(line: 1364, column: 19, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1364, column: 9)
!2246 = !DILocation(line: 1364, column: 9, scope: !2245)
!2247 = !DILocation(line: 1364, column: 9, scope: !2128)
!2248 = !DILocation(line: 1365, column: 59, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 1364, column: 31)
!2250 = !DILocation(line: 1365, column: 41, scope: !2249)
!2251 = !DILocation(line: 1365, column: 9, scope: !2249)
!2252 = !DILocation(line: 1366, column: 23, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1366, column: 13)
!2254 = !DILocation(line: 1366, column: 13, scope: !2253)
!2255 = !DILocation(line: 1366, column: 13, scope: !2249)
!2256 = !DILocation(line: 1367, column: 59, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 1366, column: 44)
!2258 = !DILocation(line: 1367, column: 13, scope: !2257)
!2259 = !DILocation(line: 1368, column: 9, scope: !2257)
!2260 = !DILocation(line: 1369, column: 9, scope: !2249)
!2261 = !DILocation(line: 1370, column: 5, scope: !2249)
!2262 = !DILocation(line: 1372, column: 19, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1372, column: 9)
!2264 = !DILocation(line: 1372, column: 36, scope: !2263)
!2265 = !DILocation(line: 1372, column: 9, scope: !2128)
!2266 = !DILocation(line: 1374, column: 61, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1372, column: 40)
!2268 = !DILocation(line: 1374, column: 43, scope: !2267)
!2269 = !DILocation(line: 1374, column: 9, scope: !2267)
!2270 = !DILocation(line: 1375, column: 5, scope: !2267)
!2271 = !DILocation(line: 1377, column: 19, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1377, column: 9)
!2273 = !DILocation(line: 1377, column: 9, scope: !2272)
!2274 = !DILocation(line: 1377, column: 9, scope: !2128)
!2275 = !DILocation(line: 1378, column: 61, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1377, column: 28)
!2277 = !DILocation(line: 1378, column: 43, scope: !2276)
!2278 = !DILocation(line: 1378, column: 9, scope: !2276)
!2279 = !DILocation(line: 1379, column: 5, scope: !2276)
!2280 = !DILocation(line: 1381, column: 19, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1381, column: 9)
!2282 = !DILocation(line: 1381, column: 9, scope: !2281)
!2283 = !DILocation(line: 1381, column: 9, scope: !2128)
!2284 = !DILocation(line: 1382, column: 23, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 1382, column: 13)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 1381, column: 32)
!2287 = !DILocation(line: 1382, column: 13, scope: !2285)
!2288 = !DILocation(line: 1382, column: 36, scope: !2285)
!2289 = !DILocation(line: 1382, column: 13, scope: !2286)
!2290 = !DILocation(line: 1383, column: 64, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 1382, column: 44)
!2292 = !DILocation(line: 1383, column: 46, scope: !2291)
!2293 = !DILocation(line: 1383, column: 13, scope: !2291)
!2294 = !DILocation(line: 1384, column: 9, scope: !2291)
!2295 = !DILocation(line: 1385, column: 64, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 1384, column: 14)
!2297 = !DILocation(line: 1385, column: 46, scope: !2296)
!2298 = !DILocation(line: 1385, column: 13, scope: !2296)
!2299 = !DILocation(line: 1387, column: 23, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 1387, column: 13)
!2301 = !DILocation(line: 1387, column: 13, scope: !2300)
!2302 = !DILocation(line: 1387, column: 36, scope: !2300)
!2303 = !DILocation(line: 1387, column: 13, scope: !2286)
!2304 = !DILocation(line: 1388, column: 54, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 1387, column: 43)
!2306 = !DILocation(line: 1388, column: 43, scope: !2305)
!2307 = !DILocation(line: 1388, column: 42, scope: !2305)
!2308 = !DILocation(line: 1388, column: 40, scope: !2305)
!2309 = !DILocation(line: 1388, column: 30, scope: !2305)
!2310 = !DILocation(line: 1388, column: 13, scope: !2305)
!2311 = !DILocation(line: 1389, column: 9, scope: !2305)
!2312 = !DILocation(line: 1390, column: 9, scope: !2286)
!2313 = !DILocation(line: 1391, column: 5, scope: !2286)
!2314 = !DILocation(line: 1392, column: 19, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1392, column: 9)
!2316 = !DILocation(line: 1392, column: 9, scope: !2315)
!2317 = !DILocation(line: 1392, column: 9, scope: !2128)
!2318 = !DILocation(line: 1393, column: 61, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 1392, column: 35)
!2320 = !DILocation(line: 1393, column: 43, scope: !2319)
!2321 = !DILocation(line: 1393, column: 9, scope: !2319)
!2322 = !DILocation(line: 1394, column: 5, scope: !2319)
!2323 = !DILocation(line: 1395, column: 19, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1395, column: 9)
!2325 = !DILocation(line: 1395, column: 9, scope: !2324)
!2326 = !DILocation(line: 1395, column: 9, scope: !2128)
!2327 = !DILocation(line: 1396, column: 23, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 1396, column: 13)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 1395, column: 28)
!2330 = !DILocation(line: 1396, column: 32, scope: !2328)
!2331 = !DILocation(line: 1396, column: 13, scope: !2329)
!2332 = !DILocation(line: 1397, column: 13, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 1396, column: 36)
!2334 = !DILocation(line: 1398, column: 9, scope: !2333)
!2335 = !DILocation(line: 1399, column: 64, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 1398, column: 14)
!2337 = !DILocation(line: 1399, column: 46, scope: !2336)
!2338 = !DILocation(line: 1399, column: 13, scope: !2336)
!2339 = !DILocation(line: 1401, column: 5, scope: !2329)
!2340 = !DILocation(line: 1403, column: 19, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1403, column: 9)
!2342 = !DILocation(line: 1403, column: 9, scope: !2341)
!2343 = !DILocation(line: 1403, column: 9, scope: !2128)
!2344 = !DILocation(line: 1404, column: 54, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 1403, column: 33)
!2346 = !DILocation(line: 1404, column: 9, scope: !2345)
!2347 = !DILocation(line: 1405, column: 5, scope: !2345)
!2348 = !DILocation(line: 1407, column: 19, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1407, column: 9)
!2350 = !DILocation(line: 1407, column: 9, scope: !2349)
!2351 = !DILocation(line: 1407, column: 9, scope: !2128)
!2352 = !DILocation(line: 1410, column: 59, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1407, column: 32)
!2354 = !DILocation(line: 1410, column: 41, scope: !2353)
!2355 = !DILocation(line: 1410, column: 9, scope: !2353)
!2356 = !DILocation(line: 1411, column: 5, scope: !2353)
!2357 = !DILocation(line: 1413, column: 22, scope: !2128)
!2358 = !DILocation(line: 1413, column: 5, scope: !2128)
!2359 = !DILocation(line: 1415, column: 13, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1413, column: 36)
!2361 = !DILocation(line: 1416, column: 13, scope: !2360)
!2362 = !DILocation(line: 1418, column: 13, scope: !2360)
!2363 = !DILocation(line: 1419, column: 13, scope: !2360)
!2364 = !DILocation(line: 1423, column: 22, scope: !2128)
!2365 = !DILocation(line: 1423, column: 5, scope: !2128)
!2366 = !DILocation(line: 1425, column: 13, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1423, column: 35)
!2368 = !DILocation(line: 1426, column: 13, scope: !2367)
!2369 = !DILocation(line: 1428, column: 13, scope: !2367)
!2370 = !DILocation(line: 1429, column: 13, scope: !2367)
!2371 = !DILocation(line: 1431, column: 13, scope: !2367)
!2372 = !DILocation(line: 1432, column: 13, scope: !2367)
!2373 = !DILocation(line: 1434, column: 13, scope: !2367)
!2374 = !DILocation(line: 1435, column: 13, scope: !2367)
!2375 = !DILocation(line: 1437, column: 13, scope: !2367)
!2376 = !DILocation(line: 1438, column: 13, scope: !2367)
!2377 = !DILocation(line: 1440, column: 13, scope: !2367)
!2378 = !DILocation(line: 1441, column: 13, scope: !2367)
!2379 = !DILocation(line: 1445, column: 5, scope: !2367)
!2380 = !DILocation(line: 1447, column: 19, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1447, column: 9)
!2382 = !DILocation(line: 1447, column: 32, scope: !2381)
!2383 = !DILocation(line: 1447, column: 9, scope: !2128)
!2384 = !DILocation(line: 1448, column: 9, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 1447, column: 36)
!2386 = !DILocation(line: 1449, column: 26, scope: !2385)
!2387 = !DILocation(line: 1449, column: 9, scope: !2385)
!2388 = !DILocation(line: 1450, column: 17, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 1449, column: 40)
!2390 = !DILocation(line: 1450, column: 38, scope: !2389)
!2391 = !DILocation(line: 1451, column: 17, scope: !2389)
!2392 = !DILocation(line: 1451, column: 44, scope: !2389)
!2393 = !DILocation(line: 1452, column: 17, scope: !2389)
!2394 = !DILocation(line: 1452, column: 35, scope: !2389)
!2395 = !DILocation(line: 1453, column: 17, scope: !2389)
!2396 = !DILocation(line: 1453, column: 42, scope: !2389)
!2397 = !DILocation(line: 1454, column: 17, scope: !2389)
!2398 = !DILocation(line: 1454, column: 38, scope: !2389)
!2399 = !DILocation(line: 1455, column: 17, scope: !2389)
!2400 = !DILocation(line: 1455, column: 39, scope: !2389)
!2401 = !DILocation(line: 1456, column: 19, scope: !2389)
!2402 = !DILocation(line: 1456, column: 39, scope: !2389)
!2403 = !DILocation(line: 1457, column: 52, scope: !2389)
!2404 = !DILocation(line: 1457, column: 18, scope: !2389)
!2405 = !DILocation(line: 1457, column: 67, scope: !2389)
!2406 = !DILocation(line: 1459, column: 5, scope: !2385)
!2407 = !DILocation(line: 1461, column: 19, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1461, column: 9)
!2409 = !DILocation(line: 1461, column: 9, scope: !2408)
!2410 = !DILocation(line: 1461, column: 9, scope: !2128)
!2411 = !DILocation(line: 1462, column: 26, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1461, column: 35)
!2413 = !DILocation(line: 1462, column: 9, scope: !2412)
!2414 = !DILocation(line: 1464, column: 13, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 1462, column: 43)
!2416 = !DILocation(line: 1465, column: 13, scope: !2415)
!2417 = !DILocation(line: 1467, column: 13, scope: !2415)
!2418 = !DILocation(line: 1468, column: 13, scope: !2415)
!2419 = !DILocation(line: 1470, column: 13, scope: !2415)
!2420 = !DILocation(line: 1471, column: 13, scope: !2415)
!2421 = !DILocation(line: 1473, column: 13, scope: !2415)
!2422 = !DILocation(line: 1474, column: 13, scope: !2415)
!2423 = !DILocation(line: 1476, column: 13, scope: !2415)
!2424 = !DILocation(line: 1477, column: 13, scope: !2415)
!2425 = !DILocation(line: 1479, column: 13, scope: !2415)
!2426 = !DILocation(line: 1480, column: 13, scope: !2415)
!2427 = !DILocation(line: 1482, column: 13, scope: !2415)
!2428 = !DILocation(line: 1483, column: 13, scope: !2415)
!2429 = !DILocation(line: 1485, column: 13, scope: !2415)
!2430 = !DILocation(line: 1486, column: 13, scope: !2415)
!2431 = !DILocation(line: 1488, column: 13, scope: !2415)
!2432 = !DILocation(line: 1490, column: 5, scope: !2412)
!2433 = !DILocation(line: 1491, column: 22, scope: !2128)
!2434 = !DILocation(line: 1491, column: 5, scope: !2128)
!2435 = !DILocation(line: 1493, column: 13, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1491, column: 35)
!2437 = !DILocation(line: 1494, column: 17, scope: !2436)
!2438 = !DILocation(line: 1495, column: 13, scope: !2436)
!2439 = !DILocation(line: 1496, column: 17, scope: !2436)
!2440 = !DILocation(line: 1497, column: 13, scope: !2436)
!2441 = !DILocation(line: 1500, column: 19, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1500, column: 9)
!2443 = !DILocation(line: 1500, column: 9, scope: !2442)
!2444 = !DILocation(line: 1500, column: 9, scope: !2128)
!2445 = !DILocation(line: 1501, column: 9, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1500, column: 34)
!2447 = !DILocation(line: 1502, column: 26, scope: !2446)
!2448 = !DILocation(line: 1502, column: 9, scope: !2446)
!2449 = !DILocation(line: 1504, column: 17, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1502, column: 41)
!2451 = !DILocation(line: 1505, column: 17, scope: !2450)
!2452 = !DILocation(line: 1507, column: 17, scope: !2450)
!2453 = !DILocation(line: 1508, column: 17, scope: !2450)
!2454 = !DILocation(line: 1510, column: 17, scope: !2450)
!2455 = !DILocation(line: 1511, column: 17, scope: !2450)
!2456 = !DILocation(line: 1513, column: 9, scope: !2446)
!2457 = !DILocation(line: 1514, column: 5, scope: !2446)
!2458 = !DILocation(line: 1518, column: 19, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1518, column: 9)
!2460 = !DILocation(line: 1518, column: 27, scope: !2459)
!2461 = !DILocation(line: 1518, column: 9, scope: !2128)
!2462 = !DILocalVariable(name: "a", scope: !2463, file: !3, line: 1521, type: !7)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1518, column: 37)
!2464 = !DILocation(line: 1521, column: 18, scope: !2463)
!2465 = !DILocation(line: 1522, column: 15, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1522, column: 9)
!2467 = !DILocation(line: 1522, column: 14, scope: !2466)
!2468 = !DILocation(line: 1523, column: 17, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1523, column: 17)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1522, column: 23)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1522, column: 9)
!2472 = !DILocation(line: 1523, column: 19, scope: !2469)
!2473 = !DILocation(line: 1523, column: 17, scope: !2470)
!2474 = !DILocation(line: 1525, column: 17, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 1523, column: 41)
!2476 = !DILocation(line: 1526, column: 17, scope: !2475)
!2477 = !DILocation(line: 1528, column: 30, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1528, column: 17)
!2479 = !DILocation(line: 1528, column: 17, scope: !2478)
!2480 = !DILocation(line: 1528, column: 33, scope: !2478)
!2481 = !DILocation(line: 1528, column: 50, scope: !2478)
!2482 = !DILocation(line: 1528, column: 37, scope: !2478)
!2483 = !DILocation(line: 1528, column: 17, scope: !2470)
!2484 = !DILocation(line: 1529, column: 59, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1528, column: 58)
!2486 = !DILocation(line: 1529, column: 46, scope: !2485)
!2487 = !DILocation(line: 1529, column: 62, scope: !2485)
!2488 = !DILocation(line: 1529, column: 17, scope: !2485)
!2489 = !DILocation(line: 1530, column: 17, scope: !2485)
!2490 = !DILocation(line: 1532, column: 9, scope: !2470)
!2491 = !DILocation(line: 1522, column: 20, scope: !2471)
!2492 = !DILocation(line: 1522, column: 9, scope: !2471)
!2493 = distinct !{!2493, !2494, !2495}
!2494 = !DILocation(line: 1522, column: 9, scope: !2466)
!2495 = !DILocation(line: 1532, column: 9, scope: !2466)
!2496 = !DILocation(line: 1533, column: 5, scope: !2463)
!2497 = !DILocation(line: 1535, column: 19, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1535, column: 9)
!2499 = !DILocation(line: 1535, column: 9, scope: !2498)
!2500 = !DILocation(line: 1535, column: 9, scope: !2128)
!2501 = !DILocation(line: 1536, column: 9, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1535, column: 34)
!2503 = !DILocation(line: 1537, column: 9, scope: !2502)
!2504 = !DILocation(line: 1538, column: 13, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 1538, column: 13)
!2506 = !DILocation(line: 1538, column: 13, scope: !2502)
!2507 = !DILocation(line: 1538, column: 34, scope: !2505)
!2508 = !DILocation(line: 1539, column: 5, scope: !2502)
!2509 = !DILocation(line: 1541, column: 19, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1541, column: 9)
!2511 = !DILocation(line: 1541, column: 9, scope: !2510)
!2512 = !DILocation(line: 1541, column: 9, scope: !2128)
!2513 = !DILocation(line: 1542, column: 49, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1541, column: 32)
!2515 = !DILocation(line: 1542, column: 9, scope: !2514)
!2516 = !DILocation(line: 1543, column: 5, scope: !2514)
!2517 = !DILocation(line: 1546, column: 9, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1546, column: 9)
!2519 = !DILocation(line: 1546, column: 9, scope: !2128)
!2520 = !DILocalVariable(name: "a", scope: !2521, file: !3, line: 1547, type: !36)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 1546, column: 31)
!2522 = !DILocation(line: 1547, column: 13, scope: !2521)
!2523 = !DILocalVariable(name: "c", scope: !2521, file: !3, line: 1547, type: !36)
!2524 = !DILocation(line: 1547, column: 15, scope: !2521)
!2525 = !DILocation(line: 1548, column: 9, scope: !2521)
!2526 = !DILocation(line: 1549, column: 24, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1549, column: 13)
!2528 = !DILocation(line: 1549, column: 14, scope: !2527)
!2529 = !DILocation(line: 1549, column: 13, scope: !2521)
!2530 = !DILocation(line: 1550, column: 19, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 1550, column: 13)
!2532 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1549, column: 42)
!2533 = !DILocation(line: 1550, column: 18, scope: !2531)
!2534 = !DILocation(line: 1550, column: 22, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 1550, column: 13)
!2536 = !DILocation(line: 1550, column: 23, scope: !2535)
!2537 = !DILocation(line: 1550, column: 13, scope: !2531)
!2538 = !DILocation(line: 1551, column: 40, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1550, column: 45)
!2540 = !DILocation(line: 1551, column: 21, scope: !2539)
!2541 = !DILocation(line: 1551, column: 19, scope: !2539)
!2542 = !DILocation(line: 1552, column: 21, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 1552, column: 21)
!2544 = !DILocation(line: 1552, column: 23, scope: !2543)
!2545 = !DILocation(line: 1552, column: 21, scope: !2539)
!2546 = !DILocation(line: 1552, column: 32, scope: !2543)
!2547 = !DILocation(line: 1553, column: 21, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 1553, column: 21)
!2549 = !DILocation(line: 1553, column: 23, scope: !2548)
!2550 = !DILocation(line: 1553, column: 21, scope: !2539)
!2551 = !DILocation(line: 1555, column: 44, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 1555, column: 25)
!2553 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 1553, column: 31)
!2554 = !DILocation(line: 1555, column: 45, scope: !2552)
!2555 = !DILocation(line: 1555, column: 25, scope: !2552)
!2556 = !DILocation(line: 1555, column: 49, scope: !2552)
!2557 = !DILocation(line: 1555, column: 25, scope: !2553)
!2558 = !DILocation(line: 1556, column: 25, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1555, column: 57)
!2560 = !DILocation(line: 1557, column: 21, scope: !2559)
!2561 = !DILocation(line: 1558, column: 25, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1557, column: 26)
!2563 = !DILocation(line: 1560, column: 17, scope: !2553)
!2564 = !DILocation(line: 1561, column: 29, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 1560, column: 22)
!2566 = !DILocation(line: 1561, column: 21, scope: !2565)
!2567 = !DILocation(line: 1563, column: 13, scope: !2539)
!2568 = !DILocation(line: 1550, column: 42, scope: !2535)
!2569 = !DILocation(line: 1550, column: 13, scope: !2535)
!2570 = distinct !{!2570, !2537, !2571, !332}
!2571 = !DILocation(line: 1563, column: 13, scope: !2531)
!2572 = !DILocation(line: 1564, column: 13, scope: !2532)
!2573 = !DILocation(line: 1565, column: 9, scope: !2532)
!2574 = !DILocation(line: 1566, column: 41, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1565, column: 14)
!2576 = !DILocation(line: 1566, column: 13, scope: !2575)
!2577 = !DILocation(line: 1568, column: 5, scope: !2521)
!2578 = !DILocation(line: 1569, column: 1, scope: !2128)
!2579 = distinct !DISubprogram(name: "ShowConciseImageInfo", scope: !3, file: !3, line: 1575, type: !433, scopeLine: 1576, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!2580 = !DILocation(line: 1577, column: 5, scope: !2579)
!2581 = !DILocation(line: 1579, column: 31, scope: !2579)
!2582 = !DILocation(line: 1579, column: 48, scope: !2579)
!2583 = !DILocation(line: 1579, column: 5, scope: !2579)
!2584 = !DILocation(line: 1581, column: 19, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1581, column: 9)
!2586 = !DILocation(line: 1581, column: 9, scope: !2585)
!2587 = !DILocation(line: 1581, column: 9, scope: !2579)
!2588 = !DILocation(line: 1582, column: 23, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1582, column: 13)
!2590 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1581, column: 32)
!2591 = !DILocation(line: 1582, column: 13, scope: !2589)
!2592 = !DILocation(line: 1582, column: 36, scope: !2589)
!2593 = !DILocation(line: 1582, column: 13, scope: !2590)
!2594 = !DILocation(line: 1583, column: 54, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 1582, column: 43)
!2596 = !DILocation(line: 1583, column: 43, scope: !2595)
!2597 = !DILocation(line: 1583, column: 42, scope: !2595)
!2598 = !DILocation(line: 1583, column: 40, scope: !2595)
!2599 = !DILocation(line: 1583, column: 30, scope: !2595)
!2600 = !DILocation(line: 1583, column: 13, scope: !2595)
!2601 = !DILocation(line: 1584, column: 9, scope: !2595)
!2602 = !DILocation(line: 1585, column: 41, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 1584, column: 14)
!2604 = !DILocation(line: 1585, column: 31, scope: !2603)
!2605 = !DILocation(line: 1585, column: 13, scope: !2603)
!2606 = !DILocation(line: 1587, column: 5, scope: !2590)
!2607 = !DILocation(line: 1589, column: 19, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1589, column: 9)
!2609 = !DILocation(line: 1589, column: 9, scope: !2608)
!2610 = !DILocation(line: 1589, column: 9, scope: !2579)
!2611 = !DILocation(line: 1590, column: 45, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 1589, column: 35)
!2613 = !DILocation(line: 1590, column: 27, scope: !2612)
!2614 = !DILocation(line: 1590, column: 9, scope: !2612)
!2615 = !DILocation(line: 1591, column: 5, scope: !2612)
!2616 = !DILocation(line: 1593, column: 19, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1593, column: 9)
!2618 = !DILocation(line: 1593, column: 9, scope: !2617)
!2619 = !DILocation(line: 1593, column: 9, scope: !2579)
!2620 = !DILocation(line: 1594, column: 40, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 1593, column: 40)
!2622 = !DILocation(line: 1594, column: 9, scope: !2621)
!2623 = !DILocation(line: 1595, column: 5, scope: !2621)
!2624 = !DILocation(line: 1597, column: 19, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1597, column: 9)
!2626 = !DILocation(line: 1597, column: 29, scope: !2625)
!2627 = !DILocation(line: 1597, column: 34, scope: !2625)
!2628 = !DILocation(line: 1597, column: 47, scope: !2625)
!2629 = !DILocation(line: 1597, column: 57, scope: !2625)
!2630 = !DILocation(line: 1597, column: 9, scope: !2579)
!2631 = !DILocation(line: 1598, column: 9, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1597, column: 61)
!2633 = !DILocation(line: 1599, column: 5, scope: !2632)
!2634 = !DILocation(line: 1601, column: 19, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1601, column: 9)
!2636 = !DILocation(line: 1601, column: 27, scope: !2635)
!2637 = !DILocation(line: 1601, column: 9, scope: !2579)
!2638 = !DILocation(line: 1602, column: 9, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 1601, column: 32)
!2640 = !DILocation(line: 1603, column: 5, scope: !2639)
!2641 = !DILocation(line: 1605, column: 5, scope: !2579)
!2642 = !DILocation(line: 1606, column: 1, scope: !2579)
