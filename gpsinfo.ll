; ModuleID = 'gpsinfo.c'
source_filename = "gpsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageInfo_t = type { [4097 x i8], i64, %struct.anon, i32, [32 x i8], [40 x i8], [20 x i8], i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [16000 x i8], i32, i32, i32, i32, i8, i32, [10 x i32], i32, i32, [31 x i8], [31 x i8], [20 x i8], i32 }
%struct.anon = type { i8, i8, i16, i16 }

@ShowTags = external dso_local global i32, align 4
@.str = private unnamed_addr constant [22 x i8] c"(dir has %d entries)\0A\00", align 1
@ImageInfo = external dso_local global %struct.ImageInfo_t, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"? ?\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"GPS info directory goes past end of exif\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Illegal number format %d for Exif gps tag %04x\00", align 1
@BytesPerFormat = external dso_local constant [0 x i32], align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Illegal value pointer for Exif gps tag %04x\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Inappropriate format (%d) for Exif GPS coordinates!\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%0.0fd %0.0fm %0.0fs\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%.2fm\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"        GPS%s =\00", align 1
@GpsTags = internal global [31 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0)], align 16, !dbg !0
@.str.9 = private unnamed_addr constant [30 x i8] c"        Illegal GPS tag %04x=\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"VersionID       \00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"LatitudeRef     \00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Latitude        \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"LongitudeRef    \00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Longitude       \00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"AltitudeRef     \00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Altitude        \00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"TimeStamp       \00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"Satellites      \00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Status          \00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"MeasureMode     \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"DOP             \00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"SpeedRef        \00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Speed           \00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"TrackRef        \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Track           \00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"ImgDirectionRef \00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"ImgDirection    \00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"MapDatum        \00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"DestLatitudeRef \00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"DestLatitude    \00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"DestLongitudeRef\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"DestLongitude   \00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"DestBearingRef  \00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"DestBearing     \00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"DestDistanceRef \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"DestDistance    \00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"ProcessingMethod\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"AreaInformation \00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"DateStamp       \00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"Differential    \00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @ProcessGpsInfo(i8* %DirStart, i8* %OffsetBase, i32 %ExifLength) #0 !dbg !17 {
entry:
  %DirStart.addr = alloca i8*, align 8
  %OffsetBase.addr = alloca i8*, align 8
  %ExifLength.addr = alloca i32, align 4
  %de = alloca i32, align 4
  %a = alloca i32, align 4
  %NumDirEntries = alloca i32, align 4
  %Tag = alloca i32, align 4
  %Format = alloca i32, align 4
  %Components = alloca i32, align 4
  %ValuePtr = alloca i8*, align 8
  %ComponentSize = alloca i32, align 4
  %ByteCount = alloca i32, align 4
  %DirEntry = alloca i8*, align 8
  %OffsetVal = alloca i32, align 4
  %FmtString = alloca [21 x i8], align 16
  %TempString = alloca [50 x i8], align 16
  %Values = alloca [3 x double], align 16
  %den = alloca i32, align 4
  %digits = alloca i32, align 4
  %ZeroSkipped = alloca i32, align 4
  store i8* %DirStart, i8** %DirStart.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %DirStart.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %OffsetBase, i8** %OffsetBase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %OffsetBase.addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 %ExifLength, i32* %ExifLength.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ExifLength.addr, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %de, metadata !29, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %a, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %NumDirEntries, metadata !34, metadata !DIExpression()), !dbg !35
  %0 = load i8*, i8** %DirStart.addr, align 8, !dbg !36
  %call = call i32 @Get16u(i8* %0), !dbg !37
  store i32 %call, i32* %NumDirEntries, align 4, !dbg !38
  %1 = load i32, i32* @ShowTags, align 4, !dbg !39
  %tobool = icmp ne i32 %1, 0, !dbg !39
  br i1 %tobool, label %if.then, label %if.end, !dbg !41

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %NumDirEntries, align 4, !dbg !42
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %2), !dbg !44
  br label %if.end, !dbg !45

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 40), align 4, !dbg !46
  %call2 = call i8* @strcpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 41, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !47
  %call3 = call i8* @strcpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 42, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !48
  store i8 0, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 43, i64 0), align 2, !dbg !49
  store i32 0, i32* %de, align 4, !dbg !50
  br label %for.cond, !dbg !52

for.cond:                                         ; preds = %for.inc155, %if.end
  %3 = load i32, i32* %de, align 4, !dbg !53
  %4 = load i32, i32* %NumDirEntries, align 4, !dbg !55
  %cmp = icmp slt i32 %3, %4, !dbg !56
  br i1 %cmp, label %for.body, label %for.end157, !dbg !57

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %Tag, metadata !58, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %Format, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %Components, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i8** %ValuePtr, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %ComponentSize, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %ByteCount, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i8** %DirEntry, metadata !71, metadata !DIExpression()), !dbg !72
  %5 = load i8*, i8** %DirStart.addr, align 8, !dbg !73
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 2, !dbg !73
  %6 = load i32, i32* %de, align 4, !dbg !73
  %mul = mul nsw i32 12, %6, !dbg !73
  %idx.ext = sext i32 %mul to i64, !dbg !73
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext, !dbg !73
  store i8* %add.ptr4, i8** %DirEntry, align 8, !dbg !74
  %7 = load i8*, i8** %DirEntry, align 8, !dbg !75
  %add.ptr5 = getelementptr inbounds i8, i8* %7, i64 12, !dbg !77
  %8 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !78
  %9 = load i32, i32* %ExifLength.addr, align 4, !dbg !79
  %idx.ext6 = zext i32 %9 to i64, !dbg !80
  %add.ptr7 = getelementptr inbounds i8, i8* %8, i64 %idx.ext6, !dbg !80
  %cmp8 = icmp ugt i8* %add.ptr5, %add.ptr7, !dbg !81
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !82

if.then9:                                         ; preds = %for.body
  call void @ErrNonfatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0), !dbg !83
  br label %for.end157, !dbg !85

if.end10:                                         ; preds = %for.body
  %10 = load i8*, i8** %DirEntry, align 8, !dbg !86
  %call11 = call i32 @Get16u(i8* %10), !dbg !87
  store i32 %call11, i32* %Tag, align 4, !dbg !88
  %11 = load i8*, i8** %DirEntry, align 8, !dbg !89
  %add.ptr12 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !90
  %call13 = call i32 @Get16u(i8* %add.ptr12), !dbg !91
  store i32 %call13, i32* %Format, align 4, !dbg !92
  %12 = load i8*, i8** %DirEntry, align 8, !dbg !93
  %add.ptr14 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !94
  %call15 = call i32 @Get32u(i8* %add.ptr14), !dbg !95
  store i32 %call15, i32* %Components, align 4, !dbg !96
  %13 = load i32, i32* %Format, align 4, !dbg !97
  %sub = sub i32 %13, 1, !dbg !99
  %cmp16 = icmp uge i32 %sub, 12, !dbg !100
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !101

