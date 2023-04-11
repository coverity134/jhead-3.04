; ModuleID = 'jhead.c'
source_filename = "jhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ImageInfo_t = type { [4097 x i8], i64, %struct.anon, i32, [32 x i8], [40 x i8], [20 x i8], i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [16000 x i8], i32, i32, i32, i32, i8, i32, [10 x i32], i32, i32, [31 x i8], [31 x i8], [20 x i8], i32 }
%struct.anon = type { i8, i8, i16, i16 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Section_t = type { i8*, i32, i32 }
%struct.utimbuf = type { i64, i64 }

@ShowTags = dso_local global i32 0, align 4, !dbg !0
@DumpExifMap = dso_local global i32 0, align 4, !dbg !38
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"\0AError : %s\0A\00", align 1
@CurrentFile = internal global i8* null, align 8, !dbg !44
@.str.1 = private unnamed_addr constant [14 x i8] c"in file '%s'\0A\00", align 1
@SuppressNonFatalErrors = internal global i32 0, align 4, !dbg !55
@.str.2 = private unnamed_addr constant [19 x i8] c"\0ANonfatal Error : \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"'%s' \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ImageInfo = external dso_local global %struct.ImageInfo_t, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"%Y:%m:%d %H:%M:%S\00", align 1
@progname = internal global i8* null, align 8, !dbg !48
@.str.6 = private unnamed_addr constant [4 x i8] c"-te\00", align 1
@ExifXferScrFile = internal global i8* null, align 8, !dbg !57
@DoModify = internal global i32 0, align 4, !dbg !59
@.str.7 = private unnamed_addr constant [4 x i8] c"-dc\00", align 1
@DeleteComments = internal global i32 0, align 4, !dbg !61
@.str.8 = private unnamed_addr constant [4 x i8] c"-de\00", align 1
@DeleteExif = internal global i32 0, align 4, !dbg !63
@.str.9 = private unnamed_addr constant [4 x i8] c"-di\00", align 1
@DeleteIptc = internal global i32 0, align 4, !dbg !65
@.str.10 = private unnamed_addr constant [4 x i8] c"-dx\00", align 1
@DeleteXmp = internal global i32 0, align 4, !dbg !67
@.str.11 = private unnamed_addr constant [4 x i8] c"-du\00", align 1
@DeleteUnknown = internal global i32 0, align 4, !dbg !69
@.str.12 = private unnamed_addr constant [9 x i8] c"-purejpg\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"-ce\00", align 1
@EditComment = internal global i32 0, align 4, !dbg !71
@.str.14 = private unnamed_addr constant [4 x i8] c"-cs\00", align 1
@CommentSavefileName = internal global i8* null, align 8, !dbg !73
@.str.15 = private unnamed_addr constant [4 x i8] c"-ci\00", align 1
@CommentInsertfileName = internal global i8* null, align 8, !dbg !75
@.str.16 = private unnamed_addr constant [4 x i8] c"-cl\00", align 1
@CommentInsertLiteral = internal global i8* null, align 8, !dbg !77
@.str.17 = private unnamed_addr constant [4 x i8] c"-zt\00", align 1
@TrimExifTrailingZeroes = internal global i32 0, align 4, !dbg !79
@.str.18 = private unnamed_addr constant [8 x i8] c"-mkexif\00", align 1
@CreateExifSection = internal global i32 0, align 4, !dbg !81
@.str.19 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@Quiet = internal global i32 0, align 4, !dbg !83
@.str.22 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Jhead version: 3.04\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"-exifmap\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"-se\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@ShowConcise = internal global i32 0, align 4, !dbg !85
@.str.27 = private unnamed_addr constant [9 x i8] c"-nofinfo\00", align 1
@ShowFileInfo = internal global i32 1, align 4, !dbg !87
@.str.28 = private unnamed_addr constant [4 x i8] c"-dt\00", align 1
@TrimExif = internal global i32 0, align 4, !dbg !89
@.str.29 = private unnamed_addr constant [4 x i8] c"-st\00", align 1
@ThumbSaveName = internal global i8* null, align 8, !dbg !91
@.str.30 = private unnamed_addr constant [4 x i8] c"-rt\00", align 1
@ThumbInsertName = internal global i8* null, align 8, !dbg !93
@.str.31 = private unnamed_addr constant [5 x i8] c"-rgt\00", align 1
@RegenThumbnail = internal global i32 0, align 4, !dbg !95
@.str.32 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Specified thumbnail geometry too big!\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"-autorot\00", align 1
@AutoRotate = internal global i32 0, align 4, !dbg !97
@.str.35 = private unnamed_addr constant [7 x i8] c"-norot\00", align 1
@ZeroRotateTagOnly = internal global i32 0, align 4, !dbg !99
@.str.36 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@RenameToDate = internal global i32 0, align 4, !dbg !101
@strftime_args = internal global i8* null, align 8, !dbg !103
@.str.37 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"Error: -a only supported in Windows version\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"-ft\00", align 1
@Exif2FileTime = internal global i32 0, align 4, !dbg !105
@.str.40 = private unnamed_addr constant [4 x i8] c"-ta\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"Error: -ta must be followed by +/- and a time\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"%d:%d:%d\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"Error: -ta must be immediately followed by time\00", align 1
@ExifTimeAdjust = internal global i64 0, align 8, !dbg !107
@.str.44 = private unnamed_addr constant [47 x i8] c"Can only use one of -da or -ta options at once\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"-da\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"Must specify second date for -da option\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"-dsft\00", align 1
@FileTimeToExif = internal global i32 0, align 4, !dbg !114
@.str.49 = private unnamed_addr constant [4 x i8] c"-ds\00", align 1
@DateSet = internal global [11 x i8] zeroinitializer, align 1, !dbg !50
@.str.50 = private unnamed_addr constant [11 x i8] c"0000:01:01\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"Date must be in format YYYY, YYYY:MM, or YYYY:MM:DD\00", align 1
@DateSetChars = internal global i32 0, align 4, !dbg !116
@.str.52 = private unnamed_addr constant [4 x i8] c"-ts\00", align 1
@.str.53 = private unnamed_addr constant [112 x i8] c"-ts option must be followed by time in format yyyy:mm:dd-hh:mm:ss\0AExample: jhead -ts2001:01:01-12:00:00 foo.jpg\00", align 1
@ExifTimeSet = internal global i64 0, align 8, !dbg !118
@.str.54 = private unnamed_addr constant [31 x i8] c"Time specified is out of range\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"-tf\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"Could not read file\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"-model\00", align 1
@FilterModel = internal global i8* null, align 8, !dbg !120
@.str.58 = private unnamed_addr constant [9 x i8] c"-quality\00", align 1
@FilterQuality = internal global i32 0, align 4, !dbg !122
@.str.59 = private unnamed_addr constant [8 x i8] c"-exonly\00", align 1
@ExifOnly = internal global i32 0, align 4, !dbg !124
@.str.60 = private unnamed_addr constant [5 x i8] c"-orp\00", align 1
@PortraitOnly = internal global i32 0, align 4, !dbg !126
@.str.61 = private unnamed_addr constant [5 x i8] c"-orl\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"-cmd\00", align 1
@ApplyCommand = internal global i8* null, align 8, !dbg !128
@.str.63 = private unnamed_addr constant [30 x i8] c"Argument '%s' not understood\0A\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"Use jhead -h for list of arguments\0A\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"Extra argument required\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"No files to process.  Use -h for help\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"&i\00", align 1
@.str.68 = private unnamed_addr constant [182 x i8] c"Error: By specifying \22&i\22 for the thumbail name, your original file\0A       will be overwritten.  If this is what you really want,\0A       specify  -st \22./&i\22  to override this check\0A\00", align 1
@.str.69 = private unnamed_addr constant [62 x i8] c"Error: Cannot regen and save or insert thumbnail in same run\0A\00", align 1
@.str.70 = private unnamed_addr constant [61 x i8] c"Error: Cannot use -ce option in combination with -cs or -ci\0A\00", align 1
@.str.71 = private unnamed_addr constant [99 x i8] c"Error: Filter by model and/or applying command to files\0A   invalid while transferring Exif headers\00", align 1
@FileSequence = internal global i32 0, align 4, !dbg !42
@FilesMatched = internal global i32 0, align 4, !dbg !40
@.str.72 = private unnamed_addr constant [30 x i8] c"Error: No files matched '%s'\0A\00", align 1
@.str.73 = private unnamed_addr constant [187 x i8] c"Jhead is a program for manipulating settings and thumbnails in Exif jpeg headers\0Aused by most Digital Cameras.  v3.04 Matthias Wandel, Nov 22 2019.\0Ahttp://www.sentex.net/~mwandel/jhead\0A\0A\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"Usage: %s [options] files\0A\00", align 1
@.str.75 = private unnamed_addr constant [7038 x i8] c"Where:\0A files       path/filenames with or without wildcards\0A[options] are:\0A\0AGENERAL METADATA:\0A  -te <name> Transfer exif header from another image file <name>\0A             Uses same name mangling as '-st' option\0A  -dc        Delete comment field (as left by progs like Photoshop & Compupic)\0A  -de        Strip Exif section (smaller JPEG file, but lose digicam info)\0A  -di        Delete IPTC section (from Photoshop, or Picasa)\0A  -dx        Deletex XMP section\0A  -du        Delete non image sections except for Exif and comment sections\0A  -purejpg   Strip all unnecessary data from jpeg (combines -dc -de and -du)\0A  -mkexif    Create new minimal exif section (overwrites pre-existing exif)\0A  -ce        Edit comment field.  Uses environment variable 'editor' to\0A             determine which editor to use.  If editor not set, uses VI\0A             under Unix and notepad with windows\0A  -cs <name> Save comment section to a file\0A  -ci <name> Insert comment section from a file.  -cs and -ci use same naming\0A             scheme as used by the -st option\0A  -cl string Insert literal comment string\0A  -zt        Trim exif header trailing zeroes (Nikon 1 wastes 30k that way)\0A\0ADATE / TIME MANIPULATION:\0A  -ft        Set file modification time to Exif time\0A  -dsft      Set Exif time to file modification time\0A  -n[format-string]\0A             Rename files according to date.  Uses exif date if present, file\0A             date otherwise.  If the optional format-string is not supplied,\0A             the format is mmdd-hhmmss.  If a format-string is given, it is\0A             is passed to the 'strftime' function for formatting\0A             %%d Day of month    %%H Hour (24-hour)\0A             %%m Month number    %%M Minute    %%S Second\0A             %%y Year (2 digit 00 - 99)        %%Y Year (4 digit 1980-2036)\0A             For more arguments, look up the 'strftime' function.\0A             In addition to strftime format codes:\0A             '%%f' as part of the string will include the original file name\0A             '%%i' will include a sequence number, starting from 1. You can\0A             You can specify '%%03i' for example to get leading zeros.\0A             This feature is useful for ordering files from multiple digicams to\0A             sequence of taking.\0A             The '.jpg' is automatically added to the end of the name.  If the\0A             destination name already exists, a letter or digit is added to \0A             the end of the name to make it unique.\0A             The new name may include a path as part of the name.  If this path\0A             does not exist, it will be created\0A  -a         (Windows only) Rename files with same name but different extension\0A             Use together with -n to rename .AVI files from exif in .THM files\0A             for example\0A  -ta<+|->h[:mm[:ss]]\0A             Adjust time by h:mm forwards or backwards.  Useful when having\0A             taken pictures with the wrong time set on the camera, such as when\0A             traveling across time zones or DST changes. Dates can be adjusted\0A             by offsetting by 24 hours or more.  For large date adjustments,\0A             use the -da option\0A  -da<date>-<date>\0A             Adjust date by large amounts.  This is used to fix photos from\0A             cameras where the date got set back to the default camera date\0A             by accident or battery removal.\0A             To deal with different months and years having different numbers of\0A             days, a simple date-month-year offset would result in unexpected\0A             results.  Instead, the difference is specified as desired date\0A             minus original date.  Date is specified as yyyy:mm:dd or as date\0A             and time in the format yyyy:mm:dd/hh:mm:ss\0A  -ts<time>  Set the Exif internal time to <time>.  <time> is in the format\0A             yyyy:mm:dd-hh:mm:ss\0A  -tf file   Set the exif time to the modicfation time from another file\0A  -ds<date>  Set the Exif internal date.  <date> is in the format YYYY:MM:DD\0A             or YYYY:MM or YYYY\0A\0ATHUMBNAIL MANIPULATION:\0A  -dt        Remove exif integral thumbnails.   Typically trims 10k\0A  -st <name> Save Exif thumbnail, if there is one, in file <name>\0A             If output file name contains the substring \22&i\22 then the\0A             image file name is substitute for the &i.  Note that quotes around\0A             the argument are required for the '&' to be passed to the program.\0A             An output name of '-' causes thumbnail to be written to stdout\0A  -rt <name> Replace Exif thumbnail.  Can only be done with headers that\0A             already contain a thumbnail.\0A  -rgt[size] Regnerate exif thumbnail.  Only works if image already\0A             contains a thumbail.  size specifies maximum height or width of\0A             thumbnail.  Relies on 'mogrify' programs to be on path\0A\0AROTATION TAG MANIPULATION:\0A  -autorot   Invoke jpegtran to rotate images according to Exif orientation tag\0A             anc clear Exif orientation tag\0A             Note: Windows users must get jpegtran for this to work\0A  -norot     Zero out the rotation tag.  This to avoid some browsers from\0A             rotating the image again after you rotated it but neglected to\0A             clear the rotation tag\0A\0AOUTPUT VERBOSITY CONTROL:\0A  -h         help (this text)\0A  -v         even more verbose output\0A  -q         Quiet (no messages on success, like Unix)\0A  -V         Show jhead version\0A  -exifmap   Dump header bytes, annotate.  Pipe thru sort for better viewing\0A  -se        Suppress error messages relating to corrupt exif header structure\0A  -c         concise output\0A  -nofinfo   Don't show file info (name/size/date)\0A\0AFILE MATCHING AND SELECTION:\0A  -model model\0A             Only process files from digicam containing model substring in\0A             camera model description\0A  -exonly    Skip all files that don't have an exif header (skip all jpegs that\0A             were not created by digicam)\0A  -quality x Only work on images with JPEG quality factor x or higher\0A  -cmd command\0A             Apply 'command' to every file, then re-insert exif and command\0A             sections into the image. &i will be substituted for the input file\0A             name, and &o (if &o is used). Use quotes around the command string\0A             This is most useful in conjunction with the free ImageMagick tool. \0A             For example, with my Canon S100, which suboptimally compresses\0A             jpegs I can specify\0A                jhead -cmd \22mogrify -quality 80 &i\22 *.jpg\0A             to re-compress a lot of images using ImageMagick to half the size,\0A             and no visible loss of quality while keeping the exif header\0A             Another invocation I like to use is jpegtran (hard to find for\0A             windows).  I type:\0A                jhead -cmd \22jpegtran -progressive &i &o\22 *.jpg\0A             to convert jpegs to progressive jpegs (Unix jpegtran syntax\0A             differs slightly)\0A  -orp       Only operate on 'portrait' aspect ratio images\0A  -orl       Only operate on 'landscape' aspect ratio images\0A\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"%d:%d:%d/%d:%d:%d\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"Could not parse specified date\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"Specified time is invalid or out of range\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"filename too long\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"No such file\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"Skipping readonly file '%s'\0A\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"Trimming %d bytes from exif in %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"Created: '%s'\0A\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"Truncating comment at %d chars\0A\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"Could not open '%s'\0A\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"Comment not modified\0A\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"Could not write comment file\00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c"File '%s' contains no comment section\0A\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"%04d:%02d:%02d %02d:%02d:%02d\00", align 1
@.str.93 = private unnamed_addr constant [48 x i8] c"File '%s' contains no Exif timestamp to change\0A\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"Modified: %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c".t\00", align 1
@.str.96 = private unnamed_addr constant [43 x i8] c"Error: Could not change time of file '%s'\0A\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.98 = private unnamed_addr constant [38 x i8] c"File '%s' contains no Exif timestamp\0A\00", align 1
@.str.99 = private unnamed_addr constant [47 x i8] c"Error: Time '%s': cannot convert to Unix time\0A\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"jpegtran -trim -%s -outfile &o &i\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c".thi\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c".tho\00", align 1
@.str.103 = private unnamed_addr constant [38 x i8] c"jpegtran -trim -%s -outfile \22%s\22 \22%s\22\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"Cannot find available temporary file name\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"Cmd:%s\0A\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.108 = private unnamed_addr constant [36 x i8] c"Problem executing specified command\00", align 1
@.str.109 = private unnamed_addr constant [55 x i8] c"specified command did not produce expected output file\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"max path exceeded\00", align 1
@.str.111 = private unnamed_addr constant [42 x i8] c"mogrify -thumbnail %dx%d -quality 80 \22%s\22\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"Unable to run 'mogrify' command\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"Can't create file '%s'\0A\00", align 1
@.str.114 = private unnamed_addr constant [32 x i8] c"could not create temporary file\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.115 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"env too long\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"%s \22%s\22\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"Editor failed to launch\00", align 1
@.str.120 = private unnamed_addr constant [34 x i8] c"could not open temp file for read\00", align 1
@.str.121 = private unnamed_addr constant [57 x i8] c"File '%s' contains no exif date stamp.  Using file date\0A\00", align 1
@.str.122 = private unnamed_addr constant [34 x i8] c"Could not convert %s to unix time\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"str overflow\00", align 1
@.str.125 = private unnamed_addr constant [22 x i8] c"%02d%02d-%02d%02d%02d\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"%s%s.jpg\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"%s --> %s\0A\00", align 1
@.str.128 = private unnamed_addr constant [37 x i8] c"Error: Couldn't rename '%s' to '%s'\0A\00", align 1
@.str.129 = private unnamed_addr constant [47 x i8] c"Possible new names for for '%s' already exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @ErrFatal(i8* %msg) #0 !dbg !134 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !140
  %1 = load i8*, i8** %msg.addr, align 8, !dbg !141
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %1), !dbg !142
  %2 = load i8*, i8** @CurrentFile, align 8, !dbg !143
  %tobool = icmp ne i8* %2, null, !dbg !143
  br i1 %tobool, label %if.then, label %if.end, !dbg !145

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !146
  %4 = load i8*, i8** @CurrentFile, align 8, !dbg !147
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %4), !dbg !148
  br label %if.end, !dbg !148

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 1) #9, !dbg !149
  unreachable, !dbg !149
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @ErrNonfatal(i8* %msg, i32 %a1, i32 %a2) #0 !dbg !150 {
entry:
  %msg.addr = alloca i8*, align 8
  %a1.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  store i8* %msg, i8** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !153, metadata !DIExpression()), !dbg !154
  store i32 %a1, i32* %a1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a1.addr, metadata !155, metadata !DIExpression()), !dbg !156
  store i32 %a2, i32* %a2.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a2.addr, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = load i32, i32* @SuppressNonFatalErrors, align 4, !dbg !159
  %tobool = icmp ne i32 %0, 0, !dbg !159
  br i1 %tobool, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %entry
  br label %return, !dbg !162

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !163
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)), !dbg !164
  %2 = load i8*, i8** @CurrentFile, align 8, !dbg !165
  %tobool1 = icmp ne i8* %2, null, !dbg !165
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !167

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !168
  %4 = load i8*, i8** @CurrentFile, align 8, !dbg !169
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %4), !dbg !170
  br label %if.end4, !dbg !170

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !171
  %6 = load i8*, i8** %msg.addr, align 8, !dbg !172
  %7 = load i32, i32* %a1.addr, align 4, !dbg !173
  %8 = load i32, i32* %a2.addr, align 4, !dbg !174
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* %6, i32 %7, i32 %8), !dbg !175
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !176
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !177
  br label %return, !dbg !178

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !178
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @FileTimeAsString(i8* %TimeStr) #0 !dbg !179 {
entry:
  %TimeStr.addr = alloca i8*, align 8
  %ts = alloca %struct.tm, align 8
  store i8* %TimeStr, i8** %TimeStr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %TimeStr.addr, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata %struct.tm* %ts, metadata !184, metadata !DIExpression()), !dbg !199
  %call = call %struct.tm* @localtime(i64* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 1)) #10, !dbg !200
  %0 = bitcast %struct.tm* %ts to i8*, !dbg !201
  %1 = bitcast %struct.tm* %call to i8*, !dbg !201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 56, i1 false), !dbg !201
  %2 = load i8*, i8** %TimeStr.addr, align 8, !dbg !202
  %call1 = call i64 @strftime(i8* %2, i64 20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), %struct.tm* %ts) #10, !dbg !203
  ret void, !dbg !204
}

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i64 @strftime(i8*, i64, i8*, %struct.tm*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !205 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argn = alloca i32, align 4
  %arg = alloca i8*, align 8
  %hours = alloca i32, align 4
  %minutes = alloca i32, align 4
  %seconds = alloca i32, align 4
  %n = alloca i32, align 4
  %NewDate = alloca i64, align 8
  %OldDate = alloca i64, align 8
  %pOldDate = alloca i8*, align 8
  %a = alloca i32, align 4
  %c = alloca i8*, align 8
  %tm = alloca %struct.tm, align 8
  %stat_buf = alloca %struct.stat, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !209, metadata !DIExpression()), !dbg !210
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %argn, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i8** %arg, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i8**, i8*** %argv.addr, align 8, !dbg !217
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !217
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !217
  store i8* %1, i8** @progname, align 8, !dbg !218
  store i32 1, i32* %argn, align 4, !dbg !219
  br label %for.cond, !dbg !221

for.cond:                                         ; preds = %for.inc422, %entry
  %2 = load i32, i32* %argn, align 4, !dbg !222
  %3 = load i32, i32* %argc.addr, align 4, !dbg !224
  %cmp = icmp slt i32 %2, %3, !dbg !225
  br i1 %cmp, label %for.body, label %for.end424, !dbg !226

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !227
  %5 = load i32, i32* %argn, align 4, !dbg !229
  %idxprom = sext i32 %5 to i64, !dbg !227
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 %idxprom, !dbg !227
  %6 = load i8*, i8** %arrayidx1, align 8, !dbg !227
  store i8* %6, i8** %arg, align 8, !dbg !230
  %7 = load i8*, i8** %arg, align 8, !dbg !231
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !231
  %8 = load i8, i8* %arrayidx2, align 1, !dbg !231
  %conv = sext i8 %8 to i32, !dbg !231
  %cmp3 = icmp ne i32 %conv, 45, !dbg !233
  br i1 %cmp3, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %for.body
  br label %for.end424, !dbg !235

if.end:                                           ; preds = %for.body
  %9 = load i8*, i8** %arg, align 8, !dbg !236
  %call = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !238
  %tobool = icmp ne i32 %call, 0, !dbg !238
  br i1 %tobool, label %if.else, label %if.then5, !dbg !239

if.then5:                                         ; preds = %if.end
  %10 = load i8**, i8*** %argv.addr, align 8, !dbg !240
  %11 = load i32, i32* %argn, align 4, !dbg !242
  %inc = add nsw i32 %11, 1, !dbg !242
  store i32 %inc, i32* %argn, align 4, !dbg !242
  %idxprom6 = sext i32 %inc to i64, !dbg !240
  %arrayidx7 = getelementptr inbounds i8*, i8** %10, i64 %idxprom6, !dbg !240
  %12 = load i8*, i8** %arrayidx7, align 8, !dbg !240
  store i8* %12, i8** @ExifXferScrFile, align 8, !dbg !243
  %13 = load i32, i32* @DoModify, align 4, !dbg !244
  %or = or i32 %13, 5, !dbg !244
  store i32 %or, i32* @DoModify, align 4, !dbg !244
  br label %if.end417, !dbg !245

if.else:                                          ; preds = %if.end
  %14 = load i8*, i8** %arg, align 8, !dbg !246
  %call8 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !248
  %tobool9 = icmp ne i32 %call8, 0, !dbg !248
  br i1 %tobool9, label %if.else12, label %if.then10, !dbg !249

if.then10:                                        ; preds = %if.else
  store i32 1, i32* @DeleteComments, align 4, !dbg !250
  %15 = load i32, i32* @DoModify, align 4, !dbg !252
  %or11 = or i32 %15, 5, !dbg !252
  store i32 %or11, i32* @DoModify, align 4, !dbg !252
  br label %if.end416, !dbg !253

if.else12:                                        ; preds = %if.else
  %16 = load i8*, i8** %arg, align 8, !dbg !254
  %call13 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !256
  %tobool14 = icmp ne i32 %call13, 0, !dbg !256
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !257

if.then15:                                        ; preds = %if.else12
  store i32 1, i32* @DeleteExif, align 4, !dbg !258
  %17 = load i32, i32* @DoModify, align 4, !dbg !260
  %or16 = or i32 %17, 5, !dbg !260
  store i32 %or16, i32* @DoModify, align 4, !dbg !260
  br label %if.end415, !dbg !261

if.else17:                                        ; preds = %if.else12
  %18 = load i8*, i8** %arg, align 8, !dbg !262
  %call18 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !264
  %tobool19 = icmp ne i32 %call18, 0, !dbg !264
  br i1 %tobool19, label %if.else22, label %if.then20, !dbg !265

if.then20:                                        ; preds = %if.else17
  store i32 1, i32* @DeleteIptc, align 4, !dbg !266
  %19 = load i32, i32* @DoModify, align 4, !dbg !268
  %or21 = or i32 %19, 5, !dbg !268
  store i32 %or21, i32* @DoModify, align 4, !dbg !268
  br label %if.end414, !dbg !269

if.else22:                                        ; preds = %if.else17
  %20 = load i8*, i8** %arg, align 8, !dbg !270
  %call23 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !272
  %tobool24 = icmp ne i32 %call23, 0, !dbg !272
  br i1 %tobool24, label %if.else27, label %if.then25, !dbg !273

if.then25:                                        ; preds = %if.else22
  store i32 1, i32* @DeleteXmp, align 4, !dbg !274
  %21 = load i32, i32* @DoModify, align 4, !dbg !276
  %or26 = or i32 %21, 5, !dbg !276
  store i32 %or26, i32* @DoModify, align 4, !dbg !276
  br label %if.end413, !dbg !277

if.else27:                                        ; preds = %if.else22
  %22 = load i8*, i8** %arg, align 8, !dbg !278
  %call28 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !280
  %tobool29 = icmp ne i32 %call28, 0, !dbg !280
  br i1 %tobool29, label %if.else32, label %if.then30, !dbg !281

if.then30:                                        ; preds = %if.else27
  store i32 1, i32* @DeleteUnknown, align 4, !dbg !282
  %23 = load i32, i32* @DoModify, align 4, !dbg !284
  %or31 = or i32 %23, 5, !dbg !284
  store i32 %or31, i32* @DoModify, align 4, !dbg !284
  br label %if.end412, !dbg !285

if.else32:                                        ; preds = %if.else27
  %24 = load i8*, i8** %arg, align 8, !dbg !286
  %call33 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !288
  %tobool34 = icmp ne i32 %call33, 0, !dbg !288
  br i1 %tobool34, label %if.else37, label %if.then35, !dbg !289

if.then35:                                        ; preds = %if.else32
  store i32 1, i32* @DeleteExif, align 4, !dbg !290
  store i32 1, i32* @DeleteComments, align 4, !dbg !292
  store i32 1, i32* @DeleteIptc, align 4, !dbg !293
  store i32 1, i32* @DeleteUnknown, align 4, !dbg !294
  store i32 1, i32* @DeleteXmp, align 4, !dbg !295
  %25 = load i32, i32* @DoModify, align 4, !dbg !296
  %or36 = or i32 %25, 5, !dbg !296
  store i32 %or36, i32* @DoModify, align 4, !dbg !296
  br label %if.end411, !dbg !297

if.else37:                                        ; preds = %if.else32
  %26 = load i8*, i8** %arg, align 8, !dbg !298
  %call38 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !300
  %tobool39 = icmp ne i32 %call38, 0, !dbg !300
  br i1 %tobool39, label %if.else42, label %if.then40, !dbg !301

if.then40:                                        ; preds = %if.else37
  store i32 1, i32* @EditComment, align 4, !dbg !302
  %27 = load i32, i32* @DoModify, align 4, !dbg !304
  %or41 = or i32 %27, 5, !dbg !304
  store i32 %or41, i32* @DoModify, align 4, !dbg !304
  br label %if.end410, !dbg !305

if.else42:                                        ; preds = %if.else37
  %28 = load i8*, i8** %arg, align 8, !dbg !306
  %call43 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !308
  %tobool44 = icmp ne i32 %call43, 0, !dbg !308
  br i1 %tobool44, label %if.else49, label %if.then45, !dbg !309

if.then45:                                        ; preds = %if.else42
  %29 = load i8**, i8*** %argv.addr, align 8, !dbg !310
  %30 = load i32, i32* %argn, align 4, !dbg !312
  %inc46 = add nsw i32 %30, 1, !dbg !312
  store i32 %inc46, i32* %argn, align 4, !dbg !312
  %idxprom47 = sext i32 %inc46 to i64, !dbg !310
  %arrayidx48 = getelementptr inbounds i8*, i8** %29, i64 %idxprom47, !dbg !310
  %31 = load i8*, i8** %arrayidx48, align 8, !dbg !310
  store i8* %31, i8** @CommentSavefileName, align 8, !dbg !313
  br label %if.end409, !dbg !314

if.else49:                                        ; preds = %if.else42
  %32 = load i8*, i8** %arg, align 8, !dbg !315
  %call50 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !317
  %tobool51 = icmp ne i32 %call50, 0, !dbg !317
  br i1 %tobool51, label %if.else57, label %if.then52, !dbg !318

if.then52:                                        ; preds = %if.else49
  %33 = load i8**, i8*** %argv.addr, align 8, !dbg !319
  %34 = load i32, i32* %argn, align 4, !dbg !321
  %inc53 = add nsw i32 %34, 1, !dbg !321
  store i32 %inc53, i32* %argn, align 4, !dbg !321
  %idxprom54 = sext i32 %inc53 to i64, !dbg !319
  %arrayidx55 = getelementptr inbounds i8*, i8** %33, i64 %idxprom54, !dbg !319
  %35 = load i8*, i8** %arrayidx55, align 8, !dbg !319
  store i8* %35, i8** @CommentInsertfileName, align 8, !dbg !322
  %36 = load i32, i32* @DoModify, align 4, !dbg !323
  %or56 = or i32 %36, 5, !dbg !323
  store i32 %or56, i32* @DoModify, align 4, !dbg !323
  br label %if.end408, !dbg !324

if.else57:                                        ; preds = %if.else49
  %37 = load i8*, i8** %arg, align 8, !dbg !325
  %call58 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !327
  %tobool59 = icmp ne i32 %call58, 0, !dbg !327
  br i1 %tobool59, label %if.else65, label %if.then60, !dbg !328

if.then60:                                        ; preds = %if.else57
  %38 = load i8**, i8*** %argv.addr, align 8, !dbg !329
  %39 = load i32, i32* %argn, align 4, !dbg !331
  %inc61 = add nsw i32 %39, 1, !dbg !331
  store i32 %inc61, i32* %argn, align 4, !dbg !331
  %idxprom62 = sext i32 %inc61 to i64, !dbg !329
  %arrayidx63 = getelementptr inbounds i8*, i8** %38, i64 %idxprom62, !dbg !329
  %40 = load i8*, i8** %arrayidx63, align 8, !dbg !329
  store i8* %40, i8** @CommentInsertLiteral, align 8, !dbg !332
  %41 = load i32, i32* @DoModify, align 4, !dbg !333
  %or64 = or i32 %41, 5, !dbg !333
  store i32 %or64, i32* @DoModify, align 4, !dbg !333
  br label %if.end407, !dbg !334

if.else65:                                        ; preds = %if.else57
  %42 = load i8*, i8** %arg, align 8, !dbg !335
  %call66 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !337
  %tobool67 = icmp ne i32 %call66, 0, !dbg !337
  br i1 %tobool67, label %if.else70, label %if.then68, !dbg !338

if.then68:                                        ; preds = %if.else65
  store i32 1, i32* @TrimExifTrailingZeroes, align 4, !dbg !339
  %43 = load i32, i32* @DoModify, align 4, !dbg !341
  %or69 = or i32 %43, 5, !dbg !341
  store i32 %or69, i32* @DoModify, align 4, !dbg !341
  br label %if.end406, !dbg !342

if.else70:                                        ; preds = %if.else65
  %44 = load i8*, i8** %arg, align 8, !dbg !343
  %call71 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !345
  %tobool72 = icmp ne i32 %call71, 0, !dbg !345
  br i1 %tobool72, label %if.else75, label %if.then73, !dbg !346

if.then73:                                        ; preds = %if.else70
  store i32 1, i32* @CreateExifSection, align 4, !dbg !347
  %45 = load i32, i32* @DoModify, align 4, !dbg !349
  %or74 = or i32 %45, 5, !dbg !349
  store i32 %or74, i32* @DoModify, align 4, !dbg !349
  br label %if.end405, !dbg !350

if.else75:                                        ; preds = %if.else70
  %46 = load i8*, i8** %arg, align 8, !dbg !351
  %call76 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !353
  %tobool77 = icmp ne i32 %call76, 0, !dbg !353
  br i1 %tobool77, label %if.else79, label %if.then78, !dbg !354

if.then78:                                        ; preds = %if.else75
  call void @Usage(), !dbg !355
  br label %if.end404, !dbg !357

if.else79:                                        ; preds = %if.else75
  %47 = load i8*, i8** %arg, align 8, !dbg !358
  %call80 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !360
  %tobool81 = icmp ne i32 %call80, 0, !dbg !360
  br i1 %tobool81, label %if.else83, label %if.then82, !dbg !361

if.then82:                                        ; preds = %if.else79
  store i32 1, i32* @ShowTags, align 4, !dbg !362
  br label %if.end403, !dbg !364

if.else83:                                        ; preds = %if.else79
  %48 = load i8*, i8** %arg, align 8, !dbg !365
  %call84 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !367
  %tobool85 = icmp ne i32 %call84, 0, !dbg !367
  br i1 %tobool85, label %if.else87, label %if.then86, !dbg !368

if.then86:                                        ; preds = %if.else83
  store i32 1, i32* @Quiet, align 4, !dbg !369
  br label %if.end402, !dbg !371

if.else87:                                        ; preds = %if.else83
  %49 = load i8*, i8** %arg, align 8, !dbg !372
  %call88 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #11, !dbg !374
  %tobool89 = icmp ne i32 %call88, 0, !dbg !374
  br i1 %tobool89, label %if.else92, label %if.then90, !dbg !375

if.then90:                                        ; preds = %if.else87
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0)), !dbg !376
  call void @exit(i32 0) #9, !dbg !378
  unreachable, !dbg !378

if.else92:                                        ; preds = %if.else87
  %50 = load i8*, i8** %arg, align 8, !dbg !379
  %call93 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !381
  %tobool94 = icmp ne i32 %call93, 0, !dbg !381
  br i1 %tobool94, label %if.else96, label %if.then95, !dbg !382

if.then95:                                        ; preds = %if.else92
  store i32 1, i32* @DumpExifMap, align 4, !dbg !383
  br label %if.end400, !dbg !385

if.else96:                                        ; preds = %if.else92
  %51 = load i8*, i8** %arg, align 8, !dbg !386
  %call97 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)) #11, !dbg !388
  %tobool98 = icmp ne i32 %call97, 0, !dbg !388
  br i1 %tobool98, label %if.else100, label %if.then99, !dbg !389

if.then99:                                        ; preds = %if.else96
  store i32 1, i32* @SuppressNonFatalErrors, align 4, !dbg !390
  br label %if.end399, !dbg !392

if.else100:                                       ; preds = %if.else96
  %52 = load i8*, i8** %arg, align 8, !dbg !393
  %call101 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !395
  %tobool102 = icmp ne i32 %call101, 0, !dbg !395
  br i1 %tobool102, label %if.else104, label %if.then103, !dbg !396

if.then103:                                       ; preds = %if.else100
  store i32 1, i32* @ShowConcise, align 4, !dbg !397
  br label %if.end398, !dbg !399

if.else104:                                       ; preds = %if.else100
  %53 = load i8*, i8** %arg, align 8, !dbg !400
  %call105 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)) #11, !dbg !402
  %tobool106 = icmp ne i32 %call105, 0, !dbg !402
  br i1 %tobool106, label %if.else108, label %if.then107, !dbg !403

if.then107:                                       ; preds = %if.else104
  store i32 0, i32* @ShowFileInfo, align 4, !dbg !404
  br label %if.end397, !dbg !406

if.else108:                                       ; preds = %if.else104
  %54 = load i8*, i8** %arg, align 8, !dbg !407
  %call109 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #11, !dbg !409
  %tobool110 = icmp ne i32 %call109, 0, !dbg !409
  br i1 %tobool110, label %if.else113, label %if.then111, !dbg !410

if.then111:                                       ; preds = %if.else108
  store i32 1, i32* @TrimExif, align 4, !dbg !411
  %55 = load i32, i32* @DoModify, align 4, !dbg !413
  %or112 = or i32 %55, 5, !dbg !413
  store i32 %or112, i32* @DoModify, align 4, !dbg !413
  br label %if.end396, !dbg !414

if.else113:                                       ; preds = %if.else108
  %56 = load i8*, i8** %arg, align 8, !dbg !415
  %call114 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !417
  %tobool115 = icmp ne i32 %call114, 0, !dbg !417
  br i1 %tobool115, label %if.else121, label %if.then116, !dbg !418

if.then116:                                       ; preds = %if.else113
  %57 = load i8**, i8*** %argv.addr, align 8, !dbg !419
  %58 = load i32, i32* %argn, align 4, !dbg !421
  %inc117 = add nsw i32 %58, 1, !dbg !421
  store i32 %inc117, i32* %argn, align 4, !dbg !421
  %idxprom118 = sext i32 %inc117 to i64, !dbg !419
  %arrayidx119 = getelementptr inbounds i8*, i8** %57, i64 %idxprom118, !dbg !419
  %59 = load i8*, i8** %arrayidx119, align 8, !dbg !419
  store i8* %59, i8** @ThumbSaveName, align 8, !dbg !422
  %60 = load i32, i32* @DoModify, align 4, !dbg !423
  %or120 = or i32 %60, 6, !dbg !423
  store i32 %or120, i32* @DoModify, align 4, !dbg !423
  br label %if.end395, !dbg !424

if.else121:                                       ; preds = %if.else113
  %61 = load i8*, i8** %arg, align 8, !dbg !425
  %call122 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !427
  %tobool123 = icmp ne i32 %call122, 0, !dbg !427
  br i1 %tobool123, label %if.else129, label %if.then124, !dbg !428

if.then124:                                       ; preds = %if.else121
  %62 = load i8**, i8*** %argv.addr, align 8, !dbg !429
  %63 = load i32, i32* %argn, align 4, !dbg !431
  %inc125 = add nsw i32 %63, 1, !dbg !431
  store i32 %inc125, i32* %argn, align 4, !dbg !431
  %idxprom126 = sext i32 %inc125 to i64, !dbg !429
  %arrayidx127 = getelementptr inbounds i8*, i8** %62, i64 %idxprom126, !dbg !429
  %64 = load i8*, i8** %arrayidx127, align 8, !dbg !429
  store i8* %64, i8** @ThumbInsertName, align 8, !dbg !432
  %65 = load i32, i32* @DoModify, align 4, !dbg !433
  %or128 = or i32 %65, 5, !dbg !433
  store i32 %or128, i32* @DoModify, align 4, !dbg !433
  br label %if.end394, !dbg !434

if.else129:                                       ; preds = %if.else121
  %66 = load i8*, i8** %arg, align 8, !dbg !435
  %call130 = call i32 @memcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i64 4) #11, !dbg !437
  %tobool131 = icmp ne i32 %call130, 0, !dbg !437
  br i1 %tobool131, label %if.else139, label %if.then132, !dbg !438

if.then132:                                       ; preds = %if.else129
  store i32 160, i32* @RegenThumbnail, align 4, !dbg !439
  %67 = load i8*, i8** %arg, align 8, !dbg !441
  %add.ptr = getelementptr inbounds i8, i8* %67, i64 4, !dbg !442
  %call133 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* @RegenThumbnail) #10, !dbg !443
  %68 = load i32, i32* @RegenThumbnail, align 4, !dbg !444
  %cmp134 = icmp sgt i32 %68, 320, !dbg !446
  br i1 %cmp134, label %if.then136, label %if.end137, !dbg !447

if.then136:                                       ; preds = %if.then132
  call void @ErrFatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0)), !dbg !448
  br label %if.end137, !dbg !450

if.end137:                                        ; preds = %if.then136, %if.then132
  %69 = load i32, i32* @DoModify, align 4, !dbg !451
  %or138 = or i32 %69, 5, !dbg !451
  store i32 %or138, i32* @DoModify, align 4, !dbg !451
  br label %if.end393, !dbg !452

if.else139:                                       ; preds = %if.else129
  %70 = load i8*, i8** %arg, align 8, !dbg !453
  %call140 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #11, !dbg !455
  %tobool141 = icmp ne i32 %call140, 0, !dbg !455
  br i1 %tobool141, label %if.else144, label %if.then142, !dbg !456

if.then142:                                       ; preds = %if.else139
  store i32 1, i32* @AutoRotate, align 4, !dbg !457
  %71 = load i32, i32* @DoModify, align 4, !dbg !459
  %or143 = or i32 %71, 5, !dbg !459
  store i32 %or143, i32* @DoModify, align 4, !dbg !459
  br label %if.end392, !dbg !460

if.else144:                                       ; preds = %if.else139
  %72 = load i8*, i8** %arg, align 8, !dbg !461
  %call145 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !463
  %tobool146 = icmp ne i32 %call145, 0, !dbg !463
  br i1 %tobool146, label %if.else149, label %if.then147, !dbg !464

if.then147:                                       ; preds = %if.else144
  store i32 1, i32* @AutoRotate, align 4, !dbg !465
  store i32 1, i32* @ZeroRotateTagOnly, align 4, !dbg !467
  %73 = load i32, i32* @DoModify, align 4, !dbg !468
  %or148 = or i32 %73, 5, !dbg !468
  store i32 %or148, i32* @DoModify, align 4, !dbg !468
  br label %if.end391, !dbg !469

if.else149:                                       ; preds = %if.else144
  %74 = load i8*, i8** %arg, align 8, !dbg !470
  %call150 = call i32 @memcmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i64 2) #11, !dbg !472
  %tobool151 = icmp ne i32 %call150, 0, !dbg !472
  br i1 %tobool151, label %if.else163, label %if.then152, !dbg !473

if.then152:                                       ; preds = %if.else149
  store i32 1, i32* @RenameToDate, align 4, !dbg !474
  %75 = load i32, i32* @DoModify, align 4, !dbg !476
  %or153 = or i32 %75, 6, !dbg !476
  store i32 %or153, i32* @DoModify, align 4, !dbg !476
  %76 = load i8*, i8** %arg, align 8, !dbg !477
  %add.ptr154 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !477
  store i8* %add.ptr154, i8** %arg, align 8, !dbg !477
  %77 = load i8*, i8** %arg, align 8, !dbg !478
  %78 = load i8, i8* %77, align 1, !dbg !480
  %conv155 = sext i8 %78 to i32, !dbg !480
  %cmp156 = icmp eq i32 %conv155, 102, !dbg !481
  br i1 %cmp156, label %if.then158, label %if.end159, !dbg !482

if.then158:                                       ; preds = %if.then152
  %79 = load i8*, i8** %arg, align 8, !dbg !483
  %incdec.ptr = getelementptr inbounds i8, i8* %79, i32 1, !dbg !483
  store i8* %incdec.ptr, i8** %arg, align 8, !dbg !483
  br label %if.end159, !dbg !485

if.end159:                                        ; preds = %if.then158, %if.then152
  %80 = load i8*, i8** %arg, align 8, !dbg !486
  %81 = load i8, i8* %80, align 1, !dbg !488
  %tobool160 = icmp ne i8 %81, 0, !dbg !488
  br i1 %tobool160, label %if.then161, label %if.end162, !dbg !489

if.then161:                                       ; preds = %if.end159
  %82 = load i8*, i8** %arg, align 8, !dbg !490
  store i8* %82, i8** @strftime_args, align 8, !dbg !492
  br label %if.end162, !dbg !493

if.end162:                                        ; preds = %if.then161, %if.end159
  br label %if.end390, !dbg !494

if.else163:                                       ; preds = %if.else149
  %83 = load i8*, i8** %arg, align 8, !dbg !495
  %call164 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #11, !dbg !497
  %tobool165 = icmp ne i32 %call164, 0, !dbg !497
  br i1 %tobool165, label %if.else167, label %if.then166, !dbg !498

if.then166:                                       ; preds = %if.else163
  call void @ErrFatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i64 0, i64 0)), !dbg !499
  br label %if.end389, !dbg !501

if.else167:                                       ; preds = %if.else163
  %84 = load i8*, i8** %arg, align 8, !dbg !502
  %call168 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #11, !dbg !504
  %tobool169 = icmp ne i32 %call168, 0, !dbg !504
  br i1 %tobool169, label %if.else172, label %if.then170, !dbg !505

if.then170:                                       ; preds = %if.else167
  store i32 1, i32* @Exif2FileTime, align 4, !dbg !506
  %85 = load i32, i32* @DoModify, align 4, !dbg !508
  %or171 = or i32 %85, 1, !dbg !508
  store i32 %or171, i32* @DoModify, align 4, !dbg !508
  br label %if.end388, !dbg !509

if.else172:                                       ; preds = %if.else167
  %86 = load i8*, i8** %arg, align 8, !dbg !510
  %call173 = call i32 @memcmp(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #11, !dbg !512
  %tobool174 = icmp ne i32 %call173, 0, !dbg !512
  br i1 %tobool174, label %if.else205, label %if.then175, !dbg !513

if.then175:                                       ; preds = %if.else172
  call void @llvm.dbg.declare(metadata i32* %hours, metadata !514, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata i32* %minutes, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata i32* %seconds, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata i32* %n, metadata !521, metadata !DIExpression()), !dbg !522
  store i32 0, i32* %seconds, align 4, !dbg !523
  store i32 0, i32* %minutes, align 4, !dbg !524
  %87 = load i8*, i8** %arg, align 8, !dbg !525
  %arrayidx176 = getelementptr inbounds i8, i8* %87, i64 3, !dbg !525
  %88 = load i8, i8* %arrayidx176, align 1, !dbg !525
  %conv177 = sext i8 %88 to i32, !dbg !525
  %cmp178 = icmp ne i32 %conv177, 45, !dbg !527
  br i1 %cmp178, label %land.lhs.true, label %if.end185, !dbg !528

land.lhs.true:                                    ; preds = %if.then175
  %89 = load i8*, i8** %arg, align 8, !dbg !529
  %arrayidx180 = getelementptr inbounds i8, i8* %89, i64 3, !dbg !529
  %90 = load i8, i8* %arrayidx180, align 1, !dbg !529
  %conv181 = sext i8 %90 to i32, !dbg !529
  %cmp182 = icmp ne i32 %conv181, 43, !dbg !530
  br i1 %cmp182, label %if.then184, label %if.end185, !dbg !531

if.then184:                                       ; preds = %land.lhs.true
  call void @ErrFatal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.41, i64 0, i64 0)), !dbg !532
  br label %if.end185, !dbg !534

if.end185:                                        ; preds = %if.then184, %land.lhs.true, %if.then175
  %91 = load i8*, i8** %arg, align 8, !dbg !535
  %add.ptr186 = getelementptr inbounds i8, i8* %91, i64 4, !dbg !536
  %call187 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i32* %hours, i32* %minutes, i32* %seconds) #10, !dbg !537
  store i32 %call187, i32* %n, align 4, !dbg !538
  %92 = load i32, i32* %n, align 4, !dbg !539
  %cmp188 = icmp slt i32 %92, 1, !dbg !541
  br i1 %cmp188, label %if.then190, label %if.end191, !dbg !542

if.then190:                                       ; preds = %if.end185
  call void @ErrFatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i64 0, i64 0)), !dbg !543
  br label %if.end191, !dbg !545

if.end191:                                        ; preds = %if.then190, %if.end185
  %93 = load i64, i64* @ExifTimeAdjust, align 8, !dbg !546
  %tobool192 = icmp ne i64 %93, 0, !dbg !546
  br i1 %tobool192, label %if.then193, label %if.end194, !dbg !548

if.then193:                                       ; preds = %if.end191
  call void @ErrFatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i64 0, i64 0)), !dbg !549
  br label %if.end194, !dbg !549

if.end194:                                        ; preds = %if.then193, %if.end191
  %94 = load i32, i32* %hours, align 4, !dbg !550
  %mul = mul nsw i32 %94, 3600, !dbg !551
  %95 = load i32, i32* %minutes, align 4, !dbg !552
  %mul195 = mul nsw i32 %95, 60, !dbg !553
  %add = add nsw i32 %mul, %mul195, !dbg !554
  %96 = load i32, i32* %seconds, align 4, !dbg !555
  %add196 = add nsw i32 %add, %96, !dbg !556
  %conv197 = sext i32 %add196 to i64, !dbg !550
  store i64 %conv197, i64* @ExifTimeAdjust, align 8, !dbg !557
  %97 = load i8*, i8** %arg, align 8, !dbg !558
  %arrayidx198 = getelementptr inbounds i8, i8* %97, i64 3, !dbg !558
  %98 = load i8, i8* %arrayidx198, align 1, !dbg !558
  %conv199 = sext i8 %98 to i32, !dbg !558
  %cmp200 = icmp eq i32 %conv199, 45, !dbg !560
  br i1 %cmp200, label %if.then202, label %if.end203, !dbg !561

if.then202:                                       ; preds = %if.end194
  %99 = load i64, i64* @ExifTimeAdjust, align 8, !dbg !562
  %sub = sub nsw i64 0, %99, !dbg !563
  store i64 %sub, i64* @ExifTimeAdjust, align 8, !dbg !564
  br label %if.end203, !dbg !565

if.end203:                                        ; preds = %if.then202, %if.end194
  %100 = load i32, i32* @DoModify, align 4, !dbg !566
  %or204 = or i32 %100, 5, !dbg !566
  store i32 %or204, i32* @DoModify, align 4, !dbg !566
  br label %if.end387, !dbg !567

if.else205:                                       ; preds = %if.else172
  %101 = load i8*, i8** %arg, align 8, !dbg !568
  %call206 = call i32 @memcmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 3) #11, !dbg !570
  %tobool207 = icmp ne i32 %call206, 0, !dbg !570
  br i1 %tobool207, label %if.else224, label %if.then208, !dbg !571

if.then208:                                       ; preds = %if.else205
  call void @llvm.dbg.declare(metadata i64* %NewDate, metadata !572, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.declare(metadata i64* %OldDate, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 0, i64* %OldDate, align 8, !dbg !576
  call void @llvm.dbg.declare(metadata i8** %pOldDate, metadata !577, metadata !DIExpression()), !dbg !578
  %102 = load i8*, i8** %arg, align 8, !dbg !579
  %add.ptr209 = getelementptr inbounds i8, i8* %102, i64 3, !dbg !580
  %call210 = call i64 @ParseCmdDate(i8* %add.ptr209), !dbg !581
  store i64 %call210, i64* %NewDate, align 8, !dbg !582
  %103 = load i8*, i8** %arg, align 8, !dbg !583
  %add.ptr211 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !584
  %call212 = call i8* @strstr(i8* %add.ptr211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !585
  store i8* %call212, i8** %pOldDate, align 8, !dbg !586
  %104 = load i8*, i8** %pOldDate, align 8, !dbg !587
  %tobool213 = icmp ne i8* %104, null, !dbg !587
  br i1 %tobool213, label %if.then214, label %if.else217, !dbg !589

if.then214:                                       ; preds = %if.then208
  %105 = load i8*, i8** %pOldDate, align 8, !dbg !590
  %add.ptr215 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !592
  %call216 = call i64 @ParseCmdDate(i8* %add.ptr215), !dbg !593
  store i64 %call216, i64* %OldDate, align 8, !dbg !594
  br label %if.end218, !dbg !595

if.else217:                                       ; preds = %if.then208
  call void @ErrFatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0)), !dbg !596
  br label %if.end218

if.end218:                                        ; preds = %if.else217, %if.then214
  %106 = load i64, i64* @ExifTimeAdjust, align 8, !dbg !598
  %tobool219 = icmp ne i64 %106, 0, !dbg !598
  br i1 %tobool219, label %if.then220, label %if.end221, !dbg !600

if.then220:                                       ; preds = %if.end218
  call void @ErrFatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i64 0, i64 0)), !dbg !601
  br label %if.end221, !dbg !601

if.end221:                                        ; preds = %if.then220, %if.end218
  %107 = load i64, i64* %NewDate, align 8, !dbg !602
  %108 = load i64, i64* %OldDate, align 8, !dbg !603
  %sub222 = sub nsw i64 %107, %108, !dbg !604
  store i64 %sub222, i64* @ExifTimeAdjust, align 8, !dbg !605
  %109 = load i32, i32* @DoModify, align 4, !dbg !606
  %or223 = or i32 %109, 5, !dbg !606
  store i32 %or223, i32* @DoModify, align 4, !dbg !606
  br label %if.end386, !dbg !607

if.else224:                                       ; preds = %if.else205
  %110 = load i8*, i8** %arg, align 8, !dbg !608
  %call225 = call i32 @memcmp(i8* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i64 5) #11, !dbg !610
  %tobool226 = icmp ne i32 %call225, 0, !dbg !610
  br i1 %tobool226, label %if.else229, label %if.then227, !dbg !611

if.then227:                                       ; preds = %if.else224
  store i32 1, i32* @FileTimeToExif, align 4, !dbg !612
  %111 = load i32, i32* @DoModify, align 4, !dbg !614
  %or228 = or i32 %111, 5, !dbg !614
  store i32 %or228, i32* @DoModify, align 4, !dbg !614
  br label %if.end385, !dbg !615

if.else229:                                       ; preds = %if.else224
  %112 = load i8*, i8** %arg, align 8, !dbg !616
  %call230 = call i32 @memcmp(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i64 3) #11, !dbg !618
  %tobool231 = icmp ne i32 %call230, 0, !dbg !618
  br i1 %tobool231, label %if.else284, label %if.then232, !dbg !619

if.then232:                                       ; preds = %if.else229
  call void @llvm.dbg.declare(metadata i32* %a, metadata !620, metadata !DIExpression()), !dbg !622
  %call233 = call i8* @strcpy(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @DateSet, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0)) #10, !dbg !623
  store i32 0, i32* %a, align 4, !dbg !624
  br label %for.cond234, !dbg !626

for.cond234:                                      ; preds = %for.inc, %if.then232
  %113 = load i8*, i8** %arg, align 8, !dbg !627
  %114 = load i32, i32* %a, align 4, !dbg !629
  %add235 = add nsw i32 %114, 3, !dbg !630
  %idxprom236 = sext i32 %add235 to i64, !dbg !627
  %arrayidx237 = getelementptr inbounds i8, i8* %113, i64 %idxprom236, !dbg !627
  %115 = load i8, i8* %arrayidx237, align 1, !dbg !627
  %tobool238 = icmp ne i8 %115, 0, !dbg !631
  br i1 %tobool238, label %for.body239, label %for.end, !dbg !631

for.body239:                                      ; preds = %for.cond234
  %call240 = call i16** @__ctype_b_loc() #12, !dbg !632
  %116 = load i16*, i16** %call240, align 8, !dbg !632
  %117 = load i32, i32* %a, align 4, !dbg !632
  %idxprom241 = sext i32 %117 to i64, !dbg !632
  %arrayidx242 = getelementptr inbounds [11 x i8], [11 x i8]* @DateSet, i64 0, i64 %idxprom241, !dbg !632
  %118 = load i8, i8* %arrayidx242, align 1, !dbg !632
  %conv243 = sext i8 %118 to i32, !dbg !632
  %idxprom244 = sext i32 %conv243 to i64, !dbg !632
  %arrayidx245 = getelementptr inbounds i16, i16* %116, i64 %idxprom244, !dbg !632
  %119 = load i16, i16* %arrayidx245, align 2, !dbg !632
  %conv246 = zext i16 %119 to i32, !dbg !632
  %and = and i32 %conv246, 2048, !dbg !632
  %tobool247 = icmp ne i32 %and, 0, !dbg !632
  br i1 %tobool247, label %if.then248, label %if.else261, !dbg !635

if.then248:                                       ; preds = %for.body239
  %call249 = call i16** @__ctype_b_loc() #12, !dbg !636
  %120 = load i16*, i16** %call249, align 8, !dbg !636
  %121 = load i8*, i8** %arg, align 8, !dbg !636
  %122 = load i32, i32* %a, align 4, !dbg !636
  %add250 = add nsw i32 %122, 3, !dbg !636
  %idxprom251 = sext i32 %add250 to i64, !dbg !636
  %arrayidx252 = getelementptr inbounds i8, i8* %121, i64 %idxprom251, !dbg !636
  %123 = load i8, i8* %arrayidx252, align 1, !dbg !636
  %conv253 = sext i8 %123 to i32, !dbg !636
  %idxprom254 = sext i32 %conv253 to i64, !dbg !636
  %arrayidx255 = getelementptr inbounds i16, i16* %120, i64 %idxprom254, !dbg !636
  %124 = load i16, i16* %arrayidx255, align 2, !dbg !636
  %conv256 = zext i16 %124 to i32, !dbg !636
  %and257 = and i32 %conv256, 2048, !dbg !636
  %tobool258 = icmp ne i32 %and257, 0, !dbg !636
  br i1 %tobool258, label %if.end260, label %if.then259, !dbg !639

if.then259:                                       ; preds = %if.then248
  store i32 0, i32* %a, align 4, !dbg !640
  br label %for.end, !dbg !642

if.end260:                                        ; preds = %if.then248
  br label %if.end270, !dbg !643

if.else261:                                       ; preds = %for.body239
  %125 = load i8*, i8** %arg, align 8, !dbg !644
  %126 = load i32, i32* %a, align 4, !dbg !647
  %add262 = add nsw i32 %126, 3, !dbg !648
  %idxprom263 = sext i32 %add262 to i64, !dbg !644
  %arrayidx264 = getelementptr inbounds i8, i8* %125, i64 %idxprom263, !dbg !644
  %127 = load i8, i8* %arrayidx264, align 1, !dbg !644
  %conv265 = sext i8 %127 to i32, !dbg !644
  %cmp266 = icmp ne i32 %conv265, 58, !dbg !649
  br i1 %cmp266, label %if.then268, label %if.end269, !dbg !650

if.then268:                                       ; preds = %if.else261
  store i32 0, i32* %a, align 4, !dbg !651
  br label %for.end, !dbg !653

if.end269:                                        ; preds = %if.else261
  br label %if.end270

if.end270:                                        ; preds = %if.end269, %if.end260
  %128 = load i8*, i8** %arg, align 8, !dbg !654
  %129 = load i32, i32* %a, align 4, !dbg !655
  %add271 = add nsw i32 %129, 3, !dbg !656
  %idxprom272 = sext i32 %add271 to i64, !dbg !654
  %arrayidx273 = getelementptr inbounds i8, i8* %128, i64 %idxprom272, !dbg !654
  %130 = load i8, i8* %arrayidx273, align 1, !dbg !654
  %131 = load i32, i32* %a, align 4, !dbg !657
  %idxprom274 = sext i32 %131 to i64, !dbg !658
  %arrayidx275 = getelementptr inbounds [11 x i8], [11 x i8]* @DateSet, i64 0, i64 %idxprom274, !dbg !658
  store i8 %130, i8* %arrayidx275, align 1, !dbg !659
  br label %for.inc, !dbg !660

for.inc:                                          ; preds = %if.end270
  %132 = load i32, i32* %a, align 4, !dbg !661
  %inc276 = add nsw i32 %132, 1, !dbg !661
  store i32 %inc276, i32* %a, align 4, !dbg !661
  br label %for.cond234, !dbg !662, !llvm.loop !663

for.end:                                          ; preds = %if.then268, %if.then259, %for.cond234
  %133 = load i32, i32* %a, align 4, !dbg !666
  %cmp277 = icmp slt i32 %133, 4, !dbg !668
  br i1 %cmp277, label %if.then281, label %lor.lhs.false, !dbg !669

lor.lhs.false:                                    ; preds = %for.end
  %134 = load i32, i32* %a, align 4, !dbg !670
  %cmp279 = icmp sgt i32 %134, 10, !dbg !671
  br i1 %cmp279, label %if.then281, label %if.end282, !dbg !672

if.then281:                                       ; preds = %lor.lhs.false, %for.end
  call void @ErrFatal(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.51, i64 0, i64 0)), !dbg !673
  br label %if.end282, !dbg !675

if.end282:                                        ; preds = %if.then281, %lor.lhs.false
  %135 = load i32, i32* %a, align 4, !dbg !676
  store i32 %135, i32* @DateSetChars, align 4, !dbg !677
  %136 = load i32, i32* @DoModify, align 4, !dbg !678
  %or283 = or i32 %136, 5, !dbg !678
  store i32 %or283, i32* @DoModify, align 4, !dbg !678
  br label %if.end384, !dbg !679

if.else284:                                       ; preds = %if.else229
  %137 = load i8*, i8** %arg, align 8, !dbg !680
  %call285 = call i32 @memcmp(i8* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i64 3) #11, !dbg !682
  %tobool286 = icmp ne i32 %call285, 0, !dbg !682
  br i1 %tobool286, label %if.else305, label %if.then287, !dbg !683

if.then287:                                       ; preds = %if.else284
  call void @llvm.dbg.declare(metadata i8** %c, metadata !684, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata %struct.tm* %tm, metadata !687, metadata !DIExpression()), !dbg !688
  %138 = load i8*, i8** %arg, align 8, !dbg !689
  %add.ptr288 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !690
  %call289 = call i8* @strstr(i8* %add.ptr288, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !691
  store i8* %call289, i8** %c, align 8, !dbg !692
  %139 = load i8*, i8** %c, align 8, !dbg !693
  %tobool290 = icmp ne i8* %139, null, !dbg !693
  br i1 %tobool290, label %if.then291, label %if.end292, !dbg !695

if.then291:                                       ; preds = %if.then287
  %140 = load i8*, i8** %c, align 8, !dbg !696
  store i8 32, i8* %140, align 1, !dbg !697
  br label %if.end292, !dbg !698

if.end292:                                        ; preds = %if.then291, %if.then287
  %141 = load i8*, i8** %arg, align 8, !dbg !699
  %add.ptr293 = getelementptr inbounds i8, i8* %141, i64 3, !dbg !701
  %call294 = call i32 @Exif2tm(%struct.tm* %tm, i8* %add.ptr293), !dbg !702
  %tobool295 = icmp ne i32 %call294, 0, !dbg !702
  br i1 %tobool295, label %if.end297, label %if.then296, !dbg !703

if.then296:                                       ; preds = %if.end292
  call void @ErrFatal(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.53, i64 0, i64 0)), !dbg !704
  br label %if.end297, !dbg !706

if.end297:                                        ; preds = %if.then296, %if.end292
  %call298 = call i64 @mktime(%struct.tm* %tm) #10, !dbg !707
  store i64 %call298, i64* @ExifTimeSet, align 8, !dbg !708
  %142 = load i64, i64* @ExifTimeSet, align 8, !dbg !709
  %conv299 = trunc i64 %142 to i32, !dbg !711
  %cmp300 = icmp eq i32 %conv299, -1, !dbg !712
  br i1 %cmp300, label %if.then302, label %if.end303, !dbg !713

if.then302:                                       ; preds = %if.end297
  call void @ErrFatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i64 0, i64 0)), !dbg !714
  br label %if.end303, !dbg !714

if.end303:                                        ; preds = %if.then302, %if.end297
  %143 = load i32, i32* @DoModify, align 4, !dbg !715
  %or304 = or i32 %143, 5, !dbg !715
  store i32 %or304, i32* @DoModify, align 4, !dbg !715
  br label %if.end383, !dbg !716

if.else305:                                       ; preds = %if.else284
  %144 = load i8*, i8** %arg, align 8, !dbg !717
  %call306 = call i32 @memcmp(i8* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i64 3) #11, !dbg !719
  %tobool307 = icmp ne i32 %call306, 0, !dbg !719
  br i1 %tobool307, label %if.else319, label %if.then308, !dbg !720

if.then308:                                       ; preds = %if.else305
  call void @llvm.dbg.declare(metadata %struct.stat* %stat_buf, metadata !721, metadata !DIExpression()), !dbg !760
  %145 = load i8**, i8*** %argv.addr, align 8, !dbg !761
  %146 = load i32, i32* %argn, align 4, !dbg !763
  %inc309 = add nsw i32 %146, 1, !dbg !763
  store i32 %inc309, i32* %argn, align 4, !dbg !763
  %idxprom310 = sext i32 %inc309 to i64, !dbg !761
  %arrayidx311 = getelementptr inbounds i8*, i8** %145, i64 %idxprom310, !dbg !761
  %147 = load i8*, i8** %arrayidx311, align 8, !dbg !761
  %call312 = call i32 @stat(i8* %147, %struct.stat* %stat_buf) #10, !dbg !764
  %cmp313 = icmp eq i32 %call312, 0, !dbg !765
  br i1 %cmp313, label %if.then315, label %if.else316, !dbg !766

if.then315:                                       ; preds = %if.then308
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %stat_buf, i32 0, i32 12, !dbg !767
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0, !dbg !767
  %148 = load i64, i64* %tv_sec, align 8, !dbg !767
  store i64 %148, i64* @ExifTimeSet, align 8, !dbg !769
  br label %if.end317, !dbg !770

if.else316:                                       ; preds = %if.then308
  call void @ErrFatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0)), !dbg !771
  br label %if.end317

if.end317:                                        ; preds = %if.else316, %if.then315
  %149 = load i32, i32* @DoModify, align 4, !dbg !773
  %or318 = or i32 %149, 5, !dbg !773
  store i32 %or318, i32* @DoModify, align 4, !dbg !773
  br label %if.end382, !dbg !774

if.else319:                                       ; preds = %if.else305
  %150 = load i8*, i8** %arg, align 8, !dbg !775
  %call320 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #11, !dbg !777
  %tobool321 = icmp ne i32 %call320, 0, !dbg !777
  br i1 %tobool321, label %if.else331, label %if.then322, !dbg !778

if.then322:                                       ; preds = %if.else319
  %151 = load i32, i32* %argn, align 4, !dbg !779
  %add323 = add nsw i32 %151, 1, !dbg !782
  %152 = load i32, i32* %argc.addr, align 4, !dbg !783
  %cmp324 = icmp sge i32 %add323, %152, !dbg !784
  br i1 %cmp324, label %if.then326, label %if.end327, !dbg !785

if.then326:                                       ; preds = %if.then322
  call void @Usage(), !dbg !786
  br label %if.end327, !dbg !786

if.end327:                                        ; preds = %if.then326, %if.then322
  %153 = load i8**, i8*** %argv.addr, align 8, !dbg !787
  %154 = load i32, i32* %argn, align 4, !dbg !788
  %inc328 = add nsw i32 %154, 1, !dbg !788
  store i32 %inc328, i32* %argn, align 4, !dbg !788
  %idxprom329 = sext i32 %inc328 to i64, !dbg !787
  %arrayidx330 = getelementptr inbounds i8*, i8** %153, i64 %idxprom329, !dbg !787
  %155 = load i8*, i8** %arrayidx330, align 8, !dbg !787
  store i8* %155, i8** @FilterModel, align 8, !dbg !789
  br label %if.end381, !dbg !790

if.else331:                                       ; preds = %if.else319
  %156 = load i8*, i8** %arg, align 8, !dbg !791
  %call332 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0)) #11, !dbg !793
  %tobool333 = icmp ne i32 %call332, 0, !dbg !793
  br i1 %tobool333, label %if.else348, label %if.then334, !dbg !794

if.then334:                                       ; preds = %if.else331
  %157 = load i32, i32* %argn, align 4, !dbg !795
  %add335 = add nsw i32 %157, 1, !dbg !798
  %158 = load i32, i32* %argc.addr, align 4, !dbg !799
  %cmp336 = icmp sge i32 %add335, %158, !dbg !800
  br i1 %cmp336, label %if.then338, label %if.end339, !dbg !801

if.then338:                                       ; preds = %if.then334
  call void @Usage(), !dbg !802
  br label %if.end339, !dbg !802

if.end339:                                        ; preds = %if.then338, %if.then334
  %159 = load i8**, i8*** %argv.addr, align 8, !dbg !803
  %160 = load i32, i32* %argn, align 4, !dbg !805
  %inc340 = add nsw i32 %160, 1, !dbg !805
  store i32 %inc340, i32* %argn, align 4, !dbg !805
  %idxprom341 = sext i32 %inc340 to i64, !dbg !803
  %arrayidx342 = getelementptr inbounds i8*, i8** %159, i64 %idxprom341, !dbg !803
  %161 = load i8*, i8** %arrayidx342, align 8, !dbg !803
  %call343 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* @FilterQuality) #10, !dbg !806
  %cmp344 = icmp ne i32 %call343, 1, !dbg !807
  br i1 %cmp344, label %if.then346, label %if.end347, !dbg !808

if.then346:                                       ; preds = %if.end339
  call void @Usage(), !dbg !809
  br label %if.end347, !dbg !811

if.end347:                                        ; preds = %if.then346, %if.end339
  br label %if.end380, !dbg !812

if.else348:                                       ; preds = %if.else331
  %162 = load i8*, i8** %arg, align 8, !dbg !813
  %call349 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0)) #11, !dbg !815
  %tobool350 = icmp ne i32 %call349, 0, !dbg !815
  br i1 %tobool350, label %if.else352, label %if.then351, !dbg !816

if.then351:                                       ; preds = %if.else348
  store i32 1, i32* @ExifOnly, align 4, !dbg !817
  br label %if.end379, !dbg !819

if.else352:                                       ; preds = %if.else348
  %163 = load i8*, i8** %arg, align 8, !dbg !820
  %call353 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #11, !dbg !822
  %tobool354 = icmp ne i32 %call353, 0, !dbg !822
  br i1 %tobool354, label %if.else356, label %if.then355, !dbg !823

if.then355:                                       ; preds = %if.else352
  store i32 1, i32* @PortraitOnly, align 4, !dbg !824
  br label %if.end378, !dbg !826

if.else356:                                       ; preds = %if.else352
  %164 = load i8*, i8** %arg, align 8, !dbg !827
  %call357 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0)) #11, !dbg !829
  %tobool358 = icmp ne i32 %call357, 0, !dbg !829
  br i1 %tobool358, label %if.else360, label %if.then359, !dbg !830

if.then359:                                       ; preds = %if.else356
  store i32 -1, i32* @PortraitOnly, align 4, !dbg !831
  br label %if.end377, !dbg !833

if.else360:                                       ; preds = %if.else356
  %165 = load i8*, i8** %arg, align 8, !dbg !834
  %call361 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0)) #11, !dbg !836
  %tobool362 = icmp ne i32 %call361, 0, !dbg !836
  br i1 %tobool362, label %if.else373, label %if.then363, !dbg !837

if.then363:                                       ; preds = %if.else360
  %166 = load i32, i32* %argn, align 4, !dbg !838
  %add364 = add nsw i32 %166, 1, !dbg !841
  %167 = load i32, i32* %argc.addr, align 4, !dbg !842
  %cmp365 = icmp sge i32 %add364, %167, !dbg !843
  br i1 %cmp365, label %if.then367, label %if.end368, !dbg !844

if.then367:                                       ; preds = %if.then363
  call void @Usage(), !dbg !845
  br label %if.end368, !dbg !845

if.end368:                                        ; preds = %if.then367, %if.then363
  %168 = load i8**, i8*** %argv.addr, align 8, !dbg !846
  %169 = load i32, i32* %argn, align 4, !dbg !847
  %inc369 = add nsw i32 %169, 1, !dbg !847
  store i32 %inc369, i32* %argn, align 4, !dbg !847
  %idxprom370 = sext i32 %inc369 to i64, !dbg !846
  %arrayidx371 = getelementptr inbounds i8*, i8** %168, i64 %idxprom370, !dbg !846
  %170 = load i8*, i8** %arrayidx371, align 8, !dbg !846
  store i8* %170, i8** @ApplyCommand, align 8, !dbg !848
  %171 = load i32, i32* @DoModify, align 4, !dbg !849
  %or372 = or i32 %171, 1, !dbg !849
  store i32 %or372, i32* @DoModify, align 4, !dbg !849
  br label %if.end376, !dbg !850

if.else373:                                       ; preds = %if.else360
  %172 = load i8*, i8** %arg, align 8, !dbg !851
  %call374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i64 0, i64 0), i8* %172), !dbg !853
  %call375 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0)), !dbg !854
  call void @exit(i32 -1) #9, !dbg !855
  unreachable, !dbg !855

if.end376:                                        ; preds = %if.end368
  br label %if.end377

if.end377:                                        ; preds = %if.end376, %if.then359
  br label %if.end378

if.end378:                                        ; preds = %if.end377, %if.then355
  br label %if.end379

if.end379:                                        ; preds = %if.end378, %if.then351
  br label %if.end380

if.end380:                                        ; preds = %if.end379, %if.end347
  br label %if.end381

if.end381:                                        ; preds = %if.end380, %if.end327
  br label %if.end382

if.end382:                                        ; preds = %if.end381, %if.end317
  br label %if.end383

if.end383:                                        ; preds = %if.end382, %if.end303
  br label %if.end384

if.end384:                                        ; preds = %if.end383, %if.end282
  br label %if.end385

if.end385:                                        ; preds = %if.end384, %if.then227
  br label %if.end386

if.end386:                                        ; preds = %if.end385, %if.end221
  br label %if.end387

if.end387:                                        ; preds = %if.end386, %if.end203
  br label %if.end388

if.end388:                                        ; preds = %if.end387, %if.then170
  br label %if.end389

if.end389:                                        ; preds = %if.end388, %if.then166
  br label %if.end390

if.end390:                                        ; preds = %if.end389, %if.end162
  br label %if.end391

if.end391:                                        ; preds = %if.end390, %if.then147
  br label %if.end392

if.end392:                                        ; preds = %if.end391, %if.then142
  br label %if.end393

if.end393:                                        ; preds = %if.end392, %if.end137
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.then124
  br label %if.end395

if.end395:                                        ; preds = %if.end394, %if.then116
  br label %if.end396

if.end396:                                        ; preds = %if.end395, %if.then111
  br label %if.end397

if.end397:                                        ; preds = %if.end396, %if.then107
  br label %if.end398

if.end398:                                        ; preds = %if.end397, %if.then103
  br label %if.end399

if.end399:                                        ; preds = %if.end398, %if.then99
  br label %if.end400

if.end400:                                        ; preds = %if.end399, %if.then95
  br label %if.end401

if.end401:                                        ; preds = %if.end400
  br label %if.end402

if.end402:                                        ; preds = %if.end401, %if.then86
  br label %if.end403

if.end403:                                        ; preds = %if.end402, %if.then82
  br label %if.end404

if.end404:                                        ; preds = %if.end403, %if.then78
  br label %if.end405

if.end405:                                        ; preds = %if.end404, %if.then73
  br label %if.end406

if.end406:                                        ; preds = %if.end405, %if.then68
  br label %if.end407

if.end407:                                        ; preds = %if.end406, %if.then60
  br label %if.end408

if.end408:                                        ; preds = %if.end407, %if.then52
  br label %if.end409

if.end409:                                        ; preds = %if.end408, %if.then45
  br label %if.end410

if.end410:                                        ; preds = %if.end409, %if.then40
  br label %if.end411

if.end411:                                        ; preds = %if.end410, %if.then35
  br label %if.end412

if.end412:                                        ; preds = %if.end411, %if.then30
  br label %if.end413

if.end413:                                        ; preds = %if.end412, %if.then25
  br label %if.end414

if.end414:                                        ; preds = %if.end413, %if.then20
  br label %if.end415

if.end415:                                        ; preds = %if.end414, %if.then15
  br label %if.end416

if.end416:                                        ; preds = %if.end415, %if.then10
  br label %if.end417

if.end417:                                        ; preds = %if.end416, %if.then5
  %173 = load i32, i32* %argn, align 4, !dbg !856
  %174 = load i32, i32* %argc.addr, align 4, !dbg !858
  %cmp418 = icmp sge i32 %173, %174, !dbg !859
  br i1 %cmp418, label %if.then420, label %if.end421, !dbg !860

if.then420:                                       ; preds = %if.end417
  call void @ErrFatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0)), !dbg !861
  br label %if.end421, !dbg !863

if.end421:                                        ; preds = %if.then420, %if.end417
  br label %for.inc422, !dbg !864

for.inc422:                                       ; preds = %if.end421
  %175 = load i32, i32* %argn, align 4, !dbg !865
  %inc423 = add nsw i32 %175, 1, !dbg !865
  store i32 %inc423, i32* %argn, align 4, !dbg !865
  br label %for.cond, !dbg !866, !llvm.loop !867

for.end424:                                       ; preds = %if.then, %for.cond
  %176 = load i32, i32* %argn, align 4, !dbg !869
  %177 = load i32, i32* %argc.addr, align 4, !dbg !871
  %cmp425 = icmp eq i32 %176, %177, !dbg !872
  br i1 %cmp425, label %if.then427, label %if.end428, !dbg !873

if.then427:                                       ; preds = %for.end424
  call void @ErrFatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i64 0, i64 0)), !dbg !874
  br label %if.end428, !dbg !876

if.end428:                                        ; preds = %if.then427, %for.end424
  %178 = load i8*, i8** @ThumbSaveName, align 8, !dbg !877
  %cmp429 = icmp ne i8* %178, null, !dbg !879
  br i1 %cmp429, label %land.lhs.true431, label %if.end437, !dbg !880

land.lhs.true431:                                 ; preds = %if.end428
  %179 = load i8*, i8** @ThumbSaveName, align 8, !dbg !881
  %call432 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0)) #11, !dbg !882
  %cmp433 = icmp eq i32 %call432, 0, !dbg !883
  br i1 %cmp433, label %if.then435, label %if.end437, !dbg !884

if.then435:                                       ; preds = %land.lhs.true431
  %call436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.68, i64 0, i64 0)), !dbg !885
  call void @exit(i32 0) #9, !dbg !887
  unreachable, !dbg !887

if.end437:                                        ; preds = %land.lhs.true431, %if.end428
  %180 = load i32, i32* @RegenThumbnail, align 4, !dbg !888
  %tobool438 = icmp ne i32 %180, 0, !dbg !888
  br i1 %tobool438, label %if.then439, label %if.end446, !dbg !890

if.then439:                                       ; preds = %if.end437
  %181 = load i8*, i8** @ThumbSaveName, align 8, !dbg !891
  %tobool440 = icmp ne i8* %181, null, !dbg !891
  br i1 %tobool440, label %if.then443, label %lor.lhs.false441, !dbg !894

lor.lhs.false441:                                 ; preds = %if.then439
  %182 = load i8*, i8** @ThumbInsertName, align 8, !dbg !895
  %tobool442 = icmp ne i8* %182, null, !dbg !895
  br i1 %tobool442, label %if.then443, label %if.end445, !dbg !896

if.then443:                                       ; preds = %lor.lhs.false441, %if.then439
  %call444 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.69, i64 0, i64 0)), !dbg !897
  call void @exit(i32 0) #9, !dbg !899
  unreachable, !dbg !899

if.end445:                                        ; preds = %lor.lhs.false441
  br label %if.end446, !dbg !900

if.end446:                                        ; preds = %if.end445, %if.end437
  %183 = load i32, i32* @EditComment, align 4, !dbg !901
  %tobool447 = icmp ne i32 %183, 0, !dbg !901
  br i1 %tobool447, label %if.then448, label %if.end457, !dbg !903

if.then448:                                       ; preds = %if.end446
  %184 = load i8*, i8** @CommentSavefileName, align 8, !dbg !904
  %cmp449 = icmp ne i8* %184, null, !dbg !907
  br i1 %cmp449, label %if.then454, label %lor.lhs.false451, !dbg !908

lor.lhs.false451:                                 ; preds = %if.then448
  %185 = load i8*, i8** @CommentInsertfileName, align 8, !dbg !909
  %cmp452 = icmp ne i8* %185, null, !dbg !910
  br i1 %cmp452, label %if.then454, label %if.end456, !dbg !911

if.then454:                                       ; preds = %lor.lhs.false451, %if.then448
  %call455 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.70, i64 0, i64 0)), !dbg !912
  call void @exit(i32 0) #9, !dbg !914
  unreachable, !dbg !914

if.end456:                                        ; preds = %lor.lhs.false451
  br label %if.end457, !dbg !915

if.end457:                                        ; preds = %if.end456, %if.end446
  %186 = load i8*, i8** @ExifXferScrFile, align 8, !dbg !916
  %tobool458 = icmp ne i8* %186, null, !dbg !916
  br i1 %tobool458, label %if.then459, label %if.end465, !dbg !918

if.then459:                                       ; preds = %if.end457
  %187 = load i8*, i8** @FilterModel, align 8, !dbg !919
  %tobool460 = icmp ne i8* %187, null, !dbg !919
  br i1 %tobool460, label %if.then463, label %lor.lhs.false461, !dbg !922

lor.lhs.false461:                                 ; preds = %if.then459
  %188 = load i8*, i8** @ApplyCommand, align 8, !dbg !923
  %tobool462 = icmp ne i8* %188, null, !dbg !923
  br i1 %tobool462, label %if.then463, label %if.end464, !dbg !924

if.then463:                                       ; preds = %lor.lhs.false461, %if.then459
  call void @ErrFatal(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.71, i64 0, i64 0)), !dbg !925
  br label %if.end464, !dbg !927

if.end464:                                        ; preds = %if.then463, %lor.lhs.false461
  br label %if.end465, !dbg !928

if.end465:                                        ; preds = %if.end464, %if.end457
  store i32 0, i32* @FileSequence, align 4, !dbg !929
  br label %for.cond466, !dbg !930

for.cond466:                                      ; preds = %for.inc478, %if.end465
  %189 = load i32, i32* %argn, align 4, !dbg !931
  %190 = load i32, i32* %argc.addr, align 4, !dbg !934
  %cmp467 = icmp slt i32 %189, %190, !dbg !935
  br i1 %cmp467, label %for.body469, label %for.end480, !dbg !936

for.body469:                                      ; preds = %for.cond466
  store i32 0, i32* @FilesMatched, align 4, !dbg !937
  %191 = load i8**, i8*** %argv.addr, align 8, !dbg !939
  %192 = load i32, i32* %argn, align 4, !dbg !940
  %idxprom470 = sext i32 %192 to i64, !dbg !939
  %arrayidx471 = getelementptr inbounds i8*, i8** %191, i64 %idxprom470, !dbg !939
  %193 = load i8*, i8** %arrayidx471, align 8, !dbg !939
  call void @ProcessFile(i8* %193), !dbg !941
  %194 = load i32, i32* @FilesMatched, align 4, !dbg !942
  %tobool472 = icmp ne i32 %194, 0, !dbg !942
  br i1 %tobool472, label %if.end477, label %if.then473, !dbg !944

if.then473:                                       ; preds = %for.body469
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !945
  %196 = load i8**, i8*** %argv.addr, align 8, !dbg !947
  %197 = load i32, i32* %argn, align 4, !dbg !948
  %idxprom474 = sext i32 %197 to i64, !dbg !947
  %arrayidx475 = getelementptr inbounds i8*, i8** %196, i64 %idxprom474, !dbg !947
  %198 = load i8*, i8** %arrayidx475, align 8, !dbg !947
  %call476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i64 0, i64 0), i8* %198), !dbg !949
  br label %if.end477, !dbg !950

if.end477:                                        ; preds = %if.then473, %for.body469
  br label %for.inc478, !dbg !951

for.inc478:                                       ; preds = %if.end477
  %199 = load i32, i32* %argn, align 4, !dbg !952
  %inc479 = add nsw i32 %199, 1, !dbg !952
  store i32 %inc479, i32* %argn, align 4, !dbg !952
  br label %for.cond466, !dbg !953, !llvm.loop !954

for.end480:                                       ; preds = %for.cond466
  %200 = load i32, i32* @FileSequence, align 4, !dbg !956
  %cmp481 = icmp eq i32 %200, 0, !dbg !958
  br i1 %cmp481, label %if.then483, label %if.else484, !dbg !959

if.then483:                                       ; preds = %for.end480
  store i32 1, i32* %retval, align 4, !dbg !960
  br label %return, !dbg !960

if.else484:                                       ; preds = %for.end480
  store i32 0, i32* %retval, align 4, !dbg !962
  br label %return, !dbg !962

return:                                           ; preds = %if.else484, %if.then483
  %201 = load i32, i32* %retval, align 4, !dbg !964
  ret i32 %201, !dbg !964
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @Usage() #0 !dbg !965 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.73, i64 0, i64 0)), !dbg !968
  %0 = load i8*, i8** @progname, align 8, !dbg !969
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0), i8* %0), !dbg !970
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7038 x i8], [7038 x i8]* @.str.75, i64 0, i64 0)), !dbg !971
  call void @exit(i32 1) #9, !dbg !972
  unreachable, !dbg !972
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i64 @ParseCmdDate(i8* %DateSpecified) #0 !dbg !973 {
entry:
  %DateSpecified.addr = alloca i8*, align 8
  %a = alloca i32, align 4
  %tm = alloca %struct.tm, align 8
  %UnixTime = alloca i64, align 8
  store i8* %DateSpecified, i8** %DateSpecified.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %DateSpecified.addr, metadata !976, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.declare(metadata i32* %a, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata %struct.tm* %tm, metadata !980, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata i64* %UnixTime, metadata !982, metadata !DIExpression()), !dbg !983
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 6, !dbg !984
  store i32 -1, i32* %tm_wday, align 8, !dbg !985
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 0, !dbg !986
  store i32 0, i32* %tm_sec, align 8, !dbg !987
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 1, !dbg !988
  store i32 0, i32* %tm_min, align 4, !dbg !989
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 2, !dbg !990
  store i32 0, i32* %tm_hour, align 8, !dbg !991
  %0 = load i8*, i8** %DateSpecified.addr, align 8, !dbg !992
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 5, !dbg !993
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 4, !dbg !994
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 3, !dbg !995
  %tm_hour1 = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 2, !dbg !996
  %tm_min2 = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 1, !dbg !997
  %tm_sec3 = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 0, !dbg !998
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i64 0, i64 0), i32* %tm_year, i32* %tm_mon, i32* %tm_mday, i32* %tm_hour1, i32* %tm_min2, i32* %tm_sec3) #10, !dbg !999
  store i32 %call, i32* %a, align 4, !dbg !1000
  %1 = load i32, i32* %a, align 4, !dbg !1001
  %cmp = icmp ne i32 %1, 3, !dbg !1003
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1004

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %a, align 4, !dbg !1005
  %cmp4 = icmp slt i32 %2, 5, !dbg !1006
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1007

if.then:                                          ; preds = %land.lhs.true
  call void @ErrFatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i64 0, i64 0)), !dbg !1008
  br label %if.end, !dbg !1010

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 8, !dbg !1011
  store i32 -1, i32* %tm_isdst, align 8, !dbg !1012
  %tm_mon5 = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 4, !dbg !1013
  %3 = load i32, i32* %tm_mon5, align 8, !dbg !1014
  %sub = sub nsw i32 %3, 1, !dbg !1014
  store i32 %sub, i32* %tm_mon5, align 8, !dbg !1014
  %tm_year6 = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 5, !dbg !1015
  %4 = load i32, i32* %tm_year6, align 4, !dbg !1016
  %sub7 = sub nsw i32 %4, 1900, !dbg !1016
  store i32 %sub7, i32* %tm_year6, align 4, !dbg !1016
  %call8 = call i64 @mktime(%struct.tm* %tm) #10, !dbg !1017
  store i64 %call8, i64* %UnixTime, align 8, !dbg !1018
  %5 = load i64, i64* %UnixTime, align 8, !dbg !1019
  %cmp9 = icmp eq i64 %5, -1, !dbg !1021
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1022

if.then10:                                        ; preds = %if.end
  call void @ErrFatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.78, i64 0, i64 0)), !dbg !1023
  br label %if.end11, !dbg !1025

if.end11:                                         ; preds = %if.then10, %if.end
  %6 = load i64, i64* %UnixTime, align 8, !dbg !1026
  ret i64 %6, !dbg !1027
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8*, i8*) #6

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

declare dso_local i32 @Exif2tm(%struct.tm*, i8*) #2

; Function Attrs: nounwind
declare dso_local i64 @mktime(%struct.tm*) #4

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @ProcessFile(i8* %FileName) #0 !dbg !1028 {
entry:
  %FileName.addr = alloca i8*, align 8
  %Modified = alloca i32, align 4
  %ReadMode = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %dummy = alloca %struct.stat, align 8
  %RelativeExifName = alloca [4097 x i8], align 16
  %ExifSection = alloca %struct.Section_t*, align 8
  %NumRedundant = alloca i32, align 4
  %WasRedundant = alloca i32, align 4
  %StartRedundant = alloca i8*, align 8
  %NewExifSize = alloca i32, align 4
  %IptcSection = alloca %struct.Section_t*, align 8
  %OutFileName = alloca [4097 x i8], align 16
  %ThumbFileName = alloca [4097 x i8], align 16
  %CommentSec = alloca %struct.Section_t*, align 8
  %Comment = alloca [16001 x i8], align 16
  %CommentSize = alloca i32, align 4
  %DummyData = alloca i8*, align 8
  %CommentFileName = alloca [4097 x i8], align 16
  %CommentFile = alloca %struct._IO_FILE*, align 8
  %EditFileName = alloca [4101 x i8], align 16
  %size = alloca i32, align 4
  %CommentSec247 = alloca %struct.Section_t*, align 8
  %OutFileName252 = alloca [4097 x i8], align 16
  %CommentFile253 = alloca %struct._IO_FILE*, align 8
  %tm = alloca %struct.tm, align 8
  %UnixTime = alloca i64, align 8
  %TempBuf = alloca [50 x i8], align 16
  %a = alloca i32, align 4
  %ExifSection282 = alloca %struct.Section_t*, align 8
  %Pointer = alloca i8*, align 8
  %BackupName = alloca [4101 x i8], align 16
  %buf = alloca %struct.stat, align 8
  %mtime = alloca %struct.utimbuf, align 8
  %tm404 = alloca %struct.tm, align 8
  %UnixTime405 = alloca i64, align 8
  %mtime406 = alloca %struct.utimbuf, align 8
  store i8* %FileName, i8** %FileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %FileName.addr, metadata !1029, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.declare(metadata i32* %Modified, metadata !1031, metadata !DIExpression()), !dbg !1032
  store i32 0, i32* %Modified, align 4, !dbg !1032
  call void @llvm.dbg.declare(metadata i32* %ReadMode, metadata !1033, metadata !DIExpression()), !dbg !1035
  %0 = load i8*, i8** %FileName.addr, align 8, !dbg !1036
  %call = call i64 @strlen(i8* %0) #11, !dbg !1038
  %cmp = icmp uge i64 %call, 4095, !dbg !1039
  br i1 %cmp, label %if.then, label %if.end, !dbg !1040

if.then:                                          ; preds = %entry
  call void @ErrFatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i64 0, i64 0)), !dbg !1041
  br label %if.end, !dbg !1043

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* %ReadMode, align 4, !dbg !1044
  %1 = load i8*, i8** %FileName.addr, align 8, !dbg !1045
  store i8* %1, i8** @CurrentFile, align 8, !dbg !1046
  store i32 1, i32* @FilesMatched, align 4, !dbg !1047
  call void @ResetJpgfile(), !dbg !1048
  call void (...) @Clear_EXIF(), !dbg !1049
  call void @llvm.memset.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 0, i32 0), i8 0, i64 20472, i1 false), !dbg !1050
  store i32 -1, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 12), align 4, !dbg !1051
  store i32 -1, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 22), align 4, !dbg !1052
  store i32 -1, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 21), align 8, !dbg !1053
  call void @llvm.dbg.declare(metadata %struct.stat* %st, metadata !1054, metadata !DIExpression()), !dbg !1056
  %2 = load i8*, i8** %FileName.addr, align 8, !dbg !1057
  %call1 = call i32 @stat(i8* %2, %struct.stat* %st) #10, !dbg !1059
  %cmp2 = icmp sge i32 %call1, 0, !dbg !1060
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1061

if.then3:                                         ; preds = %if.end
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 12, !dbg !1062
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0, !dbg !1062
  %3 = load i64, i64* %tv_sec, align 8, !dbg !1062
  store i64 %3, i64* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 1), align 8, !dbg !1064
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8, !dbg !1065
  %4 = load i64, i64* %st_size, align 8, !dbg !1065
  %conv = trunc i64 %4 to i32, !dbg !1066
  store i32 %conv, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 3), align 8, !dbg !1067
  br label %if.end4, !dbg !1068

if.else:                                          ; preds = %if.end
  call void @ErrFatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0)), !dbg !1069
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %5 = load i32, i32* @DoModify, align 4, !dbg !1071
  %and = and i32 %5, 1, !dbg !1073
  %tobool = icmp ne i32 %and, 0, !dbg !1073
  br i1 %tobool, label %if.then8, label %lor.lhs.false, !dbg !1074

lor.lhs.false:                                    ; preds = %if.end4
  %6 = load i32, i32* @RenameToDate, align 4, !dbg !1075
  %tobool5 = icmp ne i32 %6, 0, !dbg !1075
  br i1 %tobool5, label %if.then8, label %lor.lhs.false6, !dbg !1076

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %7 = load i32, i32* @Exif2FileTime, align 4, !dbg !1077
  %tobool7 = icmp ne i32 %7, 0, !dbg !1077
  br i1 %tobool7, label %if.then8, label %if.end14, !dbg !1078

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end4
  %8 = load i8*, i8** %FileName.addr, align 8, !dbg !1079
  %call9 = call i32 @access(i8* %8, i32 2) #10, !dbg !1082
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1082
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !1083

if.then11:                                        ; preds = %if.then8
  %9 = load i8*, i8** %FileName.addr, align 8, !dbg !1084
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.81, i64 0, i64 0), i8* %9), !dbg !1086
  br label %return, !dbg !1087

if.end13:                                         ; preds = %if.then8
  br label %if.end14, !dbg !1088

if.end14:                                         ; preds = %if.end13, %lor.lhs.false6
  %10 = load i8*, i8** %FileName.addr, align 8, !dbg !1089
  %call15 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 0, i64 0), i8* %10, i64 4096) #10, !dbg !1090
  %11 = load i8*, i8** @ApplyCommand, align 8, !dbg !1091
  %tobool16 = icmp ne i8* %11, null, !dbg !1091
  br i1 %tobool16, label %if.then19, label %lor.lhs.false17, !dbg !1093

lor.lhs.false17:                                  ; preds = %if.end14
  %12 = load i32, i32* @AutoRotate, align 4, !dbg !1094
  %tobool18 = icmp ne i32 %12, 0, !dbg !1094
  br i1 %tobool18, label %if.then19, label %if.end41, !dbg !1095

if.then19:                                        ; preds = %lor.lhs.false17, %if.end14
  %13 = load i8*, i8** %FileName.addr, align 8, !dbg !1096
  %call20 = call i32 @ReadJpegFile(i8* %13, i32 1), !dbg !1099
  %tobool21 = icmp ne i32 %call20, 0, !dbg !1099
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !1100

if.then22:                                        ; preds = %if.then19
  br label %return, !dbg !1101

if.end23:                                         ; preds = %if.then19
  %call24 = call i32 @CheckFileSkip(), !dbg !1102
  %tobool25 = icmp ne i32 %call24, 0, !dbg !1102
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1104

if.then26:                                        ; preds = %if.end23
  call void @DiscardData(), !dbg !1105
  br label %return, !dbg !1107

if.end27:                                         ; preds = %if.end23
  call void @DiscardAllButExif(), !dbg !1108
  %14 = load i32, i32* @AutoRotate, align 4, !dbg !1109
  %tobool28 = icmp ne i32 %14, 0, !dbg !1109
  br i1 %tobool28, label %if.then29, label %if.else34, !dbg !1111

if.then29:                                        ; preds = %if.end27
  %15 = load i8*, i8** %FileName.addr, align 8, !dbg !1112
  %call30 = call i32 @DoAutoRotate(i8* %15), !dbg !1115
  %tobool31 = icmp ne i32 %call30, 0, !dbg !1115
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1116

if.then32:                                        ; preds = %if.then29
  store i32 1, i32* %Modified, align 4, !dbg !1117
  br label %if.end33, !dbg !1119

if.end33:                                         ; preds = %if.then32, %if.then29
  br label %if.end40, !dbg !1120

if.else34:                                        ; preds = %if.end27
  call void @llvm.dbg.declare(metadata %struct.stat* %dummy, metadata !1121, metadata !DIExpression()), !dbg !1123
  %16 = load i8*, i8** %FileName.addr, align 8, !dbg !1124
  %17 = load i32, i32* @Quiet, align 4, !dbg !1125
  %tobool35 = icmp ne i32 %17, 0, !dbg !1125
  %18 = zext i1 %tobool35 to i64, !dbg !1125
  %cond = select i1 %tobool35, i32 0, i32 1, !dbg !1125
  call void @DoCommand(i8* %16, i32 %cond), !dbg !1126
  %19 = load i8*, i8** %FileName.addr, align 8, !dbg !1127
  %call36 = call i32 @stat(i8* %19, %struct.stat* %dummy) #10, !dbg !1129
  %tobool37 = icmp ne i32 %call36, 0, !dbg !1129
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1130

if.then38:                                        ; preds = %if.else34
  br label %return, !dbg !1131

if.end39:                                         ; preds = %if.else34
  store i32 1, i32* %Modified, align 4, !dbg !1133
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end33
  store i32 2, i32* %ReadMode, align 4, !dbg !1134
  br label %if.end41, !dbg !1135

if.end41:                                         ; preds = %if.end40, %lor.lhs.false17
  %20 = load i8*, i8** @ExifXferScrFile, align 8, !dbg !1136
  %tobool42 = icmp ne i8* %20, null, !dbg !1136
  br i1 %tobool42, label %if.then43, label %if.end49, !dbg !1138

if.then43:                                        ; preds = %if.end41
  call void @llvm.dbg.declare(metadata [4097 x i8]* %RelativeExifName, metadata !1139, metadata !DIExpression()), !dbg !1144
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %RelativeExifName, i64 0, i64 0, !dbg !1145
  %21 = load i8*, i8** @ExifXferScrFile, align 8, !dbg !1146
  %22 = load i8*, i8** %FileName.addr, align 8, !dbg !1147
  call void @RelativeName(i8* %arraydecay, i8* %21, i8* %22), !dbg !1148
  %arraydecay44 = getelementptr inbounds [4097 x i8], [4097 x i8]* %RelativeExifName, i64 0, i64 0, !dbg !1149
  %call45 = call i32 @ReadJpegFile(i8* %arraydecay44, i32 1), !dbg !1151
  %tobool46 = icmp ne i32 %call45, 0, !dbg !1151
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !1152

if.then47:                                        ; preds = %if.then43
  br label %return, !dbg !1153

if.end48:                                         ; preds = %if.then43
  call void @DiscardAllButExif(), !dbg !1154
  store i32 1, i32* %Modified, align 4, !dbg !1155
  store i32 2, i32* %ReadMode, align 4, !dbg !1156
  br label %if.end49, !dbg !1157

if.end49:                                         ; preds = %if.end48, %if.end41
  %23 = load i32, i32* @DoModify, align 4, !dbg !1158
  %tobool50 = icmp ne i32 %23, 0, !dbg !1158
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !1160

if.then51:                                        ; preds = %if.end49
  %24 = load i32, i32* %ReadMode, align 4, !dbg !1161
  %or = or i32 %24, 2, !dbg !1161
  store i32 %or, i32* %ReadMode, align 4, !dbg !1161
  br label %if.end52, !dbg !1163

if.end52:                                         ; preds = %if.then51, %if.end49
  %25 = load i8*, i8** %FileName.addr, align 8, !dbg !1164
  %26 = load i32, i32* %ReadMode, align 4, !dbg !1166
  %call53 = call i32 @ReadJpegFile(i8* %25, i32 %26), !dbg !1167
  %tobool54 = icmp ne i32 %call53, 0, !dbg !1167
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !1168

if.then55:                                        ; preds = %if.end52
  br label %return, !dbg !1169

if.end56:                                         ; preds = %if.end52
  %call57 = call i32 @CheckFileSkip(), !dbg !1170
  %tobool58 = icmp ne i32 %call57, 0, !dbg !1170
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !1172

if.then59:                                        ; preds = %if.end56
  call void @DiscardData(), !dbg !1173
  br label %return, !dbg !1175

if.end60:                                         ; preds = %if.end56
  %27 = load i32, i32* @TrimExifTrailingZeroes, align 4, !dbg !1176
  %tobool61 = icmp ne i32 %27, 0, !dbg !1176
  br i1 %tobool61, label %if.then62, label %if.end94, !dbg !1178

if.then62:                                        ; preds = %if.end60
  %28 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 36), align 8, !dbg !1179
  %tobool63 = icmp ne i8 %28, 0, !dbg !1182
  br i1 %tobool63, label %if.then64, label %if.end93, !dbg !1183

if.then64:                                        ; preds = %if.then62
  call void @llvm.dbg.declare(metadata %struct.Section_t** %ExifSection, metadata !1184, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.declare(metadata i32* %NumRedundant, metadata !1194, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.declare(metadata i32* %WasRedundant, metadata !1196, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.declare(metadata i8** %StartRedundant, metadata !1198, metadata !DIExpression()), !dbg !1200
  %call65 = call %struct.Section_t* @FindSection(i32 225), !dbg !1201
  store %struct.Section_t* %call65, %struct.Section_t** %ExifSection, align 8, !dbg !1202
  %29 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1203
  %Data = getelementptr inbounds %struct.Section_t, %struct.Section_t* %29, i32 0, i32 0, !dbg !1204
  %30 = load i8*, i8** %Data, align 8, !dbg !1204
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 8, !dbg !1205
  %31 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !1206
  %idx.ext = sext i32 %31 to i64, !dbg !1207
  %add.ptr66 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext, !dbg !1207
  %32 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 34), align 8, !dbg !1208
  %idx.ext67 = sext i32 %32 to i64, !dbg !1209
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr66, i64 %idx.ext67, !dbg !1209
  store i8* %add.ptr68, i8** %StartRedundant, align 8, !dbg !1210
  %33 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1211
  %Size = getelementptr inbounds %struct.Section_t, %struct.Section_t* %33, i32 0, i32 2, !dbg !1212
  %34 = load i32, i32* %Size, align 4, !dbg !1212
  %35 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !1213
  %36 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 34), align 8, !dbg !1214
  %add = add nsw i32 %35, %36, !dbg !1215
  %add69 = add nsw i32 %add, 8, !dbg !1216
  %sub = sub i32 %34, %add69, !dbg !1217
  store i32 %sub, i32* %NumRedundant, align 4, !dbg !1218
  store i32 %sub, i32* %WasRedundant, align 4, !dbg !1219
  br label %for.cond, !dbg !1220

for.cond:                                         ; preds = %for.inc, %if.then64
  %37 = load i32, i32* %NumRedundant, align 4, !dbg !1221
  %cmp70 = icmp sgt i32 %37, 0, !dbg !1224
  br i1 %cmp70, label %land.rhs, label %land.end, !dbg !1225

land.rhs:                                         ; preds = %for.cond
  %38 = load i8*, i8** %StartRedundant, align 8, !dbg !1226
  %39 = load i32, i32* %NumRedundant, align 4, !dbg !1227
  %sub72 = sub nsw i32 %39, 1, !dbg !1228
  %idxprom = sext i32 %sub72 to i64, !dbg !1226
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %idxprom, !dbg !1226
  %40 = load i8, i8* %arrayidx, align 1, !dbg !1226
  %conv73 = zext i8 %40 to i32, !dbg !1226
  %cmp74 = icmp eq i32 %conv73, 0, !dbg !1229
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %41 = phi i1 [ false, %for.cond ], [ %cmp74, %land.rhs ], !dbg !1230
  br i1 %41, label %for.body, label %for.end, !dbg !1231

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !1231

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %NumRedundant, align 4, !dbg !1232
  %dec = add nsw i32 %42, -1, !dbg !1232
  store i32 %dec, i32* %NumRedundant, align 4, !dbg !1232
  br label %for.cond, !dbg !1233, !llvm.loop !1234

for.end:                                          ; preds = %land.end
  %43 = load i32, i32* %NumRedundant, align 4, !dbg !1236
  %44 = load i32, i32* %WasRedundant, align 4, !dbg !1238
  %cmp76 = icmp ne i32 %43, %44, !dbg !1239
  br i1 %cmp76, label %if.then78, label %if.else91, !dbg !1240

if.then78:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata i32* %NewExifSize, metadata !1241, metadata !DIExpression()), !dbg !1243
  %45 = load i32, i32* %WasRedundant, align 4, !dbg !1244
  %46 = load i32, i32* %NumRedundant, align 4, !dbg !1245
  %sub79 = sub nsw i32 %45, %46, !dbg !1246
  %47 = load i8*, i8** %FileName.addr, align 8, !dbg !1247
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.82, i64 0, i64 0), i32 %sub79, i8* %47), !dbg !1248
  %48 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !1249
  %49 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 34), align 8, !dbg !1250
  %add81 = add nsw i32 %48, %49, !dbg !1251
  %add82 = add nsw i32 %add81, 8, !dbg !1252
  %50 = load i32, i32* %NumRedundant, align 4, !dbg !1253
  %add83 = add nsw i32 %add82, %50, !dbg !1254
  store i32 %add83, i32* %NewExifSize, align 4, !dbg !1255
  %51 = load i32, i32* %NewExifSize, align 4, !dbg !1256
  %shr = ashr i32 %51, 8, !dbg !1257
  %conv84 = trunc i32 %shr to i8, !dbg !1258
  %52 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1259
  %Data85 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %52, i32 0, i32 0, !dbg !1260
  %53 = load i8*, i8** %Data85, align 8, !dbg !1260
  %arrayidx86 = getelementptr inbounds i8, i8* %53, i64 0, !dbg !1259
  store i8 %conv84, i8* %arrayidx86, align 1, !dbg !1261
  %54 = load i32, i32* %NewExifSize, align 4, !dbg !1262
  %conv87 = trunc i32 %54 to i8, !dbg !1263
  %55 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1264
  %Data88 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %55, i32 0, i32 0, !dbg !1265
  %56 = load i8*, i8** %Data88, align 8, !dbg !1265
  %arrayidx89 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1264
  store i8 %conv87, i8* %arrayidx89, align 1, !dbg !1266
  %57 = load i32, i32* %NewExifSize, align 4, !dbg !1267
  %58 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1268
  %Size90 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %58, i32 0, i32 2, !dbg !1269
  store i32 %57, i32* %Size90, align 4, !dbg !1270
  store i32 1, i32* %Modified, align 4, !dbg !1271
  br label %if.end92, !dbg !1272

if.else91:                                        ; preds = %for.end
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.then78
  br label %if.end93, !dbg !1273

if.end93:                                         ; preds = %if.end92, %if.then62
  br label %if.end94, !dbg !1274

if.end94:                                         ; preds = %if.end93, %if.end60
  %59 = load i32, i32* @FileSequence, align 4, !dbg !1275
  %add95 = add nsw i32 %59, 1, !dbg !1275
  store i32 %add95, i32* @FileSequence, align 4, !dbg !1275
  %60 = load i32, i32* @ShowConcise, align 4, !dbg !1276
  %tobool96 = icmp ne i32 %60, 0, !dbg !1276
  br i1 %tobool96, label %if.then97, label %if.else98, !dbg !1278

if.then97:                                        ; preds = %if.end94
  call void @ShowConciseImageInfo(), !dbg !1279
  br label %if.end111, !dbg !1281

if.else98:                                        ; preds = %if.end94
  %61 = load i32, i32* @DoModify, align 4, !dbg !1282
  %tobool99 = icmp ne i32 %61, 0, !dbg !1285
  br i1 %tobool99, label %lor.lhs.false100, label %if.then102, !dbg !1286

lor.lhs.false100:                                 ; preds = %if.else98
  %62 = load i32, i32* @ShowTags, align 4, !dbg !1287
  %tobool101 = icmp ne i32 %62, 0, !dbg !1287
  br i1 %tobool101, label %if.then102, label %if.end110, !dbg !1288

if.then102:                                       ; preds = %lor.lhs.false100, %if.else98
  %63 = load i32, i32* @ShowFileInfo, align 4, !dbg !1289
  call void @ShowImageInfo(i32 %63), !dbg !1291
  call void @llvm.dbg.declare(metadata %struct.Section_t** %IptcSection, metadata !1292, metadata !DIExpression()), !dbg !1294
  %call103 = call %struct.Section_t* @FindSection(i32 237), !dbg !1295
  store %struct.Section_t* %call103, %struct.Section_t** %IptcSection, align 8, !dbg !1296
  %64 = load %struct.Section_t*, %struct.Section_t** %IptcSection, align 8, !dbg !1297
  %tobool104 = icmp ne %struct.Section_t* %64, null, !dbg !1297
  br i1 %tobool104, label %if.then105, label %if.end108, !dbg !1299

if.then105:                                       ; preds = %if.then102
  %65 = load %struct.Section_t*, %struct.Section_t** %IptcSection, align 8, !dbg !1300
  %Data106 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %65, i32 0, i32 0, !dbg !1302
  %66 = load i8*, i8** %Data106, align 8, !dbg !1302
  %67 = load %struct.Section_t*, %struct.Section_t** %IptcSection, align 8, !dbg !1303
  %Size107 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %67, i32 0, i32 2, !dbg !1304
  %68 = load i32, i32* %Size107, align 4, !dbg !1304
  call void @show_IPTC(i8* %66, i32 %68), !dbg !1305
  br label %if.end108, !dbg !1306

if.end108:                                        ; preds = %if.then105, %if.then102
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !1307
  br label %if.end110, !dbg !1308

if.end110:                                        ; preds = %if.end108, %lor.lhs.false100
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then97
  %69 = load i8*, i8** @ThumbSaveName, align 8, !dbg !1309
  %tobool112 = icmp ne i8* %69, null, !dbg !1309
  br i1 %tobool112, label %if.then113, label %if.end122, !dbg !1311

if.then113:                                       ; preds = %if.end111
  call void @llvm.dbg.declare(metadata [4097 x i8]* %OutFileName, metadata !1312, metadata !DIExpression()), !dbg !1314
  %arraydecay114 = getelementptr inbounds [4097 x i8], [4097 x i8]* %OutFileName, i64 0, i64 0, !dbg !1315
  %70 = load i8*, i8** @ThumbSaveName, align 8, !dbg !1316
  %71 = load i8*, i8** %FileName.addr, align 8, !dbg !1317
  call void @RelativeName(i8* %arraydecay114, i8* %70, i8* %71), !dbg !1318
  %arraydecay115 = getelementptr inbounds [4097 x i8], [4097 x i8]* %OutFileName, i64 0, i64 0, !dbg !1319
  %call116 = call i32 @SaveThumbnail(i8* %arraydecay115), !dbg !1321
  %tobool117 = icmp ne i32 %call116, 0, !dbg !1321
  br i1 %tobool117, label %if.then118, label %if.end121, !dbg !1322

if.then118:                                       ; preds = %if.then113
  %arraydecay119 = getelementptr inbounds [4097 x i8], [4097 x i8]* %OutFileName, i64 0, i64 0, !dbg !1323
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i64 0, i64 0), i8* %arraydecay119), !dbg !1325
  br label %if.end121, !dbg !1326

if.end121:                                        ; preds = %if.then118, %if.then113
  br label %if.end122, !dbg !1327

if.end122:                                        ; preds = %if.end121, %if.end111
  %72 = load i32, i32* @CreateExifSection, align 4, !dbg !1328
  %tobool123 = icmp ne i32 %72, 0, !dbg !1328
  br i1 %tobool123, label %if.then124, label %if.end125, !dbg !1330

if.then124:                                       ; preds = %if.end122
  call void @create_EXIF(), !dbg !1331
  store i32 1, i32* %Modified, align 4, !dbg !1333
  br label %if.end125, !dbg !1334

if.end125:                                        ; preds = %if.then124, %if.end122
  %73 = load i32, i32* @RegenThumbnail, align 4, !dbg !1335
  %tobool126 = icmp ne i32 %73, 0, !dbg !1335
  br i1 %tobool126, label %if.then127, label %if.end132, !dbg !1337

if.then127:                                       ; preds = %if.end125
  %74 = load i8*, i8** %FileName.addr, align 8, !dbg !1338
  %call128 = call i32 @RegenerateThumbnail(i8* %74), !dbg !1341
  %tobool129 = icmp ne i32 %call128, 0, !dbg !1341
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !1342

if.then130:                                       ; preds = %if.then127
  store i32 1, i32* %Modified, align 4, !dbg !1343
  br label %if.end131, !dbg !1345

if.end131:                                        ; preds = %if.then130, %if.then127
  br label %if.end132, !dbg !1346

if.end132:                                        ; preds = %if.end131, %if.end125
  %75 = load i8*, i8** @ThumbInsertName, align 8, !dbg !1347
  %tobool133 = icmp ne i8* %75, null, !dbg !1347
  br i1 %tobool133, label %if.then134, label %if.else141, !dbg !1349

if.then134:                                       ; preds = %if.end132
  call void @llvm.dbg.declare(metadata [4097 x i8]* %ThumbFileName, metadata !1350, metadata !DIExpression()), !dbg !1352
  %arraydecay135 = getelementptr inbounds [4097 x i8], [4097 x i8]* %ThumbFileName, i64 0, i64 0, !dbg !1353
  %76 = load i8*, i8** @ThumbInsertName, align 8, !dbg !1354
  %77 = load i8*, i8** %FileName.addr, align 8, !dbg !1355
  call void @RelativeName(i8* %arraydecay135, i8* %76, i8* %77), !dbg !1356
  %arraydecay136 = getelementptr inbounds [4097 x i8], [4097 x i8]* %ThumbFileName, i64 0, i64 0, !dbg !1357
  %call137 = call i32 @ReplaceThumbnail(i8* %arraydecay136), !dbg !1359
  %tobool138 = icmp ne i32 %call137, 0, !dbg !1359
  br i1 %tobool138, label %if.then139, label %if.end140, !dbg !1360

if.then139:                                       ; preds = %if.then134
  store i32 1, i32* %Modified, align 4, !dbg !1361
  br label %if.end140, !dbg !1363

if.end140:                                        ; preds = %if.then139, %if.then134
  br label %if.end149, !dbg !1364

if.else141:                                       ; preds = %if.end132
  %78 = load i32, i32* @TrimExif, align 4, !dbg !1365
  %tobool142 = icmp ne i32 %78, 0, !dbg !1365
  br i1 %tobool142, label %if.then143, label %if.end148, !dbg !1367

if.then143:                                       ; preds = %if.else141
  %call144 = call i32 @ReplaceThumbnail(i8* null), !dbg !1368
  %tobool145 = icmp ne i32 %call144, 0, !dbg !1368
  br i1 %tobool145, label %if.then146, label %if.end147, !dbg !1371

if.then146:                                       ; preds = %if.then143
  store i32 1, i32* %Modified, align 4, !dbg !1372
  br label %if.end147, !dbg !1374

if.end147:                                        ; preds = %if.then146, %if.then143
  br label %if.end148, !dbg !1375

if.end148:                                        ; preds = %if.end147, %if.else141
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end140
  %79 = load i32, i32* @EditComment, align 4, !dbg !1376
  %tobool150 = icmp ne i32 %79, 0, !dbg !1376
  br i1 %tobool150, label %if.then155, label %lor.lhs.false151, !dbg !1378

lor.lhs.false151:                                 ; preds = %if.end149
  %80 = load i8*, i8** @CommentInsertfileName, align 8, !dbg !1379
  %tobool152 = icmp ne i8* %80, null, !dbg !1379
  br i1 %tobool152, label %if.then155, label %lor.lhs.false153, !dbg !1380

lor.lhs.false153:                                 ; preds = %lor.lhs.false151
  %81 = load i8*, i8** @CommentInsertLiteral, align 8, !dbg !1381
  %tobool154 = icmp ne i8* %81, null, !dbg !1381
  br i1 %tobool154, label %if.then155, label %if.end244, !dbg !1382

if.then155:                                       ; preds = %lor.lhs.false153, %lor.lhs.false151, %if.end149
  call void @llvm.dbg.declare(metadata %struct.Section_t** %CommentSec, metadata !1383, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.declare(metadata [16001 x i8]* %Comment, metadata !1386, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.declare(metadata i32* %CommentSize, metadata !1391, metadata !DIExpression()), !dbg !1392
  %call156 = call %struct.Section_t* @FindSection(i32 254), !dbg !1393
  store %struct.Section_t* %call156, %struct.Section_t** %CommentSec, align 8, !dbg !1394
  %82 = load %struct.Section_t*, %struct.Section_t** %CommentSec, align 8, !dbg !1395
  %cmp157 = icmp eq %struct.Section_t* %82, null, !dbg !1397
  br i1 %cmp157, label %if.then159, label %if.end165, !dbg !1398

if.then159:                                       ; preds = %if.then155
  call void @llvm.dbg.declare(metadata i8** %DummyData, metadata !1399, metadata !DIExpression()), !dbg !1401
  %call160 = call noalias i8* @malloc(i64 3) #10, !dbg !1402
  store i8* %call160, i8** %DummyData, align 8, !dbg !1403
  %83 = load i8*, i8** %DummyData, align 8, !dbg !1404
  %arrayidx161 = getelementptr inbounds i8, i8* %83, i64 0, !dbg !1404
  store i8 0, i8* %arrayidx161, align 1, !dbg !1405
  %84 = load i8*, i8** %DummyData, align 8, !dbg !1406
  %arrayidx162 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !1406
  store i8 2, i8* %arrayidx162, align 1, !dbg !1407
  %85 = load i8*, i8** %DummyData, align 8, !dbg !1408
  %arrayidx163 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !1408
  store i8 0, i8* %arrayidx163, align 1, !dbg !1409
  %86 = load i8*, i8** %DummyData, align 8, !dbg !1410
  %call164 = call %struct.Section_t* @CreateSection(i32 254, i8* %86, i32 2), !dbg !1411
  store %struct.Section_t* %call164, %struct.Section_t** %CommentSec, align 8, !dbg !1412
  br label %if.end165, !dbg !1413

if.end165:                                        ; preds = %if.then159, %if.then155
  %87 = load %struct.Section_t*, %struct.Section_t** %CommentSec, align 8, !dbg !1414
  %Size166 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %87, i32 0, i32 2, !dbg !1415
  %88 = load i32, i32* %Size166, align 4, !dbg !1415
  %sub167 = sub i32 %88, 2, !dbg !1416
  store i32 %sub167, i32* %CommentSize, align 4, !dbg !1417
  %89 = load i32, i32* %CommentSize, align 4, !dbg !1418
  %cmp168 = icmp sgt i32 %89, 16000, !dbg !1420
  br i1 %cmp168, label %if.then170, label %if.end172, !dbg !1421

if.then170:                                       ; preds = %if.end165
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1422
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.84, i64 0, i64 0), i32 16000), !dbg !1424
  store i32 16000, i32* %CommentSize, align 4, !dbg !1425
  br label %if.end172, !dbg !1426

if.end172:                                        ; preds = %if.then170, %if.end165
  %91 = load i8*, i8** @CommentInsertfileName, align 8, !dbg !1427
  %tobool173 = icmp ne i8* %91, null, !dbg !1427
  br i1 %tobool173, label %if.then174, label %if.else193, !dbg !1429

if.then174:                                       ; preds = %if.end172
  call void @llvm.dbg.declare(metadata [4097 x i8]* %CommentFileName, metadata !1430, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %CommentFile, metadata !1433, metadata !DIExpression()), !dbg !1488
  %arraydecay175 = getelementptr inbounds [4097 x i8], [4097 x i8]* %CommentFileName, i64 0, i64 0, !dbg !1489
  %92 = load i8*, i8** @CommentInsertfileName, align 8, !dbg !1490
  %93 = load i8*, i8** %FileName.addr, align 8, !dbg !1491
  call void @RelativeName(i8* %arraydecay175, i8* %92, i8* %93), !dbg !1492
  %arraydecay176 = getelementptr inbounds [4097 x i8], [4097 x i8]* %CommentFileName, i64 0, i64 0, !dbg !1493
  %call177 = call %struct._IO_FILE* @fopen(i8* %arraydecay176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)), !dbg !1494
  store %struct._IO_FILE* %call177, %struct._IO_FILE** %CommentFile, align 8, !dbg !1495
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %CommentFile, align 8, !dbg !1496
  %cmp178 = icmp eq %struct._IO_FILE* %94, null, !dbg !1498
  br i1 %cmp178, label %if.then180, label %if.else183, !dbg !1499

if.then180:                                       ; preds = %if.then174
  %arraydecay181 = getelementptr inbounds [4097 x i8], [4097 x i8]* %CommentFileName, i64 0, i64 0, !dbg !1500
  %call182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i64 0, i64 0), i8* %arraydecay181), !dbg !1502
  br label %if.end192, !dbg !1503

if.else183:                                       ; preds = %if.then174
  %arraydecay184 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 0, !dbg !1504
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %CommentFile, align 8, !dbg !1506
  %call185 = call i64 @fread(i8* %arraydecay184, i64 1, i64 16000, %struct._IO_FILE* %95), !dbg !1507
  %conv186 = trunc i64 %call185 to i32, !dbg !1507
  store i32 %conv186, i32* %CommentSize, align 4, !dbg !1508
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %CommentFile, align 8, !dbg !1509
  %call187 = call i32 @fclose(%struct._IO_FILE* %96), !dbg !1510
  %97 = load i32, i32* %CommentSize, align 4, !dbg !1511
  %cmp188 = icmp slt i32 %97, 0, !dbg !1513
  br i1 %cmp188, label %if.then190, label %if.end191, !dbg !1514

if.then190:                                       ; preds = %if.else183
  store i32 0, i32* %CommentSize, align 4, !dbg !1515
  br label %if.end191, !dbg !1516

if.end191:                                        ; preds = %if.then190, %if.else183
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.then180
  br label %if.end214, !dbg !1517

if.else193:                                       ; preds = %if.end172
  %98 = load i8*, i8** @CommentInsertLiteral, align 8, !dbg !1518
  %tobool194 = icmp ne i8* %98, null, !dbg !1518
  br i1 %tobool194, label %if.then195, label %if.else201, !dbg !1520

if.then195:                                       ; preds = %if.else193
  %arraydecay196 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 0, !dbg !1521
  %99 = load i8*, i8** @CommentInsertLiteral, align 8, !dbg !1523
  %call197 = call i8* @strncpy(i8* %arraydecay196, i8* %99, i64 16000) #10, !dbg !1524
  %arraydecay198 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 0, !dbg !1525
  %call199 = call i64 @strlen(i8* %arraydecay198) #11, !dbg !1526
  %conv200 = trunc i64 %call199 to i32, !dbg !1526
  store i32 %conv200, i32* %CommentSize, align 4, !dbg !1527
  br label %if.end213, !dbg !1528

if.else201:                                       ; preds = %if.else193
  %arraydecay202 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 0, !dbg !1529
  %100 = load %struct.Section_t*, %struct.Section_t** %CommentSec, align 8, !dbg !1531
  %Data203 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %100, i32 0, i32 0, !dbg !1532
  %101 = load i8*, i8** %Data203, align 8, !dbg !1532
  %add.ptr204 = getelementptr inbounds i8, i8* %101, i64 2, !dbg !1533
  %102 = load i32, i32* %CommentSize, align 4, !dbg !1534
  %conv205 = sext i32 %102 to i64, !dbg !1534
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay202, i8* align 1 %add.ptr204, i64 %conv205, i1 false), !dbg !1529
  call void @llvm.dbg.declare(metadata [4101 x i8]* %EditFileName, metadata !1535, metadata !DIExpression()), !dbg !1540
  %arraydecay206 = getelementptr inbounds [4101 x i8], [4101 x i8]* %EditFileName, i64 0, i64 0, !dbg !1541
  %103 = load i8*, i8** %FileName.addr, align 8, !dbg !1542
  %call207 = call i8* @strcpy(i8* %arraydecay206, i8* %103) #10, !dbg !1543
  %arraydecay208 = getelementptr inbounds [4101 x i8], [4101 x i8]* %EditFileName, i64 0, i64 0, !dbg !1544
  %call209 = call i8* @strcat(i8* %arraydecay208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)) #10, !dbg !1545
  %arraydecay210 = getelementptr inbounds [4101 x i8], [4101 x i8]* %EditFileName, i64 0, i64 0, !dbg !1546
  %arraydecay211 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 0, !dbg !1547
  %104 = load i32, i32* %CommentSize, align 4, !dbg !1548
  %call212 = call i32 @FileEditComment(i8* %arraydecay210, i8* %arraydecay211, i32 %104), !dbg !1549
  store i32 %call212, i32* %CommentSize, align 4, !dbg !1550
  br label %if.end213

if.end213:                                        ; preds = %if.else201, %if.then195
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.end192
  %arraydecay215 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 0, !dbg !1551
  %105 = load %struct.Section_t*, %struct.Section_t** %CommentSec, align 8, !dbg !1553
  %Data216 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %105, i32 0, i32 0, !dbg !1554
  %106 = load i8*, i8** %Data216, align 8, !dbg !1554
  %add.ptr217 = getelementptr inbounds i8, i8* %106, i64 2, !dbg !1555
  %call218 = call i32 @strcmp(i8* %arraydecay215, i8* %add.ptr217) #11, !dbg !1556
  %tobool219 = icmp ne i32 %call218, 0, !dbg !1556
  br i1 %tobool219, label %if.then220, label %if.end239, !dbg !1557

if.then220:                                       ; preds = %if.end214
  call void @llvm.dbg.declare(metadata i32* %size, metadata !1558, metadata !DIExpression()), !dbg !1560
  %107 = load i32, i32* %CommentSize, align 4, !dbg !1561
  %add221 = add nsw i32 %107, 2, !dbg !1562
  store i32 %add221, i32* %size, align 4, !dbg !1563
  %108 = load %struct.Section_t*, %struct.Section_t** %CommentSec, align 8, !dbg !1564
  %Data222 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %108, i32 0, i32 0, !dbg !1565
  %109 = load i8*, i8** %Data222, align 8, !dbg !1565
  call void @free(i8* %109) #10, !dbg !1566
  %110 = load i32, i32* %size, align 4, !dbg !1567
  %111 = load %struct.Section_t*, %struct.Section_t** %CommentSec, align 8, !dbg !1568
  %Size223 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %111, i32 0, i32 2, !dbg !1569
  store i32 %110, i32* %Size223, align 4, !dbg !1570
  %112 = load i32, i32* %size, align 4, !dbg !1571
  %conv224 = sext i32 %112 to i64, !dbg !1571
  %call225 = call noalias i8* @malloc(i64 %conv224) #10, !dbg !1572
  %113 = load %struct.Section_t*, %struct.Section_t** %CommentSec, align 8, !dbg !1573
  %Data226 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %113, i32 0, i32 0, !dbg !1574
  store i8* %call225, i8** %Data226, align 8, !dbg !1575
  %114 = load i32, i32* %size, align 4, !dbg !1576
  %shr227 = ashr i32 %114, 8, !dbg !1577
  %conv228 = trunc i32 %shr227 to i8, !dbg !1578
  %115 = load %struct.Section_t*, %struct.Section_t** %CommentSec, align 8, !dbg !1579
  %Data229 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %115, i32 0, i32 0, !dbg !1580
  %116 = load i8*, i8** %Data229, align 8, !dbg !1580
  %arrayidx230 = getelementptr inbounds i8, i8* %116, i64 0, !dbg !1579
  store i8 %conv228, i8* %arrayidx230, align 1, !dbg !1581
  %117 = load i32, i32* %size, align 4, !dbg !1582
  %conv231 = trunc i32 %117 to i8, !dbg !1583
  %118 = load %struct.Section_t*, %struct.Section_t** %CommentSec, align 8, !dbg !1584
  %Data232 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %118, i32 0, i32 0, !dbg !1585
  %119 = load i8*, i8** %Data232, align 8, !dbg !1585
  %arrayidx233 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1584
  store i8 %conv231, i8* %arrayidx233, align 1, !dbg !1586
  %120 = load %struct.Section_t*, %struct.Section_t** %CommentSec, align 8, !dbg !1587
  %Data234 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %120, i32 0, i32 0, !dbg !1588
  %121 = load i8*, i8** %Data234, align 8, !dbg !1588
  %add.ptr235 = getelementptr inbounds i8, i8* %121, i64 2, !dbg !1589
  %arraydecay236 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 0, !dbg !1590
  %122 = load i32, i32* %size, align 4, !dbg !1591
  %sub237 = sub nsw i32 %122, 2, !dbg !1592
  %conv238 = sext i32 %sub237 to i64, !dbg !1591
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr235, i8* align 16 %arraydecay236, i64 %conv238, i1 false), !dbg !1590
  store i32 1, i32* %Modified, align 4, !dbg !1593
  br label %if.end239, !dbg !1594

if.end239:                                        ; preds = %if.then220, %if.end214
  %123 = load i32, i32* %Modified, align 4, !dbg !1595
  %tobool240 = icmp ne i32 %123, 0, !dbg !1595
  br i1 %tobool240, label %if.end243, label %if.then241, !dbg !1597

if.then241:                                       ; preds = %if.end239
  %call242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i64 0, i64 0)), !dbg !1598
  br label %if.end243, !dbg !1600

if.end243:                                        ; preds = %if.then241, %if.end239
  br label %if.end244, !dbg !1601

if.end244:                                        ; preds = %if.end243, %lor.lhs.false153
  %124 = load i8*, i8** @CommentSavefileName, align 8, !dbg !1602
  %tobool245 = icmp ne i8* %124, null, !dbg !1602
  br i1 %tobool245, label %if.then246, label %if.end271, !dbg !1604

if.then246:                                       ; preds = %if.end244
  call void @llvm.dbg.declare(metadata %struct.Section_t** %CommentSec247, metadata !1605, metadata !DIExpression()), !dbg !1607
  %call248 = call %struct.Section_t* @FindSection(i32 254), !dbg !1608
  store %struct.Section_t* %call248, %struct.Section_t** %CommentSec247, align 8, !dbg !1609
  %125 = load %struct.Section_t*, %struct.Section_t** %CommentSec247, align 8, !dbg !1610
  %cmp249 = icmp ne %struct.Section_t* %125, null, !dbg !1612
  br i1 %cmp249, label %if.then251, label %if.else268, !dbg !1613

if.then251:                                       ; preds = %if.then246
  call void @llvm.dbg.declare(metadata [4097 x i8]* %OutFileName252, metadata !1614, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %CommentFile253, metadata !1617, metadata !DIExpression()), !dbg !1618
  %arraydecay254 = getelementptr inbounds [4097 x i8], [4097 x i8]* %OutFileName252, i64 0, i64 0, !dbg !1619
  %126 = load i8*, i8** @CommentSavefileName, align 8, !dbg !1620
  %127 = load i8*, i8** %FileName.addr, align 8, !dbg !1621
  call void @RelativeName(i8* %arraydecay254, i8* %126, i8* %127), !dbg !1622
  %arraydecay255 = getelementptr inbounds [4097 x i8], [4097 x i8]* %OutFileName252, i64 0, i64 0, !dbg !1623
  %call256 = call %struct._IO_FILE* @fopen(i8* %arraydecay255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i64 0, i64 0)), !dbg !1624
  store %struct._IO_FILE* %call256, %struct._IO_FILE** %CommentFile253, align 8, !dbg !1625
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %CommentFile253, align 8, !dbg !1626
  %tobool257 = icmp ne %struct._IO_FILE* %128, null, !dbg !1626
  br i1 %tobool257, label %if.then258, label %if.else266, !dbg !1628

if.then258:                                       ; preds = %if.then251
  %129 = load %struct.Section_t*, %struct.Section_t** %CommentSec247, align 8, !dbg !1629
  %Data259 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %129, i32 0, i32 0, !dbg !1631
  %130 = load i8*, i8** %Data259, align 8, !dbg !1631
  %add.ptr260 = getelementptr inbounds i8, i8* %130, i64 2, !dbg !1632
  %131 = load %struct.Section_t*, %struct.Section_t** %CommentSec247, align 8, !dbg !1633
  %Size261 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %131, i32 0, i32 2, !dbg !1634
  %132 = load i32, i32* %Size261, align 4, !dbg !1634
  %sub262 = sub i32 %132, 2, !dbg !1635
  %conv263 = zext i32 %sub262 to i64, !dbg !1633
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %CommentFile253, align 8, !dbg !1636
  %call264 = call i64 @fwrite(i8* %add.ptr260, i64 %conv263, i64 1, %struct._IO_FILE* %133), !dbg !1637
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %CommentFile253, align 8, !dbg !1638
  %call265 = call i32 @fclose(%struct._IO_FILE* %134), !dbg !1639
  br label %if.end267, !dbg !1640

if.else266:                                       ; preds = %if.then251
  call void @ErrFatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.90, i64 0, i64 0)), !dbg !1641
  br label %if.end267

if.end267:                                        ; preds = %if.else266, %if.then258
  br label %if.end270, !dbg !1643

if.else268:                                       ; preds = %if.then246
  %135 = load i8*, i8** %FileName.addr, align 8, !dbg !1644
  %call269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.91, i64 0, i64 0), i8* %135), !dbg !1646
  br label %if.end270

if.end270:                                        ; preds = %if.else268, %if.end267
  br label %if.end271, !dbg !1647

if.end271:                                        ; preds = %if.end270, %if.end244
  %136 = load i64, i64* @ExifTimeAdjust, align 8, !dbg !1648
  %tobool272 = icmp ne i64 %136, 0, !dbg !1648
  br i1 %tobool272, label %if.then279, label %lor.lhs.false273, !dbg !1650

lor.lhs.false273:                                 ; preds = %if.end271
  %137 = load i64, i64* @ExifTimeSet, align 8, !dbg !1651
  %tobool274 = icmp ne i64 %137, 0, !dbg !1651
  br i1 %tobool274, label %if.then279, label %lor.lhs.false275, !dbg !1652

lor.lhs.false275:                                 ; preds = %lor.lhs.false273
  %138 = load i32, i32* @DateSetChars, align 4, !dbg !1653
  %tobool276 = icmp ne i32 %138, 0, !dbg !1653
  br i1 %tobool276, label %if.then279, label %lor.lhs.false277, !dbg !1654

lor.lhs.false277:                                 ; preds = %lor.lhs.false275
  %139 = load i32, i32* @FileTimeToExif, align 4, !dbg !1655
  %tobool278 = icmp ne i32 %139, 0, !dbg !1655
  br i1 %tobool278, label %if.then279, label %if.end335, !dbg !1656

if.then279:                                       ; preds = %lor.lhs.false277, %lor.lhs.false275, %lor.lhs.false273, %if.end271
  %140 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 39), align 8, !dbg !1657
  %tobool280 = icmp ne i32 %140, 0, !dbg !1660
  br i1 %tobool280, label %if.then281, label %if.else332, !dbg !1661

if.then281:                                       ; preds = %if.then279
  call void @llvm.dbg.declare(metadata %struct.tm* %tm, metadata !1662, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.declare(metadata i64* %UnixTime, metadata !1665, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.declare(metadata [50 x i8]* %TempBuf, metadata !1667, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.declare(metadata i32* %a, metadata !1672, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.declare(metadata %struct.Section_t** %ExifSection282, metadata !1674, metadata !DIExpression()), !dbg !1675
  %141 = load i64, i64* @ExifTimeSet, align 8, !dbg !1676
  %tobool283 = icmp ne i64 %141, 0, !dbg !1676
  br i1 %tobool283, label %if.then284, label %if.else285, !dbg !1678

if.then284:                                       ; preds = %if.then281
  %142 = load i64, i64* @ExifTimeSet, align 8, !dbg !1679
  store i64 %142, i64* %UnixTime, align 8, !dbg !1681
  br label %if.end311, !dbg !1682

if.else285:                                       ; preds = %if.then281
  %143 = load i32, i32* @FileTimeToExif, align 4, !dbg !1683
  %tobool286 = icmp ne i32 %143, 0, !dbg !1683
  br i1 %tobool286, label %if.then287, label %if.end288, !dbg !1686

if.then287:                                       ; preds = %if.else285
  call void @FileTimeAsString(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0)), !dbg !1687
  br label %if.end288, !dbg !1689

if.end288:                                        ; preds = %if.then287, %if.else285
  %144 = load i32, i32* @DateSetChars, align 4, !dbg !1690
  %tobool289 = icmp ne i32 %144, 0, !dbg !1690
  br i1 %tobool289, label %if.then290, label %if.end299, !dbg !1692

if.then290:                                       ; preds = %if.end288
  %145 = load i32, i32* @DateSetChars, align 4, !dbg !1693
  %conv291 = zext i32 %145 to i64, !dbg !1693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0), i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @DateSet, i64 0, i64 0), i64 %conv291, i1 false), !dbg !1695
  store i32 1970, i32* %a, align 4, !dbg !1696
  %call292 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @DateSet, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %a) #10, !dbg !1697
  %146 = load i32, i32* %a, align 4, !dbg !1698
  %cmp293 = icmp slt i32 %146, 1970, !dbg !1700
  br i1 %cmp293, label %if.then295, label %if.end298, !dbg !1701

if.then295:                                       ; preds = %if.then290
  %arraydecay296 = getelementptr inbounds [50 x i8], [50 x i8]* %TempBuf, i64 0, i64 0, !dbg !1702
  %call297 = call i8* @strcpy(i8* %arraydecay296, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0)) #10, !dbg !1704
  br label %skip_unixtime, !dbg !1705

if.end298:                                        ; preds = %if.then290
  br label %if.end299, !dbg !1706

if.end299:                                        ; preds = %if.end298, %if.end288
  %call300 = call i32 @Exif2tm(%struct.tm* %tm, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0)), !dbg !1707
  %tobool301 = icmp ne i32 %call300, 0, !dbg !1707
  br i1 %tobool301, label %if.end303, label %if.then302, !dbg !1709

if.then302:                                       ; preds = %if.end299
  br label %badtime, !dbg !1710

if.end303:                                        ; preds = %if.end299
  %call304 = call i64 @mktime(%struct.tm* %tm) #10, !dbg !1711
  store i64 %call304, i64* %UnixTime, align 8, !dbg !1712
  %147 = load i64, i64* %UnixTime, align 8, !dbg !1713
  %conv305 = trunc i64 %147 to i32, !dbg !1715
  %cmp306 = icmp eq i32 %conv305, -1, !dbg !1716
  br i1 %cmp306, label %if.then308, label %if.end309, !dbg !1717

if.then308:                                       ; preds = %if.end303
  br label %badtime, !dbg !1718

if.end309:                                        ; preds = %if.end303
  %148 = load i64, i64* @ExifTimeAdjust, align 8, !dbg !1719
  %149 = load i64, i64* %UnixTime, align 8, !dbg !1720
  %add310 = add nsw i64 %149, %148, !dbg !1720
  store i64 %add310, i64* %UnixTime, align 8, !dbg !1720
  br label %if.end311

if.end311:                                        ; preds = %if.end309, %if.then284
  %call312 = call %struct.tm* @localtime(i64* %UnixTime) #10, !dbg !1721
  %150 = bitcast %struct.tm* %tm to i8*, !dbg !1722
  %151 = bitcast %struct.tm* %call312 to i8*, !dbg !1722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 56, i1 false), !dbg !1722
  %arraydecay313 = getelementptr inbounds [50 x i8], [50 x i8]* %TempBuf, i64 0, i64 0, !dbg !1723
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 5, !dbg !1724
  %152 = load i32, i32* %tm_year, align 4, !dbg !1724
  %add314 = add nsw i32 %152, 1900, !dbg !1725
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 4, !dbg !1726
  %153 = load i32, i32* %tm_mon, align 8, !dbg !1726
  %add315 = add nsw i32 %153, 1, !dbg !1727
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 3, !dbg !1728
  %154 = load i32, i32* %tm_mday, align 4, !dbg !1728
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 2, !dbg !1729
  %155 = load i32, i32* %tm_hour, align 8, !dbg !1729
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 1, !dbg !1730
  %156 = load i32, i32* %tm_min, align 4, !dbg !1730
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 0, !dbg !1731
  %157 = load i32, i32* %tm_sec, align 8, !dbg !1731
  %call316 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay313, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.92, i64 0, i64 0), i32 %add314, i32 %add315, i32 %154, i32 %155, i32 %156, i32 %157) #10, !dbg !1732
  br label %skip_unixtime, !dbg !1732

skip_unixtime:                                    ; preds = %if.end311, %if.then295
  call void @llvm.dbg.label(metadata !1733), !dbg !1734
  %call317 = call %struct.Section_t* @FindSection(i32 225), !dbg !1735
  store %struct.Section_t* %call317, %struct.Section_t** %ExifSection282, align 8, !dbg !1736
  store i32 0, i32* %a, align 4, !dbg !1737
  br label %for.cond318, !dbg !1739

for.cond318:                                      ; preds = %for.inc329, %skip_unixtime
  %158 = load i32, i32* %a, align 4, !dbg !1740
  %159 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 39), align 8, !dbg !1742
  %cmp319 = icmp slt i32 %158, %159, !dbg !1743
  br i1 %cmp319, label %for.body321, label %for.end330, !dbg !1744

for.body321:                                      ; preds = %for.cond318
  call void @llvm.dbg.declare(metadata i8** %Pointer, metadata !1745, metadata !DIExpression()), !dbg !1747
  %160 = load %struct.Section_t*, %struct.Section_t** %ExifSection282, align 8, !dbg !1748
  %Data322 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %160, i32 0, i32 0, !dbg !1749
  %161 = load i8*, i8** %Data322, align 8, !dbg !1749
  %162 = load i32, i32* %a, align 4, !dbg !1750
  %idxprom323 = sext i32 %162 to i64, !dbg !1751
  %arrayidx324 = getelementptr inbounds [10 x i32], [10 x i32]* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 38), i64 0, i64 %idxprom323, !dbg !1751
  %163 = load i32, i32* %arrayidx324, align 4, !dbg !1751
  %idx.ext325 = sext i32 %163 to i64, !dbg !1752
  %add.ptr326 = getelementptr inbounds i8, i8* %161, i64 %idx.ext325, !dbg !1752
  %add.ptr327 = getelementptr inbounds i8, i8* %add.ptr326, i64 8, !dbg !1753
  store i8* %add.ptr327, i8** %Pointer, align 8, !dbg !1754
  %164 = load i8*, i8** %Pointer, align 8, !dbg !1755
  %arraydecay328 = getelementptr inbounds [50 x i8], [50 x i8]* %TempBuf, i64 0, i64 0, !dbg !1756
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %164, i8* align 16 %arraydecay328, i64 19, i1 false), !dbg !1756
  br label %for.inc329, !dbg !1757

for.inc329:                                       ; preds = %for.body321
  %165 = load i32, i32* %a, align 4, !dbg !1758
  %inc = add nsw i32 %165, 1, !dbg !1758
  store i32 %inc, i32* %a, align 4, !dbg !1758
  br label %for.cond318, !dbg !1759, !llvm.loop !1760

for.end330:                                       ; preds = %for.cond318
  %arraydecay331 = getelementptr inbounds [50 x i8], [50 x i8]* %TempBuf, i64 0, i64 0, !dbg !1762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0), i8* align 16 %arraydecay331, i64 19, i1 false), !dbg !1762
  store i32 1, i32* %Modified, align 4, !dbg !1763
  br label %if.end334, !dbg !1764

if.else332:                                       ; preds = %if.then279
  %166 = load i8*, i8** %FileName.addr, align 8, !dbg !1765
  %call333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.93, i64 0, i64 0), i8* %166), !dbg !1767
  br label %if.end334

if.end334:                                        ; preds = %if.else332, %for.end330
  br label %if.end335, !dbg !1768

if.end335:                                        ; preds = %if.end334, %lor.lhs.false277
  %167 = load i32, i32* @DeleteComments, align 4, !dbg !1769
  %tobool336 = icmp ne i32 %167, 0, !dbg !1769
  br i1 %tobool336, label %if.then337, label %if.end342, !dbg !1771

if.then337:                                       ; preds = %if.end335
  %call338 = call i32 @RemoveSectionType(i32 254), !dbg !1772
  %tobool339 = icmp ne i32 %call338, 0, !dbg !1772
  br i1 %tobool339, label %if.then340, label %if.end341, !dbg !1775

if.then340:                                       ; preds = %if.then337
  store i32 1, i32* %Modified, align 4, !dbg !1776
  br label %if.end341, !dbg !1777

if.end341:                                        ; preds = %if.then340, %if.then337
  br label %if.end342, !dbg !1778

if.end342:                                        ; preds = %if.end341, %if.end335
  %168 = load i32, i32* @DeleteExif, align 4, !dbg !1779
  %tobool343 = icmp ne i32 %168, 0, !dbg !1779
  br i1 %tobool343, label %if.then344, label %if.end349, !dbg !1781

if.then344:                                       ; preds = %if.end342
  %call345 = call i32 @RemoveSectionType(i32 225), !dbg !1782
  %tobool346 = icmp ne i32 %call345, 0, !dbg !1782
  br i1 %tobool346, label %if.then347, label %if.end348, !dbg !1785

if.then347:                                       ; preds = %if.then344
  store i32 1, i32* %Modified, align 4, !dbg !1786
  br label %if.end348, !dbg !1787

if.end348:                                        ; preds = %if.then347, %if.then344
  br label %if.end349, !dbg !1788

if.end349:                                        ; preds = %if.end348, %if.end342
  %169 = load i32, i32* @DeleteIptc, align 4, !dbg !1789
  %tobool350 = icmp ne i32 %169, 0, !dbg !1789
  br i1 %tobool350, label %if.then351, label %if.end356, !dbg !1791

if.then351:                                       ; preds = %if.end349
  %call352 = call i32 @RemoveSectionType(i32 237), !dbg !1792
  %tobool353 = icmp ne i32 %call352, 0, !dbg !1792
  br i1 %tobool353, label %if.then354, label %if.end355, !dbg !1795

if.then354:                                       ; preds = %if.then351
  store i32 1, i32* %Modified, align 4, !dbg !1796
  br label %if.end355, !dbg !1797

if.end355:                                        ; preds = %if.then354, %if.then351
  br label %if.end356, !dbg !1798

if.end356:                                        ; preds = %if.end355, %if.end349
  %170 = load i32, i32* @DeleteXmp, align 4, !dbg !1799
  %tobool357 = icmp ne i32 %170, 0, !dbg !1799
  br i1 %tobool357, label %if.then358, label %if.end363, !dbg !1801

if.then358:                                       ; preds = %if.end356
  %call359 = call i32 @RemoveSectionType(i32 4321), !dbg !1802
  %tobool360 = icmp ne i32 %call359, 0, !dbg !1802
  br i1 %tobool360, label %if.then361, label %if.end362, !dbg !1805

if.then361:                                       ; preds = %if.then358
  store i32 1, i32* %Modified, align 4, !dbg !1806
  br label %if.end362, !dbg !1807

if.end362:                                        ; preds = %if.then361, %if.then358
  br label %if.end363, !dbg !1808

if.end363:                                        ; preds = %if.end362, %if.end356
  %171 = load i32, i32* @DeleteUnknown, align 4, !dbg !1809
  %tobool364 = icmp ne i32 %171, 0, !dbg !1809
  br i1 %tobool364, label %if.then365, label %if.end370, !dbg !1811

if.then365:                                       ; preds = %if.end363
  %call366 = call i32 @RemoveUnknownSections(), !dbg !1812
  %tobool367 = icmp ne i32 %call366, 0, !dbg !1812
  br i1 %tobool367, label %if.then368, label %if.end369, !dbg !1815

if.then368:                                       ; preds = %if.then365
  store i32 1, i32* %Modified, align 4, !dbg !1816
  br label %if.end369, !dbg !1817

if.end369:                                        ; preds = %if.then368, %if.then365
  br label %if.end370, !dbg !1818

if.end370:                                        ; preds = %if.end369, %if.end363
  %172 = load i32, i32* %Modified, align 4, !dbg !1819
  %tobool371 = icmp ne i32 %172, 0, !dbg !1819
  br i1 %tobool371, label %if.then372, label %if.end399, !dbg !1821

if.then372:                                       ; preds = %if.end370
  call void @llvm.dbg.declare(metadata [4101 x i8]* %BackupName, metadata !1822, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.declare(metadata %struct.stat* %buf, metadata !1825, metadata !DIExpression()), !dbg !1826
  %173 = load i32, i32* @Quiet, align 4, !dbg !1827
  %tobool373 = icmp ne i32 %173, 0, !dbg !1827
  br i1 %tobool373, label %if.end376, label %if.then374, !dbg !1829

if.then374:                                       ; preds = %if.then372
  %174 = load i8*, i8** %FileName.addr, align 8, !dbg !1830
  %call375 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i64 0, i64 0), i8* %174), !dbg !1831
  br label %if.end376, !dbg !1831

if.end376:                                        ; preds = %if.then374, %if.then372
  %arraydecay377 = getelementptr inbounds [4101 x i8], [4101 x i8]* %BackupName, i64 0, i64 0, !dbg !1832
  %175 = load i8*, i8** %FileName.addr, align 8, !dbg !1833
  %call378 = call i8* @strcpy(i8* %arraydecay377, i8* %175) #10, !dbg !1834
  %arraydecay379 = getelementptr inbounds [4101 x i8], [4101 x i8]* %BackupName, i64 0, i64 0, !dbg !1835
  %call380 = call i8* @strcat(i8* %arraydecay379, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0)) #10, !dbg !1836
  %arraydecay381 = getelementptr inbounds [4101 x i8], [4101 x i8]* %BackupName, i64 0, i64 0, !dbg !1837
  %call382 = call i32 @unlink(i8* %arraydecay381) #10, !dbg !1838
  %176 = load i8*, i8** %FileName.addr, align 8, !dbg !1839
  %arraydecay383 = getelementptr inbounds [4101 x i8], [4101 x i8]* %BackupName, i64 0, i64 0, !dbg !1840
  %call384 = call i32 @rename(i8* %176, i8* %arraydecay383) #10, !dbg !1841
  %177 = load i8*, i8** %FileName.addr, align 8, !dbg !1842
  call void @WriteJpegFile(i8* %177), !dbg !1843
  %arraydecay385 = getelementptr inbounds [4101 x i8], [4101 x i8]* %BackupName, i64 0, i64 0, !dbg !1844
  %call386 = call i32 @stat(i8* %arraydecay385, %struct.stat* %buf) #10, !dbg !1846
  %cmp387 = icmp eq i32 %call386, 0, !dbg !1847
  br i1 %cmp387, label %if.then389, label %if.end396, !dbg !1848

if.then389:                                       ; preds = %if.end376
  call void @llvm.dbg.declare(metadata %struct.utimbuf* %mtime, metadata !1849, metadata !DIExpression()), !dbg !1856
  %178 = load i8*, i8** %FileName.addr, align 8, !dbg !1857
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3, !dbg !1858
  %179 = load i32, i32* %st_mode, align 8, !dbg !1858
  %call390 = call i32 @chmod(i8* %178, i32 %179) #10, !dbg !1859
  %st_mtim391 = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 12, !dbg !1860
  %tv_sec392 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim391, i32 0, i32 0, !dbg !1860
  %180 = load i64, i64* %tv_sec392, align 8, !dbg !1860
  %actime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %mtime, i32 0, i32 0, !dbg !1861
  store i64 %180, i64* %actime, align 8, !dbg !1862
  %st_mtim393 = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 12, !dbg !1863
  %tv_sec394 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim393, i32 0, i32 0, !dbg !1863
  %181 = load i64, i64* %tv_sec394, align 8, !dbg !1863
  %modtime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %mtime, i32 0, i32 1, !dbg !1864
  store i64 %181, i64* %modtime, align 8, !dbg !1865
  %182 = load i8*, i8** %FileName.addr, align 8, !dbg !1866
  %call395 = call i32 @utime(i8* %182, %struct.utimbuf* %mtime) #10, !dbg !1867
  br label %if.end396, !dbg !1868

if.end396:                                        ; preds = %if.then389, %if.end376
  %arraydecay397 = getelementptr inbounds [4101 x i8], [4101 x i8]* %BackupName, i64 0, i64 0, !dbg !1869
  %call398 = call i32 @unlink(i8* %arraydecay397) #10, !dbg !1870
  br label %if.end399, !dbg !1871

if.end399:                                        ; preds = %if.end396, %if.end370
  %183 = load i32, i32* @Exif2FileTime, align 4, !dbg !1872
  %tobool400 = icmp ne i32 %183, 0, !dbg !1872
  br i1 %tobool400, label %if.then401, label %if.end433, !dbg !1874

if.then401:                                       ; preds = %if.end399
  %184 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 39), align 8, !dbg !1875
  %tobool402 = icmp ne i32 %184, 0, !dbg !1878
  br i1 %tobool402, label %if.then403, label %if.else430, !dbg !1879

if.then403:                                       ; preds = %if.then401
  call void @llvm.dbg.declare(metadata %struct.tm* %tm404, metadata !1880, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.declare(metadata i64* %UnixTime405, metadata !1883, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.declare(metadata %struct.utimbuf* %mtime406, metadata !1885, metadata !DIExpression()), !dbg !1886
  %call407 = call i32 @Exif2tm(%struct.tm* %tm404, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0)), !dbg !1887
  %tobool408 = icmp ne i32 %call407, 0, !dbg !1887
  br i1 %tobool408, label %if.end410, label %if.then409, !dbg !1889

if.then409:                                       ; preds = %if.then403
  br label %badtime, !dbg !1890

if.end410:                                        ; preds = %if.then403
  %call411 = call i64 @mktime(%struct.tm* %tm404) #10, !dbg !1891
  store i64 %call411, i64* %UnixTime405, align 8, !dbg !1892
  %185 = load i64, i64* %UnixTime405, align 8, !dbg !1893
  %conv412 = trunc i64 %185 to i32, !dbg !1895
  %cmp413 = icmp eq i32 %conv412, -1, !dbg !1896
  br i1 %cmp413, label %if.then415, label %if.end416, !dbg !1897

if.then415:                                       ; preds = %if.end410
  br label %badtime, !dbg !1898

if.end416:                                        ; preds = %if.end410
  %186 = load i64, i64* %UnixTime405, align 8, !dbg !1900
  %actime417 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %mtime406, i32 0, i32 0, !dbg !1901
  store i64 %186, i64* %actime417, align 8, !dbg !1902
  %187 = load i64, i64* %UnixTime405, align 8, !dbg !1903
  %modtime418 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %mtime406, i32 0, i32 1, !dbg !1904
  store i64 %187, i64* %modtime418, align 8, !dbg !1905
  %188 = load i8*, i8** %FileName.addr, align 8, !dbg !1906
  %call419 = call i32 @utime(i8* %188, %struct.utimbuf* %mtime406) #10, !dbg !1908
  %cmp420 = icmp ne i32 %call419, 0, !dbg !1909
  br i1 %cmp420, label %if.then422, label %if.else424, !dbg !1910

if.then422:                                       ; preds = %if.end416
  %189 = load i8*, i8** %FileName.addr, align 8, !dbg !1911
  %call423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.96, i64 0, i64 0), i8* %189), !dbg !1913
  br label %if.end429, !dbg !1914

if.else424:                                       ; preds = %if.end416
  %190 = load i32, i32* @Quiet, align 4, !dbg !1915
  %tobool425 = icmp ne i32 %190, 0, !dbg !1915
  br i1 %tobool425, label %if.end428, label %if.then426, !dbg !1918

if.then426:                                       ; preds = %if.else424
  %191 = load i8*, i8** %FileName.addr, align 8, !dbg !1919
  %call427 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0), i8* %191), !dbg !1920
  br label %if.end428, !dbg !1920

if.end428:                                        ; preds = %if.then426, %if.else424
  br label %if.end429

if.end429:                                        ; preds = %if.end428, %if.then422
  br label %if.end432, !dbg !1921

if.else430:                                       ; preds = %if.then401
  %192 = load i8*, i8** %FileName.addr, align 8, !dbg !1922
  %call431 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.98, i64 0, i64 0), i8* %192), !dbg !1924
  br label %if.end432

if.end432:                                        ; preds = %if.else430, %if.end429
  br label %if.end433, !dbg !1925

if.end433:                                        ; preds = %if.end432, %if.end399
  %193 = load i32, i32* @RenameToDate, align 4, !dbg !1926
  %tobool434 = icmp ne i32 %193, 0, !dbg !1926
  br i1 %tobool434, label %if.then435, label %if.end436, !dbg !1928

if.then435:                                       ; preds = %if.end433
  %194 = load i8*, i8** %FileName.addr, align 8, !dbg !1929
  call void @DoFileRenaming(i8* %194), !dbg !1931
  br label %if.end436, !dbg !1932

if.end436:                                        ; preds = %if.then435, %if.end433
  call void @DiscardData(), !dbg !1933
  br label %return, !dbg !1934

badtime:                                          ; preds = %if.then415, %if.then409, %if.then308, %if.then302
  call void @llvm.dbg.label(metadata !1935), !dbg !1936
  %call437 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.99, i64 0, i64 0), i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0)), !dbg !1937
  call void @DiscardData(), !dbg !1938
  br label %return, !dbg !1939

return:                                           ; preds = %badtime, %if.end436, %if.then59, %if.then55, %if.then47, %if.then38, %if.then26, %if.then22, %if.then11
  ret void, !dbg !1939
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #6

declare dso_local void @ResetJpgfile() #2

declare dso_local void @Clear_EXIF(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare dso_local i32 @access(i8*, i32) #4

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #4

declare dso_local i32 @ReadJpegFile(i8*, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @CheckFileSkip() #0 !dbg !1940 {
entry:
  %retval = alloca i32, align 4
  %0 = load i8*, i8** @FilterModel, align 8, !dbg !1943
  %tobool = icmp ne i8* %0, null, !dbg !1943
  br i1 %tobool, label %if.then, label %if.end2, !dbg !1945

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @FilterModel, align 8, !dbg !1946
  %call = call i8* @strstr(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 5, i64 0), i8* %1) #11, !dbg !1949
  %cmp = icmp eq i8* %call, null, !dbg !1950
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1951

if.then1:                                         ; preds = %if.then
  store i32 1, i32* %retval, align 4, !dbg !1952
  br label %return, !dbg !1952

if.end:                                           ; preds = %if.then
  br label %if.end2, !dbg !1954

if.end2:                                          ; preds = %if.end, %entry
  %2 = load i32, i32* @FilterQuality, align 4, !dbg !1955
  %cmp3 = icmp sgt i32 %2, 0, !dbg !1957
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !1958

if.then4:                                         ; preds = %if.end2
  %3 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 44), align 4, !dbg !1959
  %4 = load i32, i32* @FilterQuality, align 4, !dbg !1962
  %cmp5 = icmp slt i32 %3, %4, !dbg !1963
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1964

if.then6:                                         ; preds = %if.then4
  store i32 1, i32* %retval, align 4, !dbg !1965
  br label %return, !dbg !1965

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !1967

if.end8:                                          ; preds = %if.end7, %if.end2
  %5 = load i32, i32* @ExifOnly, align 4, !dbg !1968
  %tobool9 = icmp ne i32 %5, 0, !dbg !1968
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !1970

if.then10:                                        ; preds = %if.end8
  %call11 = call %struct.Section_t* @FindSection(i32 225), !dbg !1971
  %cmp12 = icmp eq %struct.Section_t* %call11, null, !dbg !1974
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1975

if.then13:                                        ; preds = %if.then10
  store i32 1, i32* %retval, align 4, !dbg !1976
  br label %return, !dbg !1976

if.end14:                                         ; preds = %if.then10
  br label %if.end15, !dbg !1978

if.end15:                                         ; preds = %if.end14, %if.end8
  %6 = load i32, i32* @PortraitOnly, align 4, !dbg !1979
  %cmp16 = icmp eq i32 %6, 1, !dbg !1981
  br i1 %cmp16, label %if.then17, label %if.end21, !dbg !1982

if.then17:                                        ; preds = %if.end15
  %7 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 8), align 4, !dbg !1983
  %8 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 7), align 8, !dbg !1986
  %cmp18 = icmp ugt i32 %7, %8, !dbg !1987
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1988

if.then19:                                        ; preds = %if.then17
  store i32 1, i32* %retval, align 4, !dbg !1989
  br label %return, !dbg !1989

if.end20:                                         ; preds = %if.then17
  br label %if.end21, !dbg !1990

if.end21:                                         ; preds = %if.end20, %if.end15
  %9 = load i32, i32* @PortraitOnly, align 4, !dbg !1991
  %cmp22 = icmp eq i32 %9, -1, !dbg !1993
  br i1 %cmp22, label %if.then23, label %if.end27, !dbg !1994

if.then23:                                        ; preds = %if.end21
  %10 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 8), align 4, !dbg !1995
  %11 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 7), align 8, !dbg !1998
  %cmp24 = icmp ult i32 %10, %11, !dbg !1999
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2000

if.then25:                                        ; preds = %if.then23
  store i32 1, i32* %retval, align 4, !dbg !2001
  br label %return, !dbg !2001

if.end26:                                         ; preds = %if.then23
  br label %if.end27, !dbg !2002

if.end27:                                         ; preds = %if.end26, %if.end21
  store i32 0, i32* %retval, align 4, !dbg !2003
  br label %return, !dbg !2003

return:                                           ; preds = %if.end27, %if.then25, %if.then19, %if.then13, %if.then6, %if.then1
  %12 = load i32, i32* %retval, align 4, !dbg !2004
  ret i32 %12, !dbg !2004
}

declare dso_local void @DiscardData() #2

declare dso_local void @DiscardAllButExif() #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @DoAutoRotate(i8* %FileName) #0 !dbg !2005 {
entry:
  %retval = alloca i32, align 4
  %FileName.addr = alloca i8*, align 8
  %Argument = alloca i8*, align 8
  %RotateCommand = alloca [8242 x i8], align 16
  %ThumbTempName_in = alloca [4101 x i8], align 16
  %ThumbTempName_out = alloca [4101 x i8], align 16
  store i8* %FileName, i8** %FileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %FileName.addr, metadata !2008, metadata !DIExpression()), !dbg !2009
  %0 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 9), align 8, !dbg !2010
  %cmp = icmp ne i32 %0, 1, !dbg !2012
  br i1 %cmp, label %if.then, label %if.end43, !dbg !2013

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %Argument, metadata !2014, metadata !DIExpression()), !dbg !2016
  %call = call i8* @ClearOrientation(), !dbg !2017
  store i8* %call, i8** %Argument, align 8, !dbg !2018
  %1 = load i8*, i8** %Argument, align 8, !dbg !2019
  %cmp1 = icmp eq i8* %1, null, !dbg !2021
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2022

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !2023
  br label %return, !dbg !2023

if.end:                                           ; preds = %if.then
  %2 = load i32, i32* @ZeroRotateTagOnly, align 4, !dbg !2024
  %tobool = icmp ne i32 %2, 0, !dbg !2024
  br i1 %tobool, label %if.end42, label %if.then3, !dbg !2026

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata [8242 x i8]* %RotateCommand, metadata !2027, metadata !DIExpression()), !dbg !2032
  %3 = load i8*, i8** %Argument, align 8, !dbg !2033
  %call4 = call i64 @strlen(i8* %3) #11, !dbg !2035
  %cmp5 = icmp eq i64 %call4, 0, !dbg !2036
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2037

if.then6:                                         ; preds = %if.then3
  store i32 1, i32* %retval, align 4, !dbg !2038
  br label %return, !dbg !2038

if.end7:                                          ; preds = %if.then3
  %arraydecay = getelementptr inbounds [8242 x i8], [8242 x i8]* %RotateCommand, i64 0, i64 0, !dbg !2040
  %4 = load i8*, i8** %Argument, align 8, !dbg !2041
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.100, i64 0, i64 0), i8* %4) #10, !dbg !2042
  %arraydecay9 = getelementptr inbounds [8242 x i8], [8242 x i8]* %RotateCommand, i64 0, i64 0, !dbg !2043
  store i8* %arraydecay9, i8** @ApplyCommand, align 8, !dbg !2044
  %5 = load i8*, i8** %FileName.addr, align 8, !dbg !2045
  call void @DoCommand(i8* %5, i32 0), !dbg !2046
  store i8* null, i8** @ApplyCommand, align 8, !dbg !2047
  %6 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !2048
  %tobool10 = icmp ne i32 %6, 0, !dbg !2050
  br i1 %tobool10, label %land.lhs.true, label %if.end41, !dbg !2051

land.lhs.true:                                    ; preds = %if.end7
  %7 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 34), align 8, !dbg !2052
  %tobool11 = icmp ne i32 %7, 0, !dbg !2053
  br i1 %tobool11, label %land.lhs.true12, label %if.end41, !dbg !2054

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 36), align 8, !dbg !2055
  %conv = sext i8 %8 to i32, !dbg !2056
  %tobool13 = icmp ne i32 %conv, 0, !dbg !2056
  br i1 %tobool13, label %if.then14, label %if.end41, !dbg !2057

if.then14:                                        ; preds = %land.lhs.true12
  call void @llvm.dbg.declare(metadata [4101 x i8]* %ThumbTempName_in, metadata !2058, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.declare(metadata [4101 x i8]* %ThumbTempName_out, metadata !2061, metadata !DIExpression()), !dbg !2062
  %arraydecay15 = getelementptr inbounds [4101 x i8], [4101 x i8]* %ThumbTempName_in, i64 0, i64 0, !dbg !2063
  %9 = load i8*, i8** %FileName.addr, align 8, !dbg !2064
  %call16 = call i8* @strcpy(i8* %arraydecay15, i8* %9) #10, !dbg !2065
  %arraydecay17 = getelementptr inbounds [4101 x i8], [4101 x i8]* %ThumbTempName_in, i64 0, i64 0, !dbg !2066
  %call18 = call i8* @strcat(i8* %arraydecay17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0)) #10, !dbg !2067
  %arraydecay19 = getelementptr inbounds [4101 x i8], [4101 x i8]* %ThumbTempName_out, i64 0, i64 0, !dbg !2068
  %10 = load i8*, i8** %FileName.addr, align 8, !dbg !2069
  %call20 = call i8* @strcpy(i8* %arraydecay19, i8* %10) #10, !dbg !2070
  %arraydecay21 = getelementptr inbounds [4101 x i8], [4101 x i8]* %ThumbTempName_out, i64 0, i64 0, !dbg !2071
  %call22 = call i8* @strcat(i8* %arraydecay21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0)) #10, !dbg !2072
  %arraydecay23 = getelementptr inbounds [4101 x i8], [4101 x i8]* %ThumbTempName_in, i64 0, i64 0, !dbg !2073
  %call24 = call i32 @SaveThumbnail(i8* %arraydecay23), !dbg !2074
  %arraydecay25 = getelementptr inbounds [8242 x i8], [8242 x i8]* %RotateCommand, i64 0, i64 0, !dbg !2075
  %11 = load i8*, i8** %Argument, align 8, !dbg !2076
  %arraydecay26 = getelementptr inbounds [4101 x i8], [4101 x i8]* %ThumbTempName_out, i64 0, i64 0, !dbg !2077
  %arraydecay27 = getelementptr inbounds [4101 x i8], [4101 x i8]* %ThumbTempName_in, i64 0, i64 0, !dbg !2078
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.103, i64 0, i64 0), i8* %11, i8* %arraydecay26, i8* %arraydecay27) #10, !dbg !2079
  %arraydecay29 = getelementptr inbounds [8242 x i8], [8242 x i8]* %RotateCommand, i64 0, i64 0, !dbg !2080
  %call30 = call i32 @system(i8* %arraydecay29), !dbg !2082
  %cmp31 = icmp eq i32 %call30, 0, !dbg !2083
  br i1 %cmp31, label %if.then33, label %if.end36, !dbg !2084

if.then33:                                        ; preds = %if.then14
  %arraydecay34 = getelementptr inbounds [4101 x i8], [4101 x i8]* %ThumbTempName_out, i64 0, i64 0, !dbg !2085
  %call35 = call i32 @ReplaceThumbnail(i8* %arraydecay34), !dbg !2087
  br label %if.end36, !dbg !2088

if.end36:                                         ; preds = %if.then33, %if.then14
  %arraydecay37 = getelementptr inbounds [4101 x i8], [4101 x i8]* %ThumbTempName_in, i64 0, i64 0, !dbg !2089
  %call38 = call i32 @unlink(i8* %arraydecay37) #10, !dbg !2090
  %arraydecay39 = getelementptr inbounds [4101 x i8], [4101 x i8]* %ThumbTempName_out, i64 0, i64 0, !dbg !2091
  %call40 = call i32 @unlink(i8* %arraydecay39) #10, !dbg !2092
  br label %if.end41, !dbg !2093

if.end41:                                         ; preds = %if.end36, %land.lhs.true12, %land.lhs.true, %if.end7
  br label %if.end42, !dbg !2094

if.end42:                                         ; preds = %if.end41, %if.end
  store i32 1, i32* %retval, align 4, !dbg !2095
  br label %return, !dbg !2095

if.end43:                                         ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2096
  br label %return, !dbg !2096

return:                                           ; preds = %if.end43, %if.end42, %if.then6, %if.then2
  %12 = load i32, i32* %retval, align 4, !dbg !2097
  ret i32 %12, !dbg !2097
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @DoCommand(i8* %FileName, i32 %ShowIt) #0 !dbg !2098 {
entry:
  %FileName.addr = alloca i8*, align 8
  %ShowIt.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %e = alloca i32, align 4
  %ExecString = alloca [12288 x i8], align 16
  %TempName = alloca [4106 x i8], align 16
  %TempUsed = alloca i32, align 4
  %dummy = alloca %struct.stat, align 8
  %buf = alloca %struct.stat, align 8
  %stat_result = alloca i32, align 4
  %mtime = alloca %struct.utimbuf, align 8
  store i8* %FileName, i8** %FileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %FileName.addr, metadata !2101, metadata !DIExpression()), !dbg !2102
  store i32 %ShowIt, i32* %ShowIt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ShowIt.addr, metadata !2103, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.declare(metadata i32* %a, metadata !2105, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.declare(metadata i32* %e, metadata !2107, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.declare(metadata [12288 x i8]* %ExecString, metadata !2109, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.declare(metadata [4106 x i8]* %TempName, metadata !2114, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.declare(metadata i32* %TempUsed, metadata !2119, metadata !DIExpression()), !dbg !2120
  store i32 0, i32* %TempUsed, align 4, !dbg !2120
  store i32 0, i32* %e, align 4, !dbg !2121
  %0 = load i8*, i8** %FileName.addr, align 8, !dbg !2122
  %call = call i64 @strlen(i8* %0) #11, !dbg !2123
  %sub = sub i64 %call, 1, !dbg !2124
  %conv = trunc i64 %sub to i32, !dbg !2123
  store i32 %conv, i32* %a, align 4, !dbg !2125
  br label %while.cond, !dbg !2126

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %a, align 4, !dbg !2127
  %cmp = icmp sgt i32 %1, 0, !dbg !2128
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2129

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %FileName.addr, align 8, !dbg !2130
  %3 = load i32, i32* %a, align 4, !dbg !2131
  %sub2 = sub nsw i32 %3, 1, !dbg !2132
  %idxprom = sext i32 %sub2 to i64, !dbg !2130
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom, !dbg !2130
  %4 = load i8, i8* %arrayidx, align 1, !dbg !2130
  %conv3 = sext i8 %4 to i32, !dbg !2130
  %cmp4 = icmp ne i32 %conv3, 47, !dbg !2133
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ], !dbg !2134
  br i1 %5, label %while.body, label %while.end, !dbg !2126

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %a, align 4, !dbg !2135
  %dec = add nsw i32 %6, -1, !dbg !2135
  store i32 %dec, i32* %a, align 4, !dbg !2135
  br label %while.cond, !dbg !2126, !llvm.loop !2136

while.end:                                        ; preds = %land.end
  %arraydecay = getelementptr inbounds [4106 x i8], [4106 x i8]* %TempName, i64 0, i64 0, !dbg !2137
  %7 = load i8*, i8** %FileName.addr, align 8, !dbg !2138
  %8 = load i32, i32* %a, align 4, !dbg !2139
  %conv6 = sext i32 %8 to i64, !dbg !2139
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay, i8* align 1 %7, i64 %conv6, i1 false), !dbg !2137
  %arraydecay7 = getelementptr inbounds [4106 x i8], [4106 x i8]* %TempName, i64 0, i64 0, !dbg !2140
  %9 = load i32, i32* %a, align 4, !dbg !2141
  %idx.ext = sext i32 %9 to i64, !dbg !2142
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 %idx.ext, !dbg !2142
  %call8 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i64 0, i64 0)) #10, !dbg !2143
  %arraydecay9 = getelementptr inbounds [4106 x i8], [4106 x i8]* %TempName, i64 0, i64 0, !dbg !2144
  %call10 = call i8* @mktemp(i8* %arraydecay9) #10, !dbg !2145
  %arrayidx11 = getelementptr inbounds [4106 x i8], [4106 x i8]* %TempName, i64 0, i64 0, !dbg !2146
  %10 = load i8, i8* %arrayidx11, align 16, !dbg !2146
  %tobool = icmp ne i8 %10, 0, !dbg !2146
  br i1 %tobool, label %if.end, label %if.then, !dbg !2148

if.then:                                          ; preds = %while.end
  call void @ErrFatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.105, i64 0, i64 0)), !dbg !2149
  br label %if.end, !dbg !2151

if.end:                                           ; preds = %if.then, %while.end
  store i32 0, i32* %a, align 4, !dbg !2152
  br label %for.cond, !dbg !2154

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i8*, i8** @ApplyCommand, align 8, !dbg !2155
  %12 = load i32, i32* %a, align 4, !dbg !2159
  %idxprom12 = sext i32 %12 to i64, !dbg !2155
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 %idxprom12, !dbg !2155
  %13 = load i8, i8* %arrayidx13, align 1, !dbg !2155
  %conv14 = sext i8 %13 to i32, !dbg !2155
  %cmp15 = icmp eq i32 %conv14, 38, !dbg !2160
  br i1 %cmp15, label %if.then17, label %if.end46, !dbg !2161

if.then17:                                        ; preds = %for.cond
  %14 = load i8*, i8** @ApplyCommand, align 8, !dbg !2162
  %15 = load i32, i32* %a, align 4, !dbg !2165
  %add = add nsw i32 %15, 1, !dbg !2166
  %idxprom18 = sext i32 %add to i64, !dbg !2162
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 %idxprom18, !dbg !2162
  %16 = load i8, i8* %arrayidx19, align 1, !dbg !2162
  %conv20 = sext i8 %16 to i32, !dbg !2162
  %cmp21 = icmp eq i32 %conv20, 105, !dbg !2167
  br i1 %cmp21, label %if.then23, label %if.end30, !dbg !2168

if.then23:                                        ; preds = %if.then17
  %arraydecay24 = getelementptr inbounds [12288 x i8], [12288 x i8]* %ExecString, i64 0, i64 0, !dbg !2169
  %17 = load i32, i32* %e, align 4, !dbg !2171
  %idx.ext25 = sext i32 %17 to i64, !dbg !2172
  %add.ptr26 = getelementptr inbounds i8, i8* %arraydecay24, i64 %idx.ext25, !dbg !2172
  %18 = load i8*, i8** %FileName.addr, align 8, !dbg !2173
  %call27 = call i32 @shellescape(i8* %add.ptr26, i8* %18), !dbg !2174
  %19 = load i32, i32* %e, align 4, !dbg !2175
  %add28 = add nsw i32 %19, %call27, !dbg !2175
  store i32 %add28, i32* %e, align 4, !dbg !2175
  %20 = load i32, i32* %a, align 4, !dbg !2176
  %add29 = add nsw i32 %20, 1, !dbg !2176
  store i32 %add29, i32* %a, align 4, !dbg !2176
  br label %for.inc, !dbg !2177

if.end30:                                         ; preds = %if.then17
  %21 = load i8*, i8** @ApplyCommand, align 8, !dbg !2178
  %22 = load i32, i32* %a, align 4, !dbg !2180
  %add31 = add nsw i32 %22, 1, !dbg !2181
  %idxprom32 = sext i32 %add31 to i64, !dbg !2178
  %arrayidx33 = getelementptr inbounds i8, i8* %21, i64 %idxprom32, !dbg !2178
  %23 = load i8, i8* %arrayidx33, align 1, !dbg !2178
  %conv34 = sext i8 %23 to i32, !dbg !2178
  %cmp35 = icmp eq i32 %conv34, 111, !dbg !2182
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !2183

if.then37:                                        ; preds = %if.end30
  %arraydecay38 = getelementptr inbounds [12288 x i8], [12288 x i8]* %ExecString, i64 0, i64 0, !dbg !2184
  %24 = load i32, i32* %e, align 4, !dbg !2186
  %idx.ext39 = sext i32 %24 to i64, !dbg !2187
  %add.ptr40 = getelementptr inbounds i8, i8* %arraydecay38, i64 %idx.ext39, !dbg !2187
  %arraydecay41 = getelementptr inbounds [4106 x i8], [4106 x i8]* %TempName, i64 0, i64 0, !dbg !2188
  %call42 = call i32 @shellescape(i8* %add.ptr40, i8* %arraydecay41), !dbg !2189
  %25 = load i32, i32* %e, align 4, !dbg !2190
  %add43 = add nsw i32 %25, %call42, !dbg !2190
  store i32 %add43, i32* %e, align 4, !dbg !2190
  %26 = load i32, i32* %a, align 4, !dbg !2191
  %add44 = add nsw i32 %26, 1, !dbg !2191
  store i32 %add44, i32* %a, align 4, !dbg !2191
  store i32 1, i32* %TempUsed, align 4, !dbg !2192
  br label %for.inc, !dbg !2193

if.end45:                                         ; preds = %if.end30
  br label %if.end46, !dbg !2194

if.end46:                                         ; preds = %if.end45, %for.cond
  %27 = load i8*, i8** @ApplyCommand, align 8, !dbg !2195
  %28 = load i32, i32* %a, align 4, !dbg !2196
  %idxprom47 = sext i32 %28 to i64, !dbg !2195
  %arrayidx48 = getelementptr inbounds i8, i8* %27, i64 %idxprom47, !dbg !2195
  %29 = load i8, i8* %arrayidx48, align 1, !dbg !2195
  %30 = load i32, i32* %e, align 4, !dbg !2197
  %inc = add nsw i32 %30, 1, !dbg !2197
  store i32 %inc, i32* %e, align 4, !dbg !2197
  %idxprom49 = sext i32 %30 to i64, !dbg !2198
  %arrayidx50 = getelementptr inbounds [12288 x i8], [12288 x i8]* %ExecString, i64 0, i64 %idxprom49, !dbg !2198
  store i8 %29, i8* %arrayidx50, align 1, !dbg !2199
  %31 = load i8*, i8** @ApplyCommand, align 8, !dbg !2200
  %32 = load i32, i32* %a, align 4, !dbg !2202
  %idxprom51 = sext i32 %32 to i64, !dbg !2200
  %arrayidx52 = getelementptr inbounds i8, i8* %31, i64 %idxprom51, !dbg !2200
  %33 = load i8, i8* %arrayidx52, align 1, !dbg !2200
  %conv53 = sext i8 %33 to i32, !dbg !2200
  %cmp54 = icmp eq i32 %conv53, 0, !dbg !2203
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !2204

if.then56:                                        ; preds = %if.end46
  br label %for.end, !dbg !2205

if.end57:                                         ; preds = %if.end46
  br label %for.inc, !dbg !2206

for.inc:                                          ; preds = %if.end57, %if.then37, %if.then23
  %34 = load i32, i32* %a, align 4, !dbg !2207
  %inc58 = add nsw i32 %34, 1, !dbg !2207
  store i32 %inc58, i32* %a, align 4, !dbg !2207
  br label %for.cond, !dbg !2208, !llvm.loop !2209

for.end:                                          ; preds = %if.then56
  %35 = load i32, i32* %ShowIt.addr, align 4, !dbg !2212
  %tobool59 = icmp ne i32 %35, 0, !dbg !2212
  br i1 %tobool59, label %if.then60, label %if.end63, !dbg !2214

if.then60:                                        ; preds = %for.end
  %arraydecay61 = getelementptr inbounds [12288 x i8], [12288 x i8]* %ExecString, i64 0, i64 0, !dbg !2215
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i64 0, i64 0), i8* %arraydecay61), !dbg !2216
  br label %if.end63, !dbg !2216

if.end63:                                         ; preds = %if.then60, %for.end
  %call64 = call i32* @__errno_location() #12, !dbg !2217
  store i32 0, i32* %call64, align 4, !dbg !2218
  %arraydecay65 = getelementptr inbounds [12288 x i8], [12288 x i8]* %ExecString, i64 0, i64 0, !dbg !2219
  %call66 = call i32 @system(i8* %arraydecay65), !dbg !2220
  store i32 %call66, i32* %a, align 4, !dbg !2221
  %36 = load i32, i32* %a, align 4, !dbg !2222
  %tobool67 = icmp ne i32 %36, 0, !dbg !2222
  br i1 %tobool67, label %if.then70, label %lor.lhs.false, !dbg !2224

lor.lhs.false:                                    ; preds = %if.end63
  %call68 = call i32* @__errno_location() #12, !dbg !2225
  %37 = load i32, i32* %call68, align 4, !dbg !2225
  %tobool69 = icmp ne i32 %37, 0, !dbg !2225
  br i1 %tobool69, label %if.then70, label %if.end75, !dbg !2226

if.then70:                                        ; preds = %lor.lhs.false, %if.end63
  %call71 = call i32* @__errno_location() #12, !dbg !2227
  %38 = load i32, i32* %call71, align 4, !dbg !2227
  %tobool72 = icmp ne i32 %38, 0, !dbg !2227
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !2230

if.then73:                                        ; preds = %if.then70
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i64 0, i64 0)), !dbg !2231
  br label %if.end74, !dbg !2231

if.end74:                                         ; preds = %if.then73, %if.then70
  call void @ErrFatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.108, i64 0, i64 0)), !dbg !2232
  br label %if.end75, !dbg !2233

if.end75:                                         ; preds = %if.end74, %lor.lhs.false
  %39 = load i32, i32* %TempUsed, align 4, !dbg !2234
  %tobool76 = icmp ne i32 %39, 0, !dbg !2234
  br i1 %tobool76, label %if.then77, label %if.end95, !dbg !2236

if.then77:                                        ; preds = %if.end75
  call void @llvm.dbg.declare(metadata %struct.stat* %dummy, metadata !2237, metadata !DIExpression()), !dbg !2239
  %arraydecay78 = getelementptr inbounds [4106 x i8], [4106 x i8]* %TempName, i64 0, i64 0, !dbg !2240
  %call79 = call i32 @stat(i8* %arraydecay78, %struct.stat* %dummy) #10, !dbg !2242
  %cmp80 = icmp eq i32 %call79, 0, !dbg !2243
  br i1 %cmp80, label %if.then82, label %if.else, !dbg !2244

if.then82:                                        ; preds = %if.then77
  call void @llvm.dbg.declare(metadata %struct.stat* %buf, metadata !2245, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.declare(metadata i32* %stat_result, metadata !2248, metadata !DIExpression()), !dbg !2249
  %40 = load i8*, i8** %FileName.addr, align 8, !dbg !2250
  %call83 = call i32 @stat(i8* %40, %struct.stat* %buf) #10, !dbg !2251
  store i32 %call83, i32* %stat_result, align 4, !dbg !2249
  %41 = load i8*, i8** %FileName.addr, align 8, !dbg !2252
  %call84 = call i32 @unlink(i8* %41) #10, !dbg !2253
  %arraydecay85 = getelementptr inbounds [4106 x i8], [4106 x i8]* %TempName, i64 0, i64 0, !dbg !2254
  %42 = load i8*, i8** %FileName.addr, align 8, !dbg !2255
  %call86 = call i32 @rename(i8* %arraydecay85, i8* %42) #10, !dbg !2256
  %43 = load i32, i32* %stat_result, align 4, !dbg !2257
  %cmp87 = icmp eq i32 %43, 0, !dbg !2259
  br i1 %cmp87, label %if.then89, label %if.end93, !dbg !2260

if.then89:                                        ; preds = %if.then82
  call void @llvm.dbg.declare(metadata %struct.utimbuf* %mtime, metadata !2261, metadata !DIExpression()), !dbg !2263
  %44 = load i8*, i8** %FileName.addr, align 8, !dbg !2264
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3, !dbg !2265
  %45 = load i32, i32* %st_mode, align 8, !dbg !2265
  %call90 = call i32 @chmod(i8* %44, i32 %45) #10, !dbg !2266
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 11, !dbg !2267
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0, !dbg !2267
  %46 = load i64, i64* %tv_sec, align 8, !dbg !2267
  %actime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %mtime, i32 0, i32 0, !dbg !2268
  store i64 %46, i64* %actime, align 8, !dbg !2269
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 12, !dbg !2270
  %tv_sec91 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0, !dbg !2270
  %47 = load i64, i64* %tv_sec91, align 8, !dbg !2270
  %modtime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %mtime, i32 0, i32 1, !dbg !2271
  store i64 %47, i64* %modtime, align 8, !dbg !2272
  %48 = load i8*, i8** %FileName.addr, align 8, !dbg !2273
  %call92 = call i32 @utime(i8* %48, %struct.utimbuf* %mtime) #10, !dbg !2274
  br label %if.end93, !dbg !2275

if.end93:                                         ; preds = %if.then89, %if.then82
  br label %if.end94, !dbg !2276

if.else:                                          ; preds = %if.then77
  call void @ErrFatal(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.109, i64 0, i64 0)), !dbg !2277
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.end93
  br label %if.end95, !dbg !2279

if.end95:                                         ; preds = %if.end94, %if.end75
  ret void, !dbg !2280
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @RelativeName(i8* %OutFileName, i8* %NamePattern, i8* %OrigName) #0 !dbg !2281 {
entry:
  %OutFileName.addr = alloca i8*, align 8
  %NamePattern.addr = alloca i8*, align 8
  %OrigName.addr = alloca i8*, align 8
  %Subst = alloca i8*, align 8
  store i8* %OutFileName, i8** %OutFileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %OutFileName.addr, metadata !2284, metadata !DIExpression()), !dbg !2285
  store i8* %NamePattern, i8** %NamePattern.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %NamePattern.addr, metadata !2286, metadata !DIExpression()), !dbg !2287
  store i8* %OrigName, i8** %OrigName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %OrigName.addr, metadata !2288, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.declare(metadata i8** %Subst, metadata !2290, metadata !DIExpression()), !dbg !2291
  %0 = load i8*, i8** %NamePattern.addr, align 8, !dbg !2292
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0)) #11, !dbg !2293
  store i8* %call, i8** %Subst, align 8, !dbg !2294
  %1 = load i8*, i8** %Subst, align 8, !dbg !2295
  %tobool = icmp ne i8* %1, null, !dbg !2295
  br i1 %tobool, label %if.then, label %if.else, !dbg !2297

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %OutFileName.addr, align 8, !dbg !2298
  %3 = load i8*, i8** %NamePattern.addr, align 8, !dbg !2300
  %4 = load i8*, i8** %Subst, align 8, !dbg !2301
  %5 = load i8*, i8** %NamePattern.addr, align 8, !dbg !2302
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64, !dbg !2303
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64, !dbg !2303
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2303
  %call1 = call i8* @strncpy(i8* %2, i8* %3, i64 %sub.ptr.sub) #10, !dbg !2304
  %6 = load i8*, i8** %OutFileName.addr, align 8, !dbg !2305
  %7 = load i8*, i8** %Subst, align 8, !dbg !2306
  %8 = load i8*, i8** %NamePattern.addr, align 8, !dbg !2307
  %sub.ptr.lhs.cast2 = ptrtoint i8* %7 to i64, !dbg !2308
  %sub.ptr.rhs.cast3 = ptrtoint i8* %8 to i64, !dbg !2308
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3, !dbg !2308
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %sub.ptr.sub4, !dbg !2305
  store i8 0, i8* %arrayidx, align 1, !dbg !2309
  %9 = load i8*, i8** %OutFileName.addr, align 8, !dbg !2310
  %10 = load i8*, i8** %OrigName.addr, align 8, !dbg !2311
  %call5 = call i8* @strncat(i8* %9, i8* %10, i64 4096) #10, !dbg !2312
  %11 = load i8*, i8** %OutFileName.addr, align 8, !dbg !2313
  %12 = load i8*, i8** %Subst, align 8, !dbg !2314
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 2, !dbg !2315
  %call6 = call i8* @strncat(i8* %11, i8* %add.ptr, i64 4096) #10, !dbg !2316
  br label %if.end, !dbg !2317

if.else:                                          ; preds = %entry
  %13 = load i8*, i8** %OutFileName.addr, align 8, !dbg !2318
  %14 = load i8*, i8** %NamePattern.addr, align 8, !dbg !2320
  %call7 = call i8* @strncpy(i8* %13, i8* %14, i64 4096) #10, !dbg !2321
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2322
}

declare dso_local %struct.Section_t* @FindSection(i32) #2

declare dso_local void @ShowConciseImageInfo() #2

declare dso_local void @ShowImageInfo(i32) #2

declare dso_local void @show_IPTC(i8*, i32) #2

declare dso_local i32 @SaveThumbnail(i8*) #2

declare dso_local void @create_EXIF() #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @RegenerateThumbnail(i8* %FileName) #0 !dbg !2323 {
entry:
  %retval = alloca i32, align 4
  %FileName.addr = alloca i8*, align 8
  %ThumbnailGenCommand = alloca [8242 x i8], align 16
  store i8* %FileName, i8** %FileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %FileName.addr, metadata !2324, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.declare(metadata [8242 x i8]* %ThumbnailGenCommand, metadata !2326, metadata !DIExpression()), !dbg !2327
  %0 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !2328
  %cmp = icmp eq i32 %0, 0, !dbg !2330
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2331

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 36), align 8, !dbg !2332
  %conv = sext i8 %1 to i32, !dbg !2333
  %cmp1 = icmp eq i32 %conv, 0, !dbg !2334
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2335

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2336
  br label %return, !dbg !2336

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [8242 x i8], [8242 x i8]* %ThumbnailGenCommand, i64 0, i64 0, !dbg !2338
  %2 = load i32, i32* @RegenThumbnail, align 4, !dbg !2339
  %3 = load i32, i32* @RegenThumbnail, align 4, !dbg !2340
  %4 = load i8*, i8** %FileName.addr, align 8, !dbg !2341
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.111, i64 0, i64 0), i32 %2, i32 %3, i8* %4) #10, !dbg !2342
  %arraydecay3 = getelementptr inbounds [8242 x i8], [8242 x i8]* %ThumbnailGenCommand, i64 0, i64 0, !dbg !2343
  %call4 = call i32 @system(i8* %arraydecay3), !dbg !2345
  %cmp5 = icmp eq i32 %call4, 0, !dbg !2346
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !2347

if.then7:                                         ; preds = %if.end
  %5 = load i8*, i8** %FileName.addr, align 8, !dbg !2348
  %call8 = call i32 @ReplaceThumbnail(i8* %5), !dbg !2350
  store i32 %call8, i32* %retval, align 4, !dbg !2351
  br label %return, !dbg !2351

if.else:                                          ; preds = %if.end
  call void @ErrFatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.112, i64 0, i64 0)), !dbg !2352
  store i32 0, i32* %retval, align 4, !dbg !2354
  br label %return, !dbg !2354

return:                                           ; preds = %if.else, %if.then7, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2355
  ret i32 %6, !dbg !2355
}

declare dso_local i32 @ReplaceThumbnail(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

declare dso_local %struct.Section_t* @CreateSection(i32, i8*, i32) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @FileEditComment(i8* %TempFileName, i8* %Comment, i32 %CommentSize) #0 !dbg !2356 {
entry:
  %TempFileName.addr = alloca i8*, align 8
  %Comment.addr = alloca i8*, align 8
  %CommentSize.addr = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %a = alloca i32, align 4
  %QuotedPath = alloca [4106 x i8], align 16
  %Editor = alloca i8*, align 8
  store i8* %TempFileName, i8** %TempFileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %TempFileName.addr, metadata !2359, metadata !DIExpression()), !dbg !2360
  store i8* %Comment, i8** %Comment.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Comment.addr, metadata !2361, metadata !DIExpression()), !dbg !2362
  store i32 %CommentSize, i32* %CommentSize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %CommentSize.addr, metadata !2363, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %file, metadata !2365, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.declare(metadata i32* %a, metadata !2367, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.declare(metadata [4106 x i8]* %QuotedPath, metadata !2369, metadata !DIExpression()), !dbg !2370
  %0 = load i8*, i8** %TempFileName.addr, align 8, !dbg !2371
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i64 0, i64 0)), !dbg !2372
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8, !dbg !2373
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !dbg !2374
  %cmp = icmp eq %struct._IO_FILE* %1, null, !dbg !2376
  br i1 %cmp, label %if.then, label %if.end, !dbg !2377

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2378
  %3 = load i8*, i8** %TempFileName.addr, align 8, !dbg !2380
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.113, i64 0, i64 0), i8* %3), !dbg !2381
  call void @ErrFatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.114, i64 0, i64 0)), !dbg !2382
  br label %if.end, !dbg !2383

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %Comment.addr, align 8, !dbg !2384
  %5 = load i32, i32* %CommentSize.addr, align 4, !dbg !2385
  %conv = sext i32 %5 to i64, !dbg !2385
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !dbg !2386
  %call2 = call i64 @fwrite(i8* %4, i64 %conv, i64 1, %struct._IO_FILE* %6), !dbg !2387
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !dbg !2388
  %call3 = call i32 @fclose(%struct._IO_FILE* %7), !dbg !2389
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2390
  %call4 = call i32 @fflush(%struct._IO_FILE* %8), !dbg !2391
  call void @llvm.dbg.declare(metadata i8** %Editor, metadata !2392, metadata !DIExpression()), !dbg !2394
  %call5 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0)) #10, !dbg !2395
  store i8* %call5, i8** %Editor, align 8, !dbg !2396
  %9 = load i8*, i8** %Editor, align 8, !dbg !2397
  %cmp6 = icmp eq i8* %9, null, !dbg !2399
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !2400

if.then8:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i64 0, i64 0), i8** %Editor, align 8, !dbg !2401
  br label %if.end9, !dbg !2403

if.end9:                                          ; preds = %if.then8, %if.end
  %10 = load i8*, i8** %Editor, align 8, !dbg !2404
  %call10 = call i64 @strlen(i8* %10) #11, !dbg !2406
  %cmp11 = icmp ugt i64 %call10, 4096, !dbg !2407
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !2408

if.then13:                                        ; preds = %if.end9
  call void @ErrFatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i64 0, i64 0)), !dbg !2409
  br label %if.end14, !dbg !2409

if.end14:                                         ; preds = %if.then13, %if.end9
  %arraydecay = getelementptr inbounds [4106 x i8], [4106 x i8]* %QuotedPath, i64 0, i64 0, !dbg !2410
  %11 = load i8*, i8** %Editor, align 8, !dbg !2411
  %12 = load i8*, i8** %TempFileName.addr, align 8, !dbg !2412
  %call15 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i64 0, i64 0), i8* %11, i8* %12) #10, !dbg !2413
  %arraydecay16 = getelementptr inbounds [4106 x i8], [4106 x i8]* %QuotedPath, i64 0, i64 0, !dbg !2414
  %call17 = call i32 @system(i8* %arraydecay16), !dbg !2415
  store i32 %call17, i32* %a, align 4, !dbg !2416
  %13 = load i32, i32* %a, align 4, !dbg !2417
  %cmp18 = icmp ne i32 %13, 0, !dbg !2419
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !2420

if.then20:                                        ; preds = %if.end14
  call void @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i64 0, i64 0)), !dbg !2421
  call void @exit(i32 -1) #9, !dbg !2423
  unreachable, !dbg !2423

if.end21:                                         ; preds = %if.end14
  %14 = load i8*, i8** %TempFileName.addr, align 8, !dbg !2424
  %call22 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)), !dbg !2425
  store %struct._IO_FILE* %call22, %struct._IO_FILE** %file, align 8, !dbg !2426
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !dbg !2427
  %cmp23 = icmp eq %struct._IO_FILE* %15, null, !dbg !2429
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !2430

if.then25:                                        ; preds = %if.end21
  call void @ErrFatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.120, i64 0, i64 0)), !dbg !2431
  br label %if.end26, !dbg !2433

if.end26:                                         ; preds = %if.then25, %if.end21
  %16 = load i8*, i8** %Comment.addr, align 8, !dbg !2434
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !dbg !2435
  %call27 = call i64 @fread(i8* %16, i64 1, i64 16000, %struct._IO_FILE* %17), !dbg !2436
  %conv28 = trunc i64 %call27 to i32, !dbg !2436
  store i32 %conv28, i32* %CommentSize.addr, align 4, !dbg !2437
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !dbg !2438
  %call29 = call i32 @fclose(%struct._IO_FILE* %18), !dbg !2439
  %19 = load i8*, i8** %TempFileName.addr, align 8, !dbg !2440
  %call30 = call i32 @unlink(i8* %19) #10, !dbg !2441
  %20 = load i32, i32* %CommentSize.addr, align 4, !dbg !2442
  ret i32 %20, !dbg !2443
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local i32 @RemoveSectionType(i32) #2

declare dso_local i32 @RemoveUnknownSections() #2

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @rename(i8*, i8*) #4

declare dso_local void @WriteJpegFile(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @chmod(i8*, i32) #4

; Function Attrs: nounwind
declare dso_local i32 @utime(i8*, %struct.utimbuf*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @DoFileRenaming(i8* %FileName) #0 !dbg !2444 {
entry:
  %FileName.addr = alloca i8*, align 8
  %PrefixPart = alloca i32, align 4
  %ExtensionPart = alloca i32, align 4
  %a = alloca i32, align 4
  %tm = alloca %struct.tm, align 8
  %NewBaseName = alloca [8192 x i8], align 16
  %AddLetter = alloca i32, align 4
  %NewName = alloca [4098 x i8], align 16
  %UnixTime = alloca i64, align 8
  %s = alloca i8*, align 8
  %pattern = alloca [4116 x i8], align 16
  %n = alloca i32, align 4
  %ppos = alloca i32, align 4
  %pat = alloca [8 x i8], align 1
  %num = alloca [16 x i8], align 16
  %l = alloca i32, align 4
  %nl = alloca i32, align 4
  %NewName156 = alloca [4106 x i8], align 16
  %NameExtra = alloca [3 x i8], align 1
  %dummy = alloca %struct.stat, align 8
  store i8* %FileName, i8** %FileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %FileName.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.declare(metadata i32* %PrefixPart, metadata !2447, metadata !DIExpression()), !dbg !2448
  store i32 0, i32* %PrefixPart, align 4, !dbg !2448
  call void @llvm.dbg.declare(metadata i32* %ExtensionPart, metadata !2449, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.declare(metadata i32* %a, metadata !2451, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.declare(metadata %struct.tm* %tm, metadata !2453, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.declare(metadata [8192 x i8]* %NewBaseName, metadata !2455, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.declare(metadata i32* %AddLetter, metadata !2460, metadata !DIExpression()), !dbg !2461
  store i32 0, i32* %AddLetter, align 4, !dbg !2461
  call void @llvm.dbg.declare(metadata [4098 x i8]* %NewName, metadata !2462, metadata !DIExpression()), !dbg !2466
  %0 = load i8*, i8** %FileName.addr, align 8, !dbg !2467
  %call = call i64 @strlen(i8* %0) #11, !dbg !2468
  %conv = trunc i64 %call to i32, !dbg !2468
  store i32 %conv, i32* %ExtensionPart, align 4, !dbg !2469
  store i32 0, i32* %a, align 4, !dbg !2470
  br label %for.cond, !dbg !2472

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %FileName.addr, align 8, !dbg !2473
  %2 = load i32, i32* %a, align 4, !dbg !2475
  %idxprom = sext i32 %2 to i64, !dbg !2473
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !2473
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2473
  %tobool = icmp ne i8 %3, 0, !dbg !2476
  br i1 %tobool, label %for.body, label %for.end, !dbg !2476

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %FileName.addr, align 8, !dbg !2477
  %5 = load i32, i32* %a, align 4, !dbg !2480
  %idxprom1 = sext i32 %5 to i64, !dbg !2477
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1, !dbg !2477
  %6 = load i8, i8* %arrayidx2, align 1, !dbg !2477
  %conv3 = sext i8 %6 to i32, !dbg !2477
  %cmp = icmp eq i32 %conv3, 47, !dbg !2481
  br i1 %cmp, label %if.then, label %if.end, !dbg !2482

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %a, align 4, !dbg !2483
  %add = add nsw i32 %7, 1, !dbg !2485
  store i32 %add, i32* %PrefixPart, align 4, !dbg !2486
  br label %if.end, !dbg !2487

if.end:                                           ; preds = %if.then, %for.body
  %8 = load i8*, i8** %FileName.addr, align 8, !dbg !2488
  %9 = load i32, i32* %a, align 4, !dbg !2490
  %idxprom5 = sext i32 %9 to i64, !dbg !2488
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %idxprom5, !dbg !2488
  %10 = load i8, i8* %arrayidx6, align 1, !dbg !2488
  %conv7 = sext i8 %10 to i32, !dbg !2488
  %cmp8 = icmp eq i32 %conv7, 46, !dbg !2491
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !2492

if.then10:                                        ; preds = %if.end
  %11 = load i32, i32* %a, align 4, !dbg !2493
  store i32 %11, i32* %ExtensionPart, align 4, !dbg !2494
  br label %if.end11, !dbg !2495

if.end11:                                         ; preds = %if.then10, %if.end
  br label %for.inc, !dbg !2496

for.inc:                                          ; preds = %if.end11
  %12 = load i32, i32* %a, align 4, !dbg !2497
  %inc = add nsw i32 %12, 1, !dbg !2497
  store i32 %inc, i32* %a, align 4, !dbg !2497
  br label %for.cond, !dbg !2498, !llvm.loop !2499

for.end:                                          ; preds = %for.cond
  %call12 = call i32 @Exif2tm(%struct.tm* %tm, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0)), !dbg !2501
  %tobool13 = icmp ne i32 %call12, 0, !dbg !2501
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !2503

if.then14:                                        ; preds = %for.end
  %13 = load i8*, i8** %FileName.addr, align 8, !dbg !2504
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.121, i64 0, i64 0), i8* %13), !dbg !2506
  %call16 = call %struct.tm* @localtime(i64* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 1)) #10, !dbg !2507
  %14 = bitcast %struct.tm* %tm to i8*, !dbg !2508
  %15 = bitcast %struct.tm* %call16 to i8*, !dbg !2508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 56, i1 false), !dbg !2508
  br label %if.end17, !dbg !2509

if.end17:                                         ; preds = %if.then14, %for.end
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %NewBaseName, i64 0, i64 0, !dbg !2510
  %16 = load i8*, i8** %FileName.addr, align 8, !dbg !2511
  %call18 = call i8* @strncpy(i8* %arraydecay, i8* %16, i64 4096) #10, !dbg !2512
  %17 = load i8*, i8** @strftime_args, align 8, !dbg !2513
  %tobool19 = icmp ne i8* %17, null, !dbg !2513
  br i1 %tobool19, label %if.then20, label %if.else136, !dbg !2515

if.then20:                                        ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i64* %UnixTime, metadata !2516, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.declare(metadata i8** %s, metadata !2519, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.declare(metadata [4116 x i8]* %pattern, metadata !2521, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.declare(metadata i32* %n, metadata !2526, metadata !DIExpression()), !dbg !2527
  %18 = load i32, i32* %ExtensionPart, align 4, !dbg !2528
  %19 = load i32, i32* %PrefixPart, align 4, !dbg !2529
  %sub = sub nsw i32 %18, %19, !dbg !2530
  store i32 %sub, i32* %n, align 4, !dbg !2527
  %call21 = call i64 @mktime(%struct.tm* %tm) #10, !dbg !2531
  store i64 %call21, i64* %UnixTime, align 8, !dbg !2532
  %20 = load i64, i64* %UnixTime, align 8, !dbg !2533
  %conv22 = trunc i64 %20 to i32, !dbg !2535
  %cmp23 = icmp eq i32 %conv22, -1, !dbg !2536
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !2537

if.then25:                                        ; preds = %if.then20
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.122, i64 0, i64 0), i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 6, i64 0)), !dbg !2538
  br label %for.end214, !dbg !2540

if.end27:                                         ; preds = %if.then20
  %arrayidx28 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 4095, !dbg !2541
  store i8 0, i8* %arrayidx28, align 1, !dbg !2542
  %arraydecay29 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 0, !dbg !2543
  %21 = load i8*, i8** @strftime_args, align 8, !dbg !2544
  %call30 = call i8* @strncpy(i8* %arraydecay29, i8* %21, i64 4095) #10, !dbg !2545
  br label %while.cond, !dbg !2546

while.cond:                                       ; preds = %while.body, %if.end27
  %arraydecay31 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 0, !dbg !2547
  %call32 = call i8* @strstr(i8* %arraydecay31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0)) #11, !dbg !2548
  store i8* %call32, i8** %s, align 8, !dbg !2549
  %tobool33 = icmp ne i8* %call32, null, !dbg !2549
  br i1 %tobool33, label %land.rhs, label %land.end, !dbg !2550

land.rhs:                                         ; preds = %while.cond
  %arraydecay34 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 0, !dbg !2551
  %call35 = call i64 @strlen(i8* %arraydecay34) #11, !dbg !2552
  %22 = load i32, i32* %n, align 4, !dbg !2553
  %conv36 = sext i32 %22 to i64, !dbg !2553
  %add37 = add i64 %call35, %conv36, !dbg !2554
  %cmp38 = icmp ult i64 %add37, 4095, !dbg !2555
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ], !dbg !2556
  br i1 %23, label %while.body, label %while.end, !dbg !2546

while.body:                                       ; preds = %land.end
  %24 = load i8*, i8** %s, align 8, !dbg !2557
  %25 = load i32, i32* %n, align 4, !dbg !2559
  %idx.ext = sext i32 %25 to i64, !dbg !2560
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext, !dbg !2560
  %26 = load i8*, i8** %s, align 8, !dbg !2561
  %add.ptr40 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !2562
  %27 = load i8*, i8** %s, align 8, !dbg !2563
  %add.ptr41 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !2564
  %call42 = call i64 @strlen(i8* %add.ptr41) #11, !dbg !2565
  %add43 = add i64 %call42, 1, !dbg !2566
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %add.ptr40, i64 %add43, i1 false), !dbg !2567
  %28 = load i8*, i8** %s, align 8, !dbg !2568
  %29 = load i8*, i8** %FileName.addr, align 8, !dbg !2569
  %30 = load i32, i32* %PrefixPart, align 4, !dbg !2570
  %idx.ext44 = sext i32 %30 to i64, !dbg !2571
  %add.ptr45 = getelementptr inbounds i8, i8* %29, i64 %idx.ext44, !dbg !2571
  %31 = load i32, i32* %n, align 4, !dbg !2572
  %conv46 = sext i32 %31 to i64, !dbg !2572
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %add.ptr45, i64 %conv46, i1 false), !dbg !2573
  br label %while.cond, !dbg !2546, !llvm.loop !2574

while.end:                                        ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %ppos, metadata !2576, metadata !DIExpression()), !dbg !2578
  store i32 -1, i32* %ppos, align 4, !dbg !2578
  store i32 0, i32* %a, align 4, !dbg !2579
  br label %for.cond47, !dbg !2581

for.cond47:                                       ; preds = %for.inc130, %while.end
  %32 = load i32, i32* %a, align 4, !dbg !2582
  %idxprom48 = sext i32 %32 to i64, !dbg !2584
  %arrayidx49 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 %idxprom48, !dbg !2584
  %33 = load i8, i8* %arrayidx49, align 1, !dbg !2584
  %tobool50 = icmp ne i8 %33, 0, !dbg !2585
  br i1 %tobool50, label %for.body51, label %for.end132, !dbg !2585

for.body51:                                       ; preds = %for.cond47
  %34 = load i32, i32* %a, align 4, !dbg !2586
  %idxprom52 = sext i32 %34 to i64, !dbg !2589
  %arrayidx53 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 %idxprom52, !dbg !2589
  %35 = load i8, i8* %arrayidx53, align 1, !dbg !2589
  %conv54 = sext i8 %35 to i32, !dbg !2589
  %cmp55 = icmp eq i32 %conv54, 37, !dbg !2590
  br i1 %cmp55, label %if.then57, label %if.else, !dbg !2591

if.then57:                                        ; preds = %for.body51
  %36 = load i32, i32* %a, align 4, !dbg !2592
  store i32 %36, i32* %ppos, align 4, !dbg !2594
  br label %if.end129, !dbg !2595

if.else:                                          ; preds = %for.body51
  %37 = load i32, i32* %a, align 4, !dbg !2596
  %idxprom58 = sext i32 %37 to i64, !dbg !2598
  %arrayidx59 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 %idxprom58, !dbg !2598
  %38 = load i8, i8* %arrayidx59, align 1, !dbg !2598
  %conv60 = sext i8 %38 to i32, !dbg !2598
  %cmp61 = icmp eq i32 %conv60, 105, !dbg !2599
  br i1 %cmp61, label %if.then63, label %if.else117, !dbg !2600

if.then63:                                        ; preds = %if.else
  %39 = load i32, i32* %ppos, align 4, !dbg !2601
  %cmp64 = icmp sge i32 %39, 0, !dbg !2604
  br i1 %cmp64, label %land.lhs.true, label %if.end116, !dbg !2605

land.lhs.true:                                    ; preds = %if.then63
  %40 = load i32, i32* %a, align 4, !dbg !2606
  %41 = load i32, i32* %ppos, align 4, !dbg !2607
  %add66 = add nsw i32 %41, 4, !dbg !2608
  %cmp67 = icmp slt i32 %40, %add66, !dbg !2609
  br i1 %cmp67, label %if.then69, label %if.end116, !dbg !2610

if.then69:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata [8 x i8]* %pat, metadata !2611, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.declare(metadata [16 x i8]* %num, metadata !2617, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.declare(metadata i32* %l, metadata !2622, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !2624, metadata !DIExpression()), !dbg !2625
  %arraydecay70 = getelementptr inbounds [8 x i8], [8 x i8]* %pat, i64 0, i64 0, !dbg !2626
  %arraydecay71 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 0, !dbg !2627
  %42 = load i32, i32* %ppos, align 4, !dbg !2628
  %idx.ext72 = sext i32 %42 to i64, !dbg !2629
  %add.ptr73 = getelementptr inbounds i8, i8* %arraydecay71, i64 %idx.ext72, !dbg !2629
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arraydecay70, i8* align 1 %add.ptr73, i64 4, i1 false), !dbg !2626
  %43 = load i32, i32* %a, align 4, !dbg !2630
  %44 = load i32, i32* %ppos, align 4, !dbg !2631
  %sub74 = sub nsw i32 %43, %44, !dbg !2632
  %idxprom75 = sext i32 %sub74 to i64, !dbg !2633
  %arrayidx76 = getelementptr inbounds [8 x i8], [8 x i8]* %pat, i64 0, i64 %idxprom75, !dbg !2633
  store i8 100, i8* %arrayidx76, align 1, !dbg !2634
  %45 = load i32, i32* %a, align 4, !dbg !2635
  %46 = load i32, i32* %ppos, align 4, !dbg !2636
  %sub77 = sub nsw i32 %45, %46, !dbg !2637
  %add78 = add nsw i32 %sub77, 1, !dbg !2638
  %idxprom79 = sext i32 %add78 to i64, !dbg !2639
  %arrayidx80 = getelementptr inbounds [8 x i8], [8 x i8]* %pat, i64 0, i64 %idxprom79, !dbg !2639
  store i8 0, i8* %arrayidx80, align 1, !dbg !2640
  %arraydecay81 = getelementptr inbounds [16 x i8], [16 x i8]* %num, i64 0, i64 0, !dbg !2641
  %arraydecay82 = getelementptr inbounds [8 x i8], [8 x i8]* %pat, i64 0, i64 0, !dbg !2642
  %47 = load i32, i32* @FileSequence, align 4, !dbg !2643
  %call83 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay81, i8* %arraydecay82, i32 %47) #10, !dbg !2644
  %arraydecay84 = getelementptr inbounds [16 x i8], [16 x i8]* %num, i64 0, i64 0, !dbg !2645
  %call85 = call i64 @strlen(i8* %arraydecay84) #11, !dbg !2646
  %conv86 = trunc i64 %call85 to i32, !dbg !2646
  store i32 %conv86, i32* %nl, align 4, !dbg !2647
  %arraydecay87 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 0, !dbg !2648
  %48 = load i32, i32* %a, align 4, !dbg !2649
  %idx.ext88 = sext i32 %48 to i64, !dbg !2650
  %add.ptr89 = getelementptr inbounds i8, i8* %arraydecay87, i64 %idx.ext88, !dbg !2650
  %add.ptr90 = getelementptr inbounds i8, i8* %add.ptr89, i64 1, !dbg !2651
  %call91 = call i64 @strlen(i8* %add.ptr90) #11, !dbg !2652
  %conv92 = trunc i64 %call91 to i32, !dbg !2652
  store i32 %conv92, i32* %l, align 4, !dbg !2653
  %49 = load i32, i32* %ppos, align 4, !dbg !2654
  %50 = load i32, i32* %nl, align 4, !dbg !2656
  %add93 = add nsw i32 %49, %50, !dbg !2657
  %51 = load i32, i32* %l, align 4, !dbg !2658
  %add94 = add nsw i32 %add93, %51, !dbg !2659
  %add95 = add nsw i32 %add94, 1, !dbg !2660
  %cmp96 = icmp sge i32 %add95, 4096, !dbg !2661
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !2662

if.then98:                                        ; preds = %if.then69
  call void @ErrFatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i64 0, i64 0)), !dbg !2663
  br label %if.end99, !dbg !2663

if.end99:                                         ; preds = %if.then98, %if.then69
  %arraydecay100 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 0, !dbg !2664
  %52 = load i32, i32* %ppos, align 4, !dbg !2665
  %idx.ext101 = sext i32 %52 to i64, !dbg !2666
  %add.ptr102 = getelementptr inbounds i8, i8* %arraydecay100, i64 %idx.ext101, !dbg !2666
  %53 = load i32, i32* %nl, align 4, !dbg !2667
  %idx.ext103 = sext i32 %53 to i64, !dbg !2668
  %add.ptr104 = getelementptr inbounds i8, i8* %add.ptr102, i64 %idx.ext103, !dbg !2668
  %arraydecay105 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 0, !dbg !2669
  %54 = load i32, i32* %a, align 4, !dbg !2670
  %idx.ext106 = sext i32 %54 to i64, !dbg !2671
  %add.ptr107 = getelementptr inbounds i8, i8* %arraydecay105, i64 %idx.ext106, !dbg !2671
  %add.ptr108 = getelementptr inbounds i8, i8* %add.ptr107, i64 1, !dbg !2672
  %55 = load i32, i32* %l, align 4, !dbg !2673
  %add109 = add nsw i32 %55, 1, !dbg !2674
  %conv110 = sext i32 %add109 to i64, !dbg !2673
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr104, i8* align 1 %add.ptr108, i64 %conv110, i1 false), !dbg !2675
  %arraydecay111 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 0, !dbg !2676
  %56 = load i32, i32* %ppos, align 4, !dbg !2677
  %idx.ext112 = sext i32 %56 to i64, !dbg !2678
  %add.ptr113 = getelementptr inbounds i8, i8* %arraydecay111, i64 %idx.ext112, !dbg !2678
  %arraydecay114 = getelementptr inbounds [16 x i8], [16 x i8]* %num, i64 0, i64 0, !dbg !2679
  %57 = load i32, i32* %nl, align 4, !dbg !2680
  %conv115 = sext i32 %57 to i64, !dbg !2680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr113, i8* align 16 %arraydecay114, i64 %conv115, i1 false), !dbg !2679
  br label %for.end132, !dbg !2681

if.end116:                                        ; preds = %land.lhs.true, %if.then63
  br label %if.end128, !dbg !2682

if.else117:                                       ; preds = %if.else
  %call118 = call i16** @__ctype_b_loc() #12, !dbg !2683
  %58 = load i16*, i16** %call118, align 8, !dbg !2683
  %59 = load i32, i32* %a, align 4, !dbg !2683
  %idxprom119 = sext i32 %59 to i64, !dbg !2683
  %arrayidx120 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 %idxprom119, !dbg !2683
  %60 = load i8, i8* %arrayidx120, align 1, !dbg !2683
  %conv121 = sext i8 %60 to i32, !dbg !2683
  %idxprom122 = sext i32 %conv121 to i64, !dbg !2683
  %arrayidx123 = getelementptr inbounds i16, i16* %58, i64 %idxprom122, !dbg !2683
  %61 = load i16, i16* %arrayidx123, align 2, !dbg !2683
  %conv124 = zext i16 %61 to i32, !dbg !2683
  %and = and i32 %conv124, 2048, !dbg !2683
  %tobool125 = icmp ne i32 %and, 0, !dbg !2683
  br i1 %tobool125, label %if.end127, label %if.then126, !dbg !2685

if.then126:                                       ; preds = %if.else117
  store i32 -1, i32* %ppos, align 4, !dbg !2686
  br label %if.end127, !dbg !2688

if.end127:                                        ; preds = %if.then126, %if.else117
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end116
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.then57
  br label %for.inc130, !dbg !2689

for.inc130:                                       ; preds = %if.end129
  %62 = load i32, i32* %a, align 4, !dbg !2690
  %inc131 = add nsw i32 %62, 1, !dbg !2690
  store i32 %inc131, i32* %a, align 4, !dbg !2690
  br label %for.cond47, !dbg !2691, !llvm.loop !2692

for.end132:                                       ; preds = %if.end99, %for.cond47
  %arraydecay133 = getelementptr inbounds [4098 x i8], [4098 x i8]* %NewName, i64 0, i64 0, !dbg !2694
  %arraydecay134 = getelementptr inbounds [4116 x i8], [4116 x i8]* %pattern, i64 0, i64 0, !dbg !2695
  %call135 = call i64 @strftime(i8* %arraydecay133, i64 4096, i8* %arraydecay134, %struct.tm* %tm) #10, !dbg !2696
  br label %if.end140, !dbg !2697

if.else136:                                       ; preds = %if.end17
  %arraydecay137 = getelementptr inbounds [4098 x i8], [4098 x i8]* %NewName, i64 0, i64 0, !dbg !2698
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 4, !dbg !2700
  %63 = load i32, i32* %tm_mon, align 8, !dbg !2700
  %add138 = add nsw i32 %63, 1, !dbg !2701
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 3, !dbg !2702
  %64 = load i32, i32* %tm_mday, align 4, !dbg !2702
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 2, !dbg !2703
  %65 = load i32, i32* %tm_hour, align 8, !dbg !2703
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 1, !dbg !2704
  %66 = load i32, i32* %tm_min, align 4, !dbg !2704
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 0, !dbg !2705
  %67 = load i32, i32* %tm_sec, align 8, !dbg !2705
  %call139 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.125, i64 0, i64 0), i32 %add138, i32 %64, i32 %65, i32 %66, i32 %67) #10, !dbg !2706
  br label %if.end140

if.end140:                                        ; preds = %if.else136, %for.end132
  %68 = load i32, i32* %PrefixPart, align 4, !dbg !2707
  %idxprom141 = sext i32 %68 to i64, !dbg !2708
  %arrayidx142 = getelementptr inbounds [8192 x i8], [8192 x i8]* %NewBaseName, i64 0, i64 %idxprom141, !dbg !2708
  store i8 0, i8* %arrayidx142, align 1, !dbg !2709
  %arraydecay143 = getelementptr inbounds [8192 x i8], [8192 x i8]* %NewBaseName, i64 0, i64 0, !dbg !2710
  %arraydecay144 = getelementptr inbounds [4098 x i8], [4098 x i8]* %NewName, i64 0, i64 0, !dbg !2711
  call void @CatPath(i8* %arraydecay143, i8* %arraydecay144), !dbg !2712
  %call145 = call i16** @__ctype_b_loc() #12, !dbg !2713
  %69 = load i16*, i16** %call145, align 8, !dbg !2713
  %arraydecay146 = getelementptr inbounds [8192 x i8], [8192 x i8]* %NewBaseName, i64 0, i64 0, !dbg !2713
  %call147 = call i64 @strlen(i8* %arraydecay146) #11, !dbg !2713
  %sub148 = sub i64 %call147, 1, !dbg !2713
  %arrayidx149 = getelementptr inbounds [8192 x i8], [8192 x i8]* %NewBaseName, i64 0, i64 %sub148, !dbg !2713
  %70 = load i8, i8* %arrayidx149, align 1, !dbg !2713
  %conv150 = sext i8 %70 to i32, !dbg !2713
  %idxprom151 = sext i32 %conv150 to i64, !dbg !2713
  %arrayidx152 = getelementptr inbounds i16, i16* %69, i64 %idxprom151, !dbg !2713
  %71 = load i16, i16* %arrayidx152, align 2, !dbg !2713
  %conv153 = zext i16 %71 to i32, !dbg !2713
  %and154 = and i32 %conv153, 2048, !dbg !2713
  store i32 %and154, i32* %AddLetter, align 4, !dbg !2714
  store i32 0, i32* %a, align 4, !dbg !2715
  br label %for.cond155, !dbg !2717

for.cond155:                                      ; preds = %for.inc212, %if.end140
  call void @llvm.dbg.declare(metadata [4106 x i8]* %NewName156, metadata !2718, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.declare(metadata [3 x i8]* %NameExtra, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.declare(metadata %struct.stat* %dummy, metadata !2725, metadata !DIExpression()), !dbg !2726
  %72 = load i32, i32* %a, align 4, !dbg !2727
  %tobool157 = icmp ne i32 %72, 0, !dbg !2727
  br i1 %tobool157, label %if.then158, label %if.else170, !dbg !2729

if.then158:                                       ; preds = %for.cond155
  %73 = load i32, i32* %AddLetter, align 4, !dbg !2730
  %tobool159 = icmp ne i32 %73, 0, !dbg !2730
  br i1 %tobool159, label %if.then160, label %if.else164, !dbg !2733

if.then160:                                       ; preds = %if.then158
  %74 = load i32, i32* %a, align 4, !dbg !2734
  %add161 = add nsw i32 96, %74, !dbg !2736
  %conv162 = trunc i32 %add161 to i8, !dbg !2737
  %arrayidx163 = getelementptr inbounds [3 x i8], [3 x i8]* %NameExtra, i64 0, i64 0, !dbg !2738
  store i8 %conv162, i8* %arrayidx163, align 1, !dbg !2739
  br label %if.end168, !dbg !2740

if.else164:                                       ; preds = %if.then158
  %75 = load i32, i32* %a, align 4, !dbg !2741
  %add165 = add nsw i32 47, %75, !dbg !2743
  %conv166 = trunc i32 %add165 to i8, !dbg !2744
  %arrayidx167 = getelementptr inbounds [3 x i8], [3 x i8]* %NameExtra, i64 0, i64 0, !dbg !2745
  store i8 %conv166, i8* %arrayidx167, align 1, !dbg !2746
  br label %if.end168

if.end168:                                        ; preds = %if.else164, %if.then160
  %arrayidx169 = getelementptr inbounds [3 x i8], [3 x i8]* %NameExtra, i64 0, i64 1, !dbg !2747
  store i8 0, i8* %arrayidx169, align 1, !dbg !2748
  br label %if.end172, !dbg !2749

if.else170:                                       ; preds = %for.cond155
  %arrayidx171 = getelementptr inbounds [3 x i8], [3 x i8]* %NameExtra, i64 0, i64 0, !dbg !2750
  store i8 0, i8* %arrayidx171, align 1, !dbg !2752
  br label %if.end172

if.end172:                                        ; preds = %if.else170, %if.end168
  %arraydecay173 = getelementptr inbounds [4106 x i8], [4106 x i8]* %NewName156, i64 0, i64 0, !dbg !2753
  %arraydecay174 = getelementptr inbounds [8192 x i8], [8192 x i8]* %NewBaseName, i64 0, i64 0, !dbg !2754
  %arraydecay175 = getelementptr inbounds [3 x i8], [3 x i8]* %NameExtra, i64 0, i64 0, !dbg !2755
  %call176 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay173, i64 4106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.126, i64 0, i64 0), i8* %arraydecay174, i8* %arraydecay175) #10, !dbg !2756
  %76 = load i8*, i8** %FileName.addr, align 8, !dbg !2757
  %arraydecay177 = getelementptr inbounds [4106 x i8], [4106 x i8]* %NewName156, i64 0, i64 0, !dbg !2759
  %call178 = call i32 @strcmp(i8* %76, i8* %arraydecay177) #11, !dbg !2760
  %tobool179 = icmp ne i32 %call178, 0, !dbg !2760
  br i1 %tobool179, label %if.end181, label %if.then180, !dbg !2761

if.then180:                                       ; preds = %if.end172
  br label %for.end214, !dbg !2762

if.end181:                                        ; preds = %if.end172
  %arraydecay182 = getelementptr inbounds [8192 x i8], [8192 x i8]* %NewBaseName, i64 0, i64 0, !dbg !2763
  %call183 = call i32 @EnsurePathExists(i8* %arraydecay182), !dbg !2765
  %tobool184 = icmp ne i32 %call183, 0, !dbg !2765
  br i1 %tobool184, label %if.end186, label %if.then185, !dbg !2766

if.then185:                                       ; preds = %if.end181
  br label %for.end214, !dbg !2767

if.end186:                                        ; preds = %if.end181
  %arraydecay187 = getelementptr inbounds [4106 x i8], [4106 x i8]* %NewName156, i64 0, i64 0, !dbg !2769
  %call188 = call i32 @stat(i8* %arraydecay187, %struct.stat* %dummy) #10, !dbg !2771
  %tobool189 = icmp ne i32 %call188, 0, !dbg !2771
  br i1 %tobool189, label %if.then190, label %if.end202, !dbg !2772

if.then190:                                       ; preds = %if.end186
  %77 = load i8*, i8** %FileName.addr, align 8, !dbg !2773
  %arraydecay191 = getelementptr inbounds [4106 x i8], [4106 x i8]* %NewName156, i64 0, i64 0, !dbg !2776
  %call192 = call i32 @rename(i8* %77, i8* %arraydecay191) #10, !dbg !2777
  %cmp193 = icmp eq i32 %call192, 0, !dbg !2778
  br i1 %cmp193, label %if.then195, label %if.else198, !dbg !2779

if.then195:                                       ; preds = %if.then190
  %78 = load i8*, i8** %FileName.addr, align 8, !dbg !2780
  %arraydecay196 = getelementptr inbounds [4106 x i8], [4106 x i8]* %NewName156, i64 0, i64 0, !dbg !2782
  %call197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i64 0, i64 0), i8* %78, i8* %arraydecay196), !dbg !2783
  br label %if.end201, !dbg !2784

if.else198:                                       ; preds = %if.then190
  %79 = load i8*, i8** %FileName.addr, align 8, !dbg !2785
  %arraydecay199 = getelementptr inbounds [4106 x i8], [4106 x i8]* %NewName156, i64 0, i64 0, !dbg !2787
  %call200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.128, i64 0, i64 0), i8* %79, i8* %arraydecay199), !dbg !2788
  br label %if.end201

if.end201:                                        ; preds = %if.else198, %if.then195
  br label %for.end214, !dbg !2789

if.end202:                                        ; preds = %if.end186
  %80 = load i32, i32* %a, align 4, !dbg !2790
  %cmp203 = icmp sgt i32 %80, 25, !dbg !2792
  br i1 %cmp203, label %if.then209, label %lor.lhs.false, !dbg !2793

lor.lhs.false:                                    ; preds = %if.end202
  %81 = load i32, i32* %AddLetter, align 4, !dbg !2794
  %tobool205 = icmp ne i32 %81, 0, !dbg !2794
  br i1 %tobool205, label %if.end211, label %land.lhs.true206, !dbg !2795

land.lhs.true206:                                 ; preds = %lor.lhs.false
  %82 = load i32, i32* %a, align 4, !dbg !2796
  %cmp207 = icmp sgt i32 %82, 9, !dbg !2797
  br i1 %cmp207, label %if.then209, label %if.end211, !dbg !2798

if.then209:                                       ; preds = %land.lhs.true206, %if.end202
  %83 = load i8*, i8** %FileName.addr, align 8, !dbg !2799
  %call210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.129, i64 0, i64 0), i8* %83), !dbg !2801
  br label %for.end214, !dbg !2802

if.end211:                                        ; preds = %land.lhs.true206, %lor.lhs.false
  br label %for.inc212, !dbg !2803

for.inc212:                                       ; preds = %if.end211
  %84 = load i32, i32* %a, align 4, !dbg !2804
  %inc213 = add nsw i32 %84, 1, !dbg !2804
  store i32 %inc213, i32* %a, align 4, !dbg !2804
  br label %for.cond155, !dbg !2805, !llvm.loop !2806

for.end214:                                       ; preds = %if.then25, %if.then209, %if.end201, %if.then185, %if.then180
  ret void, !dbg !2809
}

declare dso_local i8* @ClearOrientation() #2

declare dso_local i32 @system(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @mktemp(i8*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @shellescape(i8* %to, i8* %from) #0 !dbg !2810 {
entry:
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %to, i8** %to.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr, metadata !2813, metadata !DIExpression()), !dbg !2814
  store i8* %from, i8** %from.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2817, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2819, metadata !DIExpression()), !dbg !2820
  store i32 0, i32* %j, align 4, !dbg !2821
  store i32 0, i32* %i, align 4, !dbg !2822
  %0 = load i8*, i8** %to.addr, align 8, !dbg !2823
  %1 = load i32, i32* %j, align 4, !dbg !2824
  %inc = add nsw i32 %1, 1, !dbg !2824
  store i32 %inc, i32* %j, align 4, !dbg !2824
  %idxprom = sext i32 %1 to i64, !dbg !2823
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !2823
  store i8 34, i8* %arrayidx, align 1, !dbg !2825
  br label %while.cond, !dbg !2826

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %from.addr, align 8, !dbg !2827
  %3 = load i32, i32* %i, align 4, !dbg !2828
  %idxprom1 = sext i32 %3 to i64, !dbg !2827
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 %idxprom1, !dbg !2827
  %4 = load i8, i8* %arrayidx2, align 1, !dbg !2827
  %tobool = icmp ne i8 %4, 0, !dbg !2826
  br i1 %tobool, label %while.body, label %while.end, !dbg !2826

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %from.addr, align 8, !dbg !2829
  %6 = load i32, i32* %i, align 4, !dbg !2831
  %idxprom3 = sext i32 %6 to i64, !dbg !2829
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3, !dbg !2829
  %7 = load i8, i8* %arrayidx4, align 1, !dbg !2829
  %conv = sext i8 %7 to i32, !dbg !2829
  switch i32 %conv, label %sw.default [
    i32 34, label %sw.bb
    i32 36, label %sw.bb
    i32 96, label %sw.bb
    i32 92, label %sw.bb
  ], !dbg !2832

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body
  %8 = load i8*, i8** %to.addr, align 8, !dbg !2833
  %9 = load i32, i32* %j, align 4, !dbg !2835
  %inc5 = add nsw i32 %9, 1, !dbg !2835
  store i32 %inc5, i32* %j, align 4, !dbg !2835
  %idxprom6 = sext i32 %9 to i64, !dbg !2833
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6, !dbg !2833
  store i8 92, i8* %arrayidx7, align 1, !dbg !2836
  br label %sw.default, !dbg !2833

sw.default:                                       ; preds = %while.body, %sw.bb
  %10 = load i8*, i8** %from.addr, align 8, !dbg !2837
  %11 = load i32, i32* %i, align 4, !dbg !2838
  %inc8 = add nsw i32 %11, 1, !dbg !2838
  store i32 %inc8, i32* %i, align 4, !dbg !2838
  %idxprom9 = sext i32 %11 to i64, !dbg !2837
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 %idxprom9, !dbg !2837
  %12 = load i8, i8* %arrayidx10, align 1, !dbg !2837
  %13 = load i8*, i8** %to.addr, align 8, !dbg !2839
  %14 = load i32, i32* %j, align 4, !dbg !2840
  %inc11 = add nsw i32 %14, 1, !dbg !2840
  store i32 %inc11, i32* %j, align 4, !dbg !2840
  %idxprom12 = sext i32 %14 to i64, !dbg !2839
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %idxprom12, !dbg !2839
  store i8 %12, i8* %arrayidx13, align 1, !dbg !2841
  br label %sw.epilog, !dbg !2842

sw.epilog:                                        ; preds = %sw.default
  %15 = load i32, i32* %j, align 4, !dbg !2843
  %cmp = icmp sge i32 %15, 4096, !dbg !2845
  br i1 %cmp, label %if.then, label %if.end, !dbg !2846

if.then:                                          ; preds = %sw.epilog
  call void @ErrFatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i64 0, i64 0)), !dbg !2847
  br label %if.end, !dbg !2847

if.end:                                           ; preds = %if.then, %sw.epilog
  br label %while.cond, !dbg !2826, !llvm.loop !2848

while.end:                                        ; preds = %while.cond
  %16 = load i8*, i8** %to.addr, align 8, !dbg !2850
  %17 = load i32, i32* %j, align 4, !dbg !2851
  %inc15 = add nsw i32 %17, 1, !dbg !2851
  store i32 %inc15, i32* %j, align 4, !dbg !2851
  %idxprom16 = sext i32 %17 to i64, !dbg !2850
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 %idxprom16, !dbg !2850
  store i8 34, i8* %arrayidx17, align 1, !dbg !2852
  %18 = load i32, i32* %j, align 4, !dbg !2853
  ret i32 %18, !dbg !2854
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #7

declare dso_local void @perror(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

declare dso_local void @CatPath(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #4

declare dso_local i32 @EnsurePathExists(i8*) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!130, !131, !132}
!llvm.ident = !{!133}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ShowTags", scope: !2, file: !3, line: 54, type: !29, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "jhead.c", directory: ".")
!4 = !{!5, !21}
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 151, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./jhead.h", directory: ".")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "READ_METADATA", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "READ_IMAGE", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "READ_ALL", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "READ_ANY", value: 5, isUnsigned: true)
!28 = !{!29, !30, !31, !32, !34, !35, !36}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !22, line: 41, baseType: !33)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{!0, !38, !40, !42, !44, !48, !50, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !114, !116, !118, !120, !122, !124, !126, !128}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "DumpExifMap", scope: !2, file: !3, line: 56, type: !29, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "FilesMatched", scope: !2, file: !3, line: 38, type: !29, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "FileSequence", scope: !2, file: !3, line: 39, type: !29, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "CurrentFile", scope: !2, file: !3, line: 41, type: !46, isLocal: true, isDefinition: true)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "progname", scope: !2, file: !3, line: 43, type: !46, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "DateSet", scope: !2, file: !3, line: 67, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 88, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 11)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "SuppressNonFatalErrors", scope: !2, file: !3, line: 88, type: !29, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "ExifXferScrFile", scope: !2, file: !3, line: 84, type: !35, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "DoModify", scope: !2, file: !3, line: 35, type: !29, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "DeleteComments", scope: !2, file: !3, line: 71, type: !29, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "DeleteExif", scope: !2, file: !3, line: 72, type: !29, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "DeleteIptc", scope: !2, file: !3, line: 73, type: !29, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "DeleteXmp", scope: !2, file: !3, line: 74, type: !29, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "DeleteUnknown", scope: !2, file: !3, line: 75, type: !29, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "EditComment", scope: !2, file: !3, line: 87, type: !29, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "CommentSavefileName", scope: !2, file: !3, line: 90, type: !35, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "CommentInsertfileName", scope: !2, file: !3, line: 91, type: !35, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "CommentInsertLiteral", scope: !2, file: !3, line: 92, type: !35, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "TrimExifTrailingZeroes", scope: !2, file: !3, line: 59, type: !29, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "CreateExifSection", scope: !2, file: !3, line: 58, type: !29, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "Quiet", scope: !2, file: !3, line: 55, type: !29, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "ShowConcise", scope: !2, file: !3, line: 57, type: !29, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "ShowFileInfo", scope: !2, file: !3, line: 97, type: !29, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "TrimExif", scope: !2, file: !3, line: 47, type: !29, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "ThumbSaveName", scope: !2, file: !3, line: 76, type: !35, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "ThumbInsertName", scope: !2, file: !3, line: 79, type: !35, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "RegenThumbnail", scope: !2, file: !3, line: 82, type: !29, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "AutoRotate", scope: !2, file: !3, line: 94, type: !29, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "ZeroRotateTagOnly", scope: !2, file: !3, line: 95, type: !29, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "RenameToDate", scope: !2, file: !3, line: 48, type: !29, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "strftime_args", scope: !2, file: !3, line: 52, type: !35, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "Exif2FileTime", scope: !2, file: !3, line: 53, type: !29, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "ExifTimeAdjust", scope: !2, file: !3, line: 65, type: !109, isLocal: true, isDefinition: true)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !110, line: 7, baseType: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !112, line: 160, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!113 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "FileTimeToExif", scope: !2, file: !3, line: 69, type: !7, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "DateSetChars", scope: !2, file: !3, line: 68, type: !7, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "ExifTimeSet", scope: !2, file: !3, line: 66, type: !109, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "FilterModel", scope: !2, file: !3, line: 61, type: !35, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "FilterQuality", scope: !2, file: !3, line: 62, type: !29, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "ExifOnly", scope: !2, file: !3, line: 63, type: !29, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "PortraitOnly", scope: !2, file: !3, line: 64, type: !29, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "ApplyCommand", scope: !2, file: !3, line: 60, type: !35, isLocal: true, isDefinition: true)
!130 = !{i32 7, !"Dwarf Version", i32 4}
!131 = !{i32 2, !"Debug Info Version", i32 3}
!132 = !{i32 1, !"wchar_size", i32 4}
!133 = !{!"clang version 12.0.0"}
!134 = distinct !DISubprogram(name: "ErrFatal", scope: !3, file: !3, line: 114, type: !135, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !46}
!137 = !{}
!138 = !DILocalVariable(name: "msg", arg: 1, scope: !134, file: !3, line: 114, type: !46)
!139 = !DILocation(line: 114, column: 28, scope: !134)
!140 = !DILocation(line: 116, column: 13, scope: !134)
!141 = !DILocation(line: 116, column: 38, scope: !134)
!142 = !DILocation(line: 116, column: 5, scope: !134)
!143 = !DILocation(line: 117, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !134, file: !3, line: 117, column: 9)
!145 = !DILocation(line: 117, column: 9, scope: !134)
!146 = !DILocation(line: 117, column: 30, scope: !144)
!147 = !DILocation(line: 117, column: 54, scope: !144)
!148 = !DILocation(line: 117, column: 22, scope: !144)
!149 = !DILocation(line: 118, column: 5, scope: !134)
!150 = distinct !DISubprogram(name: "ErrNonfatal", scope: !3, file: !3, line: 125, type: !151, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !46, !29, !29}
!153 = !DILocalVariable(name: "msg", arg: 1, scope: !150, file: !3, line: 125, type: !46)
!154 = !DILocation(line: 125, column: 31, scope: !150)
!155 = !DILocalVariable(name: "a1", arg: 2, scope: !150, file: !3, line: 125, type: !29)
!156 = !DILocation(line: 125, column: 40, scope: !150)
!157 = !DILocalVariable(name: "a2", arg: 3, scope: !150, file: !3, line: 125, type: !29)
!158 = !DILocation(line: 125, column: 48, scope: !150)
!159 = !DILocation(line: 127, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !150, file: !3, line: 127, column: 9)
!161 = !DILocation(line: 127, column: 9, scope: !150)
!162 = !DILocation(line: 127, column: 33, scope: !160)
!163 = !DILocation(line: 129, column: 13, scope: !150)
!164 = !DILocation(line: 129, column: 5, scope: !150)
!165 = !DILocation(line: 130, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !150, file: !3, line: 130, column: 9)
!167 = !DILocation(line: 130, column: 9, scope: !150)
!168 = !DILocation(line: 130, column: 30, scope: !166)
!169 = !DILocation(line: 130, column: 45, scope: !166)
!170 = !DILocation(line: 130, column: 22, scope: !166)
!171 = !DILocation(line: 131, column: 13, scope: !150)
!172 = !DILocation(line: 131, column: 21, scope: !150)
!173 = !DILocation(line: 131, column: 26, scope: !150)
!174 = !DILocation(line: 131, column: 30, scope: !150)
!175 = !DILocation(line: 131, column: 5, scope: !150)
!176 = !DILocation(line: 132, column: 13, scope: !150)
!177 = !DILocation(line: 132, column: 5, scope: !150)
!178 = !DILocation(line: 133, column: 1, scope: !150)
!179 = distinct !DISubprogram(name: "FileTimeAsString", scope: !3, file: !3, line: 791, type: !180, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !35}
!182 = !DILocalVariable(name: "TimeStr", arg: 1, scope: !179, file: !3, line: 791, type: !35)
!183 = !DILocation(line: 791, column: 30, scope: !179)
!184 = !DILocalVariable(name: "ts", scope: !179, file: !3, line: 793, type: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !186, line: 7, size: 448, elements: !187)
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !185, file: !186, line: 9, baseType: !29, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !185, file: !186, line: 10, baseType: !29, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !185, file: !186, line: 11, baseType: !29, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !185, file: !186, line: 12, baseType: !29, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !185, file: !186, line: 13, baseType: !29, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !185, file: !186, line: 14, baseType: !29, size: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !185, file: !186, line: 15, baseType: !29, size: 32, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !185, file: !186, line: 16, baseType: !29, size: 32, offset: 224)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !185, file: !186, line: 17, baseType: !29, size: 32, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !185, file: !186, line: 20, baseType: !113, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !185, file: !186, line: 21, baseType: !46, size: 64, offset: 384)
!199 = !DILocation(line: 793, column: 15, scope: !179)
!200 = !DILocation(line: 794, column: 11, scope: !179)
!201 = !DILocation(line: 794, column: 10, scope: !179)
!202 = !DILocation(line: 795, column: 14, scope: !179)
!203 = !DILocation(line: 795, column: 5, scope: !179)
!204 = !DILocation(line: 796, column: 1, scope: !179)
!205 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1453, type: !206, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!206 = !DISubroutineType(types: !207)
!207 = !{!29, !29, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!209 = !DILocalVariable(name: "argc", arg: 1, scope: !205, file: !3, line: 1453, type: !29)
!210 = !DILocation(line: 1453, column: 15, scope: !205)
!211 = !DILocalVariable(name: "argv", arg: 2, scope: !205, file: !3, line: 1453, type: !208)
!212 = !DILocation(line: 1453, column: 28, scope: !205)
!213 = !DILocalVariable(name: "argn", scope: !205, file: !3, line: 1455, type: !29)
!214 = !DILocation(line: 1455, column: 9, scope: !205)
!215 = !DILocalVariable(name: "arg", scope: !205, file: !3, line: 1456, type: !35)
!216 = !DILocation(line: 1456, column: 12, scope: !205)
!217 = !DILocation(line: 1457, column: 16, scope: !205)
!218 = !DILocation(line: 1457, column: 14, scope: !205)
!219 = !DILocation(line: 1459, column: 14, scope: !220)
!220 = distinct !DILexicalBlock(scope: !205, file: !3, line: 1459, column: 5)
!221 = !DILocation(line: 1459, column: 10, scope: !220)
!222 = !DILocation(line: 1459, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 1459, column: 5)
!224 = !DILocation(line: 1459, column: 22, scope: !223)
!225 = !DILocation(line: 1459, column: 21, scope: !223)
!226 = !DILocation(line: 1459, column: 5, scope: !220)
!227 = !DILocation(line: 1460, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !3, line: 1459, column: 34)
!229 = !DILocation(line: 1460, column: 20, scope: !228)
!230 = !DILocation(line: 1460, column: 13, scope: !228)
!231 = !DILocation(line: 1461, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !3, line: 1461, column: 13)
!233 = !DILocation(line: 1461, column: 20, scope: !232)
!234 = !DILocation(line: 1461, column: 13, scope: !228)
!235 = !DILocation(line: 1461, column: 28, scope: !232)
!236 = !DILocation(line: 1464, column: 21, scope: !237)
!237 = distinct !DILexicalBlock(scope: !228, file: !3, line: 1464, column: 13)
!238 = !DILocation(line: 1464, column: 14, scope: !237)
!239 = !DILocation(line: 1464, column: 13, scope: !228)
!240 = !DILocation(line: 1465, column: 31, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 1464, column: 32)
!242 = !DILocation(line: 1465, column: 36, scope: !241)
!243 = !DILocation(line: 1465, column: 29, scope: !241)
!244 = !DILocation(line: 1466, column: 22, scope: !241)
!245 = !DILocation(line: 1467, column: 9, scope: !241)
!246 = !DILocation(line: 1467, column: 27, scope: !247)
!247 = distinct !DILexicalBlock(scope: !237, file: !3, line: 1467, column: 19)
!248 = !DILocation(line: 1467, column: 20, scope: !247)
!249 = !DILocation(line: 1467, column: 19, scope: !237)
!250 = !DILocation(line: 1468, column: 28, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 1467, column: 38)
!252 = !DILocation(line: 1469, column: 22, scope: !251)
!253 = !DILocation(line: 1470, column: 9, scope: !251)
!254 = !DILocation(line: 1470, column: 27, scope: !255)
!255 = distinct !DILexicalBlock(scope: !247, file: !3, line: 1470, column: 19)
!256 = !DILocation(line: 1470, column: 20, scope: !255)
!257 = !DILocation(line: 1470, column: 19, scope: !247)
!258 = !DILocation(line: 1471, column: 24, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 1470, column: 38)
!260 = !DILocation(line: 1472, column: 22, scope: !259)
!261 = !DILocation(line: 1473, column: 9, scope: !259)
!262 = !DILocation(line: 1473, column: 27, scope: !263)
!263 = distinct !DILexicalBlock(scope: !255, file: !3, line: 1473, column: 19)
!264 = !DILocation(line: 1473, column: 20, scope: !263)
!265 = !DILocation(line: 1473, column: 19, scope: !255)
!266 = !DILocation(line: 1474, column: 24, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !3, line: 1473, column: 38)
!268 = !DILocation(line: 1475, column: 22, scope: !267)
!269 = !DILocation(line: 1476, column: 9, scope: !267)
!270 = !DILocation(line: 1476, column: 27, scope: !271)
!271 = distinct !DILexicalBlock(scope: !263, file: !3, line: 1476, column: 19)
!272 = !DILocation(line: 1476, column: 20, scope: !271)
!273 = !DILocation(line: 1476, column: 19, scope: !263)
!274 = !DILocation(line: 1477, column: 23, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 1476, column: 38)
!276 = !DILocation(line: 1478, column: 22, scope: !275)
!277 = !DILocation(line: 1479, column: 9, scope: !275)
!278 = !DILocation(line: 1479, column: 27, scope: !279)
!279 = distinct !DILexicalBlock(scope: !271, file: !3, line: 1479, column: 19)
!280 = !DILocation(line: 1479, column: 20, scope: !279)
!281 = !DILocation(line: 1479, column: 19, scope: !271)
!282 = !DILocation(line: 1480, column: 27, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 1479, column: 39)
!284 = !DILocation(line: 1481, column: 22, scope: !283)
!285 = !DILocation(line: 1482, column: 9, scope: !283)
!286 = !DILocation(line: 1482, column: 27, scope: !287)
!287 = distinct !DILexicalBlock(scope: !279, file: !3, line: 1482, column: 19)
!288 = !DILocation(line: 1482, column: 20, scope: !287)
!289 = !DILocation(line: 1482, column: 19, scope: !279)
!290 = !DILocation(line: 1483, column: 24, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !3, line: 1482, column: 44)
!292 = !DILocation(line: 1484, column: 28, scope: !291)
!293 = !DILocation(line: 1485, column: 24, scope: !291)
!294 = !DILocation(line: 1486, column: 27, scope: !291)
!295 = !DILocation(line: 1487, column: 23, scope: !291)
!296 = !DILocation(line: 1488, column: 22, scope: !291)
!297 = !DILocation(line: 1489, column: 9, scope: !291)
!298 = !DILocation(line: 1489, column: 27, scope: !299)
!299 = distinct !DILexicalBlock(scope: !287, file: !3, line: 1489, column: 19)
!300 = !DILocation(line: 1489, column: 20, scope: !299)
!301 = !DILocation(line: 1489, column: 19, scope: !287)
!302 = !DILocation(line: 1490, column: 25, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 1489, column: 38)
!304 = !DILocation(line: 1491, column: 22, scope: !303)
!305 = !DILocation(line: 1492, column: 9, scope: !303)
!306 = !DILocation(line: 1492, column: 27, scope: !307)
!307 = distinct !DILexicalBlock(scope: !299, file: !3, line: 1492, column: 19)
!308 = !DILocation(line: 1492, column: 20, scope: !307)
!309 = !DILocation(line: 1492, column: 19, scope: !299)
!310 = !DILocation(line: 1493, column: 35, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 1492, column: 38)
!312 = !DILocation(line: 1493, column: 40, scope: !311)
!313 = !DILocation(line: 1493, column: 33, scope: !311)
!314 = !DILocation(line: 1494, column: 9, scope: !311)
!315 = !DILocation(line: 1494, column: 27, scope: !316)
!316 = distinct !DILexicalBlock(scope: !307, file: !3, line: 1494, column: 19)
!317 = !DILocation(line: 1494, column: 20, scope: !316)
!318 = !DILocation(line: 1494, column: 19, scope: !307)
!319 = !DILocation(line: 1495, column: 37, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 1494, column: 38)
!321 = !DILocation(line: 1495, column: 42, scope: !320)
!322 = !DILocation(line: 1495, column: 35, scope: !320)
!323 = !DILocation(line: 1496, column: 22, scope: !320)
!324 = !DILocation(line: 1497, column: 9, scope: !320)
!325 = !DILocation(line: 1497, column: 27, scope: !326)
!326 = distinct !DILexicalBlock(scope: !316, file: !3, line: 1497, column: 19)
!327 = !DILocation(line: 1497, column: 20, scope: !326)
!328 = !DILocation(line: 1497, column: 19, scope: !316)
!329 = !DILocation(line: 1498, column: 36, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !3, line: 1497, column: 38)
!331 = !DILocation(line: 1498, column: 41, scope: !330)
!332 = !DILocation(line: 1498, column: 34, scope: !330)
!333 = !DILocation(line: 1499, column: 22, scope: !330)
!334 = !DILocation(line: 1500, column: 9, scope: !330)
!335 = !DILocation(line: 1500, column: 27, scope: !336)
!336 = distinct !DILexicalBlock(scope: !326, file: !3, line: 1500, column: 19)
!337 = !DILocation(line: 1500, column: 20, scope: !336)
!338 = !DILocation(line: 1500, column: 19, scope: !326)
!339 = !DILocation(line: 1501, column: 36, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1500, column: 38)
!341 = !DILocation(line: 1502, column: 22, scope: !340)
!342 = !DILocation(line: 1503, column: 9, scope: !340)
!343 = !DILocation(line: 1503, column: 27, scope: !344)
!344 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1503, column: 19)
!345 = !DILocation(line: 1503, column: 20, scope: !344)
!346 = !DILocation(line: 1503, column: 19, scope: !336)
!347 = !DILocation(line: 1504, column: 31, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 1503, column: 42)
!349 = !DILocation(line: 1505, column: 22, scope: !348)
!350 = !DILocation(line: 1507, column: 9, scope: !348)
!351 = !DILocation(line: 1507, column: 27, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !3, line: 1507, column: 19)
!353 = !DILocation(line: 1507, column: 20, scope: !352)
!354 = !DILocation(line: 1507, column: 19, scope: !344)
!355 = !DILocation(line: 1508, column: 13, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 1507, column: 37)
!357 = !DILocation(line: 1509, column: 9, scope: !356)
!358 = !DILocation(line: 1509, column: 27, scope: !359)
!359 = distinct !DILexicalBlock(scope: !352, file: !3, line: 1509, column: 19)
!360 = !DILocation(line: 1509, column: 20, scope: !359)
!361 = !DILocation(line: 1509, column: 19, scope: !352)
!362 = !DILocation(line: 1510, column: 22, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !3, line: 1509, column: 37)
!364 = !DILocation(line: 1511, column: 9, scope: !363)
!365 = !DILocation(line: 1511, column: 27, scope: !366)
!366 = distinct !DILexicalBlock(scope: !359, file: !3, line: 1511, column: 19)
!367 = !DILocation(line: 1511, column: 20, scope: !366)
!368 = !DILocation(line: 1511, column: 19, scope: !359)
!369 = !DILocation(line: 1512, column: 19, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !3, line: 1511, column: 37)
!371 = !DILocation(line: 1513, column: 9, scope: !370)
!372 = !DILocation(line: 1513, column: 27, scope: !373)
!373 = distinct !DILexicalBlock(scope: !366, file: !3, line: 1513, column: 19)
!374 = !DILocation(line: 1513, column: 20, scope: !373)
!375 = !DILocation(line: 1513, column: 19, scope: !366)
!376 = !DILocation(line: 1514, column: 13, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1513, column: 37)
!378 = !DILocation(line: 1515, column: 13, scope: !377)
!379 = !DILocation(line: 1516, column: 27, scope: !380)
!380 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1516, column: 19)
!381 = !DILocation(line: 1516, column: 20, scope: !380)
!382 = !DILocation(line: 1516, column: 19, scope: !373)
!383 = !DILocation(line: 1517, column: 25, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !3, line: 1516, column: 43)
!385 = !DILocation(line: 1518, column: 9, scope: !384)
!386 = !DILocation(line: 1518, column: 27, scope: !387)
!387 = distinct !DILexicalBlock(scope: !380, file: !3, line: 1518, column: 19)
!388 = !DILocation(line: 1518, column: 20, scope: !387)
!389 = !DILocation(line: 1518, column: 19, scope: !380)
!390 = !DILocation(line: 1519, column: 36, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !3, line: 1518, column: 38)
!392 = !DILocation(line: 1520, column: 9, scope: !391)
!393 = !DILocation(line: 1520, column: 27, scope: !394)
!394 = distinct !DILexicalBlock(scope: !387, file: !3, line: 1520, column: 19)
!395 = !DILocation(line: 1520, column: 20, scope: !394)
!396 = !DILocation(line: 1520, column: 19, scope: !387)
!397 = !DILocation(line: 1521, column: 25, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !3, line: 1520, column: 37)
!399 = !DILocation(line: 1522, column: 9, scope: !398)
!400 = !DILocation(line: 1522, column: 27, scope: !401)
!401 = distinct !DILexicalBlock(scope: !394, file: !3, line: 1522, column: 19)
!402 = !DILocation(line: 1522, column: 20, scope: !401)
!403 = !DILocation(line: 1522, column: 19, scope: !394)
!404 = !DILocation(line: 1523, column: 26, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !3, line: 1522, column: 43)
!406 = !DILocation(line: 1526, column: 9, scope: !405)
!407 = !DILocation(line: 1526, column: 27, scope: !408)
!408 = distinct !DILexicalBlock(scope: !401, file: !3, line: 1526, column: 19)
!409 = !DILocation(line: 1526, column: 20, scope: !408)
!410 = !DILocation(line: 1526, column: 19, scope: !401)
!411 = !DILocation(line: 1527, column: 22, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !3, line: 1526, column: 38)
!413 = !DILocation(line: 1528, column: 22, scope: !412)
!414 = !DILocation(line: 1529, column: 9, scope: !412)
!415 = !DILocation(line: 1529, column: 27, scope: !416)
!416 = distinct !DILexicalBlock(scope: !408, file: !3, line: 1529, column: 19)
!417 = !DILocation(line: 1529, column: 20, scope: !416)
!418 = !DILocation(line: 1529, column: 19, scope: !408)
!419 = !DILocation(line: 1530, column: 29, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !3, line: 1529, column: 38)
!421 = !DILocation(line: 1530, column: 34, scope: !420)
!422 = !DILocation(line: 1530, column: 27, scope: !420)
!423 = !DILocation(line: 1531, column: 22, scope: !420)
!424 = !DILocation(line: 1532, column: 9, scope: !420)
!425 = !DILocation(line: 1532, column: 27, scope: !426)
!426 = distinct !DILexicalBlock(scope: !416, file: !3, line: 1532, column: 19)
!427 = !DILocation(line: 1532, column: 20, scope: !426)
!428 = !DILocation(line: 1532, column: 19, scope: !416)
!429 = !DILocation(line: 1533, column: 31, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !3, line: 1532, column: 38)
!431 = !DILocation(line: 1533, column: 36, scope: !430)
!432 = !DILocation(line: 1533, column: 29, scope: !430)
!433 = !DILocation(line: 1534, column: 22, scope: !430)
!434 = !DILocation(line: 1535, column: 9, scope: !430)
!435 = !DILocation(line: 1535, column: 27, scope: !436)
!436 = distinct !DILexicalBlock(scope: !426, file: !3, line: 1535, column: 19)
!437 = !DILocation(line: 1535, column: 20, scope: !436)
!438 = !DILocation(line: 1535, column: 19, scope: !426)
!439 = !DILocation(line: 1536, column: 28, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !3, line: 1535, column: 42)
!441 = !DILocation(line: 1537, column: 20, scope: !440)
!442 = !DILocation(line: 1537, column: 23, scope: !440)
!443 = !DILocation(line: 1537, column: 13, scope: !440)
!444 = !DILocation(line: 1538, column: 17, scope: !445)
!445 = distinct !DILexicalBlock(scope: !440, file: !3, line: 1538, column: 17)
!446 = !DILocation(line: 1538, column: 32, scope: !445)
!447 = !DILocation(line: 1538, column: 17, scope: !440)
!448 = !DILocation(line: 1539, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !3, line: 1538, column: 38)
!450 = !DILocation(line: 1540, column: 13, scope: !449)
!451 = !DILocation(line: 1541, column: 22, scope: !440)
!452 = !DILocation(line: 1544, column: 9, scope: !440)
!453 = !DILocation(line: 1544, column: 27, scope: !454)
!454 = distinct !DILexicalBlock(scope: !436, file: !3, line: 1544, column: 19)
!455 = !DILocation(line: 1544, column: 20, scope: !454)
!456 = !DILocation(line: 1544, column: 19, scope: !436)
!457 = !DILocation(line: 1545, column: 24, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !3, line: 1544, column: 43)
!459 = !DILocation(line: 1546, column: 22, scope: !458)
!460 = !DILocation(line: 1547, column: 9, scope: !458)
!461 = !DILocation(line: 1547, column: 27, scope: !462)
!462 = distinct !DILexicalBlock(scope: !454, file: !3, line: 1547, column: 19)
!463 = !DILocation(line: 1547, column: 20, scope: !462)
!464 = !DILocation(line: 1547, column: 19, scope: !454)
!465 = !DILocation(line: 1548, column: 24, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !3, line: 1547, column: 41)
!467 = !DILocation(line: 1549, column: 31, scope: !466)
!468 = !DILocation(line: 1550, column: 22, scope: !466)
!469 = !DILocation(line: 1553, column: 9, scope: !466)
!470 = !DILocation(line: 1553, column: 27, scope: !471)
!471 = distinct !DILexicalBlock(scope: !462, file: !3, line: 1553, column: 19)
!472 = !DILocation(line: 1553, column: 20, scope: !471)
!473 = !DILocation(line: 1553, column: 19, scope: !462)
!474 = !DILocation(line: 1554, column: 26, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !3, line: 1553, column: 39)
!476 = !DILocation(line: 1555, column: 22, scope: !475)
!477 = !DILocation(line: 1556, column: 16, scope: !475)
!478 = !DILocation(line: 1557, column: 18, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !3, line: 1557, column: 17)
!480 = !DILocation(line: 1557, column: 17, scope: !479)
!481 = !DILocation(line: 1557, column: 22, scope: !479)
!482 = !DILocation(line: 1557, column: 17, scope: !475)
!483 = !DILocation(line: 1559, column: 20, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !3, line: 1557, column: 29)
!485 = !DILocation(line: 1560, column: 13, scope: !484)
!486 = !DILocation(line: 1561, column: 18, scope: !487)
!487 = distinct !DILexicalBlock(scope: !475, file: !3, line: 1561, column: 17)
!488 = !DILocation(line: 1561, column: 17, scope: !487)
!489 = !DILocation(line: 1561, column: 17, scope: !475)
!490 = !DILocation(line: 1563, column: 33, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !3, line: 1561, column: 22)
!492 = !DILocation(line: 1563, column: 31, scope: !491)
!493 = !DILocation(line: 1568, column: 13, scope: !491)
!494 = !DILocation(line: 1569, column: 9, scope: !475)
!495 = !DILocation(line: 1569, column: 27, scope: !496)
!496 = distinct !DILexicalBlock(scope: !471, file: !3, line: 1569, column: 19)
!497 = !DILocation(line: 1569, column: 20, scope: !496)
!498 = !DILocation(line: 1569, column: 19, scope: !471)
!499 = !DILocation(line: 1571, column: 17, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !3, line: 1569, column: 37)
!501 = !DILocation(line: 1575, column: 9, scope: !500)
!502 = !DILocation(line: 1575, column: 27, scope: !503)
!503 = distinct !DILexicalBlock(scope: !496, file: !3, line: 1575, column: 19)
!504 = !DILocation(line: 1575, column: 20, scope: !503)
!505 = !DILocation(line: 1575, column: 19, scope: !496)
!506 = !DILocation(line: 1576, column: 27, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !3, line: 1575, column: 38)
!508 = !DILocation(line: 1577, column: 22, scope: !507)
!509 = !DILocation(line: 1578, column: 9, scope: !507)
!510 = !DILocation(line: 1578, column: 27, scope: !511)
!511 = distinct !DILexicalBlock(scope: !503, file: !3, line: 1578, column: 19)
!512 = !DILocation(line: 1578, column: 20, scope: !511)
!513 = !DILocation(line: 1578, column: 19, scope: !503)
!514 = !DILocalVariable(name: "hours", scope: !515, file: !3, line: 1580, type: !29)
!515 = distinct !DILexicalBlock(scope: !511, file: !3, line: 1578, column: 40)
!516 = !DILocation(line: 1580, column: 17, scope: !515)
!517 = !DILocalVariable(name: "minutes", scope: !515, file: !3, line: 1580, type: !29)
!518 = !DILocation(line: 1580, column: 24, scope: !515)
!519 = !DILocalVariable(name: "seconds", scope: !515, file: !3, line: 1580, type: !29)
!520 = !DILocation(line: 1580, column: 33, scope: !515)
!521 = !DILocalVariable(name: "n", scope: !515, file: !3, line: 1580, type: !29)
!522 = !DILocation(line: 1580, column: 42, scope: !515)
!523 = !DILocation(line: 1581, column: 31, scope: !515)
!524 = !DILocation(line: 1581, column: 21, scope: !515)
!525 = !DILocation(line: 1582, column: 17, scope: !526)
!526 = distinct !DILexicalBlock(scope: !515, file: !3, line: 1582, column: 17)
!527 = !DILocation(line: 1582, column: 24, scope: !526)
!528 = !DILocation(line: 1582, column: 31, scope: !526)
!529 = !DILocation(line: 1582, column: 34, scope: !526)
!530 = !DILocation(line: 1582, column: 41, scope: !526)
!531 = !DILocation(line: 1582, column: 17, scope: !515)
!532 = !DILocation(line: 1583, column: 17, scope: !533)
!533 = distinct !DILexicalBlock(scope: !526, file: !3, line: 1582, column: 48)
!534 = !DILocation(line: 1584, column: 13, scope: !533)
!535 = !DILocation(line: 1585, column: 24, scope: !515)
!536 = !DILocation(line: 1585, column: 27, scope: !515)
!537 = !DILocation(line: 1585, column: 17, scope: !515)
!538 = !DILocation(line: 1585, column: 15, scope: !515)
!539 = !DILocation(line: 1587, column: 17, scope: !540)
!540 = distinct !DILexicalBlock(scope: !515, file: !3, line: 1587, column: 17)
!541 = !DILocation(line: 1587, column: 19, scope: !540)
!542 = !DILocation(line: 1587, column: 17, scope: !515)
!543 = !DILocation(line: 1588, column: 17, scope: !544)
!544 = distinct !DILexicalBlock(scope: !540, file: !3, line: 1587, column: 23)
!545 = !DILocation(line: 1589, column: 13, scope: !544)
!546 = !DILocation(line: 1590, column: 17, scope: !547)
!547 = distinct !DILexicalBlock(scope: !515, file: !3, line: 1590, column: 17)
!548 = !DILocation(line: 1590, column: 17, scope: !515)
!549 = !DILocation(line: 1590, column: 33, scope: !547)
!550 = !DILocation(line: 1591, column: 30, scope: !515)
!551 = !DILocation(line: 1591, column: 35, scope: !515)
!552 = !DILocation(line: 1591, column: 43, scope: !515)
!553 = !DILocation(line: 1591, column: 50, scope: !515)
!554 = !DILocation(line: 1591, column: 41, scope: !515)
!555 = !DILocation(line: 1591, column: 56, scope: !515)
!556 = !DILocation(line: 1591, column: 54, scope: !515)
!557 = !DILocation(line: 1591, column: 28, scope: !515)
!558 = !DILocation(line: 1592, column: 17, scope: !559)
!559 = distinct !DILexicalBlock(scope: !515, file: !3, line: 1592, column: 17)
!560 = !DILocation(line: 1592, column: 24, scope: !559)
!561 = !DILocation(line: 1592, column: 17, scope: !515)
!562 = !DILocation(line: 1592, column: 50, scope: !559)
!563 = !DILocation(line: 1592, column: 49, scope: !559)
!564 = !DILocation(line: 1592, column: 47, scope: !559)
!565 = !DILocation(line: 1592, column: 32, scope: !559)
!566 = !DILocation(line: 1593, column: 22, scope: !515)
!567 = !DILocation(line: 1594, column: 9, scope: !515)
!568 = !DILocation(line: 1594, column: 27, scope: !569)
!569 = distinct !DILexicalBlock(scope: !511, file: !3, line: 1594, column: 19)
!570 = !DILocation(line: 1594, column: 20, scope: !569)
!571 = !DILocation(line: 1594, column: 19, scope: !511)
!572 = !DILocalVariable(name: "NewDate", scope: !573, file: !3, line: 1596, type: !109)
!573 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1594, column: 40)
!574 = !DILocation(line: 1596, column: 20, scope: !573)
!575 = !DILocalVariable(name: "OldDate", scope: !573, file: !3, line: 1596, type: !109)
!576 = !DILocation(line: 1596, column: 29, scope: !573)
!577 = !DILocalVariable(name: "pOldDate", scope: !573, file: !3, line: 1597, type: !35)
!578 = !DILocation(line: 1597, column: 20, scope: !573)
!579 = !DILocation(line: 1598, column: 36, scope: !573)
!580 = !DILocation(line: 1598, column: 39, scope: !573)
!581 = !DILocation(line: 1598, column: 23, scope: !573)
!582 = !DILocation(line: 1598, column: 21, scope: !573)
!583 = !DILocation(line: 1599, column: 31, scope: !573)
!584 = !DILocation(line: 1599, column: 34, scope: !573)
!585 = !DILocation(line: 1599, column: 24, scope: !573)
!586 = !DILocation(line: 1599, column: 22, scope: !573)
!587 = !DILocation(line: 1600, column: 17, scope: !588)
!588 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1600, column: 17)
!589 = !DILocation(line: 1600, column: 17, scope: !573)
!590 = !DILocation(line: 1601, column: 40, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !3, line: 1600, column: 26)
!592 = !DILocation(line: 1601, column: 48, scope: !591)
!593 = !DILocation(line: 1601, column: 27, scope: !591)
!594 = !DILocation(line: 1601, column: 25, scope: !591)
!595 = !DILocation(line: 1602, column: 13, scope: !591)
!596 = !DILocation(line: 1603, column: 17, scope: !597)
!597 = distinct !DILexicalBlock(scope: !588, file: !3, line: 1602, column: 18)
!598 = !DILocation(line: 1605, column: 17, scope: !599)
!599 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1605, column: 17)
!600 = !DILocation(line: 1605, column: 17, scope: !573)
!601 = !DILocation(line: 1605, column: 33, scope: !599)
!602 = !DILocation(line: 1606, column: 30, scope: !573)
!603 = !DILocation(line: 1606, column: 38, scope: !573)
!604 = !DILocation(line: 1606, column: 37, scope: !573)
!605 = !DILocation(line: 1606, column: 28, scope: !573)
!606 = !DILocation(line: 1607, column: 22, scope: !573)
!607 = !DILocation(line: 1608, column: 9, scope: !573)
!608 = !DILocation(line: 1608, column: 27, scope: !609)
!609 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1608, column: 19)
!610 = !DILocation(line: 1608, column: 20, scope: !609)
!611 = !DILocation(line: 1608, column: 19, scope: !569)
!612 = !DILocation(line: 1610, column: 28, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !3, line: 1608, column: 42)
!614 = !DILocation(line: 1611, column: 22, scope: !613)
!615 = !DILocation(line: 1612, column: 9, scope: !613)
!616 = !DILocation(line: 1612, column: 27, scope: !617)
!617 = distinct !DILexicalBlock(scope: !609, file: !3, line: 1612, column: 19)
!618 = !DILocation(line: 1612, column: 20, scope: !617)
!619 = !DILocation(line: 1612, column: 19, scope: !609)
!620 = !DILocalVariable(name: "a", scope: !621, file: !3, line: 1614, type: !29)
!621 = distinct !DILexicalBlock(scope: !617, file: !3, line: 1612, column: 40)
!622 = !DILocation(line: 1614, column: 17, scope: !621)
!623 = !DILocation(line: 1616, column: 13, scope: !621)
!624 = !DILocation(line: 1617, column: 19, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !3, line: 1617, column: 13)
!626 = !DILocation(line: 1617, column: 18, scope: !625)
!627 = !DILocation(line: 1617, column: 22, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1617, column: 13)
!629 = !DILocation(line: 1617, column: 26, scope: !628)
!630 = !DILocation(line: 1617, column: 27, scope: !628)
!631 = !DILocation(line: 1617, column: 13, scope: !625)
!632 = !DILocation(line: 1618, column: 21, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 1618, column: 21)
!634 = distinct !DILexicalBlock(scope: !628, file: !3, line: 1617, column: 35)
!635 = !DILocation(line: 1618, column: 21, scope: !634)
!636 = !DILocation(line: 1619, column: 26, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 1619, column: 25)
!638 = distinct !DILexicalBlock(scope: !633, file: !3, line: 1618, column: 41)
!639 = !DILocation(line: 1619, column: 25, scope: !638)
!640 = !DILocation(line: 1620, column: 27, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !3, line: 1619, column: 44)
!642 = !DILocation(line: 1621, column: 25, scope: !641)
!643 = !DILocation(line: 1623, column: 17, scope: !638)
!644 = !DILocation(line: 1624, column: 25, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 1624, column: 25)
!646 = distinct !DILexicalBlock(scope: !633, file: !3, line: 1623, column: 22)
!647 = !DILocation(line: 1624, column: 29, scope: !645)
!648 = !DILocation(line: 1624, column: 30, scope: !645)
!649 = !DILocation(line: 1624, column: 34, scope: !645)
!650 = !DILocation(line: 1624, column: 25, scope: !646)
!651 = !DILocation(line: 1625, column: 26, scope: !652)
!652 = distinct !DILexicalBlock(scope: !645, file: !3, line: 1624, column: 41)
!653 = !DILocation(line: 1626, column: 25, scope: !652)
!654 = !DILocation(line: 1629, column: 30, scope: !634)
!655 = !DILocation(line: 1629, column: 34, scope: !634)
!656 = !DILocation(line: 1629, column: 35, scope: !634)
!657 = !DILocation(line: 1629, column: 25, scope: !634)
!658 = !DILocation(line: 1629, column: 17, scope: !634)
!659 = !DILocation(line: 1629, column: 28, scope: !634)
!660 = !DILocation(line: 1630, column: 13, scope: !634)
!661 = !DILocation(line: 1617, column: 32, scope: !628)
!662 = !DILocation(line: 1617, column: 13, scope: !628)
!663 = distinct !{!663, !631, !664, !665}
!664 = !DILocation(line: 1630, column: 13, scope: !625)
!665 = !{!"llvm.loop.mustprogress"}
!666 = !DILocation(line: 1631, column: 17, scope: !667)
!667 = distinct !DILexicalBlock(scope: !621, file: !3, line: 1631, column: 17)
!668 = !DILocation(line: 1631, column: 19, scope: !667)
!669 = !DILocation(line: 1631, column: 23, scope: !667)
!670 = !DILocation(line: 1631, column: 26, scope: !667)
!671 = !DILocation(line: 1631, column: 28, scope: !667)
!672 = !DILocation(line: 1631, column: 17, scope: !621)
!673 = !DILocation(line: 1632, column: 17, scope: !674)
!674 = distinct !DILexicalBlock(scope: !667, file: !3, line: 1631, column: 33)
!675 = !DILocation(line: 1633, column: 13, scope: !674)
!676 = !DILocation(line: 1634, column: 28, scope: !621)
!677 = !DILocation(line: 1634, column: 26, scope: !621)
!678 = !DILocation(line: 1635, column: 22, scope: !621)
!679 = !DILocation(line: 1636, column: 9, scope: !621)
!680 = !DILocation(line: 1636, column: 27, scope: !681)
!681 = distinct !DILexicalBlock(scope: !617, file: !3, line: 1636, column: 19)
!682 = !DILocation(line: 1636, column: 20, scope: !681)
!683 = !DILocation(line: 1636, column: 19, scope: !617)
!684 = !DILocalVariable(name: "c", scope: !685, file: !3, line: 1639, type: !35)
!685 = distinct !DILexicalBlock(scope: !681, file: !3, line: 1636, column: 40)
!686 = !DILocation(line: 1639, column: 20, scope: !685)
!687 = !DILocalVariable(name: "tm", scope: !685, file: !3, line: 1640, type: !185)
!688 = !DILocation(line: 1640, column: 23, scope: !685)
!689 = !DILocation(line: 1642, column: 24, scope: !685)
!690 = !DILocation(line: 1642, column: 27, scope: !685)
!691 = !DILocation(line: 1642, column: 17, scope: !685)
!692 = !DILocation(line: 1642, column: 15, scope: !685)
!693 = !DILocation(line: 1643, column: 17, scope: !694)
!694 = distinct !DILexicalBlock(scope: !685, file: !3, line: 1643, column: 17)
!695 = !DILocation(line: 1643, column: 17, scope: !685)
!696 = !DILocation(line: 1643, column: 21, scope: !694)
!697 = !DILocation(line: 1643, column: 23, scope: !694)
!698 = !DILocation(line: 1643, column: 20, scope: !694)
!699 = !DILocation(line: 1645, column: 31, scope: !700)
!700 = distinct !DILexicalBlock(scope: !685, file: !3, line: 1645, column: 17)
!701 = !DILocation(line: 1645, column: 34, scope: !700)
!702 = !DILocation(line: 1645, column: 18, scope: !700)
!703 = !DILocation(line: 1645, column: 17, scope: !685)
!704 = !DILocation(line: 1646, column: 17, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !3, line: 1645, column: 38)
!706 = !DILocation(line: 1648, column: 13, scope: !705)
!707 = !DILocation(line: 1650, column: 28, scope: !685)
!708 = !DILocation(line: 1650, column: 26, scope: !685)
!709 = !DILocation(line: 1652, column: 22, scope: !710)
!710 = distinct !DILexicalBlock(scope: !685, file: !3, line: 1652, column: 17)
!711 = !DILocation(line: 1652, column: 17, scope: !710)
!712 = !DILocation(line: 1652, column: 34, scope: !710)
!713 = !DILocation(line: 1652, column: 17, scope: !685)
!714 = !DILocation(line: 1652, column: 41, scope: !710)
!715 = !DILocation(line: 1653, column: 22, scope: !685)
!716 = !DILocation(line: 1655, column: 9, scope: !685)
!717 = !DILocation(line: 1655, column: 27, scope: !718)
!718 = distinct !DILexicalBlock(scope: !681, file: !3, line: 1655, column: 19)
!719 = !DILocation(line: 1655, column: 20, scope: !718)
!720 = !DILocation(line: 1655, column: 19, scope: !681)
!721 = !DILocalVariable(name: "stat_buf", scope: !722, file: !3, line: 1657, type: !723)
!722 = distinct !DILexicalBlock(scope: !718, file: !3, line: 1655, column: 40)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !724, line: 46, size: 1152, elements: !725)
!724 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!725 = !{!726, !729, !731, !733, !735, !737, !739, !740, !741, !743, !745, !747, !754, !755, !756}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !723, file: !724, line: 48, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !112, line: 145, baseType: !728)
!728 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !723, file: !724, line: 53, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !112, line: 148, baseType: !728)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !723, file: !724, line: 61, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !112, line: 151, baseType: !728)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !723, file: !724, line: 62, baseType: !734, size: 32, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !112, line: 150, baseType: !7)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !723, file: !724, line: 64, baseType: !736, size: 32, offset: 224)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !112, line: 146, baseType: !7)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !723, file: !724, line: 65, baseType: !738, size: 32, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !112, line: 147, baseType: !7)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !723, file: !724, line: 67, baseType: !29, size: 32, offset: 288)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !723, file: !724, line: 69, baseType: !727, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !723, file: !724, line: 74, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !112, line: 152, baseType: !113)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !723, file: !724, line: 78, baseType: !744, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !112, line: 174, baseType: !113)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !723, file: !724, line: 80, baseType: !746, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !112, line: 179, baseType: !113)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !723, file: !724, line: 91, baseType: !748, size: 128, offset: 576)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !749, line: 10, size: 128, elements: !750)
!749 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !748, file: !749, line: 12, baseType: !111, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !748, file: !749, line: 16, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !112, line: 196, baseType: !113)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !723, file: !724, line: 92, baseType: !748, size: 128, offset: 704)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !723, file: !724, line: 93, baseType: !748, size: 128, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !723, file: !724, line: 106, baseType: !757, size: 192, offset: 960)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 192, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 3)
!760 = !DILocation(line: 1657, column: 25, scope: !722)
!761 = !DILocation(line: 1658, column: 22, scope: !762)
!762 = distinct !DILexicalBlock(scope: !722, file: !3, line: 1658, column: 17)
!763 = !DILocation(line: 1658, column: 27, scope: !762)
!764 = !DILocation(line: 1658, column: 17, scope: !762)
!765 = !DILocation(line: 1658, column: 47, scope: !762)
!766 = !DILocation(line: 1658, column: 17, scope: !722)
!767 = !DILocation(line: 1659, column: 40, scope: !768)
!768 = distinct !DILexicalBlock(scope: !762, file: !3, line: 1658, column: 52)
!769 = !DILocation(line: 1659, column: 29, scope: !768)
!770 = !DILocation(line: 1660, column: 13, scope: !768)
!771 = !DILocation(line: 1661, column: 17, scope: !772)
!772 = distinct !DILexicalBlock(scope: !762, file: !3, line: 1660, column: 18)
!773 = !DILocation(line: 1663, column: 22, scope: !722)
!774 = !DILocation(line: 1666, column: 9, scope: !722)
!775 = !DILocation(line: 1666, column: 27, scope: !776)
!776 = distinct !DILexicalBlock(scope: !718, file: !3, line: 1666, column: 19)
!777 = !DILocation(line: 1666, column: 20, scope: !776)
!778 = !DILocation(line: 1666, column: 19, scope: !718)
!779 = !DILocation(line: 1667, column: 17, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 1667, column: 17)
!781 = distinct !DILexicalBlock(scope: !776, file: !3, line: 1666, column: 41)
!782 = !DILocation(line: 1667, column: 21, scope: !780)
!783 = !DILocation(line: 1667, column: 27, scope: !780)
!784 = !DILocation(line: 1667, column: 24, scope: !780)
!785 = !DILocation(line: 1667, column: 17, scope: !781)
!786 = !DILocation(line: 1667, column: 33, scope: !780)
!787 = !DILocation(line: 1668, column: 27, scope: !781)
!788 = !DILocation(line: 1668, column: 32, scope: !781)
!789 = !DILocation(line: 1668, column: 25, scope: !781)
!790 = !DILocation(line: 1669, column: 9, scope: !781)
!791 = !DILocation(line: 1669, column: 27, scope: !792)
!792 = distinct !DILexicalBlock(scope: !776, file: !3, line: 1669, column: 19)
!793 = !DILocation(line: 1669, column: 20, scope: !792)
!794 = !DILocation(line: 1669, column: 19, scope: !776)
!795 = !DILocation(line: 1670, column: 17, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 1670, column: 17)
!797 = distinct !DILexicalBlock(scope: !792, file: !3, line: 1669, column: 43)
!798 = !DILocation(line: 1670, column: 21, scope: !796)
!799 = !DILocation(line: 1670, column: 27, scope: !796)
!800 = !DILocation(line: 1670, column: 24, scope: !796)
!801 = !DILocation(line: 1670, column: 17, scope: !797)
!802 = !DILocation(line: 1670, column: 33, scope: !796)
!803 = !DILocation(line: 1671, column: 15, scope: !804)
!804 = distinct !DILexicalBlock(scope: !797, file: !3, line: 1671, column: 8)
!805 = !DILocation(line: 1671, column: 20, scope: !804)
!806 = !DILocation(line: 1671, column: 8, scope: !804)
!807 = !DILocation(line: 1671, column: 51, scope: !804)
!808 = !DILocation(line: 1671, column: 8, scope: !797)
!809 = !DILocation(line: 1672, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !804, file: !3, line: 1671, column: 56)
!811 = !DILocation(line: 1673, column: 4, scope: !810)
!812 = !DILocation(line: 1674, column: 9, scope: !797)
!813 = !DILocation(line: 1674, column: 27, scope: !814)
!814 = distinct !DILexicalBlock(scope: !792, file: !3, line: 1674, column: 19)
!815 = !DILocation(line: 1674, column: 20, scope: !814)
!816 = !DILocation(line: 1674, column: 19, scope: !792)
!817 = !DILocation(line: 1675, column: 22, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !3, line: 1674, column: 42)
!819 = !DILocation(line: 1676, column: 9, scope: !818)
!820 = !DILocation(line: 1676, column: 27, scope: !821)
!821 = distinct !DILexicalBlock(scope: !814, file: !3, line: 1676, column: 19)
!822 = !DILocation(line: 1676, column: 20, scope: !821)
!823 = !DILocation(line: 1676, column: 19, scope: !814)
!824 = !DILocation(line: 1677, column: 26, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1676, column: 39)
!826 = !DILocation(line: 1678, column: 9, scope: !825)
!827 = !DILocation(line: 1678, column: 27, scope: !828)
!828 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1678, column: 19)
!829 = !DILocation(line: 1678, column: 20, scope: !828)
!830 = !DILocation(line: 1678, column: 19, scope: !821)
!831 = !DILocation(line: 1679, column: 26, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !3, line: 1678, column: 39)
!833 = !DILocation(line: 1680, column: 9, scope: !832)
!834 = !DILocation(line: 1680, column: 27, scope: !835)
!835 = distinct !DILexicalBlock(scope: !828, file: !3, line: 1680, column: 19)
!836 = !DILocation(line: 1680, column: 20, scope: !835)
!837 = !DILocation(line: 1680, column: 19, scope: !828)
!838 = !DILocation(line: 1681, column: 17, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 1681, column: 17)
!840 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1680, column: 39)
!841 = !DILocation(line: 1681, column: 21, scope: !839)
!842 = !DILocation(line: 1681, column: 27, scope: !839)
!843 = !DILocation(line: 1681, column: 24, scope: !839)
!844 = !DILocation(line: 1681, column: 17, scope: !840)
!845 = !DILocation(line: 1681, column: 33, scope: !839)
!846 = !DILocation(line: 1682, column: 28, scope: !840)
!847 = !DILocation(line: 1682, column: 33, scope: !840)
!848 = !DILocation(line: 1682, column: 26, scope: !840)
!849 = !DILocation(line: 1683, column: 22, scope: !840)
!850 = !DILocation(line: 1700, column: 9, scope: !840)
!851 = !DILocation(line: 1701, column: 53, scope: !852)
!852 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1700, column: 14)
!853 = !DILocation(line: 1701, column: 13, scope: !852)
!854 = !DILocation(line: 1702, column: 13, scope: !852)
!855 = !DILocation(line: 1703, column: 13, scope: !852)
!856 = !DILocation(line: 1705, column: 13, scope: !857)
!857 = distinct !DILexicalBlock(scope: !228, file: !3, line: 1705, column: 13)
!858 = !DILocation(line: 1705, column: 21, scope: !857)
!859 = !DILocation(line: 1705, column: 18, scope: !857)
!860 = !DILocation(line: 1705, column: 13, scope: !228)
!861 = !DILocation(line: 1708, column: 13, scope: !862)
!862 = distinct !DILexicalBlock(scope: !857, file: !3, line: 1705, column: 26)
!863 = !DILocation(line: 1709, column: 9, scope: !862)
!864 = !DILocation(line: 1710, column: 5, scope: !228)
!865 = !DILocation(line: 1459, column: 31, scope: !223)
!866 = !DILocation(line: 1459, column: 5, scope: !223)
!867 = distinct !{!867, !226, !868, !665}
!868 = !DILocation(line: 1710, column: 5, scope: !220)
!869 = !DILocation(line: 1711, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !205, file: !3, line: 1711, column: 9)
!871 = !DILocation(line: 1711, column: 17, scope: !870)
!872 = !DILocation(line: 1711, column: 14, scope: !870)
!873 = !DILocation(line: 1711, column: 9, scope: !205)
!874 = !DILocation(line: 1712, column: 9, scope: !875)
!875 = distinct !DILexicalBlock(scope: !870, file: !3, line: 1711, column: 22)
!876 = !DILocation(line: 1713, column: 5, scope: !875)
!877 = !DILocation(line: 1715, column: 9, scope: !878)
!878 = distinct !DILexicalBlock(scope: !205, file: !3, line: 1715, column: 9)
!879 = !DILocation(line: 1715, column: 23, scope: !878)
!880 = !DILocation(line: 1715, column: 31, scope: !878)
!881 = !DILocation(line: 1715, column: 41, scope: !878)
!882 = !DILocation(line: 1715, column: 34, scope: !878)
!883 = !DILocation(line: 1715, column: 62, scope: !878)
!884 = !DILocation(line: 1715, column: 9, scope: !205)
!885 = !DILocation(line: 1716, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1715, column: 67)
!887 = !DILocation(line: 1719, column: 9, scope: !886)
!888 = !DILocation(line: 1722, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !205, file: !3, line: 1722, column: 9)
!890 = !DILocation(line: 1722, column: 9, scope: !205)
!891 = !DILocation(line: 1723, column: 13, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 1723, column: 13)
!893 = distinct !DILexicalBlock(scope: !889, file: !3, line: 1722, column: 24)
!894 = !DILocation(line: 1723, column: 27, scope: !892)
!895 = !DILocation(line: 1723, column: 30, scope: !892)
!896 = !DILocation(line: 1723, column: 13, scope: !893)
!897 = !DILocation(line: 1724, column: 13, scope: !898)
!898 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1723, column: 46)
!899 = !DILocation(line: 1725, column: 13, scope: !898)
!900 = !DILocation(line: 1727, column: 5, scope: !893)
!901 = !DILocation(line: 1729, column: 9, scope: !902)
!902 = distinct !DILexicalBlock(scope: !205, file: !3, line: 1729, column: 9)
!903 = !DILocation(line: 1729, column: 9, scope: !205)
!904 = !DILocation(line: 1730, column: 13, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 1730, column: 13)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 1729, column: 21)
!907 = !DILocation(line: 1730, column: 33, scope: !905)
!908 = !DILocation(line: 1730, column: 41, scope: !905)
!909 = !DILocation(line: 1730, column: 44, scope: !905)
!910 = !DILocation(line: 1730, column: 66, scope: !905)
!911 = !DILocation(line: 1730, column: 13, scope: !906)
!912 = !DILocation(line: 1731, column: 13, scope: !913)
!913 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1730, column: 74)
!914 = !DILocation(line: 1732, column: 13, scope: !913)
!915 = !DILocation(line: 1734, column: 5, scope: !906)
!916 = !DILocation(line: 1737, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !205, file: !3, line: 1737, column: 9)
!918 = !DILocation(line: 1737, column: 9, scope: !205)
!919 = !DILocation(line: 1738, column: 13, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 1738, column: 13)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1737, column: 25)
!922 = !DILocation(line: 1738, column: 25, scope: !920)
!923 = !DILocation(line: 1738, column: 28, scope: !920)
!924 = !DILocation(line: 1738, column: 13, scope: !921)
!925 = !DILocation(line: 1739, column: 13, scope: !926)
!926 = distinct !DILexicalBlock(scope: !920, file: !3, line: 1738, column: 41)
!927 = !DILocation(line: 1741, column: 9, scope: !926)
!928 = !DILocation(line: 1742, column: 5, scope: !921)
!929 = !DILocation(line: 1744, column: 18, scope: !205)
!930 = !DILocation(line: 1745, column: 5, scope: !205)
!931 = !DILocation(line: 1745, column: 11, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 1745, column: 5)
!933 = distinct !DILexicalBlock(scope: !205, file: !3, line: 1745, column: 5)
!934 = !DILocation(line: 1745, column: 16, scope: !932)
!935 = !DILocation(line: 1745, column: 15, scope: !932)
!936 = !DILocation(line: 1745, column: 5, scope: !933)
!937 = !DILocation(line: 1746, column: 22, scope: !938)
!938 = distinct !DILexicalBlock(scope: !932, file: !3, line: 1745, column: 28)
!939 = !DILocation(line: 1756, column: 25, scope: !938)
!940 = !DILocation(line: 1756, column: 30, scope: !938)
!941 = !DILocation(line: 1756, column: 13, scope: !938)
!942 = !DILocation(line: 1759, column: 14, scope: !943)
!943 = distinct !DILexicalBlock(scope: !938, file: !3, line: 1759, column: 13)
!944 = !DILocation(line: 1759, column: 13, scope: !938)
!945 = !DILocation(line: 1760, column: 21, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !3, line: 1759, column: 27)
!947 = !DILocation(line: 1760, column: 62, scope: !946)
!948 = !DILocation(line: 1760, column: 67, scope: !946)
!949 = !DILocation(line: 1760, column: 13, scope: !946)
!950 = !DILocation(line: 1761, column: 9, scope: !946)
!951 = !DILocation(line: 1762, column: 5, scope: !938)
!952 = !DILocation(line: 1745, column: 25, scope: !932)
!953 = !DILocation(line: 1745, column: 5, scope: !932)
!954 = distinct !{!954, !936, !955, !665}
!955 = !DILocation(line: 1762, column: 5, scope: !933)
!956 = !DILocation(line: 1764, column: 9, scope: !957)
!957 = distinct !DILexicalBlock(scope: !205, file: !3, line: 1764, column: 9)
!958 = !DILocation(line: 1764, column: 22, scope: !957)
!959 = !DILocation(line: 1764, column: 9, scope: !205)
!960 = !DILocation(line: 1765, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !3, line: 1764, column: 27)
!962 = !DILocation(line: 1767, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !957, file: !3, line: 1766, column: 10)
!964 = !DILocation(line: 1769, column: 1, scope: !205)
!965 = distinct !DISubprogram(name: "Usage", scope: !3, file: !3, line: 1259, type: !966, scopeLine: 1260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!966 = !DISubroutineType(types: !967)
!967 = !{null}
!968 = !DILocation(line: 1261, column: 5, scope: !965)
!969 = !DILocation(line: 1266, column: 43, scope: !965)
!970 = !DILocation(line: 1266, column: 5, scope: !965)
!971 = !DILocation(line: 1267, column: 5, scope: !965)
!972 = !DILocation(line: 1413, column: 5, scope: !965)
!973 = distinct !DISubprogram(name: "ParseCmdDate", scope: !3, file: !3, line: 1420, type: !974, scopeLine: 1421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!974 = !DISubroutineType(types: !975)
!975 = !{!109, !35}
!976 = !DILocalVariable(name: "DateSpecified", arg: 1, scope: !973, file: !3, line: 1420, type: !35)
!977 = !DILocation(line: 1420, column: 35, scope: !973)
!978 = !DILocalVariable(name: "a", scope: !973, file: !3, line: 1422, type: !29)
!979 = !DILocation(line: 1422, column: 9, scope: !973)
!980 = !DILocalVariable(name: "tm", scope: !973, file: !3, line: 1423, type: !185)
!981 = !DILocation(line: 1423, column: 15, scope: !973)
!982 = !DILocalVariable(name: "UnixTime", scope: !973, file: !3, line: 1424, type: !109)
!983 = !DILocation(line: 1424, column: 12, scope: !973)
!984 = !DILocation(line: 1426, column: 8, scope: !973)
!985 = !DILocation(line: 1426, column: 16, scope: !973)
!986 = !DILocation(line: 1427, column: 33, scope: !973)
!987 = !DILocation(line: 1427, column: 40, scope: !973)
!988 = !DILocation(line: 1427, column: 21, scope: !973)
!989 = !DILocation(line: 1427, column: 28, scope: !973)
!990 = !DILocation(line: 1427, column: 8, scope: !973)
!991 = !DILocation(line: 1427, column: 16, scope: !973)
!992 = !DILocation(line: 1429, column: 16, scope: !973)
!993 = !DILocation(line: 1430, column: 17, scope: !973)
!994 = !DILocation(line: 1430, column: 30, scope: !973)
!995 = !DILocation(line: 1430, column: 42, scope: !973)
!996 = !DILocation(line: 1431, column: 17, scope: !973)
!997 = !DILocation(line: 1431, column: 30, scope: !973)
!998 = !DILocation(line: 1431, column: 42, scope: !973)
!999 = !DILocation(line: 1429, column: 9, scope: !973)
!1000 = !DILocation(line: 1429, column: 7, scope: !973)
!1001 = !DILocation(line: 1433, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !973, file: !3, line: 1433, column: 9)
!1003 = !DILocation(line: 1433, column: 11, scope: !1002)
!1004 = !DILocation(line: 1433, column: 16, scope: !1002)
!1005 = !DILocation(line: 1433, column: 19, scope: !1002)
!1006 = !DILocation(line: 1433, column: 21, scope: !1002)
!1007 = !DILocation(line: 1433, column: 9, scope: !973)
!1008 = !DILocation(line: 1436, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 1433, column: 25)
!1010 = !DILocation(line: 1437, column: 5, scope: !1009)
!1011 = !DILocation(line: 1438, column: 8, scope: !973)
!1012 = !DILocation(line: 1438, column: 17, scope: !973)
!1013 = !DILocation(line: 1439, column: 8, scope: !973)
!1014 = !DILocation(line: 1439, column: 15, scope: !973)
!1015 = !DILocation(line: 1440, column: 8, scope: !973)
!1016 = !DILocation(line: 1440, column: 16, scope: !973)
!1017 = !DILocation(line: 1442, column: 16, scope: !973)
!1018 = !DILocation(line: 1442, column: 14, scope: !973)
!1019 = !DILocation(line: 1443, column: 9, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !973, file: !3, line: 1443, column: 9)
!1021 = !DILocation(line: 1443, column: 18, scope: !1020)
!1022 = !DILocation(line: 1443, column: 9, scope: !973)
!1023 = !DILocation(line: 1444, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 1443, column: 24)
!1025 = !DILocation(line: 1445, column: 5, scope: !1024)
!1026 = !DILocation(line: 1447, column: 12, scope: !973)
!1027 = !DILocation(line: 1447, column: 5, scope: !973)
!1028 = distinct !DISubprogram(name: "ProcessFile", scope: !3, file: !3, line: 801, type: !135, scopeLine: 802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1029 = !DILocalVariable(name: "FileName", arg: 1, scope: !1028, file: !3, line: 801, type: !46)
!1030 = !DILocation(line: 801, column: 38, scope: !1028)
!1031 = !DILocalVariable(name: "Modified", scope: !1028, file: !3, line: 803, type: !29)
!1032 = !DILocation(line: 803, column: 9, scope: !1028)
!1033 = !DILocalVariable(name: "ReadMode", scope: !1028, file: !3, line: 804, type: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReadMode_t", file: !22, line: 156, baseType: !21)
!1035 = !DILocation(line: 804, column: 16, scope: !1028)
!1036 = !DILocation(line: 806, column: 16, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 806, column: 9)
!1038 = !DILocation(line: 806, column: 9, scope: !1037)
!1039 = !DILocation(line: 806, column: 26, scope: !1037)
!1040 = !DILocation(line: 806, column: 9, scope: !1028)
!1041 = !DILocation(line: 808, column: 9, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 806, column: 40)
!1043 = !DILocation(line: 809, column: 5, scope: !1042)
!1044 = !DILocation(line: 811, column: 14, scope: !1028)
!1045 = !DILocation(line: 812, column: 19, scope: !1028)
!1046 = !DILocation(line: 812, column: 17, scope: !1028)
!1047 = !DILocation(line: 813, column: 18, scope: !1028)
!1048 = !DILocation(line: 815, column: 5, scope: !1028)
!1049 = !DILocation(line: 816, column: 5, scope: !1028)
!1050 = !DILocation(line: 819, column: 5, scope: !1028)
!1051 = !DILocation(line: 820, column: 25, scope: !1028)
!1052 = !DILocation(line: 821, column: 28, scope: !1028)
!1053 = !DILocation(line: 822, column: 28, scope: !1028)
!1054 = !DILocalVariable(name: "st", scope: !1055, file: !3, line: 826, type: !723)
!1055 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 825, column: 5)
!1056 = !DILocation(line: 826, column: 21, scope: !1055)
!1057 = !DILocation(line: 827, column: 18, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 827, column: 13)
!1059 = !DILocation(line: 827, column: 13, scope: !1058)
!1060 = !DILocation(line: 827, column: 33, scope: !1058)
!1061 = !DILocation(line: 827, column: 13, scope: !1055)
!1062 = !DILocation(line: 828, column: 41, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 827, column: 38)
!1064 = !DILocation(line: 828, column: 36, scope: !1063)
!1065 = !DILocation(line: 829, column: 37, scope: !1063)
!1066 = !DILocation(line: 829, column: 34, scope: !1063)
!1067 = !DILocation(line: 829, column: 32, scope: !1063)
!1068 = !DILocation(line: 830, column: 9, scope: !1063)
!1069 = !DILocation(line: 831, column: 13, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 830, column: 14)
!1071 = !DILocation(line: 835, column: 10, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 835, column: 9)
!1073 = !DILocation(line: 835, column: 19, scope: !1072)
!1074 = !DILocation(line: 835, column: 33, scope: !1072)
!1075 = !DILocation(line: 835, column: 36, scope: !1072)
!1076 = !DILocation(line: 835, column: 49, scope: !1072)
!1077 = !DILocation(line: 835, column: 52, scope: !1072)
!1078 = !DILocation(line: 835, column: 9, scope: !1028)
!1079 = !DILocation(line: 836, column: 20, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 836, column: 13)
!1081 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 835, column: 66)
!1082 = !DILocation(line: 836, column: 13, scope: !1080)
!1083 = !DILocation(line: 836, column: 13, scope: !1081)
!1084 = !DILocation(line: 837, column: 52, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 836, column: 42)
!1086 = !DILocation(line: 837, column: 13, scope: !1085)
!1087 = !DILocation(line: 838, column: 13, scope: !1085)
!1088 = !DILocation(line: 840, column: 5, scope: !1081)
!1089 = !DILocation(line: 842, column: 33, scope: !1028)
!1090 = !DILocation(line: 842, column: 5, scope: !1028)
!1091 = !DILocation(line: 845, column: 9, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 845, column: 9)
!1093 = !DILocation(line: 845, column: 22, scope: !1092)
!1094 = !DILocation(line: 845, column: 25, scope: !1092)
!1095 = !DILocation(line: 845, column: 9, scope: !1028)
!1096 = !DILocation(line: 849, column: 27, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 849, column: 13)
!1098 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 845, column: 36)
!1099 = !DILocation(line: 849, column: 14, scope: !1097)
!1100 = !DILocation(line: 849, column: 13, scope: !1098)
!1101 = !DILocation(line: 849, column: 53, scope: !1097)
!1102 = !DILocation(line: 862, column: 13, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 862, column: 13)
!1104 = !DILocation(line: 862, column: 13, scope: !1098)
!1105 = !DILocation(line: 863, column: 13, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 862, column: 29)
!1107 = !DILocation(line: 864, column: 13, scope: !1106)
!1108 = !DILocation(line: 867, column: 9, scope: !1098)
!1109 = !DILocation(line: 869, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 869, column: 13)
!1111 = !DILocation(line: 869, column: 13, scope: !1098)
!1112 = !DILocation(line: 870, column: 30, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 870, column: 17)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 869, column: 24)
!1115 = !DILocation(line: 870, column: 17, scope: !1113)
!1116 = !DILocation(line: 870, column: 17, scope: !1114)
!1117 = !DILocation(line: 871, column: 26, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 870, column: 40)
!1119 = !DILocation(line: 872, column: 13, scope: !1118)
!1120 = !DILocation(line: 873, column: 9, scope: !1114)
!1121 = !DILocalVariable(name: "dummy", scope: !1122, file: !3, line: 874, type: !723)
!1122 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 873, column: 14)
!1123 = !DILocation(line: 874, column: 25, scope: !1122)
!1124 = !DILocation(line: 875, column: 23, scope: !1122)
!1125 = !DILocation(line: 875, column: 33, scope: !1122)
!1126 = !DILocation(line: 875, column: 13, scope: !1122)
!1127 = !DILocation(line: 877, column: 22, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 877, column: 17)
!1129 = !DILocation(line: 877, column: 17, scope: !1128)
!1130 = !DILocation(line: 877, column: 17, scope: !1122)
!1131 = !DILocation(line: 880, column: 17, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 877, column: 40)
!1133 = !DILocation(line: 882, column: 22, scope: !1122)
!1134 = !DILocation(line: 884, column: 18, scope: !1098)
!1135 = !DILocation(line: 885, column: 5, scope: !1098)
!1136 = !DILocation(line: 887, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 887, column: 9)
!1138 = !DILocation(line: 887, column: 9, scope: !1028)
!1139 = !DILocalVariable(name: "RelativeExifName", scope: !1140, file: !3, line: 888, type: !1141)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 887, column: 25)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32776, elements: !1142)
!1142 = !{!1143}
!1143 = !DISubrange(count: 4097)
!1144 = !DILocation(line: 888, column: 14, scope: !1140)
!1145 = !DILocation(line: 891, column: 22, scope: !1140)
!1146 = !DILocation(line: 891, column: 40, scope: !1140)
!1147 = !DILocation(line: 891, column: 57, scope: !1140)
!1148 = !DILocation(line: 891, column: 9, scope: !1140)
!1149 = !DILocation(line: 893, column: 26, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 893, column: 12)
!1151 = !DILocation(line: 893, column: 13, scope: !1150)
!1152 = !DILocation(line: 893, column: 12, scope: !1140)
!1153 = !DILocation(line: 893, column: 60, scope: !1150)
!1154 = !DILocation(line: 895, column: 9, scope: !1140)
!1155 = !DILocation(line: 897, column: 18, scope: !1140)
!1156 = !DILocation(line: 898, column: 18, scope: !1140)
!1157 = !DILocation(line: 899, column: 5, scope: !1140)
!1158 = !DILocation(line: 901, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 901, column: 9)
!1160 = !DILocation(line: 901, column: 9, scope: !1028)
!1161 = !DILocation(line: 902, column: 18, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 901, column: 18)
!1163 = !DILocation(line: 903, column: 5, scope: !1162)
!1164 = !DILocation(line: 905, column: 23, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 905, column: 9)
!1166 = !DILocation(line: 905, column: 33, scope: !1165)
!1167 = !DILocation(line: 905, column: 10, scope: !1165)
!1168 = !DILocation(line: 905, column: 9, scope: !1028)
!1169 = !DILocation(line: 905, column: 44, scope: !1165)
!1170 = !DILocation(line: 907, column: 9, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 907, column: 9)
!1172 = !DILocation(line: 907, column: 9, scope: !1028)
!1173 = !DILocation(line: 908, column: 9, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 907, column: 25)
!1175 = !DILocation(line: 909, column: 9, scope: !1174)
!1176 = !DILocation(line: 912, column: 9, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 912, column: 9)
!1178 = !DILocation(line: 912, column: 9, scope: !1028)
!1179 = !DILocation(line: 913, column: 23, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 913, column: 13)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 912, column: 32)
!1182 = !DILocation(line: 913, column: 13, scope: !1180)
!1183 = !DILocation(line: 913, column: 13, scope: !1181)
!1184 = !DILocalVariable(name: "ExifSection", scope: !1185, file: !3, line: 914, type: !1186)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 913, column: 38)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "Section_t", file: !22, line: 67, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 63, size: 128, elements: !1189)
!1189 = !{!1190, !1191, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !1188, file: !22, line: 64, baseType: !34, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1188, file: !22, line: 65, baseType: !29, size: 32, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !1188, file: !22, line: 66, baseType: !7, size: 32, offset: 96)
!1193 = !DILocation(line: 914, column: 25, scope: !1185)
!1194 = !DILocalVariable(name: "NumRedundant", scope: !1185, file: !3, line: 915, type: !29)
!1195 = !DILocation(line: 915, column: 17, scope: !1185)
!1196 = !DILocalVariable(name: "WasRedundant", scope: !1185, file: !3, line: 915, type: !29)
!1197 = !DILocation(line: 915, column: 31, scope: !1185)
!1198 = !DILocalVariable(name: "StartRedundant", scope: !1185, file: !3, line: 916, type: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1200 = !DILocation(line: 916, column: 29, scope: !1185)
!1201 = !DILocation(line: 918, column: 27, scope: !1185)
!1202 = !DILocation(line: 918, column: 25, scope: !1185)
!1203 = !DILocation(line: 920, column: 30, scope: !1185)
!1204 = !DILocation(line: 920, column: 43, scope: !1185)
!1205 = !DILocation(line: 920, column: 48, scope: !1185)
!1206 = !DILocation(line: 920, column: 64, scope: !1185)
!1207 = !DILocation(line: 920, column: 52, scope: !1185)
!1208 = !DILocation(line: 920, column: 90, scope: !1185)
!1209 = !DILocation(line: 920, column: 79, scope: !1185)
!1210 = !DILocation(line: 920, column: 28, scope: !1185)
!1211 = !DILocation(line: 921, column: 44, scope: !1185)
!1212 = !DILocation(line: 921, column: 57, scope: !1185)
!1213 = !DILocation(line: 921, column: 76, scope: !1185)
!1214 = !DILocation(line: 921, column: 104, scope: !1185)
!1215 = !DILocation(line: 921, column: 92, scope: !1185)
!1216 = !DILocation(line: 921, column: 118, scope: !1185)
!1217 = !DILocation(line: 921, column: 63, scope: !1185)
!1218 = !DILocation(line: 921, column: 41, scope: !1185)
!1219 = !DILocation(line: 921, column: 26, scope: !1185)
!1220 = !DILocation(line: 925, column: 13, scope: !1185)
!1221 = !DILocation(line: 925, column: 18, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 925, column: 13)
!1223 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 925, column: 13)
!1224 = !DILocation(line: 925, column: 31, scope: !1222)
!1225 = !DILocation(line: 925, column: 35, scope: !1222)
!1226 = !DILocation(line: 925, column: 38, scope: !1222)
!1227 = !DILocation(line: 925, column: 53, scope: !1222)
!1228 = !DILocation(line: 925, column: 65, scope: !1222)
!1229 = !DILocation(line: 925, column: 69, scope: !1222)
!1230 = !DILocation(line: 0, scope: !1222)
!1231 = !DILocation(line: 925, column: 13, scope: !1223)
!1232 = !DILocation(line: 925, column: 86, scope: !1222)
!1233 = !DILocation(line: 925, column: 13, scope: !1222)
!1234 = distinct !{!1234, !1231, !1235, !665}
!1235 = !DILocation(line: 925, column: 89, scope: !1223)
!1236 = !DILocation(line: 927, column: 17, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 927, column: 17)
!1238 = !DILocation(line: 927, column: 33, scope: !1237)
!1239 = !DILocation(line: 927, column: 30, scope: !1237)
!1240 = !DILocation(line: 927, column: 17, scope: !1185)
!1241 = !DILocalVariable(name: "NewExifSize", scope: !1242, file: !3, line: 928, type: !29)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 927, column: 46)
!1243 = !DILocation(line: 928, column: 21, scope: !1242)
!1244 = !DILocation(line: 929, column: 63, scope: !1242)
!1245 = !DILocation(line: 929, column: 76, scope: !1242)
!1246 = !DILocation(line: 929, column: 75, scope: !1242)
!1247 = !DILocation(line: 929, column: 90, scope: !1242)
!1248 = !DILocation(line: 929, column: 17, scope: !1242)
!1249 = !DILocation(line: 930, column: 41, scope: !1242)
!1250 = !DILocation(line: 930, column: 69, scope: !1242)
!1251 = !DILocation(line: 930, column: 57, scope: !1242)
!1252 = !DILocation(line: 930, column: 83, scope: !1242)
!1253 = !DILocation(line: 930, column: 89, scope: !1242)
!1254 = !DILocation(line: 930, column: 87, scope: !1242)
!1255 = !DILocation(line: 930, column: 29, scope: !1242)
!1256 = !DILocation(line: 931, column: 48, scope: !1242)
!1257 = !DILocation(line: 931, column: 60, scope: !1242)
!1258 = !DILocation(line: 931, column: 40, scope: !1242)
!1259 = !DILocation(line: 931, column: 17, scope: !1242)
!1260 = !DILocation(line: 931, column: 30, scope: !1242)
!1261 = !DILocation(line: 931, column: 38, scope: !1242)
!1262 = !DILocation(line: 932, column: 47, scope: !1242)
!1263 = !DILocation(line: 932, column: 40, scope: !1242)
!1264 = !DILocation(line: 932, column: 17, scope: !1242)
!1265 = !DILocation(line: 932, column: 30, scope: !1242)
!1266 = !DILocation(line: 932, column: 38, scope: !1242)
!1267 = !DILocation(line: 933, column: 37, scope: !1242)
!1268 = !DILocation(line: 933, column: 17, scope: !1242)
!1269 = !DILocation(line: 933, column: 30, scope: !1242)
!1270 = !DILocation(line: 933, column: 35, scope: !1242)
!1271 = !DILocation(line: 934, column: 26, scope: !1242)
!1272 = !DILocation(line: 935, column: 13, scope: !1242)
!1273 = !DILocation(line: 938, column: 9, scope: !1185)
!1274 = !DILocation(line: 939, column: 5, scope: !1181)
!1275 = !DILocation(line: 941, column: 18, scope: !1028)
!1276 = !DILocation(line: 943, column: 9, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 943, column: 9)
!1278 = !DILocation(line: 943, column: 9, scope: !1028)
!1279 = !DILocation(line: 944, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 943, column: 21)
!1281 = !DILocation(line: 945, column: 5, scope: !1280)
!1282 = !DILocation(line: 946, column: 15, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 946, column: 13)
!1284 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 945, column: 10)
!1285 = !DILocation(line: 946, column: 14, scope: !1283)
!1286 = !DILocation(line: 946, column: 25, scope: !1283)
!1287 = !DILocation(line: 946, column: 28, scope: !1283)
!1288 = !DILocation(line: 946, column: 13, scope: !1284)
!1289 = !DILocation(line: 947, column: 27, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 946, column: 37)
!1291 = !DILocation(line: 947, column: 13, scope: !1290)
!1292 = !DILocalVariable(name: "IptcSection", scope: !1293, file: !3, line: 951, type: !1186)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 949, column: 13)
!1294 = !DILocation(line: 951, column: 29, scope: !1293)
!1295 = !DILocation(line: 952, column: 31, scope: !1293)
!1296 = !DILocation(line: 952, column: 29, scope: !1293)
!1297 = !DILocation(line: 954, column: 21, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 954, column: 21)
!1299 = !DILocation(line: 954, column: 21, scope: !1293)
!1300 = !DILocation(line: 955, column: 31, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 954, column: 33)
!1302 = !DILocation(line: 955, column: 44, scope: !1301)
!1303 = !DILocation(line: 955, column: 50, scope: !1301)
!1304 = !DILocation(line: 955, column: 63, scope: !1301)
!1305 = !DILocation(line: 955, column: 21, scope: !1301)
!1306 = !DILocation(line: 956, column: 17, scope: !1301)
!1307 = !DILocation(line: 958, column: 13, scope: !1290)
!1308 = !DILocation(line: 959, column: 9, scope: !1290)
!1309 = !DILocation(line: 962, column: 9, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 962, column: 9)
!1311 = !DILocation(line: 962, column: 9, scope: !1028)
!1312 = !DILocalVariable(name: "OutFileName", scope: !1313, file: !3, line: 963, type: !1141)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 962, column: 23)
!1314 = !DILocation(line: 963, column: 14, scope: !1313)
!1315 = !DILocation(line: 965, column: 22, scope: !1313)
!1316 = !DILocation(line: 965, column: 35, scope: !1313)
!1317 = !DILocation(line: 965, column: 50, scope: !1313)
!1318 = !DILocation(line: 965, column: 9, scope: !1313)
!1319 = !DILocation(line: 967, column: 27, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 967, column: 13)
!1321 = !DILocation(line: 967, column: 13, scope: !1320)
!1322 = !DILocation(line: 967, column: 13, scope: !1313)
!1323 = !DILocation(line: 968, column: 39, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 967, column: 40)
!1325 = !DILocation(line: 968, column: 13, scope: !1324)
!1326 = !DILocation(line: 969, column: 9, scope: !1324)
!1327 = !DILocation(line: 970, column: 5, scope: !1313)
!1328 = !DILocation(line: 972, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 972, column: 9)
!1330 = !DILocation(line: 972, column: 9, scope: !1028)
!1331 = !DILocation(line: 974, column: 9, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 972, column: 27)
!1333 = !DILocation(line: 975, column: 18, scope: !1332)
!1334 = !DILocation(line: 976, column: 5, scope: !1332)
!1335 = !DILocation(line: 978, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 978, column: 9)
!1337 = !DILocation(line: 978, column: 9, scope: !1028)
!1338 = !DILocation(line: 979, column: 33, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 979, column: 13)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 978, column: 24)
!1341 = !DILocation(line: 979, column: 13, scope: !1339)
!1342 = !DILocation(line: 979, column: 13, scope: !1340)
!1343 = !DILocation(line: 980, column: 22, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 979, column: 43)
!1345 = !DILocation(line: 981, column: 9, scope: !1344)
!1346 = !DILocation(line: 982, column: 5, scope: !1340)
!1347 = !DILocation(line: 984, column: 9, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 984, column: 9)
!1349 = !DILocation(line: 984, column: 9, scope: !1028)
!1350 = !DILocalVariable(name: "ThumbFileName", scope: !1351, file: !3, line: 985, type: !1141)
!1351 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 984, column: 25)
!1352 = !DILocation(line: 985, column: 14, scope: !1351)
!1353 = !DILocation(line: 987, column: 22, scope: !1351)
!1354 = !DILocation(line: 987, column: 37, scope: !1351)
!1355 = !DILocation(line: 987, column: 54, scope: !1351)
!1356 = !DILocation(line: 987, column: 9, scope: !1351)
!1357 = !DILocation(line: 989, column: 30, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 989, column: 13)
!1359 = !DILocation(line: 989, column: 13, scope: !1358)
!1360 = !DILocation(line: 989, column: 13, scope: !1351)
!1361 = !DILocation(line: 990, column: 22, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 989, column: 45)
!1363 = !DILocation(line: 991, column: 9, scope: !1362)
!1364 = !DILocation(line: 992, column: 5, scope: !1351)
!1365 = !DILocation(line: 992, column: 15, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 992, column: 15)
!1367 = !DILocation(line: 992, column: 15, scope: !1348)
!1368 = !DILocation(line: 994, column: 13, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 994, column: 13)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 992, column: 24)
!1371 = !DILocation(line: 994, column: 13, scope: !1370)
!1372 = !DILocation(line: 995, column: 22, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 994, column: 36)
!1374 = !DILocation(line: 996, column: 9, scope: !1373)
!1375 = !DILocation(line: 997, column: 5, scope: !1370)
!1376 = !DILocation(line: 1003, column: 20, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1003, column: 20)
!1378 = !DILocation(line: 1003, column: 32, scope: !1377)
!1379 = !DILocation(line: 1003, column: 35, scope: !1377)
!1380 = !DILocation(line: 1003, column: 57, scope: !1377)
!1381 = !DILocation(line: 1003, column: 60, scope: !1377)
!1382 = !DILocation(line: 1003, column: 20, scope: !1028)
!1383 = !DILocalVariable(name: "CommentSec", scope: !1384, file: !3, line: 1005, type: !1186)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 1003, column: 81)
!1385 = !DILocation(line: 1005, column: 21, scope: !1384)
!1386 = !DILocalVariable(name: "Comment", scope: !1384, file: !3, line: 1006, type: !1387)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128008, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: 16001)
!1390 = !DILocation(line: 1006, column: 14, scope: !1384)
!1391 = !DILocalVariable(name: "CommentSize", scope: !1384, file: !3, line: 1007, type: !29)
!1392 = !DILocation(line: 1007, column: 13, scope: !1384)
!1393 = !DILocation(line: 1009, column: 22, scope: !1384)
!1394 = !DILocation(line: 1009, column: 20, scope: !1384)
!1395 = !DILocation(line: 1011, column: 13, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1011, column: 13)
!1397 = !DILocation(line: 1011, column: 24, scope: !1396)
!1398 = !DILocation(line: 1011, column: 13, scope: !1384)
!1399 = !DILocalVariable(name: "DummyData", scope: !1400, file: !3, line: 1012, type: !1199)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1011, column: 32)
!1401 = !DILocation(line: 1012, column: 29, scope: !1400)
!1402 = !DILocation(line: 1014, column: 35, scope: !1400)
!1403 = !DILocation(line: 1014, column: 23, scope: !1400)
!1404 = !DILocation(line: 1015, column: 13, scope: !1400)
!1405 = !DILocation(line: 1015, column: 26, scope: !1400)
!1406 = !DILocation(line: 1016, column: 13, scope: !1400)
!1407 = !DILocation(line: 1016, column: 26, scope: !1400)
!1408 = !DILocation(line: 1017, column: 13, scope: !1400)
!1409 = !DILocation(line: 1017, column: 26, scope: !1400)
!1410 = !DILocation(line: 1018, column: 47, scope: !1400)
!1411 = !DILocation(line: 1018, column: 26, scope: !1400)
!1412 = !DILocation(line: 1018, column: 24, scope: !1400)
!1413 = !DILocation(line: 1019, column: 9, scope: !1400)
!1414 = !DILocation(line: 1021, column: 23, scope: !1384)
!1415 = !DILocation(line: 1021, column: 35, scope: !1384)
!1416 = !DILocation(line: 1021, column: 39, scope: !1384)
!1417 = !DILocation(line: 1021, column: 21, scope: !1384)
!1418 = !DILocation(line: 1022, column: 13, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1022, column: 13)
!1420 = !DILocation(line: 1022, column: 25, scope: !1419)
!1421 = !DILocation(line: 1022, column: 13, scope: !1384)
!1422 = !DILocation(line: 1023, column: 21, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 1022, column: 44)
!1424 = !DILocation(line: 1023, column: 13, scope: !1423)
!1425 = !DILocation(line: 1024, column: 25, scope: !1423)
!1426 = !DILocation(line: 1025, column: 9, scope: !1423)
!1427 = !DILocation(line: 1027, column: 13, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1027, column: 13)
!1429 = !DILocation(line: 1027, column: 13, scope: !1384)
!1430 = !DILocalVariable(name: "CommentFileName", scope: !1431, file: !3, line: 1029, type: !1141)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 1027, column: 35)
!1432 = !DILocation(line: 1029, column: 18, scope: !1431)
!1433 = !DILocalVariable(name: "CommentFile", scope: !1431, file: !3, line: 1030, type: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1436, line: 7, baseType: !1437)
!1436 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1438, line: 49, size: 1728, elements: !1439)
!1438 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1455, !1457, !1458, !1459, !1460, !1461, !1463, !1467, !1470, !1472, !1475, !1478, !1479, !1480, !1483, !1484}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1437, file: !1438, line: 51, baseType: !29, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1437, file: !1438, line: 54, baseType: !35, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1437, file: !1438, line: 55, baseType: !35, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1437, file: !1438, line: 56, baseType: !35, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1437, file: !1438, line: 57, baseType: !35, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1437, file: !1438, line: 58, baseType: !35, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1437, file: !1438, line: 59, baseType: !35, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1437, file: !1438, line: 60, baseType: !35, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1437, file: !1438, line: 61, baseType: !35, size: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1437, file: !1438, line: 64, baseType: !35, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1437, file: !1438, line: 65, baseType: !35, size: 64, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1437, file: !1438, line: 66, baseType: !35, size: 64, offset: 704)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1437, file: !1438, line: 68, baseType: !1453, size: 64, offset: 768)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1438, line: 36, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1437, file: !1438, line: 70, baseType: !1456, size: 64, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1437, file: !1438, line: 72, baseType: !29, size: 32, offset: 896)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1437, file: !1438, line: 73, baseType: !29, size: 32, offset: 928)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1437, file: !1438, line: 74, baseType: !742, size: 64, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1437, file: !1438, line: 77, baseType: !30, size: 16, offset: 1024)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1437, file: !1438, line: 78, baseType: !1462, size: 8, offset: 1040)
!1462 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1437, file: !1438, line: 79, baseType: !1464, size: 8, offset: 1048)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !1465)
!1465 = !{!1466}
!1466 = !DISubrange(count: 1)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1437, file: !1438, line: 81, baseType: !1468, size: 64, offset: 1088)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1438, line: 43, baseType: null)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1437, file: !1438, line: 89, baseType: !1471, size: 64, offset: 1152)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !112, line: 153, baseType: !113)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1437, file: !1438, line: 91, baseType: !1473, size: 64, offset: 1216)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1438, line: 37, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1437, file: !1438, line: 92, baseType: !1476, size: 64, offset: 1280)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1438, line: 38, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1437, file: !1438, line: 93, baseType: !1456, size: 64, offset: 1344)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1437, file: !1438, line: 94, baseType: !31, size: 64, offset: 1408)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1437, file: !1438, line: 95, baseType: !1481, size: 64, offset: 1472)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1482, line: 46, baseType: !728)
!1482 = !DIFile(filename: "/home/raoxue/node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "")
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1437, file: !1438, line: 96, baseType: !29, size: 32, offset: 1536)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1437, file: !1438, line: 98, baseType: !1485, size: 160, offset: 1568)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !1486)
!1486 = !{!1487}
!1487 = !DISubrange(count: 20)
!1488 = !DILocation(line: 1030, column: 20, scope: !1431)
!1489 = !DILocation(line: 1033, column: 26, scope: !1431)
!1490 = !DILocation(line: 1033, column: 43, scope: !1431)
!1491 = !DILocation(line: 1033, column: 66, scope: !1431)
!1492 = !DILocation(line: 1033, column: 13, scope: !1431)
!1493 = !DILocation(line: 1035, column: 33, scope: !1431)
!1494 = !DILocation(line: 1035, column: 27, scope: !1431)
!1495 = !DILocation(line: 1035, column: 25, scope: !1431)
!1496 = !DILocation(line: 1036, column: 17, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 1036, column: 17)
!1498 = !DILocation(line: 1036, column: 29, scope: !1497)
!1499 = !DILocation(line: 1036, column: 17, scope: !1431)
!1500 = !DILocation(line: 1037, column: 48, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 1036, column: 37)
!1502 = !DILocation(line: 1037, column: 17, scope: !1501)
!1503 = !DILocation(line: 1038, column: 13, scope: !1501)
!1504 = !DILocation(line: 1041, column: 37, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 1038, column: 18)
!1506 = !DILocation(line: 1041, column: 67, scope: !1505)
!1507 = !DILocation(line: 1041, column: 31, scope: !1505)
!1508 = !DILocation(line: 1041, column: 29, scope: !1505)
!1509 = !DILocation(line: 1042, column: 24, scope: !1505)
!1510 = !DILocation(line: 1042, column: 17, scope: !1505)
!1511 = !DILocation(line: 1043, column: 21, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 1043, column: 21)
!1513 = !DILocation(line: 1043, column: 33, scope: !1512)
!1514 = !DILocation(line: 1043, column: 21, scope: !1505)
!1515 = !DILocation(line: 1043, column: 50, scope: !1512)
!1516 = !DILocation(line: 1043, column: 38, scope: !1512)
!1517 = !DILocation(line: 1045, column: 9, scope: !1431)
!1518 = !DILocation(line: 1045, column: 19, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 1045, column: 19)
!1520 = !DILocation(line: 1045, column: 19, scope: !1428)
!1521 = !DILocation(line: 1046, column: 21, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 1045, column: 40)
!1523 = !DILocation(line: 1046, column: 30, scope: !1522)
!1524 = !DILocation(line: 1046, column: 13, scope: !1522)
!1525 = !DILocation(line: 1047, column: 34, scope: !1522)
!1526 = !DILocation(line: 1047, column: 27, scope: !1522)
!1527 = !DILocation(line: 1047, column: 25, scope: !1522)
!1528 = !DILocation(line: 1048, column: 9, scope: !1522)
!1529 = !DILocation(line: 1059, column: 13, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 1048, column: 14)
!1531 = !DILocation(line: 1059, column: 37, scope: !1530)
!1532 = !DILocation(line: 1059, column: 49, scope: !1530)
!1533 = !DILocation(line: 1059, column: 53, scope: !1530)
!1534 = !DILocation(line: 1059, column: 57, scope: !1530)
!1535 = !DILocalVariable(name: "EditFileName", scope: !1536, file: !3, line: 1062, type: !1537)
!1536 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 1061, column: 13)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32808, elements: !1538)
!1538 = !{!1539}
!1539 = !DISubrange(count: 4101)
!1540 = !DILocation(line: 1062, column: 22, scope: !1536)
!1541 = !DILocation(line: 1063, column: 24, scope: !1536)
!1542 = !DILocation(line: 1063, column: 38, scope: !1536)
!1543 = !DILocation(line: 1063, column: 17, scope: !1536)
!1544 = !DILocation(line: 1064, column: 24, scope: !1536)
!1545 = !DILocation(line: 1064, column: 17, scope: !1536)
!1546 = !DILocation(line: 1066, column: 47, scope: !1536)
!1547 = !DILocation(line: 1066, column: 61, scope: !1536)
!1548 = !DILocation(line: 1066, column: 70, scope: !1536)
!1549 = !DILocation(line: 1066, column: 31, scope: !1536)
!1550 = !DILocation(line: 1066, column: 29, scope: !1536)
!1551 = !DILocation(line: 1070, column: 20, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1070, column: 13)
!1553 = !DILocation(line: 1070, column: 37, scope: !1552)
!1554 = !DILocation(line: 1070, column: 49, scope: !1552)
!1555 = !DILocation(line: 1070, column: 53, scope: !1552)
!1556 = !DILocation(line: 1070, column: 13, scope: !1552)
!1557 = !DILocation(line: 1070, column: 13, scope: !1384)
!1558 = !DILocalVariable(name: "size", scope: !1559, file: !3, line: 1072, type: !29)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 1070, column: 57)
!1560 = !DILocation(line: 1072, column: 17, scope: !1559)
!1561 = !DILocation(line: 1073, column: 20, scope: !1559)
!1562 = !DILocation(line: 1073, column: 31, scope: !1559)
!1563 = !DILocation(line: 1073, column: 18, scope: !1559)
!1564 = !DILocation(line: 1074, column: 18, scope: !1559)
!1565 = !DILocation(line: 1074, column: 30, scope: !1559)
!1566 = !DILocation(line: 1074, column: 13, scope: !1559)
!1567 = !DILocation(line: 1075, column: 32, scope: !1559)
!1568 = !DILocation(line: 1075, column: 13, scope: !1559)
!1569 = !DILocation(line: 1075, column: 25, scope: !1559)
!1570 = !DILocation(line: 1075, column: 30, scope: !1559)
!1571 = !DILocation(line: 1076, column: 39, scope: !1559)
!1572 = !DILocation(line: 1076, column: 32, scope: !1559)
!1573 = !DILocation(line: 1076, column: 13, scope: !1559)
!1574 = !DILocation(line: 1076, column: 25, scope: !1559)
!1575 = !DILocation(line: 1076, column: 30, scope: !1559)
!1576 = !DILocation(line: 1077, column: 43, scope: !1559)
!1577 = !DILocation(line: 1077, column: 48, scope: !1559)
!1578 = !DILocation(line: 1077, column: 35, scope: !1559)
!1579 = !DILocation(line: 1077, column: 13, scope: !1559)
!1580 = !DILocation(line: 1077, column: 25, scope: !1559)
!1581 = !DILocation(line: 1077, column: 33, scope: !1559)
!1582 = !DILocation(line: 1078, column: 43, scope: !1559)
!1583 = !DILocation(line: 1078, column: 35, scope: !1559)
!1584 = !DILocation(line: 1078, column: 13, scope: !1559)
!1585 = !DILocation(line: 1078, column: 25, scope: !1559)
!1586 = !DILocation(line: 1078, column: 33, scope: !1559)
!1587 = !DILocation(line: 1079, column: 21, scope: !1559)
!1588 = !DILocation(line: 1079, column: 33, scope: !1559)
!1589 = !DILocation(line: 1079, column: 38, scope: !1559)
!1590 = !DILocation(line: 1079, column: 13, scope: !1559)
!1591 = !DILocation(line: 1079, column: 51, scope: !1559)
!1592 = !DILocation(line: 1079, column: 55, scope: !1559)
!1593 = !DILocation(line: 1080, column: 22, scope: !1559)
!1594 = !DILocation(line: 1081, column: 9, scope: !1559)
!1595 = !DILocation(line: 1082, column: 14, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1082, column: 13)
!1597 = !DILocation(line: 1082, column: 13, scope: !1384)
!1598 = !DILocation(line: 1083, column: 13, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 1082, column: 23)
!1600 = !DILocation(line: 1084, column: 9, scope: !1599)
!1601 = !DILocation(line: 1085, column: 5, scope: !1384)
!1602 = !DILocation(line: 1088, column: 9, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1088, column: 9)
!1604 = !DILocation(line: 1088, column: 9, scope: !1028)
!1605 = !DILocalVariable(name: "CommentSec", scope: !1606, file: !3, line: 1089, type: !1186)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1088, column: 29)
!1607 = !DILocation(line: 1089, column: 21, scope: !1606)
!1608 = !DILocation(line: 1090, column: 22, scope: !1606)
!1609 = !DILocation(line: 1090, column: 20, scope: !1606)
!1610 = !DILocation(line: 1092, column: 13, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 1092, column: 13)
!1612 = !DILocation(line: 1092, column: 24, scope: !1611)
!1613 = !DILocation(line: 1092, column: 13, scope: !1606)
!1614 = !DILocalVariable(name: "OutFileName", scope: !1615, file: !3, line: 1093, type: !1141)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1092, column: 32)
!1616 = !DILocation(line: 1093, column: 18, scope: !1615)
!1617 = !DILocalVariable(name: "CommentFile", scope: !1615, file: !3, line: 1094, type: !1434)
!1618 = !DILocation(line: 1094, column: 20, scope: !1615)
!1619 = !DILocation(line: 1097, column: 26, scope: !1615)
!1620 = !DILocation(line: 1097, column: 39, scope: !1615)
!1621 = !DILocation(line: 1097, column: 60, scope: !1615)
!1622 = !DILocation(line: 1097, column: 13, scope: !1615)
!1623 = !DILocation(line: 1099, column: 33, scope: !1615)
!1624 = !DILocation(line: 1099, column: 27, scope: !1615)
!1625 = !DILocation(line: 1099, column: 25, scope: !1615)
!1626 = !DILocation(line: 1100, column: 17, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 1100, column: 17)
!1628 = !DILocation(line: 1100, column: 17, scope: !1615)
!1629 = !DILocation(line: 1101, column: 32, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 1100, column: 29)
!1631 = !DILocation(line: 1101, column: 44, scope: !1630)
!1632 = !DILocation(line: 1101, column: 48, scope: !1630)
!1633 = !DILocation(line: 1101, column: 52, scope: !1630)
!1634 = !DILocation(line: 1101, column: 64, scope: !1630)
!1635 = !DILocation(line: 1101, column: 68, scope: !1630)
!1636 = !DILocation(line: 1101, column: 75, scope: !1630)
!1637 = !DILocation(line: 1101, column: 17, scope: !1630)
!1638 = !DILocation(line: 1102, column: 24, scope: !1630)
!1639 = !DILocation(line: 1102, column: 17, scope: !1630)
!1640 = !DILocation(line: 1103, column: 13, scope: !1630)
!1641 = !DILocation(line: 1104, column: 17, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 1103, column: 18)
!1643 = !DILocation(line: 1106, column: 9, scope: !1615)
!1644 = !DILocation(line: 1107, column: 62, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1106, column: 14)
!1646 = !DILocation(line: 1107, column: 13, scope: !1645)
!1647 = !DILocation(line: 1109, column: 5, scope: !1606)
!1648 = !DILocation(line: 1111, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1111, column: 9)
!1650 = !DILocation(line: 1111, column: 24, scope: !1649)
!1651 = !DILocation(line: 1111, column: 27, scope: !1649)
!1652 = !DILocation(line: 1111, column: 39, scope: !1649)
!1653 = !DILocation(line: 1111, column: 42, scope: !1649)
!1654 = !DILocation(line: 1111, column: 55, scope: !1649)
!1655 = !DILocation(line: 1111, column: 58, scope: !1649)
!1656 = !DILocation(line: 1111, column: 9, scope: !1028)
!1657 = !DILocation(line: 1112, column: 22, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 1112, column: 12)
!1659 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1111, column: 73)
!1660 = !DILocation(line: 1112, column: 12, scope: !1658)
!1661 = !DILocation(line: 1112, column: 12, scope: !1659)
!1662 = !DILocalVariable(name: "tm", scope: !1663, file: !3, line: 1113, type: !185)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 1112, column: 38)
!1664 = !DILocation(line: 1113, column: 23, scope: !1663)
!1665 = !DILocalVariable(name: "UnixTime", scope: !1663, file: !3, line: 1114, type: !109)
!1666 = !DILocation(line: 1114, column: 20, scope: !1663)
!1667 = !DILocalVariable(name: "TempBuf", scope: !1663, file: !3, line: 1115, type: !1668)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 400, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 50)
!1671 = !DILocation(line: 1115, column: 18, scope: !1663)
!1672 = !DILocalVariable(name: "a", scope: !1663, file: !3, line: 1116, type: !29)
!1673 = !DILocation(line: 1116, column: 17, scope: !1663)
!1674 = !DILocalVariable(name: "ExifSection", scope: !1663, file: !3, line: 1117, type: !1186)
!1675 = !DILocation(line: 1117, column: 25, scope: !1663)
!1676 = !DILocation(line: 1118, column: 17, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1118, column: 17)
!1678 = !DILocation(line: 1118, column: 17, scope: !1663)
!1679 = !DILocation(line: 1120, column: 28, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 1118, column: 29)
!1681 = !DILocation(line: 1120, column: 26, scope: !1680)
!1682 = !DILocation(line: 1121, column: 13, scope: !1680)
!1683 = !DILocation(line: 1122, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1122, column: 21)
!1685 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 1121, column: 18)
!1686 = !DILocation(line: 1122, column: 21, scope: !1685)
!1687 = !DILocation(line: 1123, column: 21, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 1122, column: 36)
!1689 = !DILocation(line: 1124, column: 17, scope: !1688)
!1690 = !DILocation(line: 1125, column: 21, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1125, column: 21)
!1692 = !DILocation(line: 1125, column: 21, scope: !1685)
!1693 = !DILocation(line: 1126, column: 57, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 1125, column: 34)
!1695 = !DILocation(line: 1126, column: 21, scope: !1694)
!1696 = !DILocation(line: 1127, column: 23, scope: !1694)
!1697 = !DILocation(line: 1128, column: 21, scope: !1694)
!1698 = !DILocation(line: 1129, column: 25, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 1129, column: 25)
!1700 = !DILocation(line: 1129, column: 27, scope: !1699)
!1701 = !DILocation(line: 1129, column: 25, scope: !1694)
!1702 = !DILocation(line: 1130, column: 32, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 1129, column: 34)
!1704 = !DILocation(line: 1130, column: 25, scope: !1703)
!1705 = !DILocation(line: 1131, column: 25, scope: !1703)
!1706 = !DILocation(line: 1133, column: 17, scope: !1694)
!1707 = !DILocation(line: 1135, column: 22, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1135, column: 21)
!1709 = !DILocation(line: 1135, column: 21, scope: !1685)
!1710 = !DILocation(line: 1135, column: 56, scope: !1708)
!1711 = !DILocation(line: 1138, column: 28, scope: !1685)
!1712 = !DILocation(line: 1138, column: 26, scope: !1685)
!1713 = !DILocation(line: 1139, column: 26, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1139, column: 21)
!1715 = !DILocation(line: 1139, column: 21, scope: !1714)
!1716 = !DILocation(line: 1139, column: 35, scope: !1714)
!1717 = !DILocation(line: 1139, column: 21, scope: !1685)
!1718 = !DILocation(line: 1139, column: 42, scope: !1714)
!1719 = !DILocation(line: 1140, column: 29, scope: !1685)
!1720 = !DILocation(line: 1140, column: 26, scope: !1685)
!1721 = !DILocation(line: 1142, column: 19, scope: !1663)
!1722 = !DILocation(line: 1142, column: 18, scope: !1663)
!1723 = !DILocation(line: 1146, column: 21, scope: !1663)
!1724 = !DILocation(line: 1147, column: 20, scope: !1663)
!1725 = !DILocation(line: 1147, column: 27, scope: !1663)
!1726 = !DILocation(line: 1147, column: 37, scope: !1663)
!1727 = !DILocation(line: 1147, column: 43, scope: !1663)
!1728 = !DILocation(line: 1147, column: 50, scope: !1663)
!1729 = !DILocation(line: 1148, column: 20, scope: !1663)
!1730 = !DILocation(line: 1148, column: 32, scope: !1663)
!1731 = !DILocation(line: 1148, column: 43, scope: !1663)
!1732 = !DILocation(line: 1146, column: 13, scope: !1663)
!1733 = !DILabel(scope: !1663, name: "skip_unixtime", file: !3, line: 1150)
!1734 = !DILocation(line: 1150, column: 1, scope: !1663)
!1735 = !DILocation(line: 1151, column: 27, scope: !1663)
!1736 = !DILocation(line: 1151, column: 25, scope: !1663)
!1737 = !DILocation(line: 1153, column: 20, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1153, column: 13)
!1739 = !DILocation(line: 1153, column: 18, scope: !1738)
!1740 = !DILocation(line: 1153, column: 25, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 1153, column: 13)
!1742 = !DILocation(line: 1153, column: 39, scope: !1741)
!1743 = !DILocation(line: 1153, column: 27, scope: !1741)
!1744 = !DILocation(line: 1153, column: 13, scope: !1738)
!1745 = !DILocalVariable(name: "Pointer", scope: !1746, file: !3, line: 1154, type: !34)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 1153, column: 61)
!1747 = !DILocation(line: 1154, column: 25, scope: !1746)
!1748 = !DILocation(line: 1155, column: 27, scope: !1746)
!1749 = !DILocation(line: 1155, column: 40, scope: !1746)
!1750 = !DILocation(line: 1155, column: 71, scope: !1746)
!1751 = !DILocation(line: 1155, column: 45, scope: !1746)
!1752 = !DILocation(line: 1155, column: 44, scope: !1746)
!1753 = !DILocation(line: 1155, column: 73, scope: !1746)
!1754 = !DILocation(line: 1155, column: 25, scope: !1746)
!1755 = !DILocation(line: 1156, column: 24, scope: !1746)
!1756 = !DILocation(line: 1156, column: 17, scope: !1746)
!1757 = !DILocation(line: 1157, column: 13, scope: !1746)
!1758 = !DILocation(line: 1153, column: 57, scope: !1741)
!1759 = !DILocation(line: 1153, column: 13, scope: !1741)
!1760 = distinct !{!1760, !1744, !1761, !665}
!1761 = !DILocation(line: 1157, column: 13, scope: !1738)
!1762 = !DILocation(line: 1158, column: 13, scope: !1663)
!1763 = !DILocation(line: 1160, column: 22, scope: !1663)
!1764 = !DILocation(line: 1161, column: 9, scope: !1663)
!1765 = !DILocation(line: 1162, column: 72, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 1161, column: 14)
!1767 = !DILocation(line: 1162, column: 13, scope: !1766)
!1768 = !DILocation(line: 1164, column: 5, scope: !1659)
!1769 = !DILocation(line: 1166, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1166, column: 9)
!1771 = !DILocation(line: 1166, column: 9, scope: !1028)
!1772 = !DILocation(line: 1167, column: 13, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 1167, column: 13)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 1166, column: 24)
!1775 = !DILocation(line: 1167, column: 13, scope: !1774)
!1776 = !DILocation(line: 1167, column: 48, scope: !1773)
!1777 = !DILocation(line: 1167, column: 39, scope: !1773)
!1778 = !DILocation(line: 1168, column: 5, scope: !1774)
!1779 = !DILocation(line: 1169, column: 9, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1169, column: 9)
!1781 = !DILocation(line: 1169, column: 9, scope: !1028)
!1782 = !DILocation(line: 1170, column: 13, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1170, column: 13)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1169, column: 20)
!1785 = !DILocation(line: 1170, column: 13, scope: !1784)
!1786 = !DILocation(line: 1170, column: 49, scope: !1783)
!1787 = !DILocation(line: 1170, column: 40, scope: !1783)
!1788 = !DILocation(line: 1171, column: 5, scope: !1784)
!1789 = !DILocation(line: 1172, column: 9, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1172, column: 9)
!1791 = !DILocation(line: 1172, column: 9, scope: !1028)
!1792 = !DILocation(line: 1173, column: 13, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 1173, column: 13)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 1172, column: 20)
!1795 = !DILocation(line: 1173, column: 13, scope: !1794)
!1796 = !DILocation(line: 1173, column: 49, scope: !1793)
!1797 = !DILocation(line: 1173, column: 40, scope: !1793)
!1798 = !DILocation(line: 1174, column: 5, scope: !1794)
!1799 = !DILocation(line: 1175, column: 9, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1175, column: 9)
!1801 = !DILocation(line: 1175, column: 9, scope: !1028)
!1802 = !DILocation(line: 1176, column: 13, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1176, column: 13)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 1175, column: 19)
!1805 = !DILocation(line: 1176, column: 13, scope: !1804)
!1806 = !DILocation(line: 1176, column: 48, scope: !1803)
!1807 = !DILocation(line: 1176, column: 39, scope: !1803)
!1808 = !DILocation(line: 1177, column: 5, scope: !1804)
!1809 = !DILocation(line: 1178, column: 9, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1178, column: 9)
!1811 = !DILocation(line: 1178, column: 9, scope: !1028)
!1812 = !DILocation(line: 1179, column: 13, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 1179, column: 13)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1178, column: 23)
!1815 = !DILocation(line: 1179, column: 13, scope: !1814)
!1816 = !DILocation(line: 1179, column: 47, scope: !1813)
!1817 = !DILocation(line: 1179, column: 38, scope: !1813)
!1818 = !DILocation(line: 1180, column: 5, scope: !1814)
!1819 = !DILocation(line: 1183, column: 9, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1183, column: 9)
!1821 = !DILocation(line: 1183, column: 9, scope: !1028)
!1822 = !DILocalVariable(name: "BackupName", scope: !1823, file: !3, line: 1184, type: !1537)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 1183, column: 18)
!1824 = !DILocation(line: 1184, column: 14, scope: !1823)
!1825 = !DILocalVariable(name: "buf", scope: !1823, file: !3, line: 1185, type: !723)
!1826 = !DILocation(line: 1185, column: 21, scope: !1823)
!1827 = !DILocation(line: 1187, column: 14, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 1187, column: 13)
!1829 = !DILocation(line: 1187, column: 13, scope: !1823)
!1830 = !DILocation(line: 1187, column: 45, scope: !1828)
!1831 = !DILocation(line: 1187, column: 21, scope: !1828)
!1832 = !DILocation(line: 1189, column: 16, scope: !1823)
!1833 = !DILocation(line: 1189, column: 28, scope: !1823)
!1834 = !DILocation(line: 1189, column: 9, scope: !1823)
!1835 = !DILocation(line: 1190, column: 16, scope: !1823)
!1836 = !DILocation(line: 1190, column: 9, scope: !1823)
!1837 = !DILocation(line: 1193, column: 16, scope: !1823)
!1838 = !DILocation(line: 1193, column: 9, scope: !1823)
!1839 = !DILocation(line: 1196, column: 16, scope: !1823)
!1840 = !DILocation(line: 1196, column: 26, scope: !1823)
!1841 = !DILocation(line: 1196, column: 9, scope: !1823)
!1842 = !DILocation(line: 1199, column: 23, scope: !1823)
!1843 = !DILocation(line: 1199, column: 9, scope: !1823)
!1844 = !DILocation(line: 1202, column: 18, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 1202, column: 13)
!1846 = !DILocation(line: 1202, column: 13, scope: !1845)
!1847 = !DILocation(line: 1202, column: 36, scope: !1845)
!1848 = !DILocation(line: 1202, column: 13, scope: !1823)
!1849 = !DILocalVariable(name: "mtime", scope: !1850, file: !3, line: 1204, type: !1851)
!1850 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 1202, column: 41)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utimbuf", file: !1852, line: 36, size: 128, elements: !1853)
!1852 = !DIFile(filename: "/usr/include/utime.h", directory: "")
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "actime", scope: !1851, file: !1852, line: 38, baseType: !111, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "modtime", scope: !1851, file: !1852, line: 39, baseType: !111, size: 64, offset: 64)
!1856 = !DILocation(line: 1204, column: 28, scope: !1850)
!1857 = !DILocation(line: 1205, column: 19, scope: !1850)
!1858 = !DILocation(line: 1205, column: 33, scope: !1850)
!1859 = !DILocation(line: 1205, column: 13, scope: !1850)
!1860 = !DILocation(line: 1207, column: 32, scope: !1850)
!1861 = !DILocation(line: 1207, column: 19, scope: !1850)
!1862 = !DILocation(line: 1207, column: 26, scope: !1850)
!1863 = !DILocation(line: 1208, column: 33, scope: !1850)
!1864 = !DILocation(line: 1208, column: 19, scope: !1850)
!1865 = !DILocation(line: 1208, column: 27, scope: !1850)
!1866 = !DILocation(line: 1210, column: 19, scope: !1850)
!1867 = !DILocation(line: 1210, column: 13, scope: !1850)
!1868 = !DILocation(line: 1211, column: 9, scope: !1850)
!1869 = !DILocation(line: 1214, column: 16, scope: !1823)
!1870 = !DILocation(line: 1214, column: 9, scope: !1823)
!1871 = !DILocation(line: 1215, column: 5, scope: !1823)
!1872 = !DILocation(line: 1218, column: 9, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1218, column: 9)
!1874 = !DILocation(line: 1218, column: 9, scope: !1028)
!1875 = !DILocation(line: 1220, column: 23, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1220, column: 13)
!1877 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 1218, column: 23)
!1878 = !DILocation(line: 1220, column: 13, scope: !1876)
!1879 = !DILocation(line: 1220, column: 13, scope: !1877)
!1880 = !DILocalVariable(name: "tm", scope: !1881, file: !3, line: 1222, type: !185)
!1881 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 1220, column: 39)
!1882 = !DILocation(line: 1222, column: 23, scope: !1881)
!1883 = !DILocalVariable(name: "UnixTime", scope: !1881, file: !3, line: 1223, type: !109)
!1884 = !DILocation(line: 1223, column: 20, scope: !1881)
!1885 = !DILocalVariable(name: "mtime", scope: !1881, file: !3, line: 1224, type: !1851)
!1886 = !DILocation(line: 1224, column: 28, scope: !1881)
!1887 = !DILocation(line: 1225, column: 16, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1225, column: 15)
!1889 = !DILocation(line: 1225, column: 15, scope: !1881)
!1890 = !DILocation(line: 1225, column: 50, scope: !1888)
!1891 = !DILocation(line: 1226, column: 24, scope: !1881)
!1892 = !DILocation(line: 1226, column: 22, scope: !1881)
!1893 = !DILocation(line: 1227, column: 22, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1227, column: 17)
!1895 = !DILocation(line: 1227, column: 17, scope: !1894)
!1896 = !DILocation(line: 1227, column: 31, scope: !1894)
!1897 = !DILocation(line: 1227, column: 17, scope: !1881)
!1898 = !DILocation(line: 1228, column: 17, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 1227, column: 37)
!1900 = !DILocation(line: 1230, column: 28, scope: !1881)
!1901 = !DILocation(line: 1230, column: 19, scope: !1881)
!1902 = !DILocation(line: 1230, column: 26, scope: !1881)
!1903 = !DILocation(line: 1231, column: 29, scope: !1881)
!1904 = !DILocation(line: 1231, column: 19, scope: !1881)
!1905 = !DILocation(line: 1231, column: 27, scope: !1881)
!1906 = !DILocation(line: 1233, column: 23, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1233, column: 17)
!1908 = !DILocation(line: 1233, column: 17, scope: !1907)
!1909 = !DILocation(line: 1233, column: 41, scope: !1907)
!1910 = !DILocation(line: 1233, column: 17, scope: !1881)
!1911 = !DILocation(line: 1234, column: 70, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 1233, column: 46)
!1913 = !DILocation(line: 1234, column: 17, scope: !1912)
!1914 = !DILocation(line: 1235, column: 13, scope: !1912)
!1915 = !DILocation(line: 1236, column: 22, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 1236, column: 21)
!1917 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 1235, column: 18)
!1918 = !DILocation(line: 1236, column: 21, scope: !1917)
!1919 = !DILocation(line: 1236, column: 43, scope: !1916)
!1920 = !DILocation(line: 1236, column: 29, scope: !1916)
!1921 = !DILocation(line: 1238, column: 9, scope: !1881)
!1922 = !DILocation(line: 1239, column: 62, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 1238, column: 14)
!1924 = !DILocation(line: 1239, column: 13, scope: !1923)
!1925 = !DILocation(line: 1241, column: 5, scope: !1877)
!1926 = !DILocation(line: 1246, column: 9, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1246, column: 9)
!1928 = !DILocation(line: 1246, column: 9, scope: !1028)
!1929 = !DILocation(line: 1247, column: 24, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 1246, column: 22)
!1931 = !DILocation(line: 1247, column: 9, scope: !1930)
!1932 = !DILocation(line: 1248, column: 5, scope: !1930)
!1933 = !DILocation(line: 1249, column: 5, scope: !1028)
!1934 = !DILocation(line: 1250, column: 5, scope: !1028)
!1935 = !DILabel(scope: !1028, name: "badtime", file: !3, line: 1251)
!1936 = !DILocation(line: 1251, column: 1, scope: !1028)
!1937 = !DILocation(line: 1252, column: 5, scope: !1028)
!1938 = !DILocation(line: 1253, column: 5, scope: !1028)
!1939 = !DILocation(line: 1254, column: 1, scope: !1028)
!1940 = distinct !DISubprogram(name: "CheckFileSkip", scope: !3, file: !3, line: 447, type: !1941, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!29}
!1943 = !DILocation(line: 452, column: 9, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 452, column: 9)
!1945 = !DILocation(line: 452, column: 9, scope: !1940)
!1946 = !DILocation(line: 456, column: 43, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 456, column: 13)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 452, column: 21)
!1949 = !DILocation(line: 456, column: 13, scope: !1947)
!1950 = !DILocation(line: 456, column: 56, scope: !1947)
!1951 = !DILocation(line: 456, column: 13, scope: !1948)
!1952 = !DILocation(line: 458, column: 13, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 456, column: 64)
!1954 = !DILocation(line: 460, column: 5, scope: !1948)
!1955 = !DILocation(line: 461, column: 6, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 461, column: 6)
!1957 = !DILocation(line: 461, column: 20, scope: !1956)
!1958 = !DILocation(line: 461, column: 6, scope: !1940)
!1959 = !DILocation(line: 463, column: 17, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 463, column: 7)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 461, column: 24)
!1962 = !DILocation(line: 463, column: 32, scope: !1960)
!1963 = !DILocation(line: 463, column: 30, scope: !1960)
!1964 = !DILocation(line: 463, column: 7, scope: !1961)
!1965 = !DILocation(line: 464, column: 4, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 463, column: 46)
!1967 = !DILocation(line: 466, column: 2, scope: !1961)
!1968 = !DILocation(line: 468, column: 9, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 468, column: 9)
!1970 = !DILocation(line: 468, column: 9, scope: !1940)
!1971 = !DILocation(line: 470, column: 13, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 470, column: 13)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 468, column: 18)
!1974 = !DILocation(line: 470, column: 33, scope: !1972)
!1975 = !DILocation(line: 470, column: 13, scope: !1973)
!1976 = !DILocation(line: 471, column: 13, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 470, column: 41)
!1978 = !DILocation(line: 473, column: 5, scope: !1973)
!1979 = !DILocation(line: 475, column: 9, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 475, column: 9)
!1981 = !DILocation(line: 475, column: 22, scope: !1980)
!1982 = !DILocation(line: 475, column: 9, scope: !1940)
!1983 = !DILocation(line: 476, column: 23, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 476, column: 13)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 475, column: 27)
!1986 = !DILocation(line: 476, column: 41, scope: !1984)
!1987 = !DILocation(line: 476, column: 29, scope: !1984)
!1988 = !DILocation(line: 476, column: 13, scope: !1985)
!1989 = !DILocation(line: 476, column: 49, scope: !1984)
!1990 = !DILocation(line: 477, column: 5, scope: !1985)
!1991 = !DILocation(line: 479, column: 9, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 479, column: 9)
!1993 = !DILocation(line: 479, column: 22, scope: !1992)
!1994 = !DILocation(line: 479, column: 9, scope: !1940)
!1995 = !DILocation(line: 480, column: 23, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 480, column: 13)
!1997 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 479, column: 28)
!1998 = !DILocation(line: 480, column: 41, scope: !1996)
!1999 = !DILocation(line: 480, column: 29, scope: !1996)
!2000 = !DILocation(line: 480, column: 13, scope: !1997)
!2001 = !DILocation(line: 480, column: 49, scope: !1996)
!2002 = !DILocation(line: 481, column: 5, scope: !1997)
!2003 = !DILocation(line: 483, column: 5, scope: !1940)
!2004 = !DILocation(line: 484, column: 1, scope: !1940)
!2005 = distinct !DISubprogram(name: "DoAutoRotate", scope: !3, file: !3, line: 716, type: !2006, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!29, !46}
!2008 = !DILocalVariable(name: "FileName", arg: 1, scope: !2005, file: !3, line: 716, type: !46)
!2009 = !DILocation(line: 716, column: 38, scope: !2005)
!2010 = !DILocation(line: 718, column: 19, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 718, column: 9)
!2012 = !DILocation(line: 718, column: 31, scope: !2011)
!2013 = !DILocation(line: 718, column: 9, scope: !2005)
!2014 = !DILocalVariable(name: "Argument", scope: !2015, file: !3, line: 719, type: !46)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 718, column: 36)
!2016 = !DILocation(line: 719, column: 22, scope: !2015)
!2017 = !DILocation(line: 720, column: 20, scope: !2015)
!2018 = !DILocation(line: 720, column: 18, scope: !2015)
!2019 = !DILocation(line: 721, column: 13, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 721, column: 13)
!2021 = !DILocation(line: 721, column: 22, scope: !2020)
!2022 = !DILocation(line: 721, column: 13, scope: !2015)
!2023 = !DILocation(line: 721, column: 31, scope: !2020)
!2024 = !DILocation(line: 723, column: 14, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 723, column: 13)
!2026 = !DILocation(line: 723, column: 13, scope: !2015)
!2027 = !DILocalVariable(name: "RotateCommand", scope: !2028, file: !3, line: 724, type: !2029)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 723, column: 32)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 65936, elements: !2030)
!2030 = !{!2031}
!2031 = !DISubrange(count: 8242)
!2032 = !DILocation(line: 724, column: 18, scope: !2028)
!2033 = !DILocation(line: 725, column: 24, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 725, column: 17)
!2035 = !DILocation(line: 725, column: 17, scope: !2034)
!2036 = !DILocation(line: 725, column: 34, scope: !2034)
!2037 = !DILocation(line: 725, column: 17, scope: !2028)
!2038 = !DILocation(line: 727, column: 17, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 725, column: 39)
!2040 = !DILocation(line: 729, column: 21, scope: !2028)
!2041 = !DILocation(line: 729, column: 73, scope: !2028)
!2042 = !DILocation(line: 729, column: 13, scope: !2028)
!2043 = !DILocation(line: 730, column: 28, scope: !2028)
!2044 = !DILocation(line: 730, column: 26, scope: !2028)
!2045 = !DILocation(line: 731, column: 23, scope: !2028)
!2046 = !DILocation(line: 731, column: 13, scope: !2028)
!2047 = !DILocation(line: 732, column: 26, scope: !2028)
!2048 = !DILocation(line: 735, column: 27, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 735, column: 17)
!2050 = !DILocation(line: 735, column: 17, scope: !2049)
!2051 = !DILocation(line: 735, column: 43, scope: !2049)
!2052 = !DILocation(line: 736, column: 27, scope: !2049)
!2053 = !DILocation(line: 736, column: 17, scope: !2049)
!2054 = !DILocation(line: 736, column: 41, scope: !2049)
!2055 = !DILocation(line: 737, column: 27, scope: !2049)
!2056 = !DILocation(line: 737, column: 17, scope: !2049)
!2057 = !DILocation(line: 735, column: 17, scope: !2028)
!2058 = !DILocalVariable(name: "ThumbTempName_in", scope: !2059, file: !3, line: 740, type: !1537)
!2059 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 737, column: 42)
!2060 = !DILocation(line: 740, column: 22, scope: !2059)
!2061 = !DILocalVariable(name: "ThumbTempName_out", scope: !2059, file: !3, line: 741, type: !1537)
!2062 = !DILocation(line: 741, column: 22, scope: !2059)
!2063 = !DILocation(line: 743, column: 24, scope: !2059)
!2064 = !DILocation(line: 743, column: 42, scope: !2059)
!2065 = !DILocation(line: 743, column: 17, scope: !2059)
!2066 = !DILocation(line: 744, column: 24, scope: !2059)
!2067 = !DILocation(line: 744, column: 17, scope: !2059)
!2068 = !DILocation(line: 745, column: 24, scope: !2059)
!2069 = !DILocation(line: 745, column: 43, scope: !2059)
!2070 = !DILocation(line: 745, column: 17, scope: !2059)
!2071 = !DILocation(line: 746, column: 24, scope: !2059)
!2072 = !DILocation(line: 746, column: 17, scope: !2059)
!2073 = !DILocation(line: 747, column: 31, scope: !2059)
!2074 = !DILocation(line: 747, column: 17, scope: !2059)
!2075 = !DILocation(line: 748, column: 25, scope: !2059)
!2076 = !DILocation(line: 749, column: 21, scope: !2059)
!2077 = !DILocation(line: 749, column: 31, scope: !2059)
!2078 = !DILocation(line: 749, column: 50, scope: !2059)
!2079 = !DILocation(line: 748, column: 17, scope: !2059)
!2080 = !DILocation(line: 751, column: 28, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 751, column: 21)
!2082 = !DILocation(line: 751, column: 21, scope: !2081)
!2083 = !DILocation(line: 751, column: 43, scope: !2081)
!2084 = !DILocation(line: 751, column: 21, scope: !2059)
!2085 = !DILocation(line: 753, column: 38, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 751, column: 48)
!2087 = !DILocation(line: 753, column: 21, scope: !2086)
!2088 = !DILocation(line: 754, column: 17, scope: !2086)
!2089 = !DILocation(line: 756, column: 24, scope: !2059)
!2090 = !DILocation(line: 756, column: 17, scope: !2059)
!2091 = !DILocation(line: 757, column: 24, scope: !2059)
!2092 = !DILocation(line: 757, column: 17, scope: !2059)
!2093 = !DILocation(line: 758, column: 13, scope: !2059)
!2094 = !DILocation(line: 759, column: 9, scope: !2028)
!2095 = !DILocation(line: 760, column: 9, scope: !2015)
!2096 = !DILocation(line: 762, column: 5, scope: !2005)
!2097 = !DILocation(line: 763, column: 1, scope: !2005)
!2098 = distinct !DISubprogram(name: "DoCommand", scope: !3, file: !3, line: 357, type: !2099, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !46, !29}
!2101 = !DILocalVariable(name: "FileName", arg: 1, scope: !2098, file: !3, line: 357, type: !46)
!2102 = !DILocation(line: 357, column: 36, scope: !2098)
!2103 = !DILocalVariable(name: "ShowIt", arg: 2, scope: !2098, file: !3, line: 357, type: !29)
!2104 = !DILocation(line: 357, column: 50, scope: !2098)
!2105 = !DILocalVariable(name: "a", scope: !2098, file: !3, line: 359, type: !29)
!2106 = !DILocation(line: 359, column: 9, scope: !2098)
!2107 = !DILocalVariable(name: "e", scope: !2098, file: !3, line: 359, type: !29)
!2108 = !DILocation(line: 359, column: 11, scope: !2098)
!2109 = !DILocalVariable(name: "ExecString", scope: !2098, file: !3, line: 360, type: !2110)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 98304, elements: !2111)
!2111 = !{!2112}
!2112 = !DISubrange(count: 12288)
!2113 = !DILocation(line: 360, column: 10, scope: !2098)
!2114 = !DILocalVariable(name: "TempName", scope: !2098, file: !3, line: 361, type: !2115)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32848, elements: !2116)
!2116 = !{!2117}
!2117 = !DISubrange(count: 4106)
!2118 = !DILocation(line: 361, column: 10, scope: !2098)
!2119 = !DILocalVariable(name: "TempUsed", scope: !2098, file: !3, line: 362, type: !29)
!2120 = !DILocation(line: 362, column: 9, scope: !2098)
!2121 = !DILocation(line: 364, column: 7, scope: !2098)
!2122 = !DILocation(line: 368, column: 16, scope: !2098)
!2123 = !DILocation(line: 368, column: 9, scope: !2098)
!2124 = !DILocation(line: 368, column: 25, scope: !2098)
!2125 = !DILocation(line: 368, column: 7, scope: !2098)
!2126 = !DILocation(line: 369, column: 5, scope: !2098)
!2127 = !DILocation(line: 369, column: 11, scope: !2098)
!2128 = !DILocation(line: 369, column: 13, scope: !2098)
!2129 = !DILocation(line: 369, column: 17, scope: !2098)
!2130 = !DILocation(line: 369, column: 20, scope: !2098)
!2131 = !DILocation(line: 369, column: 29, scope: !2098)
!2132 = !DILocation(line: 369, column: 30, scope: !2098)
!2133 = !DILocation(line: 369, column: 34, scope: !2098)
!2134 = !DILocation(line: 0, scope: !2098)
!2135 = !DILocation(line: 369, column: 45, scope: !2098)
!2136 = distinct !{!2136, !2126, !2135, !665}
!2137 = !DILocation(line: 370, column: 5, scope: !2098)
!2138 = !DILocation(line: 370, column: 22, scope: !2098)
!2139 = !DILocation(line: 370, column: 32, scope: !2098)
!2140 = !DILocation(line: 371, column: 12, scope: !2098)
!2141 = !DILocation(line: 371, column: 21, scope: !2098)
!2142 = !DILocation(line: 371, column: 20, scope: !2098)
!2143 = !DILocation(line: 371, column: 5, scope: !2098)
!2144 = !DILocation(line: 379, column: 12, scope: !2098)
!2145 = !DILocation(line: 379, column: 5, scope: !2098)
!2146 = !DILocation(line: 382, column: 9, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 382, column: 8)
!2148 = !DILocation(line: 382, column: 8, scope: !2098)
!2149 = !DILocation(line: 383, column: 9, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 382, column: 22)
!2151 = !DILocation(line: 384, column: 5, scope: !2150)
!2152 = !DILocation(line: 388, column: 11, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 388, column: 5)
!2154 = !DILocation(line: 388, column: 10, scope: !2153)
!2155 = !DILocation(line: 389, column: 13, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 389, column: 13)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 388, column: 19)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 388, column: 5)
!2159 = !DILocation(line: 389, column: 26, scope: !2156)
!2160 = !DILocation(line: 389, column: 29, scope: !2156)
!2161 = !DILocation(line: 389, column: 13, scope: !2157)
!2162 = !DILocation(line: 390, column: 17, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 390, column: 17)
!2164 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 389, column: 36)
!2165 = !DILocation(line: 390, column: 30, scope: !2163)
!2166 = !DILocation(line: 390, column: 31, scope: !2163)
!2167 = !DILocation(line: 390, column: 35, scope: !2163)
!2168 = !DILocation(line: 390, column: 17, scope: !2164)
!2169 = !DILocation(line: 392, column: 34, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 390, column: 42)
!2171 = !DILocation(line: 392, column: 45, scope: !2170)
!2172 = !DILocation(line: 392, column: 44, scope: !2170)
!2173 = !DILocation(line: 392, column: 48, scope: !2170)
!2174 = !DILocation(line: 392, column: 22, scope: !2170)
!2175 = !DILocation(line: 392, column: 19, scope: !2170)
!2176 = !DILocation(line: 393, column: 19, scope: !2170)
!2177 = !DILocation(line: 394, column: 17, scope: !2170)
!2178 = !DILocation(line: 396, column: 17, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 396, column: 17)
!2180 = !DILocation(line: 396, column: 30, scope: !2179)
!2181 = !DILocation(line: 396, column: 31, scope: !2179)
!2182 = !DILocation(line: 396, column: 35, scope: !2179)
!2183 = !DILocation(line: 396, column: 17, scope: !2164)
!2184 = !DILocation(line: 398, column: 34, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 396, column: 42)
!2186 = !DILocation(line: 398, column: 45, scope: !2185)
!2187 = !DILocation(line: 398, column: 44, scope: !2185)
!2188 = !DILocation(line: 398, column: 48, scope: !2185)
!2189 = !DILocation(line: 398, column: 22, scope: !2185)
!2190 = !DILocation(line: 398, column: 19, scope: !2185)
!2191 = !DILocation(line: 399, column: 19, scope: !2185)
!2192 = !DILocation(line: 400, column: 26, scope: !2185)
!2193 = !DILocation(line: 401, column: 17, scope: !2185)
!2194 = !DILocation(line: 403, column: 9, scope: !2164)
!2195 = !DILocation(line: 404, column: 27, scope: !2157)
!2196 = !DILocation(line: 404, column: 40, scope: !2157)
!2197 = !DILocation(line: 404, column: 21, scope: !2157)
!2198 = !DILocation(line: 404, column: 9, scope: !2157)
!2199 = !DILocation(line: 404, column: 25, scope: !2157)
!2200 = !DILocation(line: 405, column: 13, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 405, column: 13)
!2202 = !DILocation(line: 405, column: 26, scope: !2201)
!2203 = !DILocation(line: 405, column: 29, scope: !2201)
!2204 = !DILocation(line: 405, column: 13, scope: !2157)
!2205 = !DILocation(line: 405, column: 35, scope: !2201)
!2206 = !DILocation(line: 406, column: 5, scope: !2157)
!2207 = !DILocation(line: 388, column: 16, scope: !2158)
!2208 = !DILocation(line: 388, column: 5, scope: !2158)
!2209 = distinct !{!2209, !2210, !2211}
!2210 = !DILocation(line: 388, column: 5, scope: !2153)
!2211 = !DILocation(line: 406, column: 5, scope: !2153)
!2212 = !DILocation(line: 408, column: 9, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 408, column: 9)
!2214 = !DILocation(line: 408, column: 9, scope: !2098)
!2215 = !DILocation(line: 408, column: 35, scope: !2213)
!2216 = !DILocation(line: 408, column: 17, scope: !2213)
!2217 = !DILocation(line: 410, column: 5, scope: !2098)
!2218 = !DILocation(line: 410, column: 11, scope: !2098)
!2219 = !DILocation(line: 411, column: 16, scope: !2098)
!2220 = !DILocation(line: 411, column: 9, scope: !2098)
!2221 = !DILocation(line: 411, column: 7, scope: !2098)
!2222 = !DILocation(line: 413, column: 9, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 413, column: 9)
!2224 = !DILocation(line: 413, column: 11, scope: !2223)
!2225 = !DILocation(line: 413, column: 14, scope: !2223)
!2226 = !DILocation(line: 413, column: 9, scope: !2098)
!2227 = !DILocation(line: 415, column: 13, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 415, column: 13)
!2229 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 413, column: 20)
!2230 = !DILocation(line: 415, column: 13, scope: !2229)
!2231 = !DILocation(line: 415, column: 20, scope: !2228)
!2232 = !DILocation(line: 416, column: 9, scope: !2229)
!2233 = !DILocation(line: 417, column: 5, scope: !2229)
!2234 = !DILocation(line: 419, column: 9, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 419, column: 9)
!2236 = !DILocation(line: 419, column: 9, scope: !2098)
!2237 = !DILocalVariable(name: "dummy", scope: !2238, file: !3, line: 421, type: !723)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 419, column: 18)
!2239 = !DILocation(line: 421, column: 21, scope: !2238)
!2240 = !DILocation(line: 422, column: 18, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 422, column: 13)
!2242 = !DILocation(line: 422, column: 13, scope: !2241)
!2243 = !DILocation(line: 422, column: 36, scope: !2241)
!2244 = !DILocation(line: 422, column: 13, scope: !2238)
!2245 = !DILocalVariable(name: "buf", scope: !2246, file: !3, line: 423, type: !723)
!2246 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 422, column: 41)
!2247 = !DILocation(line: 423, column: 25, scope: !2246)
!2248 = !DILocalVariable(name: "stat_result", scope: !2246, file: !3, line: 424, type: !29)
!2249 = !DILocation(line: 424, column: 17, scope: !2246)
!2250 = !DILocation(line: 424, column: 36, scope: !2246)
!2251 = !DILocation(line: 424, column: 31, scope: !2246)
!2252 = !DILocation(line: 426, column: 20, scope: !2246)
!2253 = !DILocation(line: 426, column: 13, scope: !2246)
!2254 = !DILocation(line: 427, column: 20, scope: !2246)
!2255 = !DILocation(line: 427, column: 30, scope: !2246)
!2256 = !DILocation(line: 427, column: 13, scope: !2246)
!2257 = !DILocation(line: 428, column: 17, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 428, column: 17)
!2259 = !DILocation(line: 428, column: 29, scope: !2258)
!2260 = !DILocation(line: 428, column: 17, scope: !2246)
!2261 = !DILocalVariable(name: "mtime", scope: !2262, file: !3, line: 430, type: !1851)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 428, column: 34)
!2263 = !DILocation(line: 430, column: 32, scope: !2262)
!2264 = !DILocation(line: 431, column: 23, scope: !2262)
!2265 = !DILocation(line: 431, column: 37, scope: !2262)
!2266 = !DILocation(line: 431, column: 17, scope: !2262)
!2267 = !DILocation(line: 433, column: 36, scope: !2262)
!2268 = !DILocation(line: 433, column: 23, scope: !2262)
!2269 = !DILocation(line: 433, column: 30, scope: !2262)
!2270 = !DILocation(line: 434, column: 37, scope: !2262)
!2271 = !DILocation(line: 434, column: 23, scope: !2262)
!2272 = !DILocation(line: 434, column: 31, scope: !2262)
!2273 = !DILocation(line: 436, column: 23, scope: !2262)
!2274 = !DILocation(line: 436, column: 17, scope: !2262)
!2275 = !DILocation(line: 437, column: 13, scope: !2262)
!2276 = !DILocation(line: 438, column: 9, scope: !2246)
!2277 = !DILocation(line: 439, column: 13, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 438, column: 14)
!2279 = !DILocation(line: 441, column: 5, scope: !2238)
!2280 = !DILocation(line: 442, column: 1, scope: !2098)
!2281 = distinct !DISubprogram(name: "RelativeName", scope: !3, file: !3, line: 490, type: !2282, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !35, !46, !46}
!2284 = !DILocalVariable(name: "OutFileName", arg: 1, scope: !2281, file: !3, line: 490, type: !35)
!2285 = !DILocation(line: 490, column: 33, scope: !2281)
!2286 = !DILocalVariable(name: "NamePattern", arg: 2, scope: !2281, file: !3, line: 490, type: !46)
!2287 = !DILocation(line: 490, column: 59, scope: !2281)
!2288 = !DILocalVariable(name: "OrigName", arg: 3, scope: !2281, file: !3, line: 490, type: !46)
!2289 = !DILocation(line: 490, column: 85, scope: !2281)
!2290 = !DILocalVariable(name: "Subst", scope: !2281, file: !3, line: 495, type: !35)
!2291 = !DILocation(line: 495, column: 12, scope: !2281)
!2292 = !DILocation(line: 496, column: 20, scope: !2281)
!2293 = !DILocation(line: 496, column: 13, scope: !2281)
!2294 = !DILocation(line: 496, column: 11, scope: !2281)
!2295 = !DILocation(line: 497, column: 9, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 497, column: 9)
!2297 = !DILocation(line: 497, column: 9, scope: !2281)
!2298 = !DILocation(line: 498, column: 17, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 497, column: 15)
!2300 = !DILocation(line: 498, column: 30, scope: !2299)
!2301 = !DILocation(line: 498, column: 43, scope: !2299)
!2302 = !DILocation(line: 498, column: 49, scope: !2299)
!2303 = !DILocation(line: 498, column: 48, scope: !2299)
!2304 = !DILocation(line: 498, column: 9, scope: !2299)
!2305 = !DILocation(line: 499, column: 9, scope: !2299)
!2306 = !DILocation(line: 499, column: 21, scope: !2299)
!2307 = !DILocation(line: 499, column: 27, scope: !2299)
!2308 = !DILocation(line: 499, column: 26, scope: !2299)
!2309 = !DILocation(line: 499, column: 40, scope: !2299)
!2310 = !DILocation(line: 500, column: 17, scope: !2299)
!2311 = !DILocation(line: 500, column: 30, scope: !2299)
!2312 = !DILocation(line: 500, column: 9, scope: !2299)
!2313 = !DILocation(line: 501, column: 17, scope: !2299)
!2314 = !DILocation(line: 501, column: 30, scope: !2299)
!2315 = !DILocation(line: 501, column: 35, scope: !2299)
!2316 = !DILocation(line: 501, column: 9, scope: !2299)
!2317 = !DILocation(line: 502, column: 5, scope: !2299)
!2318 = !DILocation(line: 503, column: 17, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 502, column: 10)
!2320 = !DILocation(line: 503, column: 30, scope: !2319)
!2321 = !DILocation(line: 503, column: 9, scope: !2319)
!2322 = !DILocation(line: 505, column: 1, scope: !2281)
!2323 = distinct !DISubprogram(name: "RegenerateThumbnail", scope: !3, file: !3, line: 768, type: !2006, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!2324 = !DILocalVariable(name: "FileName", arg: 1, scope: !2323, file: !3, line: 768, type: !46)
!2325 = !DILocation(line: 768, column: 45, scope: !2323)
!2326 = !DILocalVariable(name: "ThumbnailGenCommand", scope: !2323, file: !3, line: 770, type: !2029)
!2327 = !DILocation(line: 770, column: 10, scope: !2323)
!2328 = !DILocation(line: 771, column: 19, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 771, column: 9)
!2330 = !DILocation(line: 771, column: 35, scope: !2329)
!2331 = !DILocation(line: 771, column: 40, scope: !2329)
!2332 = !DILocation(line: 771, column: 53, scope: !2329)
!2333 = !DILocation(line: 771, column: 43, scope: !2329)
!2334 = !DILocation(line: 771, column: 68, scope: !2329)
!2335 = !DILocation(line: 771, column: 9, scope: !2323)
!2336 = !DILocation(line: 773, column: 9, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 771, column: 77)
!2338 = !DILocation(line: 776, column: 13, scope: !2323)
!2339 = !DILocation(line: 777, column: 9, scope: !2323)
!2340 = !DILocation(line: 777, column: 25, scope: !2323)
!2341 = !DILocation(line: 777, column: 41, scope: !2323)
!2342 = !DILocation(line: 776, column: 5, scope: !2323)
!2343 = !DILocation(line: 779, column: 16, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 779, column: 9)
!2345 = !DILocation(line: 779, column: 9, scope: !2344)
!2346 = !DILocation(line: 779, column: 37, scope: !2344)
!2347 = !DILocation(line: 779, column: 9, scope: !2323)
!2348 = !DILocation(line: 781, column: 33, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 779, column: 42)
!2350 = !DILocation(line: 781, column: 16, scope: !2349)
!2351 = !DILocation(line: 781, column: 9, scope: !2349)
!2352 = !DILocation(line: 783, column: 9, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 782, column: 10)
!2354 = !DILocation(line: 784, column: 9, scope: !2353)
!2355 = !DILocation(line: 786, column: 1, scope: !2323)
!2356 = distinct !DISubprogram(name: "FileEditComment", scope: !3, file: !3, line: 139, type: !2357, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!29, !35, !35, !29}
!2359 = !DILocalVariable(name: "TempFileName", arg: 1, scope: !2356, file: !3, line: 139, type: !35)
!2360 = !DILocation(line: 139, column: 35, scope: !2356)
!2361 = !DILocalVariable(name: "Comment", arg: 2, scope: !2356, file: !3, line: 139, type: !35)
!2362 = !DILocation(line: 139, column: 56, scope: !2356)
!2363 = !DILocalVariable(name: "CommentSize", arg: 3, scope: !2356, file: !3, line: 139, type: !29)
!2364 = !DILocation(line: 139, column: 69, scope: !2356)
!2365 = !DILocalVariable(name: "file", scope: !2356, file: !3, line: 141, type: !1434)
!2366 = !DILocation(line: 141, column: 12, scope: !2356)
!2367 = !DILocalVariable(name: "a", scope: !2356, file: !3, line: 142, type: !29)
!2368 = !DILocation(line: 142, column: 9, scope: !2356)
!2369 = !DILocalVariable(name: "QuotedPath", scope: !2356, file: !3, line: 143, type: !2115)
!2370 = !DILocation(line: 143, column: 10, scope: !2356)
!2371 = !DILocation(line: 145, column: 18, scope: !2356)
!2372 = !DILocation(line: 145, column: 12, scope: !2356)
!2373 = !DILocation(line: 145, column: 10, scope: !2356)
!2374 = !DILocation(line: 146, column: 9, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 146, column: 9)
!2376 = !DILocation(line: 146, column: 14, scope: !2375)
!2377 = !DILocation(line: 146, column: 9, scope: !2356)
!2378 = !DILocation(line: 147, column: 17, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 146, column: 22)
!2380 = !DILocation(line: 147, column: 52, scope: !2379)
!2381 = !DILocation(line: 147, column: 9, scope: !2379)
!2382 = !DILocation(line: 148, column: 9, scope: !2379)
!2383 = !DILocation(line: 149, column: 5, scope: !2379)
!2384 = !DILocation(line: 150, column: 12, scope: !2356)
!2385 = !DILocation(line: 150, column: 21, scope: !2356)
!2386 = !DILocation(line: 150, column: 37, scope: !2356)
!2387 = !DILocation(line: 150, column: 5, scope: !2356)
!2388 = !DILocation(line: 152, column: 12, scope: !2356)
!2389 = !DILocation(line: 152, column: 5, scope: !2356)
!2390 = !DILocation(line: 154, column: 12, scope: !2356)
!2391 = !DILocation(line: 154, column: 5, scope: !2356)
!2392 = !DILocalVariable(name: "Editor", scope: !2393, file: !3, line: 157, type: !35)
!2393 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 156, column: 5)
!2394 = !DILocation(line: 157, column: 16, scope: !2393)
!2395 = !DILocation(line: 158, column: 18, scope: !2393)
!2396 = !DILocation(line: 158, column: 16, scope: !2393)
!2397 = !DILocation(line: 159, column: 13, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 159, column: 13)
!2399 = !DILocation(line: 159, column: 20, scope: !2398)
!2400 = !DILocation(line: 159, column: 13, scope: !2393)
!2401 = !DILocation(line: 163, column: 20, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 159, column: 28)
!2403 = !DILocation(line: 165, column: 9, scope: !2402)
!2404 = !DILocation(line: 166, column: 20, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 166, column: 13)
!2406 = !DILocation(line: 166, column: 13, scope: !2405)
!2407 = !DILocation(line: 166, column: 28, scope: !2405)
!2408 = !DILocation(line: 166, column: 13, scope: !2393)
!2409 = !DILocation(line: 166, column: 40, scope: !2405)
!2410 = !DILocation(line: 168, column: 17, scope: !2393)
!2411 = !DILocation(line: 168, column: 41, scope: !2393)
!2412 = !DILocation(line: 168, column: 49, scope: !2393)
!2413 = !DILocation(line: 168, column: 9, scope: !2393)
!2414 = !DILocation(line: 169, column: 20, scope: !2393)
!2415 = !DILocation(line: 169, column: 13, scope: !2393)
!2416 = !DILocation(line: 169, column: 11, scope: !2393)
!2417 = !DILocation(line: 172, column: 9, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 172, column: 9)
!2419 = !DILocation(line: 172, column: 11, scope: !2418)
!2420 = !DILocation(line: 172, column: 9, scope: !2356)
!2421 = !DILocation(line: 173, column: 9, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 172, column: 16)
!2423 = !DILocation(line: 174, column: 9, scope: !2422)
!2424 = !DILocation(line: 177, column: 18, scope: !2356)
!2425 = !DILocation(line: 177, column: 12, scope: !2356)
!2426 = !DILocation(line: 177, column: 10, scope: !2356)
!2427 = !DILocation(line: 178, column: 9, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 178, column: 9)
!2429 = !DILocation(line: 178, column: 14, scope: !2428)
!2430 = !DILocation(line: 178, column: 9, scope: !2356)
!2431 = !DILocation(line: 179, column: 9, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 178, column: 22)
!2433 = !DILocation(line: 180, column: 5, scope: !2432)
!2434 = !DILocation(line: 183, column: 25, scope: !2356)
!2435 = !DILocation(line: 183, column: 55, scope: !2356)
!2436 = !DILocation(line: 183, column: 19, scope: !2356)
!2437 = !DILocation(line: 183, column: 17, scope: !2356)
!2438 = !DILocation(line: 185, column: 12, scope: !2356)
!2439 = !DILocation(line: 185, column: 5, scope: !2356)
!2440 = !DILocation(line: 187, column: 12, scope: !2356)
!2441 = !DILocation(line: 187, column: 5, scope: !2356)
!2442 = !DILocation(line: 189, column: 12, scope: !2356)
!2443 = !DILocation(line: 189, column: 5, scope: !2356)
!2444 = distinct !DISubprogram(name: "DoFileRenaming", scope: !3, file: !3, line: 568, type: !135, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!2445 = !DILocalVariable(name: "FileName", arg: 1, scope: !2444, file: !3, line: 568, type: !46)
!2446 = !DILocation(line: 568, column: 41, scope: !2444)
!2447 = !DILocalVariable(name: "PrefixPart", scope: !2444, file: !3, line: 570, type: !29)
!2448 = !DILocation(line: 570, column: 9, scope: !2444)
!2449 = !DILocalVariable(name: "ExtensionPart", scope: !2444, file: !3, line: 571, type: !29)
!2450 = !DILocation(line: 571, column: 9, scope: !2444)
!2451 = !DILocalVariable(name: "a", scope: !2444, file: !3, line: 572, type: !29)
!2452 = !DILocation(line: 572, column: 9, scope: !2444)
!2453 = !DILocalVariable(name: "tm", scope: !2444, file: !3, line: 573, type: !185)
!2454 = !DILocation(line: 573, column: 15, scope: !2444)
!2455 = !DILocalVariable(name: "NewBaseName", scope: !2444, file: !3, line: 574, type: !2456)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 65536, elements: !2457)
!2457 = !{!2458}
!2458 = !DISubrange(count: 8192)
!2459 = !DILocation(line: 574, column: 10, scope: !2444)
!2460 = !DILocalVariable(name: "AddLetter", scope: !2444, file: !3, line: 575, type: !29)
!2461 = !DILocation(line: 575, column: 9, scope: !2444)
!2462 = !DILocalVariable(name: "NewName", scope: !2444, file: !3, line: 576, type: !2463)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32784, elements: !2464)
!2464 = !{!2465}
!2465 = !DISubrange(count: 4098)
!2466 = !DILocation(line: 576, column: 10, scope: !2444)
!2467 = !DILocation(line: 578, column: 28, scope: !2444)
!2468 = !DILocation(line: 578, column: 21, scope: !2444)
!2469 = !DILocation(line: 578, column: 19, scope: !2444)
!2470 = !DILocation(line: 579, column: 11, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 579, column: 5)
!2472 = !DILocation(line: 579, column: 10, scope: !2471)
!2473 = !DILocation(line: 579, column: 14, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 579, column: 5)
!2475 = !DILocation(line: 579, column: 23, scope: !2474)
!2476 = !DILocation(line: 579, column: 5, scope: !2471)
!2477 = !DILocation(line: 580, column: 13, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 580, column: 13)
!2479 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 579, column: 30)
!2480 = !DILocation(line: 580, column: 22, scope: !2478)
!2481 = !DILocation(line: 580, column: 25, scope: !2478)
!2482 = !DILocation(line: 580, column: 13, scope: !2479)
!2483 = !DILocation(line: 582, column: 26, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 580, column: 34)
!2485 = !DILocation(line: 582, column: 27, scope: !2484)
!2486 = !DILocation(line: 582, column: 24, scope: !2484)
!2487 = !DILocation(line: 583, column: 9, scope: !2484)
!2488 = !DILocation(line: 585, column: 13, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 585, column: 13)
!2490 = !DILocation(line: 585, column: 22, scope: !2489)
!2491 = !DILocation(line: 585, column: 25, scope: !2489)
!2492 = !DILocation(line: 585, column: 13, scope: !2479)
!2493 = !DILocation(line: 585, column: 49, scope: !2489)
!2494 = !DILocation(line: 585, column: 47, scope: !2489)
!2495 = !DILocation(line: 585, column: 33, scope: !2489)
!2496 = !DILocation(line: 586, column: 5, scope: !2479)
!2497 = !DILocation(line: 579, column: 27, scope: !2474)
!2498 = !DILocation(line: 579, column: 5, scope: !2474)
!2499 = distinct !{!2499, !2476, !2500, !665}
!2500 = !DILocation(line: 586, column: 5, scope: !2471)
!2501 = !DILocation(line: 588, column: 10, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 588, column: 9)
!2503 = !DILocation(line: 588, column: 9, scope: !2444)
!2504 = !DILocation(line: 589, column: 76, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 588, column: 43)
!2506 = !DILocation(line: 589, column: 9, scope: !2505)
!2507 = !DILocation(line: 591, column: 15, scope: !2505)
!2508 = !DILocation(line: 591, column: 14, scope: !2505)
!2509 = !DILocation(line: 592, column: 5, scope: !2505)
!2510 = !DILocation(line: 595, column: 13, scope: !2444)
!2511 = !DILocation(line: 595, column: 26, scope: !2444)
!2512 = !DILocation(line: 595, column: 5, scope: !2444)
!2513 = !DILocation(line: 597, column: 9, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 597, column: 9)
!2515 = !DILocation(line: 597, column: 9, scope: !2444)
!2516 = !DILocalVariable(name: "UnixTime", scope: !2517, file: !3, line: 599, type: !109)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 597, column: 23)
!2518 = !DILocation(line: 599, column: 16, scope: !2517)
!2519 = !DILocalVariable(name: "s", scope: !2517, file: !3, line: 601, type: !35)
!2520 = !DILocation(line: 601, column: 15, scope: !2517)
!2521 = !DILocalVariable(name: "pattern", scope: !2517, file: !3, line: 602, type: !2522)
!2522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32928, elements: !2523)
!2523 = !{!2524}
!2524 = !DISubrange(count: 4116)
!2525 = !DILocation(line: 602, column: 14, scope: !2517)
!2526 = !DILocalVariable(name: "n", scope: !2517, file: !3, line: 603, type: !29)
!2527 = !DILocation(line: 603, column: 13, scope: !2517)
!2528 = !DILocation(line: 603, column: 17, scope: !2517)
!2529 = !DILocation(line: 603, column: 33, scope: !2517)
!2530 = !DILocation(line: 603, column: 31, scope: !2517)
!2531 = !DILocation(line: 606, column: 20, scope: !2517)
!2532 = !DILocation(line: 606, column: 18, scope: !2517)
!2533 = !DILocation(line: 607, column: 18, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 607, column: 13)
!2535 = !DILocation(line: 607, column: 13, scope: !2534)
!2536 = !DILocation(line: 607, column: 27, scope: !2534)
!2537 = !DILocation(line: 607, column: 13, scope: !2517)
!2538 = !DILocation(line: 608, column: 13, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 607, column: 33)
!2540 = !DILocation(line: 609, column: 13, scope: !2539)
!2541 = !DILocation(line: 613, column: 9, scope: !2517)
!2542 = !DILocation(line: 613, column: 28, scope: !2517)
!2543 = !DILocation(line: 614, column: 17, scope: !2517)
!2544 = !DILocation(line: 614, column: 26, scope: !2517)
!2545 = !DILocation(line: 614, column: 9, scope: !2517)
!2546 = !DILocation(line: 615, column: 9, scope: !2517)
!2547 = !DILocation(line: 615, column: 28, scope: !2517)
!2548 = !DILocation(line: 615, column: 21, scope: !2517)
!2549 = !DILocation(line: 615, column: 19, scope: !2517)
!2550 = !DILocation(line: 615, column: 44, scope: !2517)
!2551 = !DILocation(line: 615, column: 54, scope: !2517)
!2552 = !DILocation(line: 615, column: 47, scope: !2517)
!2553 = !DILocation(line: 615, column: 65, scope: !2517)
!2554 = !DILocation(line: 615, column: 63, scope: !2517)
!2555 = !DILocation(line: 615, column: 67, scope: !2517)
!2556 = !DILocation(line: 0, scope: !2517)
!2557 = !DILocation(line: 616, column: 21, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 615, column: 80)
!2559 = !DILocation(line: 616, column: 25, scope: !2558)
!2560 = !DILocation(line: 616, column: 23, scope: !2558)
!2561 = !DILocation(line: 616, column: 28, scope: !2558)
!2562 = !DILocation(line: 616, column: 30, scope: !2558)
!2563 = !DILocation(line: 616, column: 42, scope: !2558)
!2564 = !DILocation(line: 616, column: 43, scope: !2558)
!2565 = !DILocation(line: 616, column: 35, scope: !2558)
!2566 = !DILocation(line: 616, column: 47, scope: !2558)
!2567 = !DILocation(line: 616, column: 13, scope: !2558)
!2568 = !DILocation(line: 617, column: 21, scope: !2558)
!2569 = !DILocation(line: 617, column: 24, scope: !2558)
!2570 = !DILocation(line: 617, column: 35, scope: !2558)
!2571 = !DILocation(line: 617, column: 33, scope: !2558)
!2572 = !DILocation(line: 617, column: 47, scope: !2558)
!2573 = !DILocation(line: 617, column: 13, scope: !2558)
!2574 = distinct !{!2574, !2546, !2575, !665}
!2575 = !DILocation(line: 618, column: 9, scope: !2517)
!2576 = !DILocalVariable(name: "ppos", scope: !2577, file: !3, line: 623, type: !29)
!2577 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 620, column: 9)
!2578 = !DILocation(line: 623, column: 17, scope: !2577)
!2579 = !DILocation(line: 624, column: 19, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 624, column: 13)
!2581 = !DILocation(line: 624, column: 18, scope: !2580)
!2582 = !DILocation(line: 624, column: 30, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 624, column: 13)
!2584 = !DILocation(line: 624, column: 22, scope: !2583)
!2585 = !DILocation(line: 624, column: 13, scope: !2580)
!2586 = !DILocation(line: 625, column: 29, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 625, column: 21)
!2588 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 624, column: 37)
!2589 = !DILocation(line: 625, column: 21, scope: !2587)
!2590 = !DILocation(line: 625, column: 32, scope: !2587)
!2591 = !DILocation(line: 625, column: 21, scope: !2588)
!2592 = !DILocation(line: 626, column: 29, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 625, column: 39)
!2594 = !DILocation(line: 626, column: 27, scope: !2593)
!2595 = !DILocation(line: 627, column: 17, scope: !2593)
!2596 = !DILocation(line: 627, column: 35, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 627, column: 27)
!2598 = !DILocation(line: 627, column: 27, scope: !2597)
!2599 = !DILocation(line: 627, column: 38, scope: !2597)
!2600 = !DILocation(line: 627, column: 27, scope: !2587)
!2601 = !DILocation(line: 628, column: 25, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 628, column: 25)
!2603 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 627, column: 45)
!2604 = !DILocation(line: 628, column: 30, scope: !2602)
!2605 = !DILocation(line: 628, column: 35, scope: !2602)
!2606 = !DILocation(line: 628, column: 38, scope: !2602)
!2607 = !DILocation(line: 628, column: 40, scope: !2602)
!2608 = !DILocation(line: 628, column: 44, scope: !2602)
!2609 = !DILocation(line: 628, column: 39, scope: !2602)
!2610 = !DILocation(line: 628, column: 25, scope: !2603)
!2611 = !DILocalVariable(name: "pat", scope: !2612, file: !3, line: 630, type: !2613)
!2612 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 628, column: 47)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, elements: !2614)
!2614 = !{!2615}
!2615 = !DISubrange(count: 8)
!2616 = !DILocation(line: 630, column: 30, scope: !2612)
!2617 = !DILocalVariable(name: "num", scope: !2612, file: !3, line: 630, type: !2618)
!2618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128, elements: !2619)
!2619 = !{!2620}
!2620 = !DISubrange(count: 16)
!2621 = !DILocation(line: 630, column: 38, scope: !2612)
!2622 = !DILocalVariable(name: "l", scope: !2612, file: !3, line: 631, type: !29)
!2623 = !DILocation(line: 631, column: 29, scope: !2612)
!2624 = !DILocalVariable(name: "nl", scope: !2612, file: !3, line: 631, type: !29)
!2625 = !DILocation(line: 631, column: 31, scope: !2612)
!2626 = !DILocation(line: 632, column: 25, scope: !2612)
!2627 = !DILocation(line: 632, column: 37, scope: !2612)
!2628 = !DILocation(line: 632, column: 45, scope: !2612)
!2629 = !DILocation(line: 632, column: 44, scope: !2612)
!2630 = !DILocation(line: 633, column: 29, scope: !2612)
!2631 = !DILocation(line: 633, column: 31, scope: !2612)
!2632 = !DILocation(line: 633, column: 30, scope: !2612)
!2633 = !DILocation(line: 633, column: 25, scope: !2612)
!2634 = !DILocation(line: 633, column: 37, scope: !2612)
!2635 = !DILocation(line: 634, column: 29, scope: !2612)
!2636 = !DILocation(line: 634, column: 31, scope: !2612)
!2637 = !DILocation(line: 634, column: 30, scope: !2612)
!2638 = !DILocation(line: 634, column: 35, scope: !2612)
!2639 = !DILocation(line: 634, column: 25, scope: !2612)
!2640 = !DILocation(line: 634, column: 39, scope: !2612)
!2641 = !DILocation(line: 635, column: 33, scope: !2612)
!2642 = !DILocation(line: 635, column: 38, scope: !2612)
!2643 = !DILocation(line: 635, column: 43, scope: !2612)
!2644 = !DILocation(line: 635, column: 25, scope: !2612)
!2645 = !DILocation(line: 636, column: 37, scope: !2612)
!2646 = !DILocation(line: 636, column: 30, scope: !2612)
!2647 = !DILocation(line: 636, column: 28, scope: !2612)
!2648 = !DILocation(line: 637, column: 36, scope: !2612)
!2649 = !DILocation(line: 637, column: 44, scope: !2612)
!2650 = !DILocation(line: 637, column: 43, scope: !2612)
!2651 = !DILocation(line: 637, column: 45, scope: !2612)
!2652 = !DILocation(line: 637, column: 29, scope: !2612)
!2653 = !DILocation(line: 637, column: 27, scope: !2612)
!2654 = !DILocation(line: 638, column: 29, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 638, column: 29)
!2656 = !DILocation(line: 638, column: 34, scope: !2655)
!2657 = !DILocation(line: 638, column: 33, scope: !2655)
!2658 = !DILocation(line: 638, column: 37, scope: !2655)
!2659 = !DILocation(line: 638, column: 36, scope: !2655)
!2660 = !DILocation(line: 638, column: 38, scope: !2655)
!2661 = !DILocation(line: 638, column: 41, scope: !2655)
!2662 = !DILocation(line: 638, column: 29, scope: !2612)
!2663 = !DILocation(line: 638, column: 54, scope: !2655)
!2664 = !DILocation(line: 639, column: 33, scope: !2612)
!2665 = !DILocation(line: 639, column: 41, scope: !2612)
!2666 = !DILocation(line: 639, column: 40, scope: !2612)
!2667 = !DILocation(line: 639, column: 46, scope: !2612)
!2668 = !DILocation(line: 639, column: 45, scope: !2612)
!2669 = !DILocation(line: 639, column: 50, scope: !2612)
!2670 = !DILocation(line: 639, column: 58, scope: !2612)
!2671 = !DILocation(line: 639, column: 57, scope: !2612)
!2672 = !DILocation(line: 639, column: 59, scope: !2612)
!2673 = !DILocation(line: 639, column: 63, scope: !2612)
!2674 = !DILocation(line: 639, column: 64, scope: !2612)
!2675 = !DILocation(line: 639, column: 25, scope: !2612)
!2676 = !DILocation(line: 640, column: 32, scope: !2612)
!2677 = !DILocation(line: 640, column: 40, scope: !2612)
!2678 = !DILocation(line: 640, column: 39, scope: !2612)
!2679 = !DILocation(line: 640, column: 25, scope: !2612)
!2680 = !DILocation(line: 640, column: 51, scope: !2612)
!2681 = !DILocation(line: 641, column: 25, scope: !2612)
!2682 = !DILocation(line: 643, column: 17, scope: !2603)
!2683 = !DILocation(line: 643, column: 28, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 643, column: 27)
!2685 = !DILocation(line: 643, column: 27, scope: !2597)
!2686 = !DILocation(line: 644, column: 26, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 643, column: 48)
!2688 = !DILocation(line: 645, column: 17, scope: !2687)
!2689 = !DILocation(line: 646, column: 13, scope: !2588)
!2690 = !DILocation(line: 624, column: 34, scope: !2583)
!2691 = !DILocation(line: 624, column: 13, scope: !2583)
!2692 = distinct !{!2692, !2585, !2693, !665}
!2693 = !DILocation(line: 646, column: 13, scope: !2580)
!2694 = !DILocation(line: 648, column: 18, scope: !2517)
!2695 = !DILocation(line: 648, column: 37, scope: !2517)
!2696 = !DILocation(line: 648, column: 9, scope: !2517)
!2697 = !DILocation(line: 649, column: 5, scope: !2517)
!2698 = !DILocation(line: 651, column: 17, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 649, column: 10)
!2700 = !DILocation(line: 652, column: 17, scope: !2699)
!2701 = !DILocation(line: 652, column: 23, scope: !2699)
!2702 = !DILocation(line: 652, column: 30, scope: !2699)
!2703 = !DILocation(line: 652, column: 42, scope: !2699)
!2704 = !DILocation(line: 652, column: 54, scope: !2699)
!2705 = !DILocation(line: 652, column: 65, scope: !2699)
!2706 = !DILocation(line: 651, column: 9, scope: !2699)
!2707 = !DILocation(line: 655, column: 17, scope: !2444)
!2708 = !DILocation(line: 655, column: 5, scope: !2444)
!2709 = !DILocation(line: 655, column: 29, scope: !2444)
!2710 = !DILocation(line: 656, column: 13, scope: !2444)
!2711 = !DILocation(line: 656, column: 26, scope: !2444)
!2712 = !DILocation(line: 656, column: 5, scope: !2444)
!2713 = !DILocation(line: 658, column: 17, scope: !2444)
!2714 = !DILocation(line: 658, column: 15, scope: !2444)
!2715 = !DILocation(line: 659, column: 11, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 659, column: 5)
!2717 = !DILocation(line: 659, column: 10, scope: !2716)
!2718 = !DILocalVariable(name: "NewName", scope: !2719, file: !3, line: 660, type: !2115)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 659, column: 19)
!2720 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 659, column: 5)
!2721 = !DILocation(line: 660, column: 14, scope: !2719)
!2722 = !DILocalVariable(name: "NameExtra", scope: !2719, file: !3, line: 661, type: !2723)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !758)
!2724 = !DILocation(line: 661, column: 14, scope: !2719)
!2725 = !DILocalVariable(name: "dummy", scope: !2719, file: !3, line: 662, type: !723)
!2726 = !DILocation(line: 662, column: 21, scope: !2719)
!2727 = !DILocation(line: 664, column: 13, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 664, column: 13)
!2729 = !DILocation(line: 664, column: 13, scope: !2719)
!2730 = !DILocation(line: 670, column: 17, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 670, column: 17)
!2732 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 664, column: 15)
!2733 = !DILocation(line: 670, column: 17, scope: !2732)
!2734 = !DILocation(line: 671, column: 45, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 670, column: 27)
!2736 = !DILocation(line: 671, column: 44, scope: !2735)
!2737 = !DILocation(line: 671, column: 32, scope: !2735)
!2738 = !DILocation(line: 671, column: 17, scope: !2735)
!2739 = !DILocation(line: 671, column: 30, scope: !2735)
!2740 = !DILocation(line: 672, column: 13, scope: !2735)
!2741 = !DILocation(line: 673, column: 45, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 672, column: 18)
!2743 = !DILocation(line: 673, column: 44, scope: !2742)
!2744 = !DILocation(line: 673, column: 32, scope: !2742)
!2745 = !DILocation(line: 673, column: 17, scope: !2742)
!2746 = !DILocation(line: 673, column: 30, scope: !2742)
!2747 = !DILocation(line: 675, column: 13, scope: !2732)
!2748 = !DILocation(line: 675, column: 26, scope: !2732)
!2749 = !DILocation(line: 676, column: 9, scope: !2732)
!2750 = !DILocation(line: 677, column: 13, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 676, column: 14)
!2752 = !DILocation(line: 677, column: 26, scope: !2751)
!2753 = !DILocation(line: 680, column: 18, scope: !2719)
!2754 = !DILocation(line: 680, column: 56, scope: !2719)
!2755 = !DILocation(line: 680, column: 69, scope: !2719)
!2756 = !DILocation(line: 680, column: 9, scope: !2719)
!2757 = !DILocation(line: 682, column: 21, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 682, column: 13)
!2759 = !DILocation(line: 682, column: 31, scope: !2758)
!2760 = !DILocation(line: 682, column: 14, scope: !2758)
!2761 = !DILocation(line: 682, column: 13, scope: !2719)
!2762 = !DILocation(line: 682, column: 41, scope: !2758)
!2763 = !DILocation(line: 684, column: 31, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 684, column: 13)
!2765 = !DILocation(line: 684, column: 14, scope: !2764)
!2766 = !DILocation(line: 684, column: 13, scope: !2719)
!2767 = !DILocation(line: 685, column: 13, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 684, column: 44)
!2769 = !DILocation(line: 689, column: 18, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 689, column: 13)
!2771 = !DILocation(line: 689, column: 13, scope: !2770)
!2772 = !DILocation(line: 689, column: 13, scope: !2719)
!2773 = !DILocation(line: 691, column: 24, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 691, column: 17)
!2775 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 689, column: 35)
!2776 = !DILocation(line: 691, column: 34, scope: !2774)
!2777 = !DILocation(line: 691, column: 17, scope: !2774)
!2778 = !DILocation(line: 691, column: 43, scope: !2774)
!2779 = !DILocation(line: 691, column: 17, scope: !2775)
!2780 = !DILocation(line: 692, column: 38, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 691, column: 48)
!2782 = !DILocation(line: 692, column: 48, scope: !2781)
!2783 = !DILocation(line: 692, column: 17, scope: !2781)
!2784 = !DILocation(line: 699, column: 13, scope: !2781)
!2785 = !DILocation(line: 700, column: 64, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 699, column: 18)
!2787 = !DILocation(line: 700, column: 74, scope: !2786)
!2788 = !DILocation(line: 700, column: 17, scope: !2786)
!2789 = !DILocation(line: 702, column: 13, scope: !2775)
!2790 = !DILocation(line: 706, column: 13, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 706, column: 13)
!2792 = !DILocation(line: 706, column: 15, scope: !2791)
!2793 = !DILocation(line: 706, column: 20, scope: !2791)
!2794 = !DILocation(line: 706, column: 25, scope: !2791)
!2795 = !DILocation(line: 706, column: 35, scope: !2791)
!2796 = !DILocation(line: 706, column: 38, scope: !2791)
!2797 = !DILocation(line: 706, column: 40, scope: !2791)
!2798 = !DILocation(line: 706, column: 13, scope: !2719)
!2799 = !DILocation(line: 707, column: 70, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 706, column: 45)
!2801 = !DILocation(line: 707, column: 13, scope: !2800)
!2802 = !DILocation(line: 708, column: 13, scope: !2800)
!2803 = !DILocation(line: 710, column: 5, scope: !2719)
!2804 = !DILocation(line: 659, column: 16, scope: !2720)
!2805 = !DILocation(line: 659, column: 5, scope: !2720)
!2806 = distinct !{!2806, !2807, !2808}
!2807 = !DILocation(line: 659, column: 5, scope: !2716)
!2808 = !DILocation(line: 710, column: 5, scope: !2716)
!2809 = !DILocation(line: 711, column: 1, scope: !2444)
!2810 = distinct !DISubprogram(name: "shellescape", scope: !3, file: !3, line: 320, type: !2811, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!29, !35, !46}
!2813 = !DILocalVariable(name: "to", arg: 1, scope: !2810, file: !3, line: 320, type: !35)
!2814 = !DILocation(line: 320, column: 30, scope: !2810)
!2815 = !DILocalVariable(name: "from", arg: 2, scope: !2810, file: !3, line: 320, type: !46)
!2816 = !DILocation(line: 320, column: 46, scope: !2810)
!2817 = !DILocalVariable(name: "i", scope: !2810, file: !3, line: 322, type: !29)
!2818 = !DILocation(line: 322, column: 9, scope: !2810)
!2819 = !DILocalVariable(name: "j", scope: !2810, file: !3, line: 322, type: !29)
!2820 = !DILocation(line: 322, column: 12, scope: !2810)
!2821 = !DILocation(line: 323, column: 11, scope: !2810)
!2822 = !DILocation(line: 323, column: 7, scope: !2810)
!2823 = !DILocation(line: 327, column: 5, scope: !2810)
!2824 = !DILocation(line: 327, column: 9, scope: !2810)
!2825 = !DILocation(line: 327, column: 13, scope: !2810)
!2826 = !DILocation(line: 328, column: 5, scope: !2810)
!2827 = !DILocation(line: 328, column: 11, scope: !2810)
!2828 = !DILocation(line: 328, column: 16, scope: !2810)
!2829 = !DILocation(line: 336, column: 16, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 329, column: 5)
!2831 = !DILocation(line: 336, column: 21, scope: !2830)
!2832 = !DILocation(line: 336, column: 9, scope: !2830)
!2833 = !DILocation(line: 341, column: 17, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 336, column: 25)
!2835 = !DILocation(line: 341, column: 21, scope: !2834)
!2836 = !DILocation(line: 341, column: 25, scope: !2834)
!2837 = !DILocation(line: 344, column: 27, scope: !2834)
!2838 = !DILocation(line: 344, column: 33, scope: !2834)
!2839 = !DILocation(line: 344, column: 17, scope: !2834)
!2840 = !DILocation(line: 344, column: 21, scope: !2834)
!2841 = !DILocation(line: 344, column: 25, scope: !2834)
!2842 = !DILocation(line: 345, column: 9, scope: !2834)
!2843 = !DILocation(line: 347, column: 13, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 347, column: 13)
!2845 = !DILocation(line: 347, column: 15, scope: !2844)
!2846 = !DILocation(line: 347, column: 13, scope: !2830)
!2847 = !DILocation(line: 347, column: 28, scope: !2844)
!2848 = distinct !{!2848, !2826, !2849, !665}
!2849 = !DILocation(line: 348, column: 5, scope: !2810)
!2850 = !DILocation(line: 349, column: 5, scope: !2810)
!2851 = !DILocation(line: 349, column: 9, scope: !2810)
!2852 = !DILocation(line: 349, column: 13, scope: !2810)
!2853 = !DILocation(line: 350, column: 12, scope: !2810)
!2854 = !DILocation(line: 350, column: 5, scope: !2810)