if.then17:                                        ; preds = %if.end10
  %14 = load i32, i32* %Format, align 4, !dbg !102
  %15 = load i32, i32* %Tag, align 4, !dbg !104
  call void @ErrNonfatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %14, i32 %15), !dbg !105
  br label %for.inc155, !dbg !106

if.end18:                                         ; preds = %if.end10
  %16 = load i32, i32* %Format, align 4, !dbg !107
  %idxprom = zext i32 %16 to i64, !dbg !108
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @BytesPerFormat, i64 0, i64 %idxprom, !dbg !108
  %17 = load i32, i32* %arrayidx, align 4, !dbg !108
  store i32 %17, i32* %ComponentSize, align 4, !dbg !109
  %18 = load i32, i32* %Components, align 4, !dbg !110
  %19 = load i32, i32* %ComponentSize, align 4, !dbg !111
  %mul19 = mul i32 %18, %19, !dbg !112
  store i32 %mul19, i32* %ByteCount, align 4, !dbg !113
  %20 = load i32, i32* %ByteCount, align 4, !dbg !114
  %cmp20 = icmp ugt i32 %20, 4, !dbg !116
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !117

if.then21:                                        ; preds = %if.end18
  call void @llvm.dbg.declare(metadata i32* %OffsetVal, metadata !118, metadata !DIExpression()), !dbg !120
  %21 = load i8*, i8** %DirEntry, align 8, !dbg !121
  %add.ptr22 = getelementptr inbounds i8, i8* %21, i64 8, !dbg !122
  %call23 = call i32 @Get32u(i8* %add.ptr22), !dbg !123
  store i32 %call23, i32* %OffsetVal, align 4, !dbg !124
  %22 = load i32, i32* %OffsetVal, align 4, !dbg !125
  %cmp24 = icmp ugt i32 %22, 16777216, !dbg !127
  br i1 %cmp24, label %if.then26, label %lor.lhs.false, !dbg !128

lor.lhs.false:                                    ; preds = %if.then21
  %23 = load i32, i32* %OffsetVal, align 4, !dbg !129
  %24 = load i32, i32* %ByteCount, align 4, !dbg !130
  %add = add i32 %23, %24, !dbg !131
  %25 = load i32, i32* %ExifLength.addr, align 4, !dbg !132
  %cmp25 = icmp ugt i32 %add, %25, !dbg !133
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !134

if.then26:                                        ; preds = %lor.lhs.false, %if.then21
  %26 = load i32, i32* %Tag, align 4, !dbg !135
  call void @ErrNonfatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %26, i32 0), !dbg !137
  br label %for.inc155, !dbg !138

if.end27:                                         ; preds = %lor.lhs.false
  %27 = load i8*, i8** %OffsetBase.addr, align 8, !dbg !139
  %28 = load i32, i32* %OffsetVal, align 4, !dbg !140
  %idx.ext28 = zext i32 %28 to i64, !dbg !141
  %add.ptr29 = getelementptr inbounds i8, i8* %27, i64 %idx.ext28, !dbg !141
  store i8* %add.ptr29, i8** %ValuePtr, align 8, !dbg !142
  br label %if.end31, !dbg !143

if.else:                                          ; preds = %if.end18
  %29 = load i8*, i8** %DirEntry, align 8, !dbg !144
  %add.ptr30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !146
  store i8* %add.ptr30, i8** %ValuePtr, align 8, !dbg !147
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end27
  %30 = load i32, i32* %Tag, align 4, !dbg !148
  switch i32 %30, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb33
    i32 2, label %sw.bb35
    i32 4, label %sw.bb35
    i32 5, label %sw.bb88
    i32 6, label %sw.bb94
  ], !dbg !149

sw.bb:                                            ; preds = %if.end31
  %31 = load i8*, i8** %ValuePtr, align 8, !dbg !150
  %arrayidx32 = getelementptr inbounds i8, i8* %31, i64 0, !dbg !150
  %32 = load i8, i8* %arrayidx32, align 1, !dbg !150
  store i8 %32, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 41, i64 0), align 8, !dbg !152
  br label %sw.epilog, !dbg !153

sw.bb33:                                          ; preds = %if.end31
  %33 = load i8*, i8** %ValuePtr, align 8, !dbg !154
  %arrayidx34 = getelementptr inbounds i8, i8* %33, i64 0, !dbg !154
  %34 = load i8, i8* %arrayidx34, align 1, !dbg !154
  store i8 %34, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 42, i64 0), align 1, !dbg !155
  br label %sw.epilog, !dbg !156

sw.bb35:                                          ; preds = %if.end31, %if.end31
  %35 = load i32, i32* %Format, align 4, !dbg !157
  %cmp36 = icmp ne i32 %35, 5, !dbg !159
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !160

if.then37:                                        ; preds = %sw.bb35
  %36 = load i32, i32* %Format, align 4, !dbg !161
  call void @ErrNonfatal(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %36, i32 0), !dbg !163
  br label %if.end38, !dbg !164

if.end38:                                         ; preds = %if.then37, %sw.bb35
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %FmtString, i64 0, i64 0, !dbg !165
  %call39 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !166
  store i32 0, i32* %a, align 4, !dbg !167
  br label %for.cond40, !dbg !169

for.cond40:                                       ; preds = %for.inc, %if.end38
  %37 = load i32, i32* %a, align 4, !dbg !170
  %cmp41 = icmp ult i32 %37, 3, !dbg !172
  br i1 %cmp41, label %for.body42, label %for.end, !dbg !173

for.body42:                                       ; preds = %for.cond40
  call void @llvm.dbg.declare(metadata i32* %den, metadata !174, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %digits, metadata !177, metadata !DIExpression()), !dbg !178
  %38 = load i8*, i8** %ValuePtr, align 8, !dbg !179
  %add.ptr43 = getelementptr inbounds i8, i8* %38, i64 4, !dbg !180
  %39 = load i32, i32* %a, align 4, !dbg !181
  %40 = load i32, i32* %ComponentSize, align 4, !dbg !182
  %mul44 = mul i32 %39, %40, !dbg !183
  %idx.ext45 = zext i32 %mul44 to i64, !dbg !184
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr43, i64 %idx.ext45, !dbg !184
  %call47 = call i32 @Get32s(i8* %add.ptr46), !dbg !185
  store i32 %call47, i32* %den, align 4, !dbg !186
  store i32 0, i32* %digits, align 4, !dbg !187
  br label %while.cond, !dbg !188

while.cond:                                       ; preds = %while.body, %for.body42
  %41 = load i32, i32* %den, align 4, !dbg !189
  %cmp48 = icmp sgt i32 %41, 1, !dbg !190
  br i1 %cmp48, label %land.rhs, label %land.end, !dbg !191

land.rhs:                                         ; preds = %while.cond
  %42 = load i32, i32* %digits, align 4, !dbg !192
  %cmp49 = icmp sle i32 %42, 6, !dbg !193
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %43 = phi i1 [ false, %while.cond ], [ %cmp49, %land.rhs ], !dbg !194
  br i1 %43, label %while.body, label %while.end, !dbg !188

while.body:                                       ; preds = %land.end
  %44 = load i32, i32* %den, align 4, !dbg !195
  %div = sdiv i32 %44, 10, !dbg !197
  store i32 %div, i32* %den, align 4, !dbg !198
  %45 = load i32, i32* %digits, align 4, !dbg !199
  %add50 = add nsw i32 %45, 1, !dbg !199
  store i32 %add50, i32* %digits, align 4, !dbg !199
  br label %while.cond, !dbg !188, !llvm.loop !200

while.end:                                        ; preds = %land.end
  %46 = load i32, i32* %digits, align 4, !dbg !203
  %cmp51 = icmp sgt i32 %46, 6, !dbg !205
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !206

if.then52:                                        ; preds = %while.end
  store i32 6, i32* %digits, align 4, !dbg !207
  br label %if.end53, !dbg !208

if.end53:                                         ; preds = %if.then52, %while.end
  %47 = load i32, i32* %digits, align 4, !dbg !209
  %add54 = add nsw i32 50, %47, !dbg !210
  %48 = load i32, i32* %digits, align 4, !dbg !211
  %tobool55 = icmp ne i32 %48, 0, !dbg !211
  %49 = zext i1 %tobool55 to i64, !dbg !211
  %cond = select i1 %tobool55, i32 1, i32 0, !dbg !211
  %add56 = add nsw i32 %add54, %cond, !dbg !212
  %conv = trunc i32 %add56 to i8, !dbg !213
  %50 = load i32, i32* %a, align 4, !dbg !214
  %mul57 = mul i32 %50, 7, !dbg !215
  %add58 = add i32 1, %mul57, !dbg !216
  %idxprom59 = zext i32 %add58 to i64, !dbg !217
  %arrayidx60 = getelementptr inbounds [21 x i8], [21 x i8]* %FmtString, i64 0, i64 %idxprom59, !dbg !217
  store i8 %conv, i8* %arrayidx60, align 1, !dbg !218
  %51 = load i32, i32* %digits, align 4, !dbg !219
  %add61 = add nsw i32 48, %51, !dbg !220
  %conv62 = trunc i32 %add61 to i8, !dbg !221
  %52 = load i32, i32* %a, align 4, !dbg !222
  %mul63 = mul i32 %52, 7, !dbg !223
  %add64 = add i32 3, %mul63, !dbg !224
  %idxprom65 = zext i32 %add64 to i64, !dbg !225
  %arrayidx66 = getelementptr inbounds [21 x i8], [21 x i8]* %FmtString, i64 0, i64 %idxprom65, !dbg !225
  store i8 %conv62, i8* %arrayidx66, align 1, !dbg !226
  %53 = load i8*, i8** %ValuePtr, align 8, !dbg !227
  %54 = load i32, i32* %a, align 4, !dbg !228
  %55 = load i32, i32* %ComponentSize, align 4, !dbg !229
  %mul67 = mul i32 %54, %55, !dbg !230
  %idx.ext68 = zext i32 %mul67 to i64, !dbg !231
  %add.ptr69 = getelementptr inbounds i8, i8* %53, i64 %idx.ext68, !dbg !231
  %56 = load i32, i32* %Format, align 4, !dbg !232
  %call70 = call double @ConvertAnyFormat(i8* %add.ptr69, i32 %56), !dbg !233
  %57 = load i32, i32* %a, align 4, !dbg !234
  %idxprom71 = zext i32 %57 to i64, !dbg !235
  %arrayidx72 = getelementptr inbounds [3 x double], [3 x double]* %Values, i64 0, i64 %idxprom71, !dbg !235
  store double %call70, double* %arrayidx72, align 8, !dbg !236
  br label %for.inc, !dbg !237

for.inc:                                          ; preds = %if.end53
  %58 = load i32, i32* %a, align 4, !dbg !238
  %inc = add i32 %58, 1, !dbg !238
  store i32 %inc, i32* %a, align 4, !dbg !238
  br label %for.cond40, !dbg !239, !llvm.loop !240

for.end:                                          ; preds = %for.cond40
  %arraydecay73 = getelementptr inbounds [50 x i8], [50 x i8]* %TempString, i64 0, i64 0, !dbg !242
  %arraydecay74 = getelementptr inbounds [21 x i8], [21 x i8]* %FmtString, i64 0, i64 0, !dbg !243
  %arrayidx75 = getelementptr inbounds [3 x double], [3 x double]* %Values, i64 0, i64 0, !dbg !244
  %59 = load double, double* %arrayidx75, align 16, !dbg !244
  %arrayidx76 = getelementptr inbounds [3 x double], [3 x double]* %Values, i64 0, i64 1, !dbg !245
  %60 = load double, double* %arrayidx76, align 8, !dbg !245
  %arrayidx77 = getelementptr inbounds [3 x double], [3 x double]* %Values, i64 0, i64 2, !dbg !246
  %61 = load double, double* %arrayidx77, align 16, !dbg !246
  %call78 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay73, i64 50, i8* %arraydecay74, double %59, double %60, double %61) #4, !dbg !247
  %62 = load i32, i32* %Tag, align 4, !dbg !248
  %cmp79 = icmp eq i32 %62, 2, !dbg !250
  br i1 %cmp79, label %if.then81, label %if.else84, !dbg !251

if.then81:                                        ; preds = %for.end
  %arraydecay82 = getelementptr inbounds [50 x i8], [50 x i8]* %TempString, i64 0, i64 0, !dbg !252
  %call83 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 41, i64 2), i8* %arraydecay82, i64 29) #4, !dbg !254
  br label %if.end87, !dbg !255

if.else84:                                        ; preds = %for.end
  %arraydecay85 = getelementptr inbounds [50 x i8], [50 x i8]* %TempString, i64 0, i64 0, !dbg !256
  %call86 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 42, i64 2), i8* %arraydecay85, i64 29) #4, !dbg !258
  br label %if.end87

if.end87:                                         ; preds = %if.else84, %if.then81
  br label %sw.epilog, !dbg !259

sw.bb88:                                          ; preds = %if.end31
  %63 = load i8*, i8** %ValuePtr, align 8, !dbg !260
  %arrayidx89 = getelementptr inbounds i8, i8* %63, i64 0, !dbg !260
  %64 = load i8, i8* %arrayidx89, align 1, !dbg !260
  %conv90 = zext i8 %64 to i32, !dbg !260
  %tobool91 = icmp ne i32 %conv90, 0, !dbg !260
  %65 = zext i1 %tobool91 to i64, !dbg !260
  %cond92 = select i1 %tobool91, i32 45, i32 32, !dbg !260
  %conv93 = trunc i32 %cond92 to i8, !dbg !261
  store i8 %conv93, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 43, i64 0), align 2, !dbg !262
  br label %sw.epilog, !dbg !263

sw.bb94:                                          ; preds = %if.end31
  %66 = load i8*, i8** %ValuePtr, align 8, !dbg !264
  %67 = load i32, i32* %Format, align 4, !dbg !265
  %call95 = call double @ConvertAnyFormat(i8* %66, i32 %67), !dbg !266
  %call96 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 43, i64 1), i64 19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %call95) #4, !dbg !267
  br label %sw.epilog, !dbg !268

sw.epilog:                                        ; preds = %if.end31, %sw.bb94, %sw.bb88, %if.end87, %sw.bb33, %sw.bb
  %68 = load i32, i32* @ShowTags, align 4, !dbg !269
  %tobool97 = icmp ne i32 %68, 0, !dbg !269
  br i1 %tobool97, label %if.then98, label %if.end154, !dbg !271

if.then98:                                        ; preds = %sw.epilog
  %69 = load i32, i32* %Tag, align 4, !dbg !272
  %cmp99 = icmp ult i32 %69, 30, !dbg !275
  br i1 %cmp99, label %if.then101, label %if.else105, !dbg !276

if.then101:                                       ; preds = %if.then98
  %70 = load i32, i32* %Tag, align 4, !dbg !277
  %idxprom102 = zext i32 %70 to i64, !dbg !279
  %arrayidx103 = getelementptr inbounds [31 x i8*], [31 x i8*]* @GpsTags, i64 0, i64 %idxprom102, !dbg !279
  %71 = load i8*, i8** %arrayidx103, align 8, !dbg !279
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %71), !dbg !280
  br label %if.end107, !dbg !281

if.else105:                                       ; preds = %if.then98
  %72 = load i32, i32* %Tag, align 4, !dbg !282
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %72), !dbg !284
  br label %if.end107

if.end107:                                        ; preds = %if.else105, %if.then101
  %73 = load i32, i32* %Format, align 4, !dbg !285
  switch i32 %73, label %sw.default [
    i32 7, label %sw.bb108
    i32 2, label %sw.bb108
  ], !dbg !286

sw.bb108:                                         ; preds = %if.end107, %if.end107
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)), !dbg !287
  store i32 0, i32* %a, align 4, !dbg !290
  br label %for.cond110, !dbg !292

for.cond110:                                      ; preds = %for.inc137, %sw.bb108
  %74 = load i32, i32* %a, align 4, !dbg !293
  %75 = load i32, i32* %ByteCount, align 4, !dbg !295
  %cmp111 = icmp ult i32 %74, %75, !dbg !296
  br i1 %cmp111, label %for.body113, label %for.end139, !dbg !297

for.body113:                                      ; preds = %for.cond110
  call void @llvm.dbg.declare(metadata i32* %ZeroSkipped, metadata !298, metadata !DIExpression()), !dbg !300
  store i32 0, i32* %ZeroSkipped, align 4, !dbg !300
  %76 = load i8*, i8** %ValuePtr, align 8, !dbg !301
  %77 = load i32, i32* %a, align 4, !dbg !303
  %idxprom114 = zext i32 %77 to i64, !dbg !301
  %arrayidx115 = getelementptr inbounds i8, i8* %76, i64 %idxprom114, !dbg !301
  %78 = load i8, i8* %arrayidx115, align 1, !dbg !301
  %conv116 = zext i8 %78 to i32, !dbg !301
  %cmp117 = icmp sge i32 %conv116, 32, !dbg !304
  br i1 %cmp117, label %if.then119, label %if.else128, !dbg !305

if.then119:                                       ; preds = %for.body113
  %79 = load i32, i32* %ZeroSkipped, align 4, !dbg !306
  %tobool120 = icmp ne i32 %79, 0, !dbg !306
  br i1 %tobool120, label %if.then121, label %if.end123, !dbg !309

if.then121:                                       ; preds = %if.then119
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)), !dbg !310
  store i32 0, i32* %ZeroSkipped, align 4, !dbg !312
  br label %if.end123, !dbg !313

if.end123:                                        ; preds = %if.then121, %if.then119
  %80 = load i8*, i8** %ValuePtr, align 8, !dbg !314
  %81 = load i32, i32* %a, align 4, !dbg !315
  %idxprom124 = zext i32 %81 to i64, !dbg !314
  %arrayidx125 = getelementptr inbounds i8, i8* %80, i64 %idxprom124, !dbg !314
  %82 = load i8, i8* %arrayidx125, align 1, !dbg !314
  %conv126 = zext i8 %82 to i32, !dbg !314
  %call127 = call i32 @putchar(i32 %conv126), !dbg !316
  br label %if.end136, !dbg !317

if.else128:                                       ; preds = %for.body113
  %83 = load i8*, i8** %ValuePtr, align 8, !dbg !318
  %84 = load i32, i32* %a, align 4, !dbg !321
  %idxprom129 = zext i32 %84 to i64, !dbg !318
  %arrayidx130 = getelementptr inbounds i8, i8* %83, i64 %idxprom129, !dbg !318
  %85 = load i8, i8* %arrayidx130, align 1, !dbg !318
  %conv131 = zext i8 %85 to i32, !dbg !318
  %cmp132 = icmp eq i32 %conv131, 0, !dbg !322
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !323

if.then134:                                       ; preds = %if.else128
  store i32 1, i32* %ZeroSkipped, align 4, !dbg !324
  br label %if.end135, !dbg !326

if.end135:                                        ; preds = %if.then134, %if.else128
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end123
  br label %for.inc137, !dbg !327

for.inc137:                                       ; preds = %if.end136
  %86 = load i32, i32* %a, align 4, !dbg !328
  %inc138 = add i32 %86, 1, !dbg !328
  store i32 %inc138, i32* %a, align 4, !dbg !328
  br label %for.cond110, !dbg !329, !llvm.loop !330

for.end139:                                       ; preds = %for.cond110
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)), !dbg !332
  br label %sw.epilog153, !dbg !333

sw.default:                                       ; preds = %if.end107
  store i32 0, i32* %a, align 4, !dbg !334
  br label %for.cond141, !dbg !336

for.cond141:                                      ; preds = %if.end149, %sw.default
  %87 = load i8*, i8** %ValuePtr, align 8, !dbg !337
  %88 = load i32, i32* %a, align 4, !dbg !340
  %89 = load i32, i32* %ComponentSize, align 4, !dbg !341
  %mul142 = mul i32 %88, %89, !dbg !342
  %idx.ext143 = zext i32 %mul142 to i64, !dbg !343
  %add.ptr144 = getelementptr inbounds i8, i8* %87, i64 %idx.ext143, !dbg !343
  %90 = load i32, i32* %Format, align 4, !dbg !344
  %91 = load i32, i32* %ByteCount, align 4, !dbg !345
  call void @PrintFormatNumber(i8* %add.ptr144, i32 %90, i32 %91), !dbg !346
  %92 = load i32, i32* %a, align 4, !dbg !347
  %inc145 = add i32 %92, 1, !dbg !347
  store i32 %inc145, i32* %a, align 4, !dbg !347
  %93 = load i32, i32* %Components, align 4, !dbg !349
  %cmp146 = icmp uge i32 %inc145, %93, !dbg !350
  br i1 %cmp146, label %if.then148, label %if.end149, !dbg !351

if.then148:                                       ; preds = %for.cond141
  br label %for.end151, !dbg !352

if.end149:                                        ; preds = %for.cond141
  %call150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)), !dbg !353
  br label %for.cond141, !dbg !354, !llvm.loop !355

for.end151:                                       ; preds = %if.then148
  %call152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)), !dbg !358
  br label %sw.epilog153, !dbg !359

sw.epilog153:                                     ; preds = %for.end151, %for.end139
  br label %if.end154, !dbg !360

if.end154:                                        ; preds = %sw.epilog153, %sw.epilog
  br label %for.inc155, !dbg !361

for.inc155:                                       ; preds = %if.end154, %if.then26, %if.then17
  %94 = load i32, i32* %de, align 4, !dbg !362
  %inc156 = add nsw i32 %94, 1, !dbg !362
  store i32 %inc156, i32* %de, align 4, !dbg !362
  br label %for.cond, !dbg !363, !llvm.loop !364

for.end157:                                       ; preds = %if.then9, %for.cond
  ret void, !dbg !366
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @Get16u(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

declare dso_local void @ErrNonfatal(i8*, i32, i32) #2

declare dso_local i32 @Get32u(i8*) #2

declare dso_local i32 @Get32s(i8*) #2

declare dso_local double @ConvertAnyFormat(i8*, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #3

declare dso_local i32 @putchar(i32) #2

declare dso_local void @PrintFormatNumber(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GpsTags", scope: !2, file: !3, line: 19, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "gpsinfo.c", directory: ".")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{!0}
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1984, elements: !11)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!11 = !{!12}
!12 = !DISubrange(count: 31)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 12.0.0"}
!17 = distinct !DISubprogram(name: "ProcessGpsInfo", scope: !3, file: !3, line: 56, type: !18, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !22}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "DirStart", arg: 1, scope: !17, file: !3, line: 56, type: !20)
!24 = !DILocation(line: 56, column: 37, scope: !17)
!25 = !DILocalVariable(name: "OffsetBase", arg: 2, scope: !17, file: !3, line: 56, type: !20)
!26 = !DILocation(line: 56, column: 63, scope: !17)
!27 = !DILocalVariable(name: "ExifLength", arg: 3, scope: !17, file: !3, line: 56, type: !22)
!28 = !DILocation(line: 56, column: 84, scope: !17)
!29 = !DILocalVariable(name: "de", scope: !17, file: !3, line: 58, type: !30)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DILocation(line: 58, column: 9, scope: !17)
!32 = !DILocalVariable(name: "a", scope: !17, file: !3, line: 59, type: !22)
!33 = !DILocation(line: 59, column: 14, scope: !17)
!34 = !DILocalVariable(name: "NumDirEntries", scope: !17, file: !3, line: 60, type: !30)
!35 = !DILocation(line: 60, column: 9, scope: !17)
!36 = !DILocation(line: 62, column: 28, scope: !17)
!37 = !DILocation(line: 62, column: 21, scope: !17)
!38 = !DILocation(line: 62, column: 19, scope: !17)
!39 = !DILocation(line: 65, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !17, file: !3, line: 65, column: 9)
!41 = !DILocation(line: 65, column: 9, scope: !17)
!42 = !DILocation(line: 66, column: 41, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 65, column: 18)
!44 = !DILocation(line: 66, column: 9, scope: !43)
!45 = !DILocation(line: 67, column: 5, scope: !43)
!46 = !DILocation(line: 69, column: 30, scope: !17)
!47 = !DILocation(line: 70, column: 5, scope: !17)
!48 = !DILocation(line: 71, column: 5, scope: !17)
!49 = !DILocation(line: 72, column: 25, scope: !17)
!50 = !DILocation(line: 74, column: 12, scope: !51)
!51 = distinct !DILexicalBlock(scope: !17, file: !3, line: 74, column: 5)
!52 = !DILocation(line: 74, column: 10, scope: !51)
!53 = !DILocation(line: 74, column: 15, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !3, line: 74, column: 5)
!55 = !DILocation(line: 74, column: 18, scope: !54)
!56 = !DILocation(line: 74, column: 17, scope: !54)
!57 = !DILocation(line: 74, column: 5, scope: !51)
!58 = !DILocalVariable(name: "Tag", scope: !59, file: !3, line: 75, type: !22)
!59 = distinct !DILexicalBlock(scope: !54, file: !3, line: 74, column: 37)
!60 = !DILocation(line: 75, column: 18, scope: !59)
!61 = !DILocalVariable(name: "Format", scope: !59, file: !3, line: 75, type: !22)
!62 = !DILocation(line: 75, column: 23, scope: !59)
!63 = !DILocalVariable(name: "Components", scope: !59, file: !3, line: 75, type: !22)
!64 = !DILocation(line: 75, column: 31, scope: !59)
!65 = !DILocalVariable(name: "ValuePtr", scope: !59, file: !3, line: 76, type: !20)
!66 = !DILocation(line: 76, column: 25, scope: !59)
!67 = !DILocalVariable(name: "ComponentSize", scope: !59, file: !3, line: 77, type: !30)
!68 = !DILocation(line: 77, column: 13, scope: !59)
!69 = !DILocalVariable(name: "ByteCount", scope: !59, file: !3, line: 78, type: !22)
!70 = !DILocation(line: 78, column: 18, scope: !59)
!71 = !DILocalVariable(name: "DirEntry", scope: !59, file: !3, line: 79, type: !20)
!72 = !DILocation(line: 79, column: 25, scope: !59)
!73 = !DILocation(line: 80, column: 20, scope: !59)
!74 = !DILocation(line: 80, column: 18, scope: !59)
!75 = !DILocation(line: 82, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !59, file: !3, line: 82, column: 13)
!77 = !DILocation(line: 82, column: 21, scope: !76)
!78 = !DILocation(line: 82, column: 27, scope: !76)
!79 = !DILocation(line: 82, column: 38, scope: !76)
!80 = !DILocation(line: 82, column: 37, scope: !76)
!81 = !DILocation(line: 82, column: 25, scope: !76)
!82 = !DILocation(line: 82, column: 13, scope: !59)
!83 = !DILocation(line: 83, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !76, file: !3, line: 82, column: 49)
!85 = !DILocation(line: 84, column: 13, scope: !84)
!86 = !DILocation(line: 87, column: 22, scope: !59)
!87 = !DILocation(line: 87, column: 15, scope: !59)
!88 = !DILocation(line: 87, column: 13, scope: !59)
!89 = !DILocation(line: 88, column: 25, scope: !59)
!90 = !DILocation(line: 88, column: 33, scope: !59)
!91 = !DILocation(line: 88, column: 18, scope: !59)
!92 = !DILocation(line: 88, column: 16, scope: !59)
!93 = !DILocation(line: 89, column: 29, scope: !59)
!94 = !DILocation(line: 89, column: 37, scope: !59)
!95 = !DILocation(line: 89, column: 22, scope: !59)
!96 = !DILocation(line: 89, column: 20, scope: !59)
!97 = !DILocation(line: 91, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !59, file: !3, line: 91, column: 13)
!99 = !DILocation(line: 91, column: 20, scope: !98)
!100 = !DILocation(line: 91, column: 24, scope: !98)
!101 = !DILocation(line: 91, column: 13, scope: !59)
!102 = !DILocation(line: 93, column: 75, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !3, line: 91, column: 40)
!104 = !DILocation(line: 93, column: 83, scope: !103)
!105 = !DILocation(line: 93, column: 13, scope: !103)
!106 = !DILocation(line: 94, column: 13, scope: !103)
!107 = !DILocation(line: 97, column: 40, scope: !59)
!108 = !DILocation(line: 97, column: 25, scope: !59)
!109 = !DILocation(line: 97, column: 23, scope: !59)
!110 = !DILocation(line: 98, column: 21, scope: !59)
!111 = !DILocation(line: 98, column: 34, scope: !59)
!112 = !DILocation(line: 98, column: 32, scope: !59)
!113 = !DILocation(line: 98, column: 19, scope: !59)
!114 = !DILocation(line: 100, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !59, file: !3, line: 100, column: 13)
!116 = !DILocation(line: 100, column: 23, scope: !115)
!117 = !DILocation(line: 100, column: 13, scope: !59)
!118 = !DILocalVariable(name: "OffsetVal", scope: !119, file: !3, line: 101, type: !22)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 100, column: 27)
!120 = !DILocation(line: 101, column: 22, scope: !119)
!121 = !DILocation(line: 102, column: 32, scope: !119)
!122 = !DILocation(line: 102, column: 40, scope: !119)
!123 = !DILocation(line: 102, column: 25, scope: !119)
!124 = !DILocation(line: 102, column: 23, scope: !119)
!125 = !DILocation(line: 104, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !119, file: !3, line: 104, column: 17)
!127 = !DILocation(line: 104, column: 27, scope: !126)
!128 = !DILocation(line: 104, column: 39, scope: !126)
!129 = !DILocation(line: 104, column: 42, scope: !126)
!130 = !DILocation(line: 104, column: 52, scope: !126)
!131 = !DILocation(line: 104, column: 51, scope: !126)
!132 = !DILocation(line: 104, column: 64, scope: !126)
!133 = !DILocation(line: 104, column: 62, scope: !126)
!134 = !DILocation(line: 104, column: 17, scope: !119)
!135 = !DILocation(line: 107, column: 76, scope: !136)
!136 = distinct !DILexicalBlock(scope: !126, file: !3, line: 104, column: 75)
!137 = !DILocation(line: 107, column: 17, scope: !136)
!138 = !DILocation(line: 108, column: 17, scope: !136)
!139 = !DILocation(line: 110, column: 24, scope: !119)
!140 = !DILocation(line: 110, column: 35, scope: !119)
!141 = !DILocation(line: 110, column: 34, scope: !119)
!142 = !DILocation(line: 110, column: 22, scope: !119)
!143 = !DILocation(line: 111, column: 9, scope: !119)
!144 = !DILocation(line: 113, column: 24, scope: !145)
!145 = distinct !DILexicalBlock(scope: !115, file: !3, line: 111, column: 14)
!146 = !DILocation(line: 113, column: 32, scope: !145)
!147 = !DILocation(line: 113, column: 22, scope: !145)
!148 = !DILocation(line: 116, column: 16, scope: !59)
!149 = !DILocation(line: 116, column: 9, scope: !59)
!150 = !DILocation(line: 122, column: 39, scope: !151)
!151 = distinct !DILexicalBlock(scope: !59, file: !3, line: 116, column: 20)
!152 = !DILocation(line: 122, column: 37, scope: !151)
!153 = !DILocation(line: 123, column: 17, scope: !151)
!154 = !DILocation(line: 126, column: 40, scope: !151)
!155 = !DILocation(line: 126, column: 38, scope: !151)
!156 = !DILocation(line: 127, column: 17, scope: !151)
!157 = !DILocation(line: 131, column: 21, scope: !158)
!158 = distinct !DILexicalBlock(scope: !151, file: !3, line: 131, column: 21)
!159 = !DILocation(line: 131, column: 28, scope: !158)
!160 = !DILocation(line: 131, column: 21, scope: !151)
!161 = !DILocation(line: 132, column: 88, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 131, column: 45)
!163 = !DILocation(line: 132, column: 21, scope: !162)
!164 = !DILocation(line: 133, column: 17, scope: !162)
!165 = !DILocation(line: 134, column: 24, scope: !151)
!166 = !DILocation(line: 134, column: 17, scope: !151)
!167 = !DILocation(line: 135, column: 23, scope: !168)
!168 = distinct !DILexicalBlock(scope: !151, file: !3, line: 135, column: 17)
!169 = !DILocation(line: 135, column: 22, scope: !168)
!170 = !DILocation(line: 135, column: 26, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !3, line: 135, column: 17)
!172 = !DILocation(line: 135, column: 27, scope: !171)
!173 = !DILocation(line: 135, column: 17, scope: !168)
!174 = !DILocalVariable(name: "den", scope: !175, file: !3, line: 136, type: !30)
!175 = distinct !DILexicalBlock(scope: !171, file: !3, line: 135, column: 34)
!176 = !DILocation(line: 136, column: 25, scope: !175)
!177 = !DILocalVariable(name: "digits", scope: !175, file: !3, line: 136, type: !30)
!178 = !DILocation(line: 136, column: 30, scope: !175)
!179 = !DILocation(line: 138, column: 34, scope: !175)
!180 = !DILocation(line: 138, column: 42, scope: !175)
!181 = !DILocation(line: 138, column: 45, scope: !175)
!182 = !DILocation(line: 138, column: 47, scope: !175)
!183 = !DILocation(line: 138, column: 46, scope: !175)
!184 = !DILocation(line: 138, column: 44, scope: !175)
!185 = !DILocation(line: 138, column: 27, scope: !175)
!186 = !DILocation(line: 138, column: 25, scope: !175)
!187 = !DILocation(line: 139, column: 28, scope: !175)
!188 = !DILocation(line: 140, column: 21, scope: !175)
!189 = !DILocation(line: 140, column: 28, scope: !175)
!190 = !DILocation(line: 140, column: 32, scope: !175)
!191 = !DILocation(line: 140, column: 36, scope: !175)
!192 = !DILocation(line: 140, column: 39, scope: !175)
!193 = !DILocation(line: 140, column: 46, scope: !175)
!194 = !DILocation(line: 0, scope: !175)
!195 = !DILocation(line: 141, column: 31, scope: !196)
!196 = distinct !DILexicalBlock(scope: !175, file: !3, line: 140, column: 51)
!197 = !DILocation(line: 141, column: 35, scope: !196)
!198 = !DILocation(line: 141, column: 29, scope: !196)
!199 = !DILocation(line: 142, column: 32, scope: !196)
!200 = distinct !{!200, !188, !201, !202}
!201 = !DILocation(line: 143, column: 21, scope: !175)
!202 = !{!"llvm.loop.mustprogress"}
!203 = !DILocation(line: 144, column: 25, scope: !204)
!204 = distinct !DILexicalBlock(scope: !175, file: !3, line: 144, column: 25)
!205 = !DILocation(line: 144, column: 32, scope: !204)
!206 = !DILocation(line: 144, column: 25, scope: !175)
!207 = !DILocation(line: 144, column: 44, scope: !204)
!208 = !DILocation(line: 144, column: 37, scope: !204)
!209 = !DILocation(line: 145, column: 51, scope: !175)
!210 = !DILocation(line: 145, column: 50, scope: !175)
!211 = !DILocation(line: 145, column: 59, scope: !175)
!212 = !DILocation(line: 145, column: 57, scope: !175)
!213 = !DILocation(line: 145, column: 40, scope: !175)
!214 = !DILocation(line: 145, column: 33, scope: !175)
!215 = !DILocation(line: 145, column: 34, scope: !175)
!216 = !DILocation(line: 145, column: 32, scope: !175)
!217 = !DILocation(line: 145, column: 21, scope: !175)
!218 = !DILocation(line: 145, column: 38, scope: !175)
!219 = !DILocation(line: 146, column: 51, scope: !175)
!220 = !DILocation(line: 146, column: 50, scope: !175)
!221 = !DILocation(line: 146, column: 40, scope: !175)
!222 = !DILocation(line: 146, column: 33, scope: !175)
!223 = !DILocation(line: 146, column: 34, scope: !175)
!224 = !DILocation(line: 146, column: 32, scope: !175)
!225 = !DILocation(line: 146, column: 21, scope: !175)
!226 = !DILocation(line: 146, column: 38, scope: !175)
!227 = !DILocation(line: 148, column: 50, scope: !175)
!228 = !DILocation(line: 148, column: 59, scope: !175)
!229 = !DILocation(line: 148, column: 61, scope: !175)
!230 = !DILocation(line: 148, column: 60, scope: !175)
!231 = !DILocation(line: 148, column: 58, scope: !175)
!232 = !DILocation(line: 148, column: 76, scope: !175)
!233 = !DILocation(line: 148, column: 33, scope: !175)
!234 = !DILocation(line: 148, column: 28, scope: !175)
!235 = !DILocation(line: 148, column: 21, scope: !175)
!236 = !DILocation(line: 148, column: 31, scope: !175)
!237 = !DILocation(line: 149, column: 17, scope: !175)
!238 = !DILocation(line: 135, column: 31, scope: !171)
!239 = !DILocation(line: 135, column: 17, scope: !171)
!240 = distinct !{!240, !173, !241, !202}
!241 = !DILocation(line: 149, column: 17, scope: !168)
!242 = !DILocation(line: 151, column: 26, scope: !151)
!243 = !DILocation(line: 151, column: 58, scope: !151)
!244 = !DILocation(line: 151, column: 69, scope: !151)
!245 = !DILocation(line: 151, column: 80, scope: !151)
!246 = !DILocation(line: 151, column: 91, scope: !151)
!247 = !DILocation(line: 151, column: 17, scope: !151)
!248 = !DILocation(line: 153, column: 21, scope: !249)
!249 = distinct !DILexicalBlock(scope: !151, file: !3, line: 153, column: 21)
!250 = !DILocation(line: 153, column: 25, scope: !249)
!251 = !DILocation(line: 153, column: 21, scope: !151)
!252 = !DILocation(line: 154, column: 49, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !3, line: 153, column: 40)
!254 = !DILocation(line: 154, column: 21, scope: !253)
!255 = !DILocation(line: 155, column: 17, scope: !253)
!256 = !DILocation(line: 156, column: 50, scope: !257)
!257 = distinct !DILexicalBlock(scope: !249, file: !3, line: 155, column: 22)
!258 = !DILocation(line: 156, column: 21, scope: !257)
!259 = !DILocation(line: 158, column: 17, scope: !151)
!260 = !DILocation(line: 161, column: 46, scope: !151)
!261 = !DILocation(line: 161, column: 39, scope: !151)
!262 = !DILocation(line: 161, column: 37, scope: !151)
!263 = !DILocation(line: 162, column: 17, scope: !151)
!264 = !DILocation(line: 166, column: 47, scope: !151)
!265 = !DILocation(line: 166, column: 57, scope: !151)
!266 = !DILocation(line: 166, column: 30, scope: !151)
!267 = !DILocation(line: 165, column: 17, scope: !151)
!268 = !DILocation(line: 167, column: 17, scope: !151)
!269 = !DILocation(line: 170, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !59, file: !3, line: 170, column: 13)
!271 = !DILocation(line: 170, column: 13, scope: !59)
!272 = !DILocation(line: 172, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 172, column: 17)
!274 = distinct !DILexicalBlock(scope: !270, file: !3, line: 170, column: 22)
!275 = !DILocation(line: 172, column: 21, scope: !273)
!276 = !DILocation(line: 172, column: 17, scope: !274)
!277 = !DILocation(line: 173, column: 51, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !3, line: 172, column: 35)
!279 = !DILocation(line: 173, column: 43, scope: !278)
!280 = !DILocation(line: 173, column: 17, scope: !278)
!281 = !DILocation(line: 174, column: 13, scope: !278)
!282 = !DILocation(line: 176, column: 57, scope: !283)
!283 = distinct !DILexicalBlock(scope: !273, file: !3, line: 174, column: 18)
!284 = !DILocation(line: 176, column: 17, scope: !283)
!285 = !DILocation(line: 179, column: 20, scope: !274)
!286 = !DILocation(line: 179, column: 13, scope: !274)
!287 = !DILocation(line: 186, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 185, column: 21)
!289 = distinct !DILexicalBlock(scope: !274, file: !3, line: 179, column: 27)
!290 = !DILocation(line: 187, column: 31, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 187, column: 25)
!292 = !DILocation(line: 187, column: 30, scope: !291)
!293 = !DILocation(line: 187, column: 34, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !3, line: 187, column: 25)
!295 = !DILocation(line: 187, column: 36, scope: !294)
!296 = !DILocation(line: 187, column: 35, scope: !294)
!297 = !DILocation(line: 187, column: 25, scope: !291)
!298 = !DILocalVariable(name: "ZeroSkipped", scope: !299, file: !3, line: 188, type: !30)
!299 = distinct !DILexicalBlock(scope: !294, file: !3, line: 187, column: 50)
!300 = !DILocation(line: 188, column: 33, scope: !299)
!301 = !DILocation(line: 189, column: 33, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !3, line: 189, column: 33)
!303 = !DILocation(line: 189, column: 42, scope: !302)
!304 = !DILocation(line: 189, column: 45, scope: !302)
!305 = !DILocation(line: 189, column: 33, scope: !299)
!306 = !DILocation(line: 190, column: 37, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 190, column: 37)
!308 = distinct !DILexicalBlock(scope: !302, file: !3, line: 189, column: 51)
!309 = !DILocation(line: 190, column: 37, scope: !308)
!310 = !DILocation(line: 191, column: 37, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 190, column: 49)
!312 = !DILocation(line: 192, column: 49, scope: !311)
!313 = !DILocation(line: 193, column: 33, scope: !311)
!314 = !DILocation(line: 194, column: 41, scope: !308)
!315 = !DILocation(line: 194, column: 50, scope: !308)
!316 = !DILocation(line: 194, column: 33, scope: !308)
!317 = !DILocation(line: 195, column: 29, scope: !308)
!318 = !DILocation(line: 196, column: 37, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !3, line: 196, column: 37)
!320 = distinct !DILexicalBlock(scope: !302, file: !3, line: 195, column: 34)
!321 = !DILocation(line: 196, column: 46, scope: !319)
!322 = !DILocation(line: 196, column: 49, scope: !319)
!323 = !DILocation(line: 196, column: 37, scope: !320)
!324 = !DILocation(line: 197, column: 49, scope: !325)
!325 = distinct !DILexicalBlock(scope: !319, file: !3, line: 196, column: 54)
!326 = !DILocation(line: 198, column: 33, scope: !325)
!327 = !DILocation(line: 200, column: 25, scope: !299)
!328 = !DILocation(line: 187, column: 47, scope: !294)
!329 = !DILocation(line: 187, column: 25, scope: !294)
!330 = distinct !{!330, !297, !331, !202}
!331 = !DILocation(line: 200, column: 25, scope: !291)
!332 = !DILocation(line: 201, column: 25, scope: !288)
!333 = !DILocation(line: 203, column: 21, scope: !289)
!334 = !DILocation(line: 207, column: 27, scope: !335)
!335 = distinct !DILexicalBlock(scope: !289, file: !3, line: 207, column: 21)
!336 = !DILocation(line: 207, column: 26, scope: !335)
!337 = !DILocation(line: 208, column: 43, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 207, column: 32)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 207, column: 21)
!340 = !DILocation(line: 208, column: 52, scope: !338)
!341 = !DILocation(line: 208, column: 54, scope: !338)
!342 = !DILocation(line: 208, column: 53, scope: !338)
!343 = !DILocation(line: 208, column: 51, scope: !338)
!344 = !DILocation(line: 208, column: 69, scope: !338)
!345 = !DILocation(line: 208, column: 77, scope: !338)
!346 = !DILocation(line: 208, column: 25, scope: !338)
!347 = !DILocation(line: 209, column: 29, scope: !348)
!348 = distinct !DILexicalBlock(scope: !338, file: !3, line: 209, column: 29)
!349 = !DILocation(line: 209, column: 36, scope: !348)
!350 = !DILocation(line: 209, column: 33, scope: !348)
!351 = !DILocation(line: 209, column: 29, scope: !338)
!352 = !DILocation(line: 209, column: 48, scope: !348)
!353 = !DILocation(line: 210, column: 25, scope: !338)
!354 = !DILocation(line: 207, column: 21, scope: !339)
!355 = distinct !{!355, !356, !357}
!356 = !DILocation(line: 207, column: 21, scope: !335)
!357 = !DILocation(line: 211, column: 21, scope: !335)
!358 = !DILocation(line: 212, column: 21, scope: !289)
!359 = !DILocation(line: 213, column: 13, scope: !289)
!360 = !DILocation(line: 214, column: 9, scope: !274)
!361 = !DILocation(line: 215, column: 5, scope: !59)
!362 = !DILocation(line: 74, column: 34, scope: !54)
!363 = !DILocation(line: 74, column: 5, scope: !54)
!364 = distinct !{!364, !57, !365, !202}
!365 = !DILocation(line: 215, column: 5, scope: !51)
!366 = !DILocation(line: 216, column: 1, scope: !17)
