; ModuleID = 'jpgfile.c'
source_filename = "jpgfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageInfo_t = type { [4097 x i8], i64, %struct.anon, i32, [32 x i8], [40 x i8], [20 x i8], i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [16000 x i8], i32, i32, i32, i32, i8, i32, [10 x i32], i32, i32, [31 x i8], [31 x i8], [20 x i8], i32 }
%struct.anon = type { i8, i8, i16, i16 }
%struct.Section_t = type { i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@ImageInfo = dso_local global %struct.ImageInfo_t zeroinitializer, align 8, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"Unexpected end of file\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Extraneous %d padding bytes before section %02X\00", align 1
@Sections = internal global %struct.Section_t* null, align 8, !dbg !45
@SectionsRead = internal global i32 0, align 4, !dbg !41
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid marker\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not allocate memory\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Premature end of file?\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"could not allocate data for entire image\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"could not read the rest of the image\00", align 1
@HaveAll = internal global i32 0, align 4, !dbg !43
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"No image in jpeg!\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Jfif header too short\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"JFIF\00\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Header missing JFIF marker\0A\00", align 1
@ShowTags = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"JFIF SOI marker: Units: %d \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"(aspect ratio)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"(dots per inch)\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"(dots per cm)\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"  X-density=%d Y-density=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Ignoring jfif header thumbnail\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Exif\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"http:\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Image contains XMP section, %d bytes long\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"Image contains IPTC section, %d bytes long\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Section too short\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Jpeg section marker 0x%02x size %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"can't open '%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Not JPEG: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Image contains no thumbnail\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Could not write thumbnail file\00", align 1
@.str.32 = private unnamed_addr constant [62 x i8] c"Image contains no thumbnail to replace - add is not possible\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Could not read thumbnail file\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"Thumbnail is too large to insert into exif header\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"Can't write back - didn't read all\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Could not open file for write\00", align 1
@WriteJpegFile.JfifHead = internal global [18 x i8] c"\FF\E0\00\10JFIF\00\01\01\01\01,\01,\00\00", align 16, !dbg !28
@.str.37 = private unnamed_addr constant [18 x i8] c"Too few sections!\00", align 1
@SectionsAllocated = internal global i32 0, align 4, !dbg !39
@.str.38 = private unnamed_addr constant [19 x i8] c"allocation screwup\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"COM marker comment: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [66 x i8] c"JPEG image is %uw * %uh, %d color components, %d bits per sample\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @ReadJpegSections(%struct._IO_FILE* %infile, i32 %ReadMode) #0 !dbg !133 {
entry:
  %retval = alloca i32, align 4
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %ReadMode.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %HaveCom = alloca i32, align 4
  %itemlen = alloca i32, align 4
  %prev = alloca i32, align 4
  %marker = alloca i32, align 4
  %ll = alloca i32, align 4
  %lh = alloca i32, align 4
  %got = alloca i32, align 4
  %Data = alloca i8*, align 8
  %cp = alloca i32, align 4
  %ep = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %infile.addr, metadata !192, metadata !DIExpression()), !dbg !193
  store i32 %ReadMode, i32* %ReadMode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ReadMode.addr, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i32* %a, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata i32* %HaveCom, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 0, i32* %HaveCom, align 4, !dbg !199
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !200
  %call = call i32 @fgetc(%struct._IO_FILE* %0), !dbg !201
  store i32 %call, i32* %a, align 4, !dbg !202
  %1 = load i32, i32* %a, align 4, !dbg !203
  %cmp = icmp ne i32 %1, 255, !dbg !205
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !206

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !207
  %call1 = call i32 @fgetc(%struct._IO_FILE* %2), !dbg !208
  %cmp2 = icmp ne i32 %call1, 216, !dbg !209
  br i1 %cmp2, label %if.then, label %if.end, !dbg !210

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !211
  br label %return, !dbg !211

if.end:                                           ; preds = %lor.lhs.false
  store i16 300, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 3), align 4, !dbg !213
  store i16 300, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 2), align 2, !dbg !214
  store i8 1, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 1), align 1, !dbg !215
  br label %for.cond, !dbg !216

for.cond:                                         ; preds = %sw.epilog216, %if.end
  call void @llvm.dbg.declare(metadata i32* %itemlen, metadata !217, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %prev, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata i32* %marker, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 0, i32* %marker, align 4, !dbg !225
  call void @llvm.dbg.declare(metadata i32* %ll, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata i32* %lh, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %got, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i8** %Data, metadata !232, metadata !DIExpression()), !dbg !233
  call void @CheckSectionsAllocated(), !dbg !234
  store i32 0, i32* %prev, align 4, !dbg !235
  store i32 0, i32* %a, align 4, !dbg !236
  br label %for.cond3, !dbg !238

for.cond3:                                        ; preds = %for.inc, %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !239
  %call4 = call i32 @fgetc(%struct._IO_FILE* %3), !dbg !242
  store i32 %call4, i32* %marker, align 4, !dbg !243
  %4 = load i32, i32* %marker, align 4, !dbg !244
  %cmp5 = icmp ne i32 %4, 255, !dbg !246
  br i1 %cmp5, label %land.lhs.true, label %if.end8, !dbg !247

land.lhs.true:                                    ; preds = %for.cond3
  %5 = load i32, i32* %prev, align 4, !dbg !248
  %cmp6 = icmp eq i32 %5, 255, !dbg !249
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !250

if.then7:                                         ; preds = %land.lhs.true
  br label %for.end, !dbg !251

if.end8:                                          ; preds = %land.lhs.true, %for.cond3
  %6 = load i32, i32* %marker, align 4, !dbg !252
  %cmp9 = icmp eq i32 %6, -1, !dbg !254
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !255

if.then10:                                        ; preds = %if.end8
  call void @ErrFatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)), !dbg !256
  br label %if.end11, !dbg !258

if.end11:                                         ; preds = %if.then10, %if.end8
  %7 = load i32, i32* %marker, align 4, !dbg !259
  store i32 %7, i32* %prev, align 4, !dbg !260
  br label %for.inc, !dbg !261

for.inc:                                          ; preds = %if.end11
  %8 = load i32, i32* %a, align 4, !dbg !262
  %inc = add nsw i32 %8, 1, !dbg !262
  store i32 %inc, i32* %a, align 4, !dbg !262
  br label %for.cond3, !dbg !263, !llvm.loop !264

for.end:                                          ; preds = %if.then7
  %9 = load i32, i32* %a, align 4, !dbg !267
  %cmp12 = icmp sgt i32 %9, 10, !dbg !269
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !270

if.then13:                                        ; preds = %for.end
  %10 = load i32, i32* %a, align 4, !dbg !271
  %sub = sub nsw i32 %10, 1, !dbg !273
  %11 = load i32, i32* %marker, align 4, !dbg !274
  call void @ErrNonfatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %sub, i32 %11), !dbg !275
  br label %if.end14, !dbg !276

if.end14:                                         ; preds = %if.then13, %for.end
  %12 = load i32, i32* %marker, align 4, !dbg !277
  %13 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !278
  %14 = load i32, i32* @SectionsRead, align 4, !dbg !279
  %idxprom = sext i32 %14 to i64, !dbg !278
  %arrayidx = getelementptr inbounds %struct.Section_t, %struct.Section_t* %13, i64 %idxprom, !dbg !278
  %Type = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx, i32 0, i32 1, !dbg !280
  store i32 %12, i32* %Type, align 8, !dbg !281
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !282
  %call15 = call i32 @fgetc(%struct._IO_FILE* %15), !dbg !283
  store i32 %call15, i32* %lh, align 4, !dbg !284
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !285
  %call16 = call i32 @fgetc(%struct._IO_FILE* %16), !dbg !286
  store i32 %call16, i32* %ll, align 4, !dbg !287
  %17 = load i32, i32* %lh, align 4, !dbg !288
  %cmp17 = icmp eq i32 %17, -1, !dbg !290
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !291

lor.lhs.false18:                                  ; preds = %if.end14
  %18 = load i32, i32* %ll, align 4, !dbg !292
  %cmp19 = icmp eq i32 %18, -1, !dbg !293
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !294

if.then20:                                        ; preds = %lor.lhs.false18, %if.end14
  call void @ErrFatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)), !dbg !295
  br label %if.end21, !dbg !297

if.end21:                                         ; preds = %if.then20, %lor.lhs.false18
  %19 = load i32, i32* %lh, align 4, !dbg !298
  %shl = shl i32 %19, 8, !dbg !299
  %20 = load i32, i32* %ll, align 4, !dbg !300
  %or = or i32 %shl, %20, !dbg !301
  store i32 %or, i32* %itemlen, align 4, !dbg !302
  %21 = load i32, i32* %itemlen, align 4, !dbg !303
  %cmp22 = icmp slt i32 %21, 2, !dbg !305
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !306

if.then23:                                        ; preds = %if.end21
  call void @ErrFatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !307
  br label %if.end24, !dbg !309

if.end24:                                         ; preds = %if.then23, %if.end21
  %22 = load i32, i32* %itemlen, align 4, !dbg !310
  %23 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !311
  %24 = load i32, i32* @SectionsRead, align 4, !dbg !312
  %idxprom25 = sext i32 %24 to i64, !dbg !311
  %arrayidx26 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %23, i64 %idxprom25, !dbg !311
  %Size = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx26, i32 0, i32 2, !dbg !313
  store i32 %22, i32* %Size, align 4, !dbg !314
  %25 = load i32, i32* %itemlen, align 4, !dbg !315
  %conv = sext i32 %25 to i64, !dbg !315
  %call27 = call noalias i8* @malloc(i64 %conv) #7, !dbg !316
  store i8* %call27, i8** %Data, align 8, !dbg !317
  %26 = load i8*, i8** %Data, align 8, !dbg !318
  %cmp28 = icmp eq i8* %26, null, !dbg !320
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !321

if.then30:                                        ; preds = %if.end24
  call void @ErrFatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0)), !dbg !322
  br label %if.end31, !dbg !324

if.end31:                                         ; preds = %if.then30, %if.end24
  %27 = load i8*, i8** %Data, align 8, !dbg !325
  %28 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !326
  %29 = load i32, i32* @SectionsRead, align 4, !dbg !327
  %idxprom32 = sext i32 %29 to i64, !dbg !326
  %arrayidx33 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %28, i64 %idxprom32, !dbg !326
  %Data34 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx33, i32 0, i32 0, !dbg !328
  store i8* %27, i8** %Data34, align 8, !dbg !329
  %30 = load i32, i32* %lh, align 4, !dbg !330
  %conv35 = trunc i32 %30 to i8, !dbg !331
  %31 = load i8*, i8** %Data, align 8, !dbg !332
  %arrayidx36 = getelementptr inbounds i8, i8* %31, i64 0, !dbg !332
  store i8 %conv35, i8* %arrayidx36, align 1, !dbg !333
  %32 = load i32, i32* %ll, align 4, !dbg !334
  %conv37 = trunc i32 %32 to i8, !dbg !335
  %33 = load i8*, i8** %Data, align 8, !dbg !336
  %arrayidx38 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !336
  store i8 %conv37, i8* %arrayidx38, align 1, !dbg !337
  %34 = load i8*, i8** %Data, align 8, !dbg !338
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 2, !dbg !339
  %35 = load i32, i32* %itemlen, align 4, !dbg !340
  %sub39 = sub nsw i32 %35, 2, !dbg !341
  %conv40 = sext i32 %sub39 to i64, !dbg !340
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !342
  %call41 = call i64 @fread(i8* %add.ptr, i64 1, i64 %conv40, %struct._IO_FILE* %36), !dbg !343
  %conv42 = trunc i64 %call41 to i32, !dbg !343
  store i32 %conv42, i32* %got, align 4, !dbg !344
  %37 = load i32, i32* %got, align 4, !dbg !345
  %38 = load i32, i32* %itemlen, align 4, !dbg !347
  %sub43 = sub nsw i32 %38, 2, !dbg !348
  %cmp44 = icmp ne i32 %37, %sub43, !dbg !349
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !350

if.then46:                                        ; preds = %if.end31
  call void @ErrFatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)), !dbg !351
  br label %if.end47, !dbg !353

if.end47:                                         ; preds = %if.then46, %if.end31
  %39 = load i32, i32* @SectionsRead, align 4, !dbg !354
  %add = add nsw i32 %39, 1, !dbg !354
  store i32 %add, i32* @SectionsRead, align 4, !dbg !354
  %40 = load i32, i32* %marker, align 4, !dbg !355
  switch i32 %40, label %sw.default211 [
    i32 218, label %sw.bb
    i32 219, label %sw.bb81
    i32 196, label %sw.bb82
    i32 217, label %sw.bb83
    i32 254, label %sw.bb85
    i32 224, label %sw.bb96
    i32 225, label %sw.bb153
    i32 237, label %sw.bb191
    i32 192, label %sw.bb205
    i32 193, label %sw.bb205
    i32 194, label %sw.bb205
    i32 195, label %sw.bb205
    i32 197, label %sw.bb205
    i32 198, label %sw.bb205
    i32 199, label %sw.bb205
    i32 201, label %sw.bb205
    i32 202, label %sw.bb205
    i32 203, label %sw.bb205
    i32 205, label %sw.bb205
    i32 206, label %sw.bb205
    i32 207, label %sw.bb205
  ], !dbg !356

sw.bb:                                            ; preds = %if.end47
  %41 = load i32, i32* %ReadMode.addr, align 4, !dbg !357
  %and = and i32 %41, 2, !dbg !360
  %tobool = icmp ne i32 %and, 0, !dbg !360
  br i1 %tobool, label %if.then48, label %if.end80, !dbg !361

if.then48:                                        ; preds = %sw.bb
  call void @llvm.dbg.declare(metadata i32* %cp, metadata !362, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %ep, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %size, metadata !367, metadata !DIExpression()), !dbg !368
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !369
  %call49 = call i64 @ftell(%struct._IO_FILE* %42), !dbg !370
  %conv50 = trunc i64 %call49 to i32, !dbg !370
  store i32 %conv50, i32* %cp, align 4, !dbg !371
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !372
  %call51 = call i32 @fseek(%struct._IO_FILE* %43, i64 0, i32 2), !dbg !373
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !374
  %call52 = call i64 @ftell(%struct._IO_FILE* %44), !dbg !375
  %conv53 = trunc i64 %call52 to i32, !dbg !375
  store i32 %conv53, i32* %ep, align 4, !dbg !376
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !377
  %46 = load i32, i32* %cp, align 4, !dbg !378
  %conv54 = sext i32 %46 to i64, !dbg !378
  %call55 = call i32 @fseek(%struct._IO_FILE* %45, i64 %conv54, i32 0), !dbg !379
  %47 = load i32, i32* %ep, align 4, !dbg !380
  %48 = load i32, i32* %cp, align 4, !dbg !381
  %sub56 = sub nsw i32 %47, %48, !dbg !382
  store i32 %sub56, i32* %size, align 4, !dbg !383
  %49 = load i32, i32* %size, align 4, !dbg !384
  %conv57 = sext i32 %49 to i64, !dbg !384
  %call58 = call noalias i8* @malloc(i64 %conv57) #7, !dbg !385
  store i8* %call58, i8** %Data, align 8, !dbg !386
  %50 = load i8*, i8** %Data, align 8, !dbg !387
  %cmp59 = icmp eq i8* %50, null, !dbg !389
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !390

if.then61:                                        ; preds = %if.then48
  call void @ErrFatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0)), !dbg !391
  br label %if.end62, !dbg !393

if.end62:                                         ; preds = %if.then61, %if.then48
  %51 = load i8*, i8** %Data, align 8, !dbg !394
  %52 = load i32, i32* %size, align 4, !dbg !395
  %conv63 = sext i32 %52 to i64, !dbg !395
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !dbg !396
  %call64 = call i64 @fread(i8* %51, i64 1, i64 %conv63, %struct._IO_FILE* %53), !dbg !397
  %conv65 = trunc i64 %call64 to i32, !dbg !397
  store i32 %conv65, i32* %got, align 4, !dbg !398
  %54 = load i32, i32* %got, align 4, !dbg !399
  %55 = load i32, i32* %size, align 4, !dbg !401
  %cmp66 = icmp ne i32 %54, %55, !dbg !402
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !403

if.then68:                                        ; preds = %if.end62
  call void @ErrFatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)), !dbg !404
  br label %if.end69, !dbg !406

if.end69:                                         ; preds = %if.then68, %if.end62
  call void @CheckSectionsAllocated(), !dbg !407
  %56 = load i8*, i8** %Data, align 8, !dbg !408
  %57 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !409
  %58 = load i32, i32* @SectionsRead, align 4, !dbg !410
  %idxprom70 = sext i32 %58 to i64, !dbg !409
  %arrayidx71 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %57, i64 %idxprom70, !dbg !409
  %Data72 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx71, i32 0, i32 0, !dbg !411
  store i8* %56, i8** %Data72, align 8, !dbg !412
  %59 = load i32, i32* %size, align 4, !dbg !413
  %60 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !414
  %61 = load i32, i32* @SectionsRead, align 4, !dbg !415
  %idxprom73 = sext i32 %61 to i64, !dbg !414
  %arrayidx74 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %60, i64 %idxprom73, !dbg !414
  %Size75 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx74, i32 0, i32 2, !dbg !416
  store i32 %59, i32* %Size75, align 4, !dbg !417
  %62 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !418
  %63 = load i32, i32* @SectionsRead, align 4, !dbg !419
  %idxprom76 = sext i32 %63 to i64, !dbg !418
  %arrayidx77 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %62, i64 %idxprom76, !dbg !418
  %Type78 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx77, i32 0, i32 1, !dbg !420
  store i32 291, i32* %Type78, align 8, !dbg !421
  %64 = load i32, i32* @SectionsRead, align 4, !dbg !422
  %inc79 = add nsw i32 %64, 1, !dbg !422
  store i32 %inc79, i32* @SectionsRead, align 4, !dbg !422
  store i32 1, i32* @HaveAll, align 4, !dbg !423
  br label %if.end80, !dbg !424

if.end80:                                         ; preds = %if.end69, %sw.bb
  store i32 1, i32* %retval, align 4, !dbg !425
  br label %return, !dbg !425

sw.bb81:                                          ; preds = %if.end47
  %65 = load i8*, i8** %Data, align 8, !dbg !426
  %66 = load i32, i32* %itemlen, align 4, !dbg !427
  call void @process_DQT(i8* %65, i32 %66), !dbg !428
  br label %sw.epilog216, !dbg !429

sw.bb82:                                          ; preds = %if.end47
  %67 = load i8*, i8** %Data, align 8, !dbg !430
  %68 = load i32, i32* %itemlen, align 4, !dbg !431
  call void @process_DHT(i8* %67, i32 %68), !dbg !432
  br label %sw.epilog216, !dbg !433

sw.bb83:                                          ; preds = %if.end47
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !434
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)), !dbg !435
  store i32 0, i32* %retval, align 4, !dbg !436
  br label %return, !dbg !436

sw.bb85:                                          ; preds = %if.end47
  %70 = load i32, i32* %HaveCom, align 4, !dbg !437
  %tobool86 = icmp ne i32 %70, 0, !dbg !437
  br i1 %tobool86, label %if.then91, label %lor.lhs.false87, !dbg !439

lor.lhs.false87:                                  ; preds = %sw.bb85
  %71 = load i32, i32* %ReadMode.addr, align 4, !dbg !440
  %and88 = and i32 %71, 1, !dbg !441
  %cmp89 = icmp eq i32 %and88, 0, !dbg !442
  br i1 %cmp89, label %if.then91, label %if.else, !dbg !443

if.then91:                                        ; preds = %lor.lhs.false87, %sw.bb85
  %72 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !444
  %73 = load i32, i32* @SectionsRead, align 4, !dbg !446
  %dec = add nsw i32 %73, -1, !dbg !446
  store i32 %dec, i32* @SectionsRead, align 4, !dbg !446
  %idxprom92 = sext i32 %dec to i64, !dbg !444
  %arrayidx93 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %72, i64 %idxprom92, !dbg !444
  %Data94 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx93, i32 0, i32 0, !dbg !447
  %74 = load i8*, i8** %Data94, align 8, !dbg !447
  call void @free(i8* %74) #7, !dbg !448
  br label %if.end95, !dbg !449

if.else:                                          ; preds = %lor.lhs.false87
  %75 = load i8*, i8** %Data, align 8, !dbg !450
  %76 = load i32, i32* %itemlen, align 4, !dbg !452
  call void @process_COM(i8* %75, i32 %76), !dbg !453
  store i32 1, i32* %HaveCom, align 4, !dbg !454
  br label %if.end95

if.end95:                                         ; preds = %if.else, %if.then91
  br label %sw.epilog216, !dbg !455

sw.bb96:                                          ; preds = %if.end47
  %77 = load i32, i32* %itemlen, align 4, !dbg !456
  %cmp97 = icmp slt i32 %77, 16, !dbg !458
  br i1 %cmp97, label %if.then99, label %if.end101, !dbg !459

if.then99:                                        ; preds = %sw.bb96
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !460
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)), !dbg !462
  br label %ignore, !dbg !463

if.end101:                                        ; preds = %sw.bb96
  %79 = load i8*, i8** %Data, align 8, !dbg !464
  %add.ptr102 = getelementptr inbounds i8, i8* %79, i64 2, !dbg !466
  %call103 = call i32 @memcmp(i8* %add.ptr102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 5) #8, !dbg !467
  %tobool104 = icmp ne i32 %call103, 0, !dbg !467
  br i1 %tobool104, label %if.then105, label %if.end107, !dbg !468

if.then105:                                       ; preds = %if.end101
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !469
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)), !dbg !471
  br label %if.end107, !dbg !472

if.end107:                                        ; preds = %if.then105, %if.end101
  store i8 1, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 0), align 8, !dbg !473
  %81 = load i8*, i8** %Data, align 8, !dbg !474
  %arrayidx108 = getelementptr inbounds i8, i8* %81, i64 9, !dbg !474
  %82 = load i8, i8* %arrayidx108, align 1, !dbg !474
  store i8 %82, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 1), align 1, !dbg !475
  %83 = load i8*, i8** %Data, align 8, !dbg !476
  %arrayidx109 = getelementptr inbounds i8, i8* %83, i64 10, !dbg !476
  %84 = load i8, i8* %arrayidx109, align 1, !dbg !476
  %conv110 = zext i8 %84 to i32, !dbg !476
  %shl111 = shl i32 %conv110, 8, !dbg !477
  %85 = load i8*, i8** %Data, align 8, !dbg !478
  %arrayidx112 = getelementptr inbounds i8, i8* %85, i64 11, !dbg !478
  %86 = load i8, i8* %arrayidx112, align 1, !dbg !478
  %conv113 = zext i8 %86 to i32, !dbg !478
  %or114 = or i32 %shl111, %conv113, !dbg !479
  %conv115 = trunc i32 %or114 to i16, !dbg !480
  store i16 %conv115, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 2), align 2, !dbg !481
  %87 = load i8*, i8** %Data, align 8, !dbg !482
  %arrayidx116 = getelementptr inbounds i8, i8* %87, i64 12, !dbg !482
  %88 = load i8, i8* %arrayidx116, align 1, !dbg !482
  %conv117 = zext i8 %88 to i32, !dbg !482
  %shl118 = shl i32 %conv117, 8, !dbg !483
  %89 = load i8*, i8** %Data, align 8, !dbg !484
  %arrayidx119 = getelementptr inbounds i8, i8* %89, i64 13, !dbg !484
  %90 = load i8, i8* %arrayidx119, align 1, !dbg !484
  %conv120 = zext i8 %90 to i32, !dbg !484
  %or121 = or i32 %shl118, %conv120, !dbg !485
  %conv122 = trunc i32 %or121 to i16, !dbg !486
  store i16 %conv122, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 3), align 4, !dbg !487
  %91 = load i32, i32* @ShowTags, align 4, !dbg !488
  %tobool123 = icmp ne i32 %91, 0, !dbg !488
  br i1 %tobool123, label %if.then124, label %if.end148, !dbg !490

if.then124:                                       ; preds = %if.end107
  %92 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 1), align 1, !dbg !491
  %conv125 = sext i8 %92 to i32, !dbg !493
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %conv125), !dbg !494
  %93 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 1), align 1, !dbg !495
  %conv127 = sext i8 %93 to i32, !dbg !496
  switch i32 %conv127, label %sw.default [
    i32 0, label %sw.bb128
    i32 1, label %sw.bb130
    i32 2, label %sw.bb132
  ], !dbg !497

sw.bb128:                                         ; preds = %if.then124
  %call129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)), !dbg !498
  br label %sw.epilog, !dbg !500

sw.bb130:                                         ; preds = %if.then124
  %call131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)), !dbg !501
  br label %sw.epilog, !dbg !502

sw.bb132:                                         ; preds = %if.then124
  %call133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0)), !dbg !503
  br label %sw.epilog, !dbg !504

sw.default:                                       ; preds = %if.then124
  %call134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)), !dbg !505
  br label %sw.epilog, !dbg !506

sw.epilog:                                        ; preds = %sw.default, %sw.bb132, %sw.bb130, %sw.bb128
  %94 = load i16, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 2), align 2, !dbg !507
  %conv135 = sext i16 %94 to i32, !dbg !508
  %95 = load i16, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 3), align 4, !dbg !509
  %conv136 = sext i16 %95 to i32, !dbg !510
  %call137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %conv135, i32 %conv136), !dbg !511
  %96 = load i8*, i8** %Data, align 8, !dbg !512
  %arrayidx138 = getelementptr inbounds i8, i8* %96, i64 14, !dbg !512
  %97 = load i8, i8* %arrayidx138, align 1, !dbg !512
  %conv139 = zext i8 %97 to i32, !dbg !512
  %tobool140 = icmp ne i32 %conv139, 0, !dbg !512
  br i1 %tobool140, label %if.then145, label %lor.lhs.false141, !dbg !514

lor.lhs.false141:                                 ; preds = %sw.epilog
  %98 = load i8*, i8** %Data, align 8, !dbg !515
  %arrayidx142 = getelementptr inbounds i8, i8* %98, i64 15, !dbg !515
  %99 = load i8, i8* %arrayidx142, align 1, !dbg !515
  %conv143 = zext i8 %99 to i32, !dbg !515
  %tobool144 = icmp ne i32 %conv143, 0, !dbg !515
  br i1 %tobool144, label %if.then145, label %if.end147, !dbg !516

if.then145:                                       ; preds = %lor.lhs.false141, %sw.epilog
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !517
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0)), !dbg !519
  br label %if.end147, !dbg !520

if.end147:                                        ; preds = %if.then145, %lor.lhs.false141
  br label %if.end148, !dbg !521

if.end148:                                        ; preds = %if.end147, %if.end107
  br label %ignore, !dbg !488

ignore:                                           ; preds = %if.end148, %if.then99
  call void @llvm.dbg.label(metadata !522), !dbg !523
  %101 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !524
  %102 = load i32, i32* @SectionsRead, align 4, !dbg !525
  %dec149 = add nsw i32 %102, -1, !dbg !525
  store i32 %dec149, i32* @SectionsRead, align 4, !dbg !525
  %idxprom150 = sext i32 %dec149 to i64, !dbg !524
  %arrayidx151 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %101, i64 %idxprom150, !dbg !524
  %Data152 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx151, i32 0, i32 0, !dbg !526
  %103 = load i8*, i8** %Data152, align 8, !dbg !526
  call void @free(i8* %103) #7, !dbg !527
  br label %sw.epilog216, !dbg !528

sw.bb153:                                         ; preds = %if.end47
  %104 = load i32, i32* %ReadMode.addr, align 4, !dbg !529
  %and154 = and i32 %104, 1, !dbg !531
  %tobool155 = icmp ne i32 %and154, 0, !dbg !531
  br i1 %tobool155, label %if.then156, label %if.end186, !dbg !532

if.then156:                                       ; preds = %sw.bb153
  %105 = load i8*, i8** %Data, align 8, !dbg !533
  %call157 = call i64 @strlen(i8* %105) #8, !dbg !535
  %call158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 %call157), !dbg !536
  %106 = load i8*, i8** %Data, align 8, !dbg !537
  %add.ptr159 = getelementptr inbounds i8, i8* %106, i64 2, !dbg !539
  %call160 = call i32 @memcmp(i8* %add.ptr159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 4) #8, !dbg !540
  %cmp161 = icmp eq i32 %call160, 0, !dbg !541
  br i1 %cmp161, label %if.then163, label %if.else164, !dbg !542

if.then163:                                       ; preds = %if.then156
  %107 = load i8*, i8** %Data, align 8, !dbg !543
  %108 = load i32, i32* %itemlen, align 4, !dbg !545
  call void @process_EXIF(i8* %107, i32 %108), !dbg !546
  br label %sw.epilog216, !dbg !547

if.else164:                                       ; preds = %if.then156
  %109 = load i8*, i8** %Data, align 8, !dbg !548
  %add.ptr165 = getelementptr inbounds i8, i8* %109, i64 2, !dbg !550
  %call166 = call i32 @memcmp(i8* %add.ptr165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i64 5) #8, !dbg !551
  %cmp167 = icmp eq i32 %call166, 0, !dbg !552
  br i1 %cmp167, label %if.then169, label %if.end184, !dbg !553

if.then169:                                       ; preds = %if.else164
  %110 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !554
  %111 = load i32, i32* @SectionsRead, align 4, !dbg !556
  %sub170 = sub nsw i32 %111, 1, !dbg !557
  %idxprom171 = sext i32 %sub170 to i64, !dbg !554
  %arrayidx172 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %110, i64 %idxprom171, !dbg !554
  %Type173 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx172, i32 0, i32 1, !dbg !558
  store i32 4321, i32* %Type173, align 8, !dbg !559
  %112 = load i32, i32* @ShowTags, align 4, !dbg !560
  %tobool174 = icmp ne i32 %112, 0, !dbg !560
  br i1 %tobool174, label %if.then175, label %if.end183, !dbg !562

if.then175:                                       ; preds = %if.then169
  %113 = load i32, i32* %itemlen, align 4, !dbg !563
  %call176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i32 %113), !dbg !565
  %114 = load i32, i32* @ShowTags, align 4, !dbg !566
  %tobool177 = icmp ne i32 %114, 0, !dbg !566
  br i1 %tobool177, label %if.then178, label %if.end182, !dbg !568

if.then178:                                       ; preds = %if.then175
  %115 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !569
  %116 = load i32, i32* @SectionsRead, align 4, !dbg !571
  %sub179 = sub nsw i32 %116, 1, !dbg !572
  %idxprom180 = sext i32 %sub179 to i64, !dbg !569
  %arrayidx181 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %115, i64 %idxprom180, !dbg !569
  %117 = bitcast %struct.Section_t* %arrayidx181 to { i8*, i64 }*, !dbg !573
  %118 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %117, i32 0, i32 0, !dbg !573
  %119 = load i8*, i8** %118, align 8, !dbg !573
  %120 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %117, i32 0, i32 1, !dbg !573
  %121 = load i64, i64* %120, align 8, !dbg !573
  call void @ShowXmp(i8* %119, i64 %121), !dbg !573
  br label %if.end182, !dbg !574

if.end182:                                        ; preds = %if.then178, %if.then175
  br label %if.end183, !dbg !575

if.end183:                                        ; preds = %if.end182, %if.then169
  br label %sw.epilog216, !dbg !576

if.end184:                                        ; preds = %if.else164
  br label %if.end185

if.end185:                                        ; preds = %if.end184
  br label %if.end186, !dbg !577

if.end186:                                        ; preds = %if.end185, %sw.bb153
  %122 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !578
  %123 = load i32, i32* @SectionsRead, align 4, !dbg !579
  %dec187 = add nsw i32 %123, -1, !dbg !579
  store i32 %dec187, i32* @SectionsRead, align 4, !dbg !579
  %idxprom188 = sext i32 %dec187 to i64, !dbg !578
  %arrayidx189 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %122, i64 %idxprom188, !dbg !578
  %Data190 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx189, i32 0, i32 0, !dbg !580
  %124 = load i8*, i8** %Data190, align 8, !dbg !580
  call void @free(i8* %124) #7, !dbg !581
  br label %sw.epilog216, !dbg !582

sw.bb191:                                         ; preds = %if.end47
  %125 = load i32, i32* %ReadMode.addr, align 4, !dbg !583
  %and192 = and i32 %125, 1, !dbg !585
  %tobool193 = icmp ne i32 %and192, 0, !dbg !585
  br i1 %tobool193, label %if.then194, label %if.else199, !dbg !586

if.then194:                                       ; preds = %sw.bb191
  %126 = load i32, i32* @ShowTags, align 4, !dbg !587
  %tobool195 = icmp ne i32 %126, 0, !dbg !587
  br i1 %tobool195, label %if.then196, label %if.end198, !dbg !590

if.then196:                                       ; preds = %if.then194
  %127 = load i32, i32* %itemlen, align 4, !dbg !591
  %call197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0), i32 %127), !dbg !593
  br label %if.end198, !dbg !594

if.end198:                                        ; preds = %if.then196, %if.then194
  br label %if.end204, !dbg !595

if.else199:                                       ; preds = %sw.bb191
  %128 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !596
  %129 = load i32, i32* @SectionsRead, align 4, !dbg !598
  %dec200 = add nsw i32 %129, -1, !dbg !598
  store i32 %dec200, i32* @SectionsRead, align 4, !dbg !598
  %idxprom201 = sext i32 %dec200 to i64, !dbg !596
  %arrayidx202 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %128, i64 %idxprom201, !dbg !596
  %Data203 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx202, i32 0, i32 0, !dbg !599
  %130 = load i8*, i8** %Data203, align 8, !dbg !599
  call void @free(i8* %130) #7, !dbg !600
  br label %if.end204

if.end204:                                        ; preds = %if.else199, %if.end198
  br label %sw.epilog216, !dbg !601

sw.bb205:                                         ; preds = %if.end47, %if.end47, %if.end47, %if.end47, %if.end47, %if.end47, %if.end47, %if.end47, %if.end47, %if.end47, %if.end47, %if.end47, %if.end47
  %131 = load i32, i32* %itemlen, align 4, !dbg !602
  %cmp206 = icmp slt i32 %131, 8, !dbg !604
  br i1 %cmp206, label %if.then208, label %if.end210, !dbg !605

if.then208:                                       ; preds = %sw.bb205
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !606
  %call209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0)), !dbg !608
  br label %sw.epilog216, !dbg !609

if.end210:                                        ; preds = %sw.bb205
  %133 = load i8*, i8** %Data, align 8, !dbg !610
  %134 = load i32, i32* %marker, align 4, !dbg !611
  call void @process_SOFn(i8* %133, i32 %134), !dbg !612
  br label %sw.epilog216, !dbg !613

sw.default211:                                    ; preds = %if.end47
  %135 = load i32, i32* @ShowTags, align 4, !dbg !614
  %tobool212 = icmp ne i32 %135, 0, !dbg !614
  br i1 %tobool212, label %if.then213, label %if.end215, !dbg !616

if.then213:                                       ; preds = %sw.default211
  %136 = load i32, i32* %marker, align 4, !dbg !617
  %137 = load i32, i32* %itemlen, align 4, !dbg !619
  %call214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i32 %136, i32 %137), !dbg !620
  br label %if.end215, !dbg !621

if.end215:                                        ; preds = %if.then213, %sw.default211
  br label %sw.epilog216, !dbg !622

sw.epilog216:                                     ; preds = %if.end215, %if.end210, %if.then208, %if.end204, %if.end186, %if.end183, %if.then163, %ignore, %if.end95, %sw.bb82, %sw.bb81
  br label %for.cond, !dbg !623, !llvm.loop !624

return:                                           ; preds = %sw.bb83, %if.end80, %if.then
  %138 = load i32, i32* %retval, align 4, !dbg !627
  ret i32 %138, !dbg !627
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fgetc(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @CheckSectionsAllocated() #0 !dbg !628 {
entry:
  %0 = load i32, i32* @SectionsRead, align 4, !dbg !631
  %1 = load i32, i32* @SectionsAllocated, align 4, !dbg !633
  %cmp = icmp sgt i32 %0, %1, !dbg !634
  br i1 %cmp, label %if.then, label %if.end, !dbg !635

if.then:                                          ; preds = %entry
  call void @ErrFatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0)), !dbg !636
  br label %if.end, !dbg !638

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @SectionsRead, align 4, !dbg !639
  %3 = load i32, i32* @SectionsAllocated, align 4, !dbg !641
  %cmp1 = icmp sge i32 %2, %3, !dbg !642
  br i1 %cmp1, label %if.then2, label %if.end7, !dbg !643

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* @SectionsAllocated, align 4, !dbg !644
  %div = sdiv i32 %4, 2, !dbg !646
  %5 = load i32, i32* @SectionsAllocated, align 4, !dbg !647
  %add = add nsw i32 %5, %div, !dbg !647
  store i32 %add, i32* @SectionsAllocated, align 4, !dbg !647
  %6 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !648
  %7 = bitcast %struct.Section_t* %6 to i8*, !dbg !648
  %8 = load i32, i32* @SectionsAllocated, align 4, !dbg !649
  %conv = sext i32 %8 to i64, !dbg !649
  %mul = mul i64 16, %conv, !dbg !650
  %call = call i8* @realloc(i8* %7, i64 %mul) #7, !dbg !651
  %9 = bitcast i8* %call to %struct.Section_t*, !dbg !652
  store %struct.Section_t* %9, %struct.Section_t** @Sections, align 8, !dbg !653
  %10 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !654
  %cmp3 = icmp eq %struct.Section_t* %10, null, !dbg !656
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !657

if.then5:                                         ; preds = %if.then2
  call void @ErrFatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0)), !dbg !658
  br label %if.end6, !dbg !660

if.end6:                                          ; preds = %if.then5, %if.then2
  br label %if.end7, !dbg !661

if.end7:                                          ; preds = %if.end6, %if.end
  ret void, !dbg !662
}

declare dso_local void @ErrFatal(i8*) #2

declare dso_local void @ErrNonfatal(i8*, i32, i32) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i64 @ftell(%struct._IO_FILE*) #2

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare dso_local void @process_DQT(i8*, i32) #2

declare dso_local void @process_DHT(i8*, i32) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @process_COM(i8* %Data, i32 %length) #0 !dbg !663 {
entry:
  %Data.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %Comment = alloca [16001 x i8], align 16
  %nch = alloca i32, align 4
  %a = alloca i32, align 4
  store i8* %Data, i8** %Data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Data.addr, metadata !668, metadata !DIExpression()), !dbg !669
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.declare(metadata i32* %ch, metadata !672, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.declare(metadata [16001 x i8]* %Comment, metadata !674, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.declare(metadata i32* %nch, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.declare(metadata i32* %a, metadata !681, metadata !DIExpression()), !dbg !682
  store i32 0, i32* %nch, align 4, !dbg !683
  %0 = load i32, i32* %length.addr, align 4, !dbg !684
  %cmp = icmp sgt i32 %0, 16000, !dbg !686
  br i1 %cmp, label %if.then, label %if.end, !dbg !687

if.then:                                          ; preds = %entry
  store i32 16000, i32* %length.addr, align 4, !dbg !688
  br label %if.end, !dbg !689

if.end:                                           ; preds = %if.then, %entry
  store i32 2, i32* %a, align 4, !dbg !690
  br label %for.cond, !dbg !692

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %a, align 4, !dbg !693
  %2 = load i32, i32* %length.addr, align 4, !dbg !695
  %cmp1 = icmp slt i32 %1, %2, !dbg !696
  br i1 %cmp1, label %for.body, label %for.end, !dbg !697

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %Data.addr, align 8, !dbg !698
  %4 = load i32, i32* %a, align 4, !dbg !700
  %idxprom = sext i32 %4 to i64, !dbg !698
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom, !dbg !698
  %5 = load i8, i8* %arrayidx, align 1, !dbg !698
  %conv = zext i8 %5 to i32, !dbg !698
  store i32 %conv, i32* %ch, align 4, !dbg !701
  %6 = load i32, i32* %ch, align 4, !dbg !702
  %cmp2 = icmp eq i32 %6, 13, !dbg !704
  br i1 %cmp2, label %land.lhs.true, label %if.end10, !dbg !705

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8*, i8** %Data.addr, align 8, !dbg !706
  %8 = load i32, i32* %a, align 4, !dbg !707
  %add = add nsw i32 %8, 1, !dbg !708
  %idxprom4 = sext i32 %add to i64, !dbg !706
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom4, !dbg !706
  %9 = load i8, i8* %arrayidx5, align 1, !dbg !706
  %conv6 = zext i8 %9 to i32, !dbg !706
  %cmp7 = icmp eq i32 %conv6, 10, !dbg !709
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !710

if.then9:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !711

if.end10:                                         ; preds = %land.lhs.true, %for.body
  %10 = load i32, i32* %ch, align 4, !dbg !712
  %cmp11 = icmp sge i32 %10, 32, !dbg !714
  br i1 %cmp11, label %if.then18, label %lor.lhs.false, !dbg !715

lor.lhs.false:                                    ; preds = %if.end10
  %11 = load i32, i32* %ch, align 4, !dbg !716
  %cmp13 = icmp eq i32 %11, 10, !dbg !717
  br i1 %cmp13, label %if.then18, label %lor.lhs.false15, !dbg !718

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* %ch, align 4, !dbg !719
  %cmp16 = icmp eq i32 %12, 9, !dbg !720
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !721

if.then18:                                        ; preds = %lor.lhs.false15, %lor.lhs.false, %if.end10
  %13 = load i32, i32* %ch, align 4, !dbg !722
  %conv19 = trunc i32 %13 to i8, !dbg !724
  %14 = load i32, i32* %nch, align 4, !dbg !725
  %inc = add nsw i32 %14, 1, !dbg !725
  store i32 %inc, i32* %nch, align 4, !dbg !725
  %idxprom20 = sext i32 %14 to i64, !dbg !726
  %arrayidx21 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 %idxprom20, !dbg !726
  store i8 %conv19, i8* %arrayidx21, align 1, !dbg !727
  br label %if.end25, !dbg !728

if.else:                                          ; preds = %lor.lhs.false15
  %15 = load i32, i32* %nch, align 4, !dbg !729
  %inc22 = add nsw i32 %15, 1, !dbg !729
  store i32 %inc22, i32* %nch, align 4, !dbg !729
  %idxprom23 = sext i32 %15 to i64, !dbg !731
  %arrayidx24 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 %idxprom23, !dbg !731
  store i8 63, i8* %arrayidx24, align 1, !dbg !732
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then18
  br label %for.inc, !dbg !733

for.inc:                                          ; preds = %if.end25, %if.then9
  %16 = load i32, i32* %a, align 4, !dbg !734
  %inc26 = add nsw i32 %16, 1, !dbg !734
  store i32 %inc26, i32* %a, align 4, !dbg !734
  br label %for.cond, !dbg !735, !llvm.loop !736

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %nch, align 4, !dbg !739
  %idxprom27 = sext i32 %17 to i64, !dbg !740
  %arrayidx28 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 %idxprom27, !dbg !740
  store i8 0, i8* %arrayidx28, align 1, !dbg !741
  %18 = load i32, i32* @ShowTags, align 4, !dbg !742
  %tobool = icmp ne i32 %18, 0, !dbg !742
  br i1 %tobool, label %if.then29, label %if.end30, !dbg !744

if.then29:                                        ; preds = %for.end
  %arraydecay = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 0, !dbg !745
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i8* %arraydecay), !dbg !747
  br label %if.end30, !dbg !748

if.end30:                                         ; preds = %if.then29, %for.end
  %arraydecay31 = getelementptr inbounds [16001 x i8], [16001 x i8]* %Comment, i64 0, i64 0, !dbg !749
  %call32 = call i8* @strcpy(i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 31, i64 0), i8* %arraydecay31) #7, !dbg !750
  store i32 0, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 32), align 8, !dbg !751
  ret void, !dbg !752
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #4

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local void @process_EXIF(i8*, i32) #2

declare dso_local void @ShowXmp(i8*, i64) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @process_SOFn(i8* %Data, i32 %marker) #0 !dbg !753 {
entry:
  %Data.addr = alloca i8*, align 8
  %marker.addr = alloca i32, align 4
  %data_precision = alloca i32, align 4
  %num_components = alloca i32, align 4
  store i8* %Data, i8** %Data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Data.addr, metadata !754, metadata !DIExpression()), !dbg !755
  store i32 %marker, i32* %marker.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %marker.addr, metadata !756, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.declare(metadata i32* %data_precision, metadata !758, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.declare(metadata i32* %num_components, metadata !760, metadata !DIExpression()), !dbg !761
  %0 = load i8*, i8** %Data.addr, align 8, !dbg !762
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 2, !dbg !762
  %1 = load i8, i8* %arrayidx, align 1, !dbg !762
  %conv = zext i8 %1 to i32, !dbg !762
  store i32 %conv, i32* %data_precision, align 4, !dbg !763
  %2 = load i8*, i8** %Data.addr, align 8, !dbg !764
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 3, !dbg !765
  %call = call i32 @Get16m(i8* %add.ptr), !dbg !766
  store i32 %call, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 7), align 8, !dbg !767
  %3 = load i8*, i8** %Data.addr, align 8, !dbg !768
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 5, !dbg !769
  %call2 = call i32 @Get16m(i8* %add.ptr1), !dbg !770
  store i32 %call2, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 8), align 4, !dbg !771
  %4 = load i8*, i8** %Data.addr, align 8, !dbg !772
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 7, !dbg !772
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !772
  %conv4 = zext i8 %5 to i32, !dbg !772
  store i32 %conv4, i32* %num_components, align 4, !dbg !773
  %6 = load i32, i32* %num_components, align 4, !dbg !774
  %cmp = icmp eq i32 %6, 3, !dbg !776
  br i1 %cmp, label %if.then, label %if.else, !dbg !777

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 10), align 4, !dbg !778
  br label %if.end, !dbg !780

if.else:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 10), align 4, !dbg !781
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %marker.addr, align 4, !dbg !783
  store i32 %7, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 11), align 8, !dbg !784
  %8 = load i32, i32* @ShowTags, align 4, !dbg !785
  %tobool = icmp ne i32 %8, 0, !dbg !785
  br i1 %tobool, label %if.then6, label %if.end8, !dbg !787

if.then6:                                         ; preds = %if.end
  %9 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 8), align 4, !dbg !788
  %10 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 7), align 8, !dbg !790
  %11 = load i32, i32* %num_components, align 4, !dbg !791
  %12 = load i32, i32* %data_precision, align 4, !dbg !792
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.40, i64 0, i64 0), i32 %9, i32 %10, i32 %11, i32 %12), !dbg !793
  br label %if.end8, !dbg !794

if.end8:                                          ; preds = %if.then6, %if.end
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @DiscardData() #0 !dbg !796 {
entry:
  %a = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !797, metadata !DIExpression()), !dbg !798
  store i32 0, i32* %a, align 4, !dbg !799
  br label %for.cond, !dbg !801

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %a, align 4, !dbg !802
  %1 = load i32, i32* @SectionsRead, align 4, !dbg !804
  %cmp = icmp slt i32 %0, %1, !dbg !805
  br i1 %cmp, label %for.body, label %for.end, !dbg !806

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !807
  %3 = load i32, i32* %a, align 4, !dbg !809
  %idxprom = sext i32 %3 to i64, !dbg !807
  %arrayidx = getelementptr inbounds %struct.Section_t, %struct.Section_t* %2, i64 %idxprom, !dbg !807
  %Data = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx, i32 0, i32 0, !dbg !810
  %4 = load i8*, i8** %Data, align 8, !dbg !810
  call void @free(i8* %4) #7, !dbg !811
  br label %for.inc, !dbg !812

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %a, align 4, !dbg !813
  %inc = add nsw i32 %5, 1, !dbg !813
  store i32 %inc, i32* %a, align 4, !dbg !813
  br label %for.cond, !dbg !814, !llvm.loop !815

for.end:                                          ; preds = %for.cond
  call void @llvm.memset.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 0, i32 0), i8 0, i64 20472, i1 false), !dbg !817
  store i32 0, i32* @SectionsRead, align 4, !dbg !818
  store i32 0, i32* @HaveAll, align 4, !dbg !819
  ret void, !dbg !820
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @ReadJpegFile(i8* %FileName, i32 %ReadMode) #0 !dbg !821 {
entry:
  %retval = alloca i32, align 4
  %FileName.addr = alloca i8*, align 8
  %ReadMode.addr = alloca i32, align 4
  %infile = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  store i8* %FileName, i8** %FileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %FileName.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i32 %ReadMode, i32* %ReadMode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ReadMode.addr, metadata !826, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %infile, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !830, metadata !DIExpression()), !dbg !831
  %0 = load i8*, i8** %FileName.addr, align 8, !dbg !832
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)), !dbg !833
  store %struct._IO_FILE* %call, %struct._IO_FILE** %infile, align 8, !dbg !834
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8, !dbg !835
  %cmp = icmp eq %struct._IO_FILE* %1, null, !dbg !837
  br i1 %cmp, label %if.then, label %if.end, !dbg !838

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !839
  %3 = load i8*, i8** %FileName.addr, align 8, !dbg !841
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* %3), !dbg !842
  store i32 0, i32* %retval, align 4, !dbg !843
  br label %return, !dbg !843

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8, !dbg !844
  %5 = load i32, i32* %ReadMode.addr, align 4, !dbg !845
  %call2 = call i32 @ReadJpegSections(%struct._IO_FILE* %4, i32 %5), !dbg !846
  store i32 %call2, i32* %ret, align 4, !dbg !847
  %6 = load i32, i32* %ret, align 4, !dbg !848
  %tobool = icmp ne i32 %6, 0, !dbg !848
  br i1 %tobool, label %if.end8, label %if.then3, !dbg !850

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %ReadMode.addr, align 4, !dbg !851
  %cmp4 = icmp eq i32 %7, 5, !dbg !854
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !855

if.then5:                                         ; preds = %if.then3
  store i32 1, i32* %ret, align 4, !dbg !856
  br label %if.end7, !dbg !858

if.else:                                          ; preds = %if.then3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !859
  %9 = load i8*, i8** %FileName.addr, align 8, !dbg !861
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %9), !dbg !862
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  br label %if.end8, !dbg !863

if.end8:                                          ; preds = %if.end7, %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8, !dbg !864
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !865
  %11 = load i32, i32* %ret, align 4, !dbg !866
  %cmp10 = icmp eq i32 %11, 0, !dbg !868
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !869

if.then11:                                        ; preds = %if.end8
  call void @DiscardData(), !dbg !870
  br label %if.end12, !dbg !872

if.end12:                                         ; preds = %if.then11, %if.end8
  %12 = load i32, i32* %ret, align 4, !dbg !873
  store i32 %12, i32* %retval, align 4, !dbg !874
  br label %return, !dbg !874

return:                                           ; preds = %if.end12, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !875
  ret i32 %13, !dbg !875
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @SaveThumbnail(i8* %ThumbFileName) #0 !dbg !876 {
entry:
  %retval = alloca i32, align 4
  %ThumbFileName.addr = alloca i8*, align 8
  %ThumbnailFile = alloca %struct._IO_FILE*, align 8
  %ThumbnailPointer = alloca i8*, align 8
  %ExifSection = alloca %struct.Section_t*, align 8
  store i8* %ThumbFileName, i8** %ThumbFileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ThumbFileName.addr, metadata !879, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %ThumbnailFile, metadata !881, metadata !DIExpression()), !dbg !882
  %0 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !883
  %cmp = icmp eq i32 %0, 0, !dbg !885
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !886

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 34), align 8, !dbg !887
  %cmp1 = icmp eq i32 %1, 0, !dbg !888
  br i1 %cmp1, label %if.then, label %if.end, !dbg !889

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !890
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0)), !dbg !892
  store i32 0, i32* %retval, align 4, !dbg !893
  br label %return, !dbg !893

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %ThumbFileName.addr, align 8, !dbg !894
  %call2 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !896
  %cmp3 = icmp eq i32 %call2, 0, !dbg !897
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !898

if.then4:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !899
  store %struct._IO_FILE* %4, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !901
  br label %if.end6, !dbg !902

if.else:                                          ; preds = %if.end
  %5 = load i8*, i8** %ThumbFileName.addr, align 8, !dbg !903
  %call5 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)), !dbg !905
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !906
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !907
  %tobool = icmp ne %struct._IO_FILE* %6, null, !dbg !907
  br i1 %tobool, label %if.then7, label %if.else12, !dbg !909

if.then7:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %ThumbnailPointer, metadata !910, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.declare(metadata %struct.Section_t** %ExifSection, metadata !913, metadata !DIExpression()), !dbg !914
  %call8 = call %struct.Section_t* @FindSection(i32 225), !dbg !915
  store %struct.Section_t* %call8, %struct.Section_t** %ExifSection, align 8, !dbg !916
  %7 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !917
  %Data = getelementptr inbounds %struct.Section_t, %struct.Section_t* %7, i32 0, i32 0, !dbg !918
  %8 = load i8*, i8** %Data, align 8, !dbg !918
  %9 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !919
  %idx.ext = sext i32 %9 to i64, !dbg !920
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext, !dbg !920
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr, i64 8, !dbg !921
  store i8* %add.ptr9, i8** %ThumbnailPointer, align 8, !dbg !922
  %10 = load i8*, i8** %ThumbnailPointer, align 8, !dbg !923
  %11 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 34), align 8, !dbg !924
  %conv = sext i32 %11 to i64, !dbg !925
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !926
  %call10 = call i64 @fwrite(i8* %10, i64 %conv, i64 1, %struct._IO_FILE* %12), !dbg !927
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !928
  %call11 = call i32 @fclose(%struct._IO_FILE* %13), !dbg !929
  store i32 1, i32* %retval, align 4, !dbg !930
  br label %return, !dbg !930

if.else12:                                        ; preds = %if.end6
  call void @ErrFatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0)), !dbg !931
  store i32 0, i32* %retval, align 4, !dbg !933
  br label %return, !dbg !933

return:                                           ; preds = %if.else12, %if.then7, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !934
  ret i32 %14, !dbg !934
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local %struct.Section_t* @FindSection(i32 %SectionType) #0 !dbg !935 {
entry:
  %retval = alloca %struct.Section_t*, align 8
  %SectionType.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %SectionType, i32* %SectionType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %SectionType.addr, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata i32* %a, metadata !940, metadata !DIExpression()), !dbg !941
  store i32 0, i32* %a, align 4, !dbg !942
  br label %for.cond, !dbg !944

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %a, align 4, !dbg !945
  %1 = load i32, i32* @SectionsRead, align 4, !dbg !947
  %cmp = icmp slt i32 %0, %1, !dbg !948
  br i1 %cmp, label %for.body, label %for.end, !dbg !949

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !950
  %3 = load i32, i32* %a, align 4, !dbg !953
  %idxprom = sext i32 %3 to i64, !dbg !950
  %arrayidx = getelementptr inbounds %struct.Section_t, %struct.Section_t* %2, i64 %idxprom, !dbg !950
  %Type = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx, i32 0, i32 1, !dbg !954
  %4 = load i32, i32* %Type, align 8, !dbg !954
  %5 = load i32, i32* %SectionType.addr, align 4, !dbg !955
  %cmp1 = icmp eq i32 %4, %5, !dbg !956
  br i1 %cmp1, label %if.then, label %if.end, !dbg !957

if.then:                                          ; preds = %for.body
  %6 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !958
  %7 = load i32, i32* %a, align 4, !dbg !960
  %idxprom2 = sext i32 %7 to i64, !dbg !958
  %arrayidx3 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %6, i64 %idxprom2, !dbg !958
  store %struct.Section_t* %arrayidx3, %struct.Section_t** %retval, align 8, !dbg !961
  br label %return, !dbg !961

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !962

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %a, align 4, !dbg !963
  %inc = add nsw i32 %8, 1, !dbg !963
  store i32 %inc, i32* %a, align 4, !dbg !963
  br label %for.cond, !dbg !964, !llvm.loop !965

for.end:                                          ; preds = %for.cond
  store %struct.Section_t* null, %struct.Section_t** %retval, align 8, !dbg !967
  br label %return, !dbg !967

return:                                           ; preds = %for.end, %if.then
  %9 = load %struct.Section_t*, %struct.Section_t** %retval, align 8, !dbg !968
  ret %struct.Section_t* %9, !dbg !968
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @ReplaceThumbnail(i8* %ThumbFileName) #0 !dbg !969 {
entry:
  %retval = alloca i32, align 4
  %ThumbFileName.addr = alloca i8*, align 8
  %ThumbnailFile = alloca %struct._IO_FILE*, align 8
  %ThumbLen = alloca i32, align 4
  %NewExifSize = alloca i32, align 4
  %ExifSection = alloca %struct.Section_t*, align 8
  %ThumbnailPointer = alloca i8*, align 8
  store i8* %ThumbFileName, i8** %ThumbFileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ThumbFileName.addr, metadata !972, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %ThumbnailFile, metadata !974, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.declare(metadata i32* %ThumbLen, metadata !976, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.declare(metadata i32* %NewExifSize, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata %struct.Section_t** %ExifSection, metadata !980, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata i8** %ThumbnailPointer, metadata !982, metadata !DIExpression()), !dbg !983
  %0 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !984
  %cmp = icmp eq i32 %0, 0, !dbg !986
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !987

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 36), align 8, !dbg !988
  %conv = sext i8 %1 to i32, !dbg !989
  %cmp1 = icmp eq i32 %conv, 0, !dbg !990
  br i1 %cmp1, label %if.then, label %if.end6, !dbg !991

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** %ThumbFileName.addr, align 8, !dbg !992
  %cmp3 = icmp eq i8* %2, null, !dbg !995
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !996

if.then5:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !997
  br label %return, !dbg !997

if.end:                                           ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !999
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.32, i64 0, i64 0)), !dbg !1000
  store i32 0, i32* %retval, align 4, !dbg !1001
  br label %return, !dbg !1001

if.end6:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %ThumbFileName.addr, align 8, !dbg !1002
  %tobool = icmp ne i8* %4, null, !dbg !1002
  br i1 %tobool, label %if.then7, label %if.else, !dbg !1004

if.then7:                                         ; preds = %if.end6
  %5 = load i8*, i8** %ThumbFileName.addr, align 8, !dbg !1005
  %call8 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)), !dbg !1007
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !1008
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !1009
  %cmp9 = icmp eq %struct._IO_FILE* %6, null, !dbg !1011
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !1012

if.then11:                                        ; preds = %if.then7
  br label %noread, !dbg !1013

noread:                                           ; preds = %if.then41, %if.then11
  call void @llvm.dbg.label(metadata !1014), !dbg !1016
  call void @ErrFatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0)), !dbg !1017
  store i32 0, i32* %retval, align 4, !dbg !1018
  br label %return, !dbg !1018

if.end12:                                         ; preds = %if.then7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !1019
  %call13 = call i32 @fseek(%struct._IO_FILE* %7, i64 0, i32 2), !dbg !1020
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !1021
  %call14 = call i64 @ftell(%struct._IO_FILE* %8), !dbg !1022
  %conv15 = trunc i64 %call14 to i32, !dbg !1022
  store i32 %conv15, i32* %ThumbLen, align 4, !dbg !1023
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !1024
  %call16 = call i32 @fseek(%struct._IO_FILE* %9, i64 0, i32 0), !dbg !1025
  %10 = load i32, i32* %ThumbLen, align 4, !dbg !1026
  %11 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !1028
  %add = add nsw i32 %10, %11, !dbg !1029
  %cmp17 = icmp sgt i32 %add, 65516, !dbg !1030
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1031

if.then19:                                        ; preds = %if.end12
  call void @ErrFatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0)), !dbg !1032
  br label %if.end20, !dbg !1034

if.end20:                                         ; preds = %if.then19, %if.end12
  br label %if.end25, !dbg !1035

if.else:                                          ; preds = %if.end6
  %12 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 34), align 8, !dbg !1036
  %cmp21 = icmp eq i32 %12, 0, !dbg !1039
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1040

if.then23:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !1041
  br label %return, !dbg !1041

if.end24:                                         ; preds = %if.else
  store i32 0, i32* %ThumbLen, align 4, !dbg !1043
  store %struct._IO_FILE* null, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !1044
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end20
  %call26 = call %struct.Section_t* @FindSection(i32 225), !dbg !1045
  store %struct.Section_t* %call26, %struct.Section_t** %ExifSection, align 8, !dbg !1046
  %13 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !1047
  %add27 = add nsw i32 %13, 8, !dbg !1048
  %14 = load i32, i32* %ThumbLen, align 4, !dbg !1049
  %add28 = add nsw i32 %add27, %14, !dbg !1050
  store i32 %add28, i32* %NewExifSize, align 4, !dbg !1051
  %15 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1052
  %Data = getelementptr inbounds %struct.Section_t, %struct.Section_t* %15, i32 0, i32 0, !dbg !1053
  %16 = load i8*, i8** %Data, align 8, !dbg !1053
  %17 = load i32, i32* %NewExifSize, align 4, !dbg !1054
  %conv29 = sext i32 %17 to i64, !dbg !1054
  %call30 = call i8* @realloc(i8* %16, i64 %conv29) #7, !dbg !1055
  %18 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1056
  %Data31 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %18, i32 0, i32 0, !dbg !1057
  store i8* %call30, i8** %Data31, align 8, !dbg !1058
  %19 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1059
  %Data32 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %19, i32 0, i32 0, !dbg !1060
  %20 = load i8*, i8** %Data32, align 8, !dbg !1060
  %21 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 33), align 4, !dbg !1061
  %idx.ext = sext i32 %21 to i64, !dbg !1062
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext, !dbg !1062
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr, i64 8, !dbg !1063
  store i8* %add.ptr33, i8** %ThumbnailPointer, align 8, !dbg !1064
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !1065
  %tobool34 = icmp ne %struct._IO_FILE* %22, null, !dbg !1065
  br i1 %tobool34, label %if.then35, label %if.end44, !dbg !1067

if.then35:                                        ; preds = %if.end25
  %23 = load i8*, i8** %ThumbnailPointer, align 8, !dbg !1068
  %24 = load i32, i32* %ThumbLen, align 4, !dbg !1071
  %conv36 = sext i32 %24 to i64, !dbg !1071
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !1072
  %call37 = call i64 @fread(i8* %23, i64 1, i64 %conv36, %struct._IO_FILE* %25), !dbg !1073
  %26 = load i32, i32* %ThumbLen, align 4, !dbg !1074
  %conv38 = sext i32 %26 to i64, !dbg !1074
  %cmp39 = icmp ne i64 %call37, %conv38, !dbg !1075
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1076

if.then41:                                        ; preds = %if.then35
  br label %noread, !dbg !1077

if.end42:                                         ; preds = %if.then35
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %ThumbnailFile, align 8, !dbg !1079
  %call43 = call i32 @fclose(%struct._IO_FILE* %27), !dbg !1080
  br label %if.end44, !dbg !1081

if.end44:                                         ; preds = %if.end42, %if.end25
  %28 = load i32, i32* %ThumbLen, align 4, !dbg !1082
  store i32 %28, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 34), align 8, !dbg !1083
  %29 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1084
  %Data45 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %29, i32 0, i32 0, !dbg !1085
  %30 = load i8*, i8** %Data45, align 8, !dbg !1085
  %31 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 37), align 4, !dbg !1086
  %idx.ext46 = sext i32 %31 to i64, !dbg !1087
  %add.ptr47 = getelementptr inbounds i8, i8* %30, i64 %idx.ext46, !dbg !1087
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr47, i64 8, !dbg !1088
  %32 = load i32, i32* %ThumbLen, align 4, !dbg !1089
  call void @Put32u(i8* %add.ptr48, i32 %32), !dbg !1090
  %33 = load i32, i32* %NewExifSize, align 4, !dbg !1091
  %shr = ashr i32 %33, 8, !dbg !1092
  %conv49 = trunc i32 %shr to i8, !dbg !1093
  %34 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1094
  %Data50 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %34, i32 0, i32 0, !dbg !1095
  %35 = load i8*, i8** %Data50, align 8, !dbg !1095
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 0, !dbg !1094
  store i8 %conv49, i8* %arrayidx, align 1, !dbg !1096
  %36 = load i32, i32* %NewExifSize, align 4, !dbg !1097
  %conv51 = trunc i32 %36 to i8, !dbg !1098
  %37 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1099
  %Data52 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %37, i32 0, i32 0, !dbg !1100
  %38 = load i8*, i8** %Data52, align 8, !dbg !1100
  %arrayidx53 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1099
  store i8 %conv51, i8* %arrayidx53, align 1, !dbg !1101
  %39 = load i32, i32* %NewExifSize, align 4, !dbg !1102
  %40 = load %struct.Section_t*, %struct.Section_t** %ExifSection, align 8, !dbg !1103
  %Size = getelementptr inbounds %struct.Section_t, %struct.Section_t* %40, i32 0, i32 2, !dbg !1104
  store i32 %39, i32* %Size, align 4, !dbg !1105
  store i32 1, i32* %retval, align 4, !dbg !1106
  br label %return, !dbg !1106

return:                                           ; preds = %if.end44, %if.then23, %noread, %if.end, %if.then5
  %41 = load i32, i32* %retval, align 4, !dbg !1107
  ret i32 %41, !dbg !1107
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #3

declare dso_local void @Put32u(i8*, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @DiscardAllButExif() #0 !dbg !1108 {
entry:
  %ExifKeeper = alloca %struct.Section_t, align 8
  %CommentKeeper = alloca %struct.Section_t, align 8
  %IptcKeeper = alloca %struct.Section_t, align 8
  %XmpKeeper = alloca %struct.Section_t, align 8
  %a = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.Section_t* %ExifKeeper, metadata !1109, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.declare(metadata %struct.Section_t* %CommentKeeper, metadata !1111, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.declare(metadata %struct.Section_t* %IptcKeeper, metadata !1113, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.declare(metadata %struct.Section_t* %XmpKeeper, metadata !1115, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.declare(metadata i32* %a, metadata !1117, metadata !DIExpression()), !dbg !1118
  %0 = bitcast %struct.Section_t* %ExifKeeper to i8*, !dbg !1119
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false), !dbg !1119
  %1 = bitcast %struct.Section_t* %CommentKeeper to i8*, !dbg !1120
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false), !dbg !1120
  %2 = bitcast %struct.Section_t* %IptcKeeper to i8*, !dbg !1121
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false), !dbg !1121
  %3 = bitcast %struct.Section_t* %XmpKeeper to i8*, !dbg !1122
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 16, i1 false), !dbg !1122
  store i32 0, i32* %a, align 4, !dbg !1123
  br label %for.cond, !dbg !1125

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %a, align 4, !dbg !1126
  %5 = load i32, i32* @SectionsRead, align 4, !dbg !1128
  %cmp = icmp slt i32 %4, %5, !dbg !1129
  br i1 %cmp, label %for.body, label %for.end, !dbg !1130

for.body:                                         ; preds = %for.cond
  %6 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1131
  %7 = load i32, i32* %a, align 4, !dbg !1134
  %idxprom = sext i32 %7 to i64, !dbg !1131
  %arrayidx = getelementptr inbounds %struct.Section_t, %struct.Section_t* %6, i64 %idxprom, !dbg !1131
  %Type = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx, i32 0, i32 1, !dbg !1135
  %8 = load i32, i32* %Type, align 8, !dbg !1135
  %cmp1 = icmp eq i32 %8, 225, !dbg !1136
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !1137

land.lhs.true:                                    ; preds = %for.body
  %Type2 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %ExifKeeper, i32 0, i32 1, !dbg !1138
  %9 = load i32, i32* %Type2, align 8, !dbg !1138
  %cmp3 = icmp eq i32 %9, 0, !dbg !1139
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1140

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1141
  %11 = load i32, i32* %a, align 4, !dbg !1143
  %idxprom4 = sext i32 %11 to i64, !dbg !1141
  %arrayidx5 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %10, i64 %idxprom4, !dbg !1141
  %12 = bitcast %struct.Section_t* %ExifKeeper to i8*, !dbg !1141
  %13 = bitcast %struct.Section_t* %arrayidx5 to i8*, !dbg !1141
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false), !dbg !1141
  br label %if.end43, !dbg !1144

if.else:                                          ; preds = %land.lhs.true, %for.body
  %14 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1145
  %15 = load i32, i32* %a, align 4, !dbg !1147
  %idxprom6 = sext i32 %15 to i64, !dbg !1145
  %arrayidx7 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %14, i64 %idxprom6, !dbg !1145
  %Type8 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx7, i32 0, i32 1, !dbg !1148
  %16 = load i32, i32* %Type8, align 8, !dbg !1148
  %cmp9 = icmp eq i32 %16, 4321, !dbg !1149
  br i1 %cmp9, label %land.lhs.true10, label %if.else16, !dbg !1150

land.lhs.true10:                                  ; preds = %if.else
  %Type11 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %XmpKeeper, i32 0, i32 1, !dbg !1151
  %17 = load i32, i32* %Type11, align 8, !dbg !1151
  %cmp12 = icmp eq i32 %17, 0, !dbg !1152
  br i1 %cmp12, label %if.then13, label %if.else16, !dbg !1153

if.then13:                                        ; preds = %land.lhs.true10
  %18 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1154
  %19 = load i32, i32* %a, align 4, !dbg !1156
  %idxprom14 = sext i32 %19 to i64, !dbg !1154
  %arrayidx15 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %18, i64 %idxprom14, !dbg !1154
  %20 = bitcast %struct.Section_t* %XmpKeeper to i8*, !dbg !1154
  %21 = bitcast %struct.Section_t* %arrayidx15 to i8*, !dbg !1154
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false), !dbg !1154
  br label %if.end42, !dbg !1157

if.else16:                                        ; preds = %land.lhs.true10, %if.else
  %22 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1158
  %23 = load i32, i32* %a, align 4, !dbg !1160
  %idxprom17 = sext i32 %23 to i64, !dbg !1158
  %arrayidx18 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %22, i64 %idxprom17, !dbg !1158
  %Type19 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx18, i32 0, i32 1, !dbg !1161
  %24 = load i32, i32* %Type19, align 8, !dbg !1161
  %cmp20 = icmp eq i32 %24, 254, !dbg !1162
  br i1 %cmp20, label %land.lhs.true21, label %if.else27, !dbg !1163

land.lhs.true21:                                  ; preds = %if.else16
  %Type22 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %CommentKeeper, i32 0, i32 1, !dbg !1164
  %25 = load i32, i32* %Type22, align 8, !dbg !1164
  %cmp23 = icmp eq i32 %25, 0, !dbg !1165
  br i1 %cmp23, label %if.then24, label %if.else27, !dbg !1166

if.then24:                                        ; preds = %land.lhs.true21
  %26 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1167
  %27 = load i32, i32* %a, align 4, !dbg !1169
  %idxprom25 = sext i32 %27 to i64, !dbg !1167
  %arrayidx26 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %26, i64 %idxprom25, !dbg !1167
  %28 = bitcast %struct.Section_t* %CommentKeeper to i8*, !dbg !1167
  %29 = bitcast %struct.Section_t* %arrayidx26 to i8*, !dbg !1167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false), !dbg !1167
  br label %if.end41, !dbg !1170

if.else27:                                        ; preds = %land.lhs.true21, %if.else16
  %30 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1171
  %31 = load i32, i32* %a, align 4, !dbg !1173
  %idxprom28 = sext i32 %31 to i64, !dbg !1171
  %arrayidx29 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %30, i64 %idxprom28, !dbg !1171
  %Type30 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx29, i32 0, i32 1, !dbg !1174
  %32 = load i32, i32* %Type30, align 8, !dbg !1174
  %cmp31 = icmp eq i32 %32, 237, !dbg !1175
  br i1 %cmp31, label %land.lhs.true32, label %if.else38, !dbg !1176

land.lhs.true32:                                  ; preds = %if.else27
  %Type33 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %IptcKeeper, i32 0, i32 1, !dbg !1177
  %33 = load i32, i32* %Type33, align 8, !dbg !1177
  %cmp34 = icmp eq i32 %33, 0, !dbg !1178
  br i1 %cmp34, label %if.then35, label %if.else38, !dbg !1179

if.then35:                                        ; preds = %land.lhs.true32
  %34 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1180
  %35 = load i32, i32* %a, align 4, !dbg !1182
  %idxprom36 = sext i32 %35 to i64, !dbg !1180
  %arrayidx37 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %34, i64 %idxprom36, !dbg !1180
  %36 = bitcast %struct.Section_t* %IptcKeeper to i8*, !dbg !1180
  %37 = bitcast %struct.Section_t* %arrayidx37 to i8*, !dbg !1180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false), !dbg !1180
  br label %if.end, !dbg !1183

if.else38:                                        ; preds = %land.lhs.true32, %if.else27
  %38 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1184
  %39 = load i32, i32* %a, align 4, !dbg !1186
  %idxprom39 = sext i32 %39 to i64, !dbg !1184
  %arrayidx40 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %38, i64 %idxprom39, !dbg !1184
  %Data = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx40, i32 0, i32 0, !dbg !1187
  %40 = load i8*, i8** %Data, align 8, !dbg !1187
  call void @free(i8* %40) #7, !dbg !1188
  br label %if.end

if.end:                                           ; preds = %if.else38, %if.then35
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then24
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then13
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then
  br label %for.inc, !dbg !1189

for.inc:                                          ; preds = %if.end43
  %41 = load i32, i32* %a, align 4, !dbg !1190
  %inc = add nsw i32 %41, 1, !dbg !1190
  store i32 %inc, i32* %a, align 4, !dbg !1190
  br label %for.cond, !dbg !1191, !llvm.loop !1192

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @SectionsRead, align 4, !dbg !1194
  %Type44 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %ExifKeeper, i32 0, i32 1, !dbg !1195
  %42 = load i32, i32* %Type44, align 8, !dbg !1195
  %tobool = icmp ne i32 %42, 0, !dbg !1197
  br i1 %tobool, label %if.then45, label %if.end49, !dbg !1198

if.then45:                                        ; preds = %for.end
  call void @CheckSectionsAllocated(), !dbg !1199
  %43 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1201
  %44 = load i32, i32* @SectionsRead, align 4, !dbg !1202
  %inc46 = add nsw i32 %44, 1, !dbg !1202
  store i32 %inc46, i32* @SectionsRead, align 4, !dbg !1202
  %idxprom47 = sext i32 %44 to i64, !dbg !1201
  %arrayidx48 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %43, i64 %idxprom47, !dbg !1201
  %45 = bitcast %struct.Section_t* %arrayidx48 to i8*, !dbg !1203
  %46 = bitcast %struct.Section_t* %ExifKeeper to i8*, !dbg !1203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false), !dbg !1203
  br label %if.end49, !dbg !1204

if.end49:                                         ; preds = %if.then45, %for.end
  %Type50 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %CommentKeeper, i32 0, i32 1, !dbg !1205
  %47 = load i32, i32* %Type50, align 8, !dbg !1205
  %tobool51 = icmp ne i32 %47, 0, !dbg !1207
  br i1 %tobool51, label %if.then52, label %if.end56, !dbg !1208

if.then52:                                        ; preds = %if.end49
  call void @CheckSectionsAllocated(), !dbg !1209
  %48 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1211
  %49 = load i32, i32* @SectionsRead, align 4, !dbg !1212
  %inc53 = add nsw i32 %49, 1, !dbg !1212
  store i32 %inc53, i32* @SectionsRead, align 4, !dbg !1212
  %idxprom54 = sext i32 %49 to i64, !dbg !1211
  %arrayidx55 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %48, i64 %idxprom54, !dbg !1211
  %50 = bitcast %struct.Section_t* %arrayidx55 to i8*, !dbg !1213
  %51 = bitcast %struct.Section_t* %CommentKeeper to i8*, !dbg !1213
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false), !dbg !1213
  br label %if.end56, !dbg !1214

if.end56:                                         ; preds = %if.then52, %if.end49
  %Type57 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %IptcKeeper, i32 0, i32 1, !dbg !1215
  %52 = load i32, i32* %Type57, align 8, !dbg !1215
  %tobool58 = icmp ne i32 %52, 0, !dbg !1217
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !1218

if.then59:                                        ; preds = %if.end56
  call void @CheckSectionsAllocated(), !dbg !1219
  %53 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1221
  %54 = load i32, i32* @SectionsRead, align 4, !dbg !1222
  %inc60 = add nsw i32 %54, 1, !dbg !1222
  store i32 %inc60, i32* @SectionsRead, align 4, !dbg !1222
  %idxprom61 = sext i32 %54 to i64, !dbg !1221
  %arrayidx62 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %53, i64 %idxprom61, !dbg !1221
  %55 = bitcast %struct.Section_t* %arrayidx62 to i8*, !dbg !1223
  %56 = bitcast %struct.Section_t* %IptcKeeper to i8*, !dbg !1223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false), !dbg !1223
  br label %if.end63, !dbg !1224

if.end63:                                         ; preds = %if.then59, %if.end56
  %Type64 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %XmpKeeper, i32 0, i32 1, !dbg !1225
  %57 = load i32, i32* %Type64, align 8, !dbg !1225
  %tobool65 = icmp ne i32 %57, 0, !dbg !1227
  br i1 %tobool65, label %if.then66, label %if.end70, !dbg !1228

if.then66:                                        ; preds = %if.end63
  call void @CheckSectionsAllocated(), !dbg !1229
  %58 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1231
  %59 = load i32, i32* @SectionsRead, align 4, !dbg !1232
  %inc67 = add nsw i32 %59, 1, !dbg !1232
  store i32 %inc67, i32* @SectionsRead, align 4, !dbg !1232
  %idxprom68 = sext i32 %59 to i64, !dbg !1231
  %arrayidx69 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %58, i64 %idxprom68, !dbg !1231
  %60 = bitcast %struct.Section_t* %arrayidx69 to i8*, !dbg !1233
  %61 = bitcast %struct.Section_t* %XmpKeeper to i8*, !dbg !1233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false), !dbg !1233
  br label %if.end70, !dbg !1234

if.end70:                                         ; preds = %if.then66, %if.end63
  ret void, !dbg !1235
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @WriteJpegFile(i8* %FileName) #0 !dbg !30 {
entry:
  %FileName.addr = alloca i8*, align 8
  %outfile = alloca %struct._IO_FILE*, align 8
  %a = alloca i32, align 4
  store i8* %FileName, i8** %FileName.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %FileName.addr, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %outfile, metadata !1238, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.declare(metadata i32* %a, metadata !1240, metadata !DIExpression()), !dbg !1241
  %0 = load i32, i32* @HaveAll, align 4, !dbg !1242
  %tobool = icmp ne i32 %0, 0, !dbg !1242
  br i1 %tobool, label %if.end, label %if.then, !dbg !1244

if.then:                                          ; preds = %entry
  call void @ErrFatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0)), !dbg !1245
  br label %if.end, !dbg !1247

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %FileName.addr, align 8, !dbg !1248
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)), !dbg !1249
  store %struct._IO_FILE* %call, %struct._IO_FILE** %outfile, align 8, !dbg !1250
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8, !dbg !1251
  %cmp = icmp eq %struct._IO_FILE* %2, null, !dbg !1253
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1254

if.then1:                                         ; preds = %if.end
  call void @ErrFatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0)), !dbg !1255
  br label %if.end2, !dbg !1257

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8, !dbg !1258
  %call3 = call i32 @fputc(i32 255, %struct._IO_FILE* %3), !dbg !1259
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8, !dbg !1260
  %call4 = call i32 @fputc(i32 216, %struct._IO_FILE* %4), !dbg !1261
  %5 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1262
  %arrayidx = getelementptr inbounds %struct.Section_t, %struct.Section_t* %5, i64 0, !dbg !1262
  %Type = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx, i32 0, i32 1, !dbg !1264
  %6 = load i32, i32* %Type, align 8, !dbg !1264
  %cmp5 = icmp ne i32 %6, 225, !dbg !1265
  br i1 %cmp5, label %land.lhs.true, label %if.end53, !dbg !1266

land.lhs.true:                                    ; preds = %if.end2
  %7 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1267
  %arrayidx6 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %7, i64 0, !dbg !1267
  %Type7 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx6, i32 0, i32 1, !dbg !1268
  %8 = load i32, i32* %Type7, align 8, !dbg !1268
  %cmp8 = icmp ne i32 %8, 224, !dbg !1269
  br i1 %cmp8, label %if.then9, label %if.end53, !dbg !1270

if.then9:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 30), align 4, !dbg !1271
  %cmp10 = icmp eq i32 %9, 2, !dbg !1274
  br i1 %cmp10, label %if.then12, label %lor.lhs.false, !dbg !1275

lor.lhs.false:                                    ; preds = %if.then9
  %10 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 30), align 4, !dbg !1276
  %cmp11 = icmp eq i32 %10, 3, !dbg !1277
  br i1 %cmp11, label %if.then12, label %if.end17, !dbg !1278

if.then12:                                        ; preds = %lor.lhs.false, %if.then9
  %11 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 30), align 4, !dbg !1279
  %sub = sub nsw i32 %11, 1, !dbg !1281
  %conv = trunc i32 %sub to i8, !dbg !1282
  store i8 %conv, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 1), align 1, !dbg !1283
  %12 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 28), align 4, !dbg !1284
  %conv13 = fptosi float %12 to i32, !dbg !1285
  %conv14 = trunc i32 %conv13 to i16, !dbg !1285
  store i16 %conv14, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 2), align 2, !dbg !1286
  %13 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 29), align 8, !dbg !1287
  %conv15 = fptosi float %13 to i32, !dbg !1288
  %conv16 = trunc i32 %conv15 to i16, !dbg !1288
  store i16 %conv16, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 3), align 4, !dbg !1289
  br label %if.end17, !dbg !1290

if.end17:                                         ; preds = %if.then12, %lor.lhs.false
  %14 = load i8, i8* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 1), align 1, !dbg !1291
  store i8 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 11), align 1, !dbg !1292
  %15 = load i16, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 2), align 2, !dbg !1293
  %conv18 = sext i16 %15 to i32, !dbg !1294
  %shr = ashr i32 %conv18, 8, !dbg !1295
  %conv19 = trunc i32 %shr to i8, !dbg !1296
  store i8 %conv19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 12), align 4, !dbg !1297
  %16 = load i16, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 2), align 2, !dbg !1298
  %conv20 = trunc i16 %16 to i8, !dbg !1299
  store i8 %conv20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 13), align 1, !dbg !1300
  %17 = load i16, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 3), align 4, !dbg !1301
  %conv21 = sext i16 %17 to i32, !dbg !1302
  %shr22 = ashr i32 %conv21, 8, !dbg !1303
  %conv23 = trunc i32 %shr22 to i8, !dbg !1304
  store i8 %conv23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 14), align 2, !dbg !1305
  %18 = load i16, i16* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 2, i32 3), align 4, !dbg !1306
  %conv24 = trunc i16 %18 to i8, !dbg !1307
  store i8 %conv24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 15), align 1, !dbg !1308
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8, !dbg !1309
  %call25 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %19), !dbg !1310
  %20 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 30), align 4, !dbg !1311
  %cmp26 = icmp ne i32 %20, 0, !dbg !1313
  br i1 %cmp26, label %if.then28, label %if.end33, !dbg !1314

if.then28:                                        ; preds = %if.end17
  %21 = load i32, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 30), align 4, !dbg !1315
  %conv29 = trunc i32 %21 to i8, !dbg !1317
  %conv30 = zext i8 %conv29 to i32, !dbg !1317
  %sub31 = sub nsw i32 %conv30, 1, !dbg !1318
  %conv32 = trunc i32 %sub31 to i8, !dbg !1317
  store i8 %conv32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 11), align 1, !dbg !1319
  br label %if.end33, !dbg !1320

if.end33:                                         ; preds = %if.then28, %if.end17
  %22 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 28), align 4, !dbg !1321
  %conv34 = fpext float %22 to double, !dbg !1323
  %cmp35 = fcmp ogt double %conv34, 0.000000e+00, !dbg !1324
  br i1 %cmp35, label %land.lhs.true37, label %if.end52, !dbg !1325

land.lhs.true37:                                  ; preds = %if.end33
  %23 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 29), align 8, !dbg !1326
  %conv38 = fpext float %23 to double, !dbg !1327
  %cmp39 = fcmp ogt double %conv38, 0.000000e+00, !dbg !1328
  br i1 %cmp39, label %if.then41, label %if.end52, !dbg !1329

if.then41:                                        ; preds = %land.lhs.true37
  %24 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 28), align 4, !dbg !1330
  %conv42 = fptosi float %24 to i32, !dbg !1332
  %shr43 = ashr i32 %conv42, 8, !dbg !1333
  %conv44 = trunc i32 %shr43 to i8, !dbg !1334
  store i8 %conv44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 12), align 4, !dbg !1335
  %25 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 28), align 4, !dbg !1336
  %conv45 = fptosi float %25 to i32, !dbg !1337
  %conv46 = trunc i32 %conv45 to i8, !dbg !1338
  store i8 %conv46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 13), align 1, !dbg !1339
  %26 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 29), align 8, !dbg !1340
  %conv47 = fptosi float %26 to i32, !dbg !1341
  %shr48 = ashr i32 %conv47, 8, !dbg !1342
  %conv49 = trunc i32 %shr48 to i8, !dbg !1343
  store i8 %conv49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 14), align 2, !dbg !1344
  %27 = load float, float* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 29), align 8, !dbg !1345
  %conv50 = fptosi float %27 to i32, !dbg !1346
  %conv51 = trunc i32 %conv50 to i8, !dbg !1347
  store i8 %conv51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @WriteJpegFile.JfifHead, i64 0, i64 15), align 1, !dbg !1348
  br label %if.end52, !dbg !1349

if.end52:                                         ; preds = %if.then41, %land.lhs.true37, %if.end33
  br label %if.end53, !dbg !1350

if.end53:                                         ; preds = %if.end52, %land.lhs.true, %if.end2
  store i32 0, i32* %a, align 4, !dbg !1351
  br label %for.cond, !dbg !1353

for.cond:                                         ; preds = %for.inc, %if.end53
  %28 = load i32, i32* %a, align 4, !dbg !1354
  %29 = load i32, i32* @SectionsRead, align 4, !dbg !1356
  %sub54 = sub nsw i32 %29, 1, !dbg !1357
  %cmp55 = icmp slt i32 %28, %sub54, !dbg !1358
  br i1 %cmp55, label %for.body, label %for.end, !dbg !1359

for.body:                                         ; preds = %for.cond
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8, !dbg !1360
  %call57 = call i32 @fputc(i32 255, %struct._IO_FILE* %30), !dbg !1362
  %31 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1363
  %32 = load i32, i32* %a, align 4, !dbg !1364
  %idxprom = sext i32 %32 to i64, !dbg !1363
  %arrayidx58 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %31, i64 %idxprom, !dbg !1363
  %Type59 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx58, i32 0, i32 1, !dbg !1365
  %33 = load i32, i32* %Type59, align 8, !dbg !1365
  %conv60 = trunc i32 %33 to i8, !dbg !1366
  %conv61 = zext i8 %conv60 to i32, !dbg !1366
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8, !dbg !1367
  %call62 = call i32 @fputc(i32 %conv61, %struct._IO_FILE* %34), !dbg !1368
  %35 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1369
  %36 = load i32, i32* %a, align 4, !dbg !1370
  %idxprom63 = sext i32 %36 to i64, !dbg !1369
  %arrayidx64 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %35, i64 %idxprom63, !dbg !1369
  %Data = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx64, i32 0, i32 0, !dbg !1371
  %37 = load i8*, i8** %Data, align 8, !dbg !1371
  %38 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1372
  %39 = load i32, i32* %a, align 4, !dbg !1373
  %idxprom65 = sext i32 %39 to i64, !dbg !1372
  %arrayidx66 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %38, i64 %idxprom65, !dbg !1372
  %Size = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx66, i32 0, i32 2, !dbg !1374
  %40 = load i32, i32* %Size, align 4, !dbg !1374
  %conv67 = zext i32 %40 to i64, !dbg !1372
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8, !dbg !1375
  %call68 = call i64 @fwrite(i8* %37, i64 %conv67, i64 1, %struct._IO_FILE* %41), !dbg !1376
  br label %for.inc, !dbg !1377

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %a, align 4, !dbg !1378
  %inc = add nsw i32 %42, 1, !dbg !1378
  store i32 %inc, i32* %a, align 4, !dbg !1378
  br label %for.cond, !dbg !1379, !llvm.loop !1380

for.end:                                          ; preds = %for.cond
  %43 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1382
  %44 = load i32, i32* %a, align 4, !dbg !1383
  %idxprom69 = sext i32 %44 to i64, !dbg !1382
  %arrayidx70 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %43, i64 %idxprom69, !dbg !1382
  %Data71 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx70, i32 0, i32 0, !dbg !1384
  %45 = load i8*, i8** %Data71, align 8, !dbg !1384
  %46 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1385
  %47 = load i32, i32* %a, align 4, !dbg !1386
  %idxprom72 = sext i32 %47 to i64, !dbg !1385
  %arrayidx73 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %46, i64 %idxprom72, !dbg !1385
  %Size74 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx73, i32 0, i32 2, !dbg !1387
  %48 = load i32, i32* %Size74, align 4, !dbg !1387
  %conv75 = zext i32 %48 to i64, !dbg !1385
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8, !dbg !1388
  %call76 = call i64 @fwrite(i8* %45, i64 %conv75, i64 1, %struct._IO_FILE* %49), !dbg !1389
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8, !dbg !1390
  %call77 = call i32 @fclose(%struct._IO_FILE* %50), !dbg !1391
  ret void, !dbg !1392
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @RemoveSectionType(i32 %SectionType) #0 !dbg !1393 {
entry:
  %SectionType.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 %SectionType, i32* %SectionType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %SectionType.addr, metadata !1396, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.declare(metadata i32* %a, metadata !1398, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !1400, metadata !DIExpression()), !dbg !1401
  store i32 0, i32* %retval1, align 4, !dbg !1401
  store i32 0, i32* %a, align 4, !dbg !1402
  br label %for.cond, !dbg !1404

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %a, align 4, !dbg !1405
  %1 = load i32, i32* @SectionsRead, align 4, !dbg !1407
  %sub = sub nsw i32 %1, 1, !dbg !1408
  %cmp = icmp slt i32 %0, %sub, !dbg !1409
  br i1 %cmp, label %for.body, label %for.end, !dbg !1410

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1411
  %3 = load i32, i32* %a, align 4, !dbg !1414
  %idxprom = sext i32 %3 to i64, !dbg !1411
  %arrayidx = getelementptr inbounds %struct.Section_t, %struct.Section_t* %2, i64 %idxprom, !dbg !1411
  %Type = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx, i32 0, i32 1, !dbg !1415
  %4 = load i32, i32* %Type, align 8, !dbg !1415
  %5 = load i32, i32* %SectionType.addr, align 4, !dbg !1416
  %cmp2 = icmp eq i32 %4, %5, !dbg !1417
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1418

if.then:                                          ; preds = %for.body
  %6 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1419
  %7 = load i32, i32* %a, align 4, !dbg !1421
  %idxprom3 = sext i32 %7 to i64, !dbg !1419
  %arrayidx4 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %6, i64 %idxprom3, !dbg !1419
  %Data = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx4, i32 0, i32 0, !dbg !1422
  %8 = load i8*, i8** %Data, align 8, !dbg !1422
  call void @free(i8* %8) #7, !dbg !1423
  %9 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1424
  %10 = load i32, i32* %a, align 4, !dbg !1425
  %idx.ext = sext i32 %10 to i64, !dbg !1426
  %add.ptr = getelementptr inbounds %struct.Section_t, %struct.Section_t* %9, i64 %idx.ext, !dbg !1426
  %11 = bitcast %struct.Section_t* %add.ptr to i8*, !dbg !1427
  %12 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1428
  %13 = load i32, i32* %a, align 4, !dbg !1429
  %idx.ext5 = sext i32 %13 to i64, !dbg !1430
  %add.ptr6 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %12, i64 %idx.ext5, !dbg !1430
  %add.ptr7 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %add.ptr6, i64 1, !dbg !1431
  %14 = bitcast %struct.Section_t* %add.ptr7 to i8*, !dbg !1427
  %15 = load i32, i32* @SectionsRead, align 4, !dbg !1432
  %16 = load i32, i32* %a, align 4, !dbg !1433
  %sub8 = sub nsw i32 %15, %16, !dbg !1434
  %conv = sext i32 %sub8 to i64, !dbg !1435
  %mul = mul i64 16, %conv, !dbg !1436
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %14, i64 %mul, i1 false), !dbg !1427
  %17 = load i32, i32* @SectionsRead, align 4, !dbg !1437
  %sub9 = sub nsw i32 %17, 1, !dbg !1437
  store i32 %sub9, i32* @SectionsRead, align 4, !dbg !1437
  %18 = load i32, i32* %a, align 4, !dbg !1438
  %sub10 = sub nsw i32 %18, 1, !dbg !1438
  store i32 %sub10, i32* %a, align 4, !dbg !1438
  store i32 1, i32* %retval1, align 4, !dbg !1439
  br label %if.end, !dbg !1440

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1441

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %a, align 4, !dbg !1442
  %inc = add nsw i32 %19, 1, !dbg !1442
  store i32 %inc, i32* %a, align 4, !dbg !1442
  br label %for.cond, !dbg !1443, !llvm.loop !1444

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %retval1, align 4, !dbg !1446
  ret i32 %20, !dbg !1447
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @RemoveUnknownSections() #0 !dbg !1448 {
entry:
  %a = alloca i32, align 4
  %Modified = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !1451, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.declare(metadata i32* %Modified, metadata !1453, metadata !DIExpression()), !dbg !1454
  store i32 0, i32* %Modified, align 4, !dbg !1454
  store i32 0, i32* %a, align 4, !dbg !1455
  br label %for.cond, !dbg !1457

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %a, align 4, !dbg !1458
  %1 = load i32, i32* @SectionsRead, align 4, !dbg !1460
  %sub = sub nsw i32 %1, 1, !dbg !1461
  %cmp = icmp slt i32 %0, %sub, !dbg !1462
  br i1 %cmp, label %for.body, label %for.end, !dbg !1463

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1464
  %3 = load i32, i32* %a, align 4, !dbg !1466
  %idxprom = sext i32 %3 to i64, !dbg !1464
  %arrayidx = getelementptr inbounds %struct.Section_t, %struct.Section_t* %2, i64 %idxprom, !dbg !1464
  %Type = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx, i32 0, i32 1, !dbg !1467
  %4 = load i32, i32* %Type, align 8, !dbg !1467
  switch i32 %4, label %sw.default [
    i32 192, label %sw.bb
    i32 193, label %sw.bb
    i32 194, label %sw.bb
    i32 195, label %sw.bb
    i32 197, label %sw.bb
    i32 198, label %sw.bb
    i32 199, label %sw.bb
    i32 201, label %sw.bb
    i32 202, label %sw.bb
    i32 203, label %sw.bb
    i32 205, label %sw.bb
    i32 206, label %sw.bb
    i32 207, label %sw.bb
    i32 216, label %sw.bb
    i32 217, label %sw.bb
    i32 218, label %sw.bb
    i32 224, label %sw.bb
    i32 225, label %sw.bb
    i32 4321, label %sw.bb
    i32 254, label %sw.bb
    i32 219, label %sw.bb
    i32 196, label %sw.bb
    i32 221, label %sw.bb
    i32 237, label %sw.bb
  ], !dbg !1468

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %5 = load i32, i32* %a, align 4, !dbg !1469
  %inc = add nsw i32 %5, 1, !dbg !1469
  store i32 %inc, i32* %a, align 4, !dbg !1469
  br label %sw.epilog, !dbg !1471

sw.default:                                       ; preds = %for.body
  %6 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1472
  %7 = load i32, i32* %a, align 4, !dbg !1473
  %idxprom1 = sext i32 %7 to i64, !dbg !1472
  %arrayidx2 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %6, i64 %idxprom1, !dbg !1472
  %Data = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx2, i32 0, i32 0, !dbg !1474
  %8 = load i8*, i8** %Data, align 8, !dbg !1474
  call void @free(i8* %8) #7, !dbg !1475
  %9 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1476
  %10 = load i32, i32* %a, align 4, !dbg !1477
  %idx.ext = sext i32 %10 to i64, !dbg !1478
  %add.ptr = getelementptr inbounds %struct.Section_t, %struct.Section_t* %9, i64 %idx.ext, !dbg !1478
  %11 = bitcast %struct.Section_t* %add.ptr to i8*, !dbg !1479
  %12 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1480
  %13 = load i32, i32* %a, align 4, !dbg !1481
  %idx.ext3 = sext i32 %13 to i64, !dbg !1482
  %add.ptr4 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %12, i64 %idx.ext3, !dbg !1482
  %add.ptr5 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %add.ptr4, i64 1, !dbg !1483
  %14 = bitcast %struct.Section_t* %add.ptr5 to i8*, !dbg !1479
  %15 = load i32, i32* @SectionsRead, align 4, !dbg !1484
  %16 = load i32, i32* %a, align 4, !dbg !1485
  %sub6 = sub nsw i32 %15, %16, !dbg !1486
  %conv = sext i32 %sub6 to i64, !dbg !1487
  %mul = mul i64 16, %conv, !dbg !1488
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %14, i64 %mul, i1 false), !dbg !1479
  %17 = load i32, i32* @SectionsRead, align 4, !dbg !1489
  %sub7 = sub nsw i32 %17, 1, !dbg !1489
  store i32 %sub7, i32* @SectionsRead, align 4, !dbg !1489
  store i32 1, i32* %Modified, align 4, !dbg !1490
  br label %sw.epilog, !dbg !1491

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %for.cond, !dbg !1492, !llvm.loop !1493

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %Modified, align 4, !dbg !1495
  ret i32 %18, !dbg !1496
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local %struct.Section_t* @CreateSection(i32 %SectionType, i8* %Data, i32 %Size) #0 !dbg !1497 {
entry:
  %SectionType.addr = alloca i32, align 4
  %Data.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %NewSection = alloca %struct.Section_t*, align 8
  %a = alloca i32, align 4
  %NewIndex = alloca i32, align 4
  store i32 %SectionType, i32* %SectionType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %SectionType.addr, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i8* %Data, i8** %Data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Data.addr, metadata !1503, metadata !DIExpression()), !dbg !1504
  store i32 %Size, i32* %Size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %Size.addr, metadata !1505, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.declare(metadata %struct.Section_t** %NewSection, metadata !1507, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.declare(metadata i32* %a, metadata !1509, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.declare(metadata i32* %NewIndex, metadata !1511, metadata !DIExpression()), !dbg !1512
  store i32 0, i32* %NewIndex, align 4, !dbg !1513
  %0 = load i32, i32* %SectionType.addr, align 4, !dbg !1514
  %cmp = icmp eq i32 %0, 225, !dbg !1516
  br i1 %cmp, label %if.then, label %if.else, !dbg !1517

if.then:                                          ; preds = %entry
  br label %if.end10, !dbg !1518

if.else:                                          ; preds = %entry
  br label %for.cond, !dbg !1520

for.cond:                                         ; preds = %for.inc, %if.else
  %1 = load i32, i32* %NewIndex, align 4, !dbg !1522
  %cmp1 = icmp slt i32 %1, 3, !dbg !1525
  br i1 %cmp1, label %for.body, label %for.end, !dbg !1526

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1527
  %3 = load i32, i32* %NewIndex, align 4, !dbg !1530
  %idxprom = sext i32 %3 to i64, !dbg !1527
  %arrayidx = getelementptr inbounds %struct.Section_t, %struct.Section_t* %2, i64 %idxprom, !dbg !1527
  %Type = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx, i32 0, i32 1, !dbg !1531
  %4 = load i32, i32* %Type, align 8, !dbg !1531
  %cmp2 = icmp eq i32 %4, 224, !dbg !1532
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1533

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !1534

if.end:                                           ; preds = %for.body
  %5 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1535
  %6 = load i32, i32* %NewIndex, align 4, !dbg !1537
  %idxprom4 = sext i32 %6 to i64, !dbg !1535
  %arrayidx5 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %5, i64 %idxprom4, !dbg !1535
  %Type6 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %arrayidx5, i32 0, i32 1, !dbg !1538
  %7 = load i32, i32* %Type6, align 8, !dbg !1538
  %cmp7 = icmp eq i32 %7, 225, !dbg !1539
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1540

if.then8:                                         ; preds = %if.end
  br label %for.inc, !dbg !1541

if.end9:                                          ; preds = %if.end
  br label %for.end, !dbg !1542

for.inc:                                          ; preds = %if.then8, %if.then3
  %8 = load i32, i32* %NewIndex, align 4, !dbg !1543
  %inc = add nsw i32 %8, 1, !dbg !1543
  store i32 %inc, i32* %NewIndex, align 4, !dbg !1543
  br label %for.cond, !dbg !1544, !llvm.loop !1545

for.end:                                          ; preds = %if.end9, %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then
  %9 = load i32, i32* @SectionsRead, align 4, !dbg !1547
  %10 = load i32, i32* %NewIndex, align 4, !dbg !1549
  %cmp11 = icmp slt i32 %9, %10, !dbg !1550
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1551

if.then12:                                        ; preds = %if.end10
  call void @ErrFatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0)), !dbg !1552
  br label %if.end13, !dbg !1554

if.end13:                                         ; preds = %if.then12, %if.end10
  call void @CheckSectionsAllocated(), !dbg !1555
  %11 = load i32, i32* @SectionsRead, align 4, !dbg !1556
  store i32 %11, i32* %a, align 4, !dbg !1558
  br label %for.cond14, !dbg !1559

for.cond14:                                       ; preds = %for.inc21, %if.end13
  %12 = load i32, i32* %a, align 4, !dbg !1560
  %13 = load i32, i32* %NewIndex, align 4, !dbg !1562
  %cmp15 = icmp sgt i32 %12, %13, !dbg !1563
  br i1 %cmp15, label %for.body16, label %for.end22, !dbg !1564

for.body16:                                       ; preds = %for.cond14
  %14 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1565
  %15 = load i32, i32* %a, align 4, !dbg !1567
  %idxprom17 = sext i32 %15 to i64, !dbg !1565
  %arrayidx18 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %14, i64 %idxprom17, !dbg !1565
  %16 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1568
  %17 = load i32, i32* %a, align 4, !dbg !1569
  %sub = sub nsw i32 %17, 1, !dbg !1570
  %idxprom19 = sext i32 %sub to i64, !dbg !1568
  %arrayidx20 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %16, i64 %idxprom19, !dbg !1568
  %18 = bitcast %struct.Section_t* %arrayidx18 to i8*, !dbg !1568
  %19 = bitcast %struct.Section_t* %arrayidx20 to i8*, !dbg !1568
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false), !dbg !1568
  br label %for.inc21, !dbg !1571

for.inc21:                                        ; preds = %for.body16
  %20 = load i32, i32* %a, align 4, !dbg !1572
  %dec = add nsw i32 %20, -1, !dbg !1572
  store i32 %dec, i32* %a, align 4, !dbg !1572
  br label %for.cond14, !dbg !1573, !llvm.loop !1574

for.end22:                                        ; preds = %for.cond14
  %21 = load i32, i32* @SectionsRead, align 4, !dbg !1576
  %add = add nsw i32 %21, 1, !dbg !1576
  store i32 %add, i32* @SectionsRead, align 4, !dbg !1576
  %22 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1577
  %23 = load i32, i32* %NewIndex, align 4, !dbg !1578
  %idx.ext = sext i32 %23 to i64, !dbg !1579
  %add.ptr = getelementptr inbounds %struct.Section_t, %struct.Section_t* %22, i64 %idx.ext, !dbg !1579
  store %struct.Section_t* %add.ptr, %struct.Section_t** %NewSection, align 8, !dbg !1580
  %24 = load i32, i32* %SectionType.addr, align 4, !dbg !1581
  %25 = load %struct.Section_t*, %struct.Section_t** %NewSection, align 8, !dbg !1582
  %Type23 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %25, i32 0, i32 1, !dbg !1583
  store i32 %24, i32* %Type23, align 8, !dbg !1584
  %26 = load i32, i32* %Size.addr, align 4, !dbg !1585
  %27 = load %struct.Section_t*, %struct.Section_t** %NewSection, align 8, !dbg !1586
  %Size24 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %27, i32 0, i32 2, !dbg !1587
  store i32 %26, i32* %Size24, align 4, !dbg !1588
  %28 = load i8*, i8** %Data.addr, align 8, !dbg !1589
  %29 = load %struct.Section_t*, %struct.Section_t** %NewSection, align 8, !dbg !1590
  %Data25 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %29, i32 0, i32 0, !dbg !1591
  store i8* %28, i8** %Data25, align 8, !dbg !1592
  %30 = load %struct.Section_t*, %struct.Section_t** %NewSection, align 8, !dbg !1593
  ret %struct.Section_t* %30, !dbg !1594
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @ResetJpgfile() #0 !dbg !1595 {
entry:
  %0 = load %struct.Section_t*, %struct.Section_t** @Sections, align 8, !dbg !1596
  %cmp = icmp eq %struct.Section_t* %0, null, !dbg !1598
  br i1 %cmp, label %if.then, label %if.end, !dbg !1599

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 80) #7, !dbg !1600
  %1 = bitcast i8* %call to %struct.Section_t*, !dbg !1602
  store %struct.Section_t* %1, %struct.Section_t** @Sections, align 8, !dbg !1603
  store i32 5, i32* @SectionsAllocated, align 4, !dbg !1604
  br label %if.end, !dbg !1605

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @SectionsRead, align 4, !dbg !1606
  store i32 0, i32* @HaveAll, align 4, !dbg !1607
  ret void, !dbg !1608
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @Get16m(i8* %Short) #0 !dbg !1609 {
entry:
  %Short.addr = alloca i8*, align 8
  store i8* %Short, i8** %Short.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Short.addr, metadata !1614, metadata !DIExpression()), !dbg !1615
  %0 = load i8*, i8** %Short.addr, align 8, !dbg !1616
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1617
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1617
  %conv = zext i8 %1 to i32, !dbg !1617
  %shl = shl i32 %conv, 8, !dbg !1618
  %2 = load i8*, i8** %Short.addr, align 8, !dbg !1619
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1620
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !1620
  %conv2 = zext i8 %3 to i32, !dbg !1620
  %or = or i32 %shl, %conv2, !dbg !1621
  ret i32 %or, !dbg !1622
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!129, !130, !131}
!llvm.ident = !{!132}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ImageInfo", scope: !2, file: !3, line: 12, type: !47, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "jpgfile.c", directory: ".")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 151, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./jhead.h", directory: ".")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "READ_METADATA", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "READ_IMAGE", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "READ_ALL", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "READ_ANY", value: 5, isUnsigned: true)
!13 = !{!14, !17, !15, !18, !19, !16, !20}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !6, line: 41, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Section_t", file: !6, line: 67, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 63, size: 128, elements: !23)
!23 = !{!24, !25, !26}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !22, file: !6, line: 64, baseType: !14, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !22, file: !6, line: 65, baseType: !19, size: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !22, file: !6, line: 66, baseType: !7, size: 32, offset: 96)
!27 = !{!28, !0, !39, !41, !43, !45}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "JfifHead", scope: !30, file: !3, line: 585, type: !36, isLocal: true, isDefinition: true)
!30 = distinct !DISubprogram(name: "WriteJpegFile", scope: !3, file: !3, line: 565, type: !31, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!35 = !{}
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 144, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 18)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "SectionsAllocated", scope: !2, file: !3, line: 16, type: !19, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "SectionsRead", scope: !2, file: !3, line: 17, type: !19, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "HaveAll", scope: !2, file: !3, line: 18, type: !19, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "Sections", scope: !2, file: !3, line: 15, type: !20, isLocal: true, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo_t", file: !6, line: 142, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 79, size: 163776, elements: !49)
!49 = !{!50, !54, !60, !68, !69, !73, !77, !81, !82, !83, !84, !85, !86, !87, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !110, !111, !112, !113, !114, !115, !116, !120, !121, !122, !126, !127, !128}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "FileName", scope: !48, file: !6, line: 80, baseType: !51, size: 32776)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32776, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 4097)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "FileDateTime", scope: !48, file: !6, line: 81, baseType: !55, size: 64, offset: 32832)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !56, line: 7, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !58, line: 160, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!59 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "JfifHeader", scope: !48, file: !6, line: 91, baseType: !61, size: 48, offset: 32896)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !48, file: !6, line: 83, size: 48, elements: !62)
!62 = !{!63, !64, !65, !67}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "Present", scope: !61, file: !6, line: 87, baseType: !18, size: 8)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ResolutionUnits", scope: !61, file: !6, line: 88, baseType: !18, size: 8, offset: 8)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "XDensity", scope: !61, file: !6, line: 89, baseType: !66, size: 16, offset: 16)
!66 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "YDensity", scope: !61, file: !6, line: 90, baseType: !66, size: 16, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "FileSize", scope: !48, file: !6, line: 93, baseType: !7, size: 32, offset: 32960)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "CameraMake", scope: !48, file: !6, line: 94, baseType: !70, size: 256, offset: 32992)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "CameraModel", scope: !48, file: !6, line: 95, baseType: !74, size: 320, offset: 33248)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 320, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 40)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "DateTime", scope: !48, file: !6, line: 96, baseType: !78, size: 160, offset: 33568)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 20)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "Height", scope: !48, file: !6, line: 97, baseType: !7, size: 32, offset: 33728)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "Width", scope: !48, file: !6, line: 97, baseType: !7, size: 32, offset: 33760)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "Orientation", scope: !48, file: !6, line: 98, baseType: !19, size: 32, offset: 33792)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "IsColor", scope: !48, file: !6, line: 99, baseType: !19, size: 32, offset: 33824)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "Process", scope: !48, file: !6, line: 100, baseType: !19, size: 32, offset: 33856)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "FlashUsed", scope: !48, file: !6, line: 101, baseType: !19, size: 32, offset: 33888)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "FocalLength", scope: !48, file: !6, line: 102, baseType: !88, size: 32, offset: 33920)
!88 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ExposureTime", scope: !48, file: !6, line: 103, baseType: !88, size: 32, offset: 33952)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ApertureFNumber", scope: !48, file: !6, line: 104, baseType: !88, size: 32, offset: 33984)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Distance", scope: !48, file: !6, line: 105, baseType: !88, size: 32, offset: 34016)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "CCDWidth", scope: !48, file: !6, line: 106, baseType: !88, size: 32, offset: 34048)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ExposureBias", scope: !48, file: !6, line: 107, baseType: !88, size: 32, offset: 34080)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "DigitalZoomRatio", scope: !48, file: !6, line: 108, baseType: !88, size: 32, offset: 34112)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "FocalLength35mmEquiv", scope: !48, file: !6, line: 109, baseType: !19, size: 32, offset: 34144)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "Whitebalance", scope: !48, file: !6, line: 110, baseType: !19, size: 32, offset: 34176)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "MeteringMode", scope: !48, file: !6, line: 111, baseType: !19, size: 32, offset: 34208)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ExposureProgram", scope: !48, file: !6, line: 112, baseType: !19, size: 32, offset: 34240)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ExposureMode", scope: !48, file: !6, line: 113, baseType: !19, size: 32, offset: 34272)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ISOequivalent", scope: !48, file: !6, line: 114, baseType: !19, size: 32, offset: 34304)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "LightSource", scope: !48, file: !6, line: 115, baseType: !19, size: 32, offset: 34336)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "DistanceRange", scope: !48, file: !6, line: 116, baseType: !19, size: 32, offset: 34368)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "xResolution", scope: !48, file: !6, line: 118, baseType: !88, size: 32, offset: 34400)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "yResolution", scope: !48, file: !6, line: 119, baseType: !88, size: 32, offset: 34432)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ResolutionUnit", scope: !48, file: !6, line: 120, baseType: !19, size: 32, offset: 34464)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Comments", scope: !48, file: !6, line: 122, baseType: !107, size: 128000, offset: 34496)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128000, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 16000)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "CommentWidthchars", scope: !48, file: !6, line: 123, baseType: !19, size: 32, offset: 162496)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ThumbnailOffset", scope: !48, file: !6, line: 125, baseType: !19, size: 32, offset: 162528)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ThumbnailSize", scope: !48, file: !6, line: 126, baseType: !19, size: 32, offset: 162560)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "LargestExifOffset", scope: !48, file: !6, line: 127, baseType: !19, size: 32, offset: 162592)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ThumbnailAtEnd", scope: !48, file: !6, line: 129, baseType: !18, size: 8, offset: 162624)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ThumbnailSizeOffset", scope: !48, file: !6, line: 131, baseType: !19, size: 32, offset: 162656)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "DateTimeOffsets", scope: !48, file: !6, line: 133, baseType: !117, size: 320, offset: 162688)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 320, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 10)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "numDateTimeTags", scope: !48, file: !6, line: 134, baseType: !19, size: 32, offset: 163008)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "GpsInfoPresent", scope: !48, file: !6, line: 136, baseType: !19, size: 32, offset: 163040)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "GpsLat", scope: !48, file: !6, line: 137, baseType: !123, size: 248, offset: 163072)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 248, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 31)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "GpsLong", scope: !48, file: !6, line: 138, baseType: !123, size: 248, offset: 163320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "GpsAlt", scope: !48, file: !6, line: 139, baseType: !78, size: 160, offset: 163568)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "QualityGuess", scope: !48, file: !6, line: 141, baseType: !19, size: 32, offset: 163744)
!129 = !{i32 7, !"Dwarf Version", i32 4}
!130 = !{i32 2, !"Debug Info Version", i32 3}
!131 = !{i32 1, !"wchar_size", i32 4}
!132 = !{!"clang version 12.0.0"}
!133 = distinct !DISubprogram(name: "ReadJpegSections", scope: !3, file: !3, line: 119, type: !134, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!134 = !DISubroutineType(types: !135)
!135 = !{!19, !136, !191}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 7, baseType: !139)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 49, size: 1728, elements: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!141 = !{!142, !143, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !158, !160, !161, !162, !164, !166, !168, !172, !175, !177, !180, !183, !184, !185, !189, !190}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !139, file: !140, line: 51, baseType: !19, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !139, file: !140, line: 54, baseType: !144, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !139, file: !140, line: 55, baseType: !144, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !139, file: !140, line: 56, baseType: !144, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !139, file: !140, line: 57, baseType: !144, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !139, file: !140, line: 58, baseType: !144, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !139, file: !140, line: 59, baseType: !144, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !139, file: !140, line: 60, baseType: !144, size: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !139, file: !140, line: 61, baseType: !144, size: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !139, file: !140, line: 64, baseType: !144, size: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !139, file: !140, line: 65, baseType: !144, size: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !139, file: !140, line: 66, baseType: !144, size: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !139, file: !140, line: 68, baseType: !156, size: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 36, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !139, file: !140, line: 70, baseType: !159, size: 64, offset: 832)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !139, file: !140, line: 72, baseType: !19, size: 32, offset: 896)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !139, file: !140, line: 73, baseType: !19, size: 32, offset: 928)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !139, file: !140, line: 74, baseType: !163, size: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !58, line: 152, baseType: !59)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !139, file: !140, line: 77, baseType: !165, size: 16, offset: 1024)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !139, file: !140, line: 78, baseType: !167, size: 8, offset: 1040)
!167 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !139, file: !140, line: 79, baseType: !169, size: 8, offset: 1048)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 1)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !139, file: !140, line: 81, baseType: !173, size: 64, offset: 1088)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !140, line: 43, baseType: null)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !139, file: !140, line: 89, baseType: !176, size: 64, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !58, line: 153, baseType: !59)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !139, file: !140, line: 91, baseType: !178, size: 64, offset: 1216)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !140, line: 37, flags: DIFlagFwdDecl)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !139, file: !140, line: 92, baseType: !181, size: 64, offset: 1280)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !140, line: 38, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !139, file: !140, line: 93, baseType: !159, size: 64, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !139, file: !140, line: 94, baseType: !17, size: 64, offset: 1408)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !139, file: !140, line: 95, baseType: !186, size: 64, offset: 1472)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 46, baseType: !188)
!187 = !DIFile(filename: "/home/raoxue/node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "")
!188 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !139, file: !140, line: 96, baseType: !19, size: 32, offset: 1536)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !139, file: !140, line: 98, baseType: !78, size: 160, offset: 1568)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReadMode_t", file: !6, line: 156, baseType: !5)
!192 = !DILocalVariable(name: "infile", arg: 1, scope: !133, file: !3, line: 119, type: !136)
!193 = !DILocation(line: 119, column: 30, scope: !133)
!194 = !DILocalVariable(name: "ReadMode", arg: 2, scope: !133, file: !3, line: 119, type: !191)
!195 = !DILocation(line: 119, column: 49, scope: !133)
!196 = !DILocalVariable(name: "a", scope: !133, file: !3, line: 121, type: !19)
!197 = !DILocation(line: 121, column: 9, scope: !133)
!198 = !DILocalVariable(name: "HaveCom", scope: !133, file: !3, line: 122, type: !19)
!199 = !DILocation(line: 122, column: 9, scope: !133)
!200 = !DILocation(line: 124, column: 15, scope: !133)
!201 = !DILocation(line: 124, column: 9, scope: !133)
!202 = !DILocation(line: 124, column: 7, scope: !133)
!203 = !DILocation(line: 126, column: 9, scope: !204)
!204 = distinct !DILexicalBlock(scope: !133, file: !3, line: 126, column: 9)
!205 = !DILocation(line: 126, column: 11, scope: !204)
!206 = !DILocation(line: 126, column: 19, scope: !204)
!207 = !DILocation(line: 126, column: 28, scope: !204)
!208 = !DILocation(line: 126, column: 22, scope: !204)
!209 = !DILocation(line: 126, column: 36, scope: !204)
!210 = !DILocation(line: 126, column: 9, scope: !133)
!211 = !DILocation(line: 127, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !3, line: 126, column: 45)
!213 = !DILocation(line: 130, column: 67, scope: !133)
!214 = !DILocation(line: 130, column: 35, scope: !133)
!215 = !DILocation(line: 131, column: 42, scope: !133)
!216 = !DILocation(line: 133, column: 5, scope: !133)
!217 = !DILocalVariable(name: "itemlen", scope: !218, file: !3, line: 134, type: !19)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 133, column: 12)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 133, column: 5)
!220 = distinct !DILexicalBlock(scope: !133, file: !3, line: 133, column: 5)
!221 = !DILocation(line: 134, column: 13, scope: !218)
!222 = !DILocalVariable(name: "prev", scope: !218, file: !3, line: 135, type: !19)
!223 = !DILocation(line: 135, column: 13, scope: !218)
!224 = !DILocalVariable(name: "marker", scope: !218, file: !3, line: 136, type: !19)
!225 = !DILocation(line: 136, column: 13, scope: !218)
!226 = !DILocalVariable(name: "ll", scope: !218, file: !3, line: 137, type: !19)
!227 = !DILocation(line: 137, column: 13, scope: !218)
!228 = !DILocalVariable(name: "lh", scope: !218, file: !3, line: 137, type: !19)
!229 = !DILocation(line: 137, column: 16, scope: !218)
!230 = !DILocalVariable(name: "got", scope: !218, file: !3, line: 137, type: !19)
!231 = !DILocation(line: 137, column: 20, scope: !218)
!232 = !DILocalVariable(name: "Data", scope: !218, file: !3, line: 138, type: !14)
!233 = !DILocation(line: 138, column: 17, scope: !218)
!234 = !DILocation(line: 140, column: 9, scope: !218)
!235 = !DILocation(line: 142, column: 14, scope: !218)
!236 = !DILocation(line: 143, column: 15, scope: !237)
!237 = distinct !DILexicalBlock(scope: !218, file: !3, line: 143, column: 9)
!238 = !DILocation(line: 143, column: 14, scope: !237)
!239 = !DILocation(line: 144, column: 28, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 143, column: 23)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 143, column: 9)
!242 = !DILocation(line: 144, column: 22, scope: !240)
!243 = !DILocation(line: 144, column: 20, scope: !240)
!244 = !DILocation(line: 145, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !3, line: 145, column: 17)
!246 = !DILocation(line: 145, column: 24, scope: !245)
!247 = !DILocation(line: 145, column: 32, scope: !245)
!248 = !DILocation(line: 145, column: 35, scope: !245)
!249 = !DILocation(line: 145, column: 40, scope: !245)
!250 = !DILocation(line: 145, column: 17, scope: !240)
!251 = !DILocation(line: 145, column: 49, scope: !245)
!252 = !DILocation(line: 146, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !240, file: !3, line: 146, column: 17)
!254 = !DILocation(line: 146, column: 24, scope: !253)
!255 = !DILocation(line: 146, column: 17, scope: !240)
!256 = !DILocation(line: 147, column: 17, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 146, column: 31)
!258 = !DILocation(line: 148, column: 13, scope: !257)
!259 = !DILocation(line: 149, column: 20, scope: !240)
!260 = !DILocation(line: 149, column: 18, scope: !240)
!261 = !DILocation(line: 150, column: 9, scope: !240)
!262 = !DILocation(line: 143, column: 20, scope: !241)
!263 = !DILocation(line: 143, column: 9, scope: !241)
!264 = distinct !{!264, !265, !266}
!265 = !DILocation(line: 143, column: 9, scope: !237)
!266 = !DILocation(line: 150, column: 9, scope: !237)
!267 = !DILocation(line: 152, column: 13, scope: !268)
!268 = distinct !DILexicalBlock(scope: !218, file: !3, line: 152, column: 13)
!269 = !DILocation(line: 152, column: 15, scope: !268)
!270 = !DILocation(line: 152, column: 13, scope: !218)
!271 = !DILocation(line: 153, column: 75, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !3, line: 152, column: 20)
!273 = !DILocation(line: 153, column: 76, scope: !272)
!274 = !DILocation(line: 153, column: 79, scope: !272)
!275 = !DILocation(line: 153, column: 13, scope: !272)
!276 = !DILocation(line: 154, column: 9, scope: !272)
!277 = !DILocation(line: 156, column: 39, scope: !218)
!278 = !DILocation(line: 156, column: 9, scope: !218)
!279 = !DILocation(line: 156, column: 18, scope: !218)
!280 = !DILocation(line: 156, column: 32, scope: !218)
!281 = !DILocation(line: 156, column: 37, scope: !218)
!282 = !DILocation(line: 159, column: 20, scope: !218)
!283 = !DILocation(line: 159, column: 14, scope: !218)
!284 = !DILocation(line: 159, column: 12, scope: !218)
!285 = !DILocation(line: 160, column: 20, scope: !218)
!286 = !DILocation(line: 160, column: 14, scope: !218)
!287 = !DILocation(line: 160, column: 12, scope: !218)
!288 = !DILocation(line: 161, column: 13, scope: !289)
!289 = distinct !DILexicalBlock(scope: !218, file: !3, line: 161, column: 13)
!290 = !DILocation(line: 161, column: 16, scope: !289)
!291 = !DILocation(line: 161, column: 23, scope: !289)
!292 = !DILocation(line: 161, column: 26, scope: !289)
!293 = !DILocation(line: 161, column: 29, scope: !289)
!294 = !DILocation(line: 161, column: 13, scope: !218)
!295 = !DILocation(line: 162, column: 13, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !3, line: 161, column: 36)
!297 = !DILocation(line: 163, column: 9, scope: !296)
!298 = !DILocation(line: 165, column: 20, scope: !218)
!299 = !DILocation(line: 165, column: 23, scope: !218)
!300 = !DILocation(line: 165, column: 31, scope: !218)
!301 = !DILocation(line: 165, column: 29, scope: !218)
!302 = !DILocation(line: 165, column: 17, scope: !218)
!303 = !DILocation(line: 167, column: 13, scope: !304)
!304 = distinct !DILexicalBlock(scope: !218, file: !3, line: 167, column: 13)
!305 = !DILocation(line: 167, column: 21, scope: !304)
!306 = !DILocation(line: 167, column: 13, scope: !218)
!307 = !DILocation(line: 168, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 167, column: 25)
!309 = !DILocation(line: 169, column: 9, scope: !308)
!310 = !DILocation(line: 171, column: 39, scope: !218)
!311 = !DILocation(line: 171, column: 9, scope: !218)
!312 = !DILocation(line: 171, column: 18, scope: !218)
!313 = !DILocation(line: 171, column: 32, scope: !218)
!314 = !DILocation(line: 171, column: 37, scope: !218)
!315 = !DILocation(line: 173, column: 32, scope: !218)
!316 = !DILocation(line: 173, column: 25, scope: !218)
!317 = !DILocation(line: 173, column: 14, scope: !218)
!318 = !DILocation(line: 174, column: 13, scope: !319)
!319 = distinct !DILexicalBlock(scope: !218, file: !3, line: 174, column: 13)
!320 = !DILocation(line: 174, column: 18, scope: !319)
!321 = !DILocation(line: 174, column: 13, scope: !218)
!322 = !DILocation(line: 175, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !3, line: 174, column: 26)
!324 = !DILocation(line: 176, column: 9, scope: !323)
!325 = !DILocation(line: 177, column: 39, scope: !218)
!326 = !DILocation(line: 177, column: 9, scope: !218)
!327 = !DILocation(line: 177, column: 18, scope: !218)
!328 = !DILocation(line: 177, column: 32, scope: !218)
!329 = !DILocation(line: 177, column: 37, scope: !218)
!330 = !DILocation(line: 180, column: 26, scope: !218)
!331 = !DILocation(line: 180, column: 19, scope: !218)
!332 = !DILocation(line: 180, column: 9, scope: !218)
!333 = !DILocation(line: 180, column: 17, scope: !218)
!334 = !DILocation(line: 181, column: 26, scope: !218)
!335 = !DILocation(line: 181, column: 19, scope: !218)
!336 = !DILocation(line: 181, column: 9, scope: !218)
!337 = !DILocation(line: 181, column: 17, scope: !218)
!338 = !DILocation(line: 183, column: 21, scope: !218)
!339 = !DILocation(line: 183, column: 25, scope: !218)
!340 = !DILocation(line: 183, column: 32, scope: !218)
!341 = !DILocation(line: 183, column: 39, scope: !218)
!342 = !DILocation(line: 183, column: 43, scope: !218)
!343 = !DILocation(line: 183, column: 15, scope: !218)
!344 = !DILocation(line: 183, column: 13, scope: !218)
!345 = !DILocation(line: 184, column: 13, scope: !346)
!346 = distinct !DILexicalBlock(scope: !218, file: !3, line: 184, column: 13)
!347 = !DILocation(line: 184, column: 20, scope: !346)
!348 = !DILocation(line: 184, column: 27, scope: !346)
!349 = !DILocation(line: 184, column: 17, scope: !346)
!350 = !DILocation(line: 184, column: 13, scope: !218)
!351 = !DILocation(line: 185, column: 13, scope: !352)
!352 = distinct !DILexicalBlock(scope: !346, file: !3, line: 184, column: 30)
!353 = !DILocation(line: 186, column: 9, scope: !352)
!354 = !DILocation(line: 187, column: 22, scope: !218)
!355 = !DILocation(line: 189, column: 16, scope: !218)
!356 = !DILocation(line: 189, column: 9, scope: !218)
!357 = !DILocation(line: 193, column: 21, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 193, column: 21)
!359 = distinct !DILexicalBlock(scope: !218, file: !3, line: 189, column: 23)
!360 = !DILocation(line: 193, column: 30, scope: !358)
!361 = !DILocation(line: 193, column: 21, scope: !359)
!362 = !DILocalVariable(name: "cp", scope: !363, file: !3, line: 194, type: !19)
!363 = distinct !DILexicalBlock(scope: !358, file: !3, line: 193, column: 43)
!364 = !DILocation(line: 194, column: 25, scope: !363)
!365 = !DILocalVariable(name: "ep", scope: !363, file: !3, line: 194, type: !19)
!366 = !DILocation(line: 194, column: 29, scope: !363)
!367 = !DILocalVariable(name: "size", scope: !363, file: !3, line: 194, type: !19)
!368 = !DILocation(line: 194, column: 33, scope: !363)
!369 = !DILocation(line: 196, column: 32, scope: !363)
!370 = !DILocation(line: 196, column: 26, scope: !363)
!371 = !DILocation(line: 196, column: 24, scope: !363)
!372 = !DILocation(line: 197, column: 27, scope: !363)
!373 = !DILocation(line: 197, column: 21, scope: !363)
!374 = !DILocation(line: 198, column: 32, scope: !363)
!375 = !DILocation(line: 198, column: 26, scope: !363)
!376 = !DILocation(line: 198, column: 24, scope: !363)
!377 = !DILocation(line: 199, column: 27, scope: !363)
!378 = !DILocation(line: 199, column: 35, scope: !363)
!379 = !DILocation(line: 199, column: 21, scope: !363)
!380 = !DILocation(line: 201, column: 28, scope: !363)
!381 = !DILocation(line: 201, column: 31, scope: !363)
!382 = !DILocation(line: 201, column: 30, scope: !363)
!383 = !DILocation(line: 201, column: 26, scope: !363)
!384 = !DILocation(line: 202, column: 44, scope: !363)
!385 = !DILocation(line: 202, column: 37, scope: !363)
!386 = !DILocation(line: 202, column: 26, scope: !363)
!387 = !DILocation(line: 203, column: 25, scope: !388)
!388 = distinct !DILexicalBlock(scope: !363, file: !3, line: 203, column: 25)
!389 = !DILocation(line: 203, column: 30, scope: !388)
!390 = !DILocation(line: 203, column: 25, scope: !363)
!391 = !DILocation(line: 204, column: 25, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 203, column: 38)
!393 = !DILocation(line: 205, column: 21, scope: !392)
!394 = !DILocation(line: 207, column: 33, scope: !363)
!395 = !DILocation(line: 207, column: 42, scope: !363)
!396 = !DILocation(line: 207, column: 48, scope: !363)
!397 = !DILocation(line: 207, column: 27, scope: !363)
!398 = !DILocation(line: 207, column: 25, scope: !363)
!399 = !DILocation(line: 208, column: 25, scope: !400)
!400 = distinct !DILexicalBlock(scope: !363, file: !3, line: 208, column: 25)
!401 = !DILocation(line: 208, column: 32, scope: !400)
!402 = !DILocation(line: 208, column: 29, scope: !400)
!403 = !DILocation(line: 208, column: 25, scope: !363)
!404 = !DILocation(line: 209, column: 25, scope: !405)
!405 = distinct !DILexicalBlock(scope: !400, file: !3, line: 208, column: 37)
!406 = !DILocation(line: 210, column: 21, scope: !405)
!407 = !DILocation(line: 212, column: 21, scope: !363)
!408 = !DILocation(line: 213, column: 51, scope: !363)
!409 = !DILocation(line: 213, column: 21, scope: !363)
!410 = !DILocation(line: 213, column: 30, scope: !363)
!411 = !DILocation(line: 213, column: 44, scope: !363)
!412 = !DILocation(line: 213, column: 49, scope: !363)
!413 = !DILocation(line: 214, column: 51, scope: !363)
!414 = !DILocation(line: 214, column: 21, scope: !363)
!415 = !DILocation(line: 214, column: 30, scope: !363)
!416 = !DILocation(line: 214, column: 44, scope: !363)
!417 = !DILocation(line: 214, column: 49, scope: !363)
!418 = !DILocation(line: 215, column: 21, scope: !363)
!419 = !DILocation(line: 215, column: 30, scope: !363)
!420 = !DILocation(line: 215, column: 44, scope: !363)
!421 = !DILocation(line: 215, column: 49, scope: !363)
!422 = !DILocation(line: 216, column: 34, scope: !363)
!423 = !DILocation(line: 217, column: 29, scope: !363)
!424 = !DILocation(line: 218, column: 17, scope: !363)
!425 = !DILocation(line: 219, column: 17, scope: !359)
!426 = !DILocation(line: 223, column: 29, scope: !359)
!427 = !DILocation(line: 223, column: 35, scope: !359)
!428 = !DILocation(line: 223, column: 17, scope: !359)
!429 = !DILocation(line: 224, column: 17, scope: !359)
!430 = !DILocation(line: 228, column: 29, scope: !359)
!431 = !DILocation(line: 228, column: 35, scope: !359)
!432 = !DILocation(line: 228, column: 17, scope: !359)
!433 = !DILocation(line: 229, column: 17, scope: !359)
!434 = !DILocation(line: 233, column: 25, scope: !359)
!435 = !DILocation(line: 233, column: 17, scope: !359)
!436 = !DILocation(line: 234, column: 17, scope: !359)
!437 = !DILocation(line: 237, column: 21, scope: !438)
!438 = distinct !DILexicalBlock(scope: !359, file: !3, line: 237, column: 21)
!439 = !DILocation(line: 237, column: 29, scope: !438)
!440 = !DILocation(line: 237, column: 34, scope: !438)
!441 = !DILocation(line: 237, column: 43, scope: !438)
!442 = !DILocation(line: 237, column: 60, scope: !438)
!443 = !DILocation(line: 237, column: 21, scope: !359)
!444 = !DILocation(line: 239, column: 26, scope: !445)
!445 = distinct !DILexicalBlock(scope: !438, file: !3, line: 237, column: 66)
!446 = !DILocation(line: 239, column: 35, scope: !445)
!447 = !DILocation(line: 239, column: 51, scope: !445)
!448 = !DILocation(line: 239, column: 21, scope: !445)
!449 = !DILocation(line: 240, column: 17, scope: !445)
!450 = !DILocation(line: 241, column: 33, scope: !451)
!451 = distinct !DILexicalBlock(scope: !438, file: !3, line: 240, column: 22)
!452 = !DILocation(line: 241, column: 39, scope: !451)
!453 = !DILocation(line: 241, column: 21, scope: !451)
!454 = !DILocation(line: 242, column: 29, scope: !451)
!455 = !DILocation(line: 244, column: 17, scope: !359)
!456 = !DILocation(line: 251, column: 21, scope: !457)
!457 = distinct !DILexicalBlock(scope: !359, file: !3, line: 251, column: 21)
!458 = !DILocation(line: 251, column: 29, scope: !457)
!459 = !DILocation(line: 251, column: 21, scope: !359)
!460 = !DILocation(line: 252, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !3, line: 251, column: 34)
!462 = !DILocation(line: 252, column: 21, scope: !461)
!463 = !DILocation(line: 253, column: 21, scope: !461)
!464 = !DILocation(line: 255, column: 28, scope: !465)
!465 = distinct !DILexicalBlock(scope: !359, file: !3, line: 255, column: 21)
!466 = !DILocation(line: 255, column: 32, scope: !465)
!467 = !DILocation(line: 255, column: 21, scope: !465)
!468 = !DILocation(line: 255, column: 21, scope: !359)
!469 = !DILocation(line: 256, column: 29, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !3, line: 255, column: 48)
!471 = !DILocation(line: 256, column: 21, scope: !470)
!472 = !DILocation(line: 257, column: 17, scope: !470)
!473 = !DILocation(line: 259, column: 46, scope: !359)
!474 = !DILocation(line: 260, column: 56, scope: !359)
!475 = !DILocation(line: 260, column: 54, scope: !359)
!476 = !DILocation(line: 261, column: 50, scope: !359)
!477 = !DILocation(line: 261, column: 58, scope: !359)
!478 = !DILocation(line: 261, column: 65, scope: !359)
!479 = !DILocation(line: 261, column: 63, scope: !359)
!480 = !DILocation(line: 261, column: 49, scope: !359)
!481 = !DILocation(line: 261, column: 47, scope: !359)
!482 = !DILocation(line: 262, column: 50, scope: !359)
!483 = !DILocation(line: 262, column: 58, scope: !359)
!484 = !DILocation(line: 262, column: 65, scope: !359)
!485 = !DILocation(line: 262, column: 63, scope: !359)
!486 = !DILocation(line: 262, column: 49, scope: !359)
!487 = !DILocation(line: 262, column: 47, scope: !359)
!488 = !DILocation(line: 263, column: 21, scope: !489)
!489 = distinct !DILexicalBlock(scope: !359, file: !3, line: 263, column: 21)
!490 = !DILocation(line: 263, column: 21, scope: !359)
!491 = !DILocation(line: 264, column: 79, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !3, line: 263, column: 30)
!493 = !DILocation(line: 264, column: 58, scope: !492)
!494 = !DILocation(line: 264, column: 21, scope: !492)
!495 = !DILocation(line: 265, column: 49, scope: !492)
!496 = !DILocation(line: 265, column: 28, scope: !492)
!497 = !DILocation(line: 265, column: 21, scope: !492)
!498 = !DILocation(line: 266, column: 33, scope: !499)
!499 = distinct !DILexicalBlock(scope: !492, file: !3, line: 265, column: 65)
!500 = !DILocation(line: 266, column: 59, scope: !499)
!501 = !DILocation(line: 267, column: 33, scope: !499)
!502 = !DILocation(line: 267, column: 60, scope: !499)
!503 = !DILocation(line: 268, column: 33, scope: !499)
!504 = !DILocation(line: 268, column: 58, scope: !499)
!505 = !DILocation(line: 269, column: 34, scope: !499)
!506 = !DILocation(line: 269, column: 55, scope: !499)
!507 = !DILocation(line: 271, column: 81, scope: !492)
!508 = !DILocation(line: 271, column: 60, scope: !492)
!509 = !DILocation(line: 271, column: 112, scope: !492)
!510 = !DILocation(line: 271, column: 91, scope: !492)
!511 = !DILocation(line: 271, column: 21, scope: !492)
!512 = !DILocation(line: 273, column: 25, scope: !513)
!513 = distinct !DILexicalBlock(scope: !492, file: !3, line: 273, column: 25)
!514 = !DILocation(line: 273, column: 34, scope: !513)
!515 = !DILocation(line: 273, column: 37, scope: !513)
!516 = !DILocation(line: 273, column: 25, scope: !492)
!517 = !DILocation(line: 274, column: 33, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !3, line: 273, column: 46)
!519 = !DILocation(line: 274, column: 25, scope: !518)
!520 = !DILocation(line: 275, column: 21, scope: !518)
!521 = !DILocation(line: 276, column: 17, scope: !492)
!522 = !DILabel(scope: !359, name: "ignore", file: !3, line: 278)
!523 = !DILocation(line: 278, column: 17, scope: !359)
!524 = !DILocation(line: 280, column: 22, scope: !359)
!525 = !DILocation(line: 280, column: 31, scope: !359)
!526 = !DILocation(line: 280, column: 47, scope: !359)
!527 = !DILocation(line: 280, column: 17, scope: !359)
!528 = !DILocation(line: 281, column: 17, scope: !359)
!529 = !DILocation(line: 285, column: 21, scope: !530)
!530 = distinct !DILexicalBlock(scope: !359, file: !3, line: 285, column: 21)
!531 = !DILocation(line: 285, column: 30, scope: !530)
!532 = !DILocation(line: 285, column: 21, scope: !359)
!533 = !DILocation(line: 288, column: 42, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !3, line: 285, column: 46)
!535 = !DILocation(line: 288, column: 35, scope: !534)
!536 = !DILocation(line: 288, column: 21, scope: !534)
!537 = !DILocation(line: 289, column: 32, scope: !538)
!538 = distinct !DILexicalBlock(scope: !534, file: !3, line: 289, column: 25)
!539 = !DILocation(line: 289, column: 36, scope: !538)
!540 = !DILocation(line: 289, column: 25, scope: !538)
!541 = !DILocation(line: 289, column: 51, scope: !538)
!542 = !DILocation(line: 289, column: 25, scope: !534)
!543 = !DILocation(line: 290, column: 38, scope: !544)
!544 = distinct !DILexicalBlock(scope: !538, file: !3, line: 289, column: 56)
!545 = !DILocation(line: 290, column: 44, scope: !544)
!546 = !DILocation(line: 290, column: 25, scope: !544)
!547 = !DILocation(line: 291, column: 25, scope: !544)
!548 = !DILocation(line: 292, column: 38, scope: !549)
!549 = distinct !DILexicalBlock(scope: !538, file: !3, line: 292, column: 31)
!550 = !DILocation(line: 292, column: 42, scope: !549)
!551 = !DILocation(line: 292, column: 31, scope: !549)
!552 = !DILocation(line: 292, column: 58, scope: !549)
!553 = !DILocation(line: 292, column: 31, scope: !538)
!554 = !DILocation(line: 293, column: 25, scope: !555)
!555 = distinct !DILexicalBlock(scope: !549, file: !3, line: 292, column: 63)
!556 = !DILocation(line: 293, column: 34, scope: !555)
!557 = !DILocation(line: 293, column: 46, scope: !555)
!558 = !DILocation(line: 293, column: 50, scope: !555)
!559 = !DILocation(line: 293, column: 55, scope: !555)
!560 = !DILocation(line: 294, column: 29, scope: !561)
!561 = distinct !DILexicalBlock(scope: !555, file: !3, line: 294, column: 29)
!562 = !DILocation(line: 294, column: 29, scope: !555)
!563 = !DILocation(line: 295, column: 83, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !3, line: 294, column: 38)
!565 = !DILocation(line: 295, column: 29, scope: !564)
!566 = !DILocation(line: 296, column: 33, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !3, line: 296, column: 33)
!568 = !DILocation(line: 296, column: 33, scope: !564)
!569 = !DILocation(line: 297, column: 41, scope: !570)
!570 = distinct !DILexicalBlock(scope: !567, file: !3, line: 296, column: 42)
!571 = !DILocation(line: 297, column: 50, scope: !570)
!572 = !DILocation(line: 297, column: 62, scope: !570)
!573 = !DILocation(line: 297, column: 33, scope: !570)
!574 = !DILocation(line: 298, column: 29, scope: !570)
!575 = !DILocation(line: 299, column: 25, scope: !564)
!576 = !DILocation(line: 300, column: 25, scope: !555)
!577 = !DILocation(line: 302, column: 17, scope: !534)
!578 = !DILocation(line: 304, column: 22, scope: !359)
!579 = !DILocation(line: 304, column: 31, scope: !359)
!580 = !DILocation(line: 304, column: 47, scope: !359)
!581 = !DILocation(line: 304, column: 17, scope: !359)
!582 = !DILocation(line: 305, column: 17, scope: !359)
!583 = !DILocation(line: 308, column: 21, scope: !584)
!584 = distinct !DILexicalBlock(scope: !359, file: !3, line: 308, column: 21)
!585 = !DILocation(line: 308, column: 30, scope: !584)
!586 = !DILocation(line: 308, column: 21, scope: !359)
!587 = !DILocation(line: 309, column: 25, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 309, column: 25)
!589 = distinct !DILexicalBlock(scope: !584, file: !3, line: 308, column: 46)
!590 = !DILocation(line: 309, column: 25, scope: !589)
!591 = !DILocation(line: 310, column: 80, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !3, line: 309, column: 34)
!593 = !DILocation(line: 310, column: 25, scope: !592)
!594 = !DILocation(line: 311, column: 21, scope: !592)
!595 = !DILocation(line: 314, column: 17, scope: !589)
!596 = !DILocation(line: 315, column: 26, scope: !597)
!597 = distinct !DILexicalBlock(scope: !584, file: !3, line: 314, column: 22)
!598 = !DILocation(line: 315, column: 35, scope: !597)
!599 = !DILocation(line: 315, column: 51, scope: !597)
!600 = !DILocation(line: 315, column: 21, scope: !597)
!601 = !DILocation(line: 317, column: 17, scope: !359)
!602 = !DILocation(line: 332, column: 21, scope: !603)
!603 = distinct !DILexicalBlock(scope: !359, file: !3, line: 332, column: 21)
!604 = !DILocation(line: 332, column: 29, scope: !603)
!605 = !DILocation(line: 332, column: 21, scope: !359)
!606 = !DILocation(line: 333, column: 29, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !3, line: 332, column: 33)
!608 = !DILocation(line: 333, column: 21, scope: !607)
!609 = !DILocation(line: 334, column: 21, scope: !607)
!610 = !DILocation(line: 336, column: 30, scope: !359)
!611 = !DILocation(line: 336, column: 36, scope: !359)
!612 = !DILocation(line: 336, column: 17, scope: !359)
!613 = !DILocation(line: 337, column: 17, scope: !359)
!614 = !DILocation(line: 340, column: 21, scope: !615)
!615 = distinct !DILexicalBlock(scope: !359, file: !3, line: 340, column: 21)
!616 = !DILocation(line: 340, column: 21, scope: !359)
!617 = !DILocation(line: 341, column: 67, scope: !618)
!618 = distinct !DILexicalBlock(scope: !615, file: !3, line: 340, column: 30)
!619 = !DILocation(line: 341, column: 75, scope: !618)
!620 = !DILocation(line: 341, column: 21, scope: !618)
!621 = !DILocation(line: 342, column: 17, scope: !618)
!622 = !DILocation(line: 343, column: 17, scope: !359)
!623 = !DILocation(line: 133, column: 5, scope: !219)
!624 = distinct !{!624, !625, !626}
!625 = !DILocation(line: 133, column: 5, scope: !220)
!626 = !DILocation(line: 345, column: 5, scope: !220)
!627 = !DILocation(line: 347, column: 1, scope: !133)
!628 = distinct !DISubprogram(name: "CheckSectionsAllocated", scope: !3, file: !3, line: 101, type: !629, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !35)
!629 = !DISubroutineType(types: !630)
!630 = !{null}
!631 = !DILocation(line: 103, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !3, line: 103, column: 9)
!633 = !DILocation(line: 103, column: 24, scope: !632)
!634 = !DILocation(line: 103, column: 22, scope: !632)
!635 = !DILocation(line: 103, column: 9, scope: !628)
!636 = !DILocation(line: 104, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !3, line: 103, column: 42)
!638 = !DILocation(line: 105, column: 5, scope: !637)
!639 = !DILocation(line: 106, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !628, file: !3, line: 106, column: 9)
!641 = !DILocation(line: 106, column: 25, scope: !640)
!642 = !DILocation(line: 106, column: 22, scope: !640)
!643 = !DILocation(line: 106, column: 9, scope: !628)
!644 = !DILocation(line: 107, column: 30, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !3, line: 106, column: 43)
!646 = !DILocation(line: 107, column: 47, scope: !645)
!647 = !DILocation(line: 107, column: 27, scope: !645)
!648 = !DILocation(line: 108, column: 41, scope: !645)
!649 = !DILocation(line: 108, column: 69, scope: !645)
!650 = !DILocation(line: 108, column: 68, scope: !645)
!651 = !DILocation(line: 108, column: 33, scope: !645)
!652 = !DILocation(line: 108, column: 20, scope: !645)
!653 = !DILocation(line: 108, column: 18, scope: !645)
!654 = !DILocation(line: 109, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !645, file: !3, line: 109, column: 13)
!656 = !DILocation(line: 109, column: 22, scope: !655)
!657 = !DILocation(line: 109, column: 13, scope: !645)
!658 = !DILocation(line: 110, column: 13, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !3, line: 109, column: 30)
!660 = !DILocation(line: 111, column: 9, scope: !659)
!661 = !DILocation(line: 112, column: 5, scope: !645)
!662 = !DILocation(line: 113, column: 1, scope: !628)
!663 = distinct !DISubprogram(name: "process_COM", scope: !3, file: !3, line: 37, type: !664, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !35)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !666, !19}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!668 = !DILocalVariable(name: "Data", arg: 1, scope: !663, file: !3, line: 37, type: !666)
!669 = !DILocation(line: 37, column: 40, scope: !663)
!670 = !DILocalVariable(name: "length", arg: 2, scope: !663, file: !3, line: 37, type: !19)
!671 = !DILocation(line: 37, column: 50, scope: !663)
!672 = !DILocalVariable(name: "ch", scope: !663, file: !3, line: 39, type: !19)
!673 = !DILocation(line: 39, column: 9, scope: !663)
!674 = !DILocalVariable(name: "Comment", scope: !663, file: !3, line: 40, type: !675)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128008, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 16001)
!678 = !DILocation(line: 40, column: 10, scope: !663)
!679 = !DILocalVariable(name: "nch", scope: !663, file: !3, line: 41, type: !19)
!680 = !DILocation(line: 41, column: 9, scope: !663)
!681 = !DILocalVariable(name: "a", scope: !663, file: !3, line: 42, type: !19)
!682 = !DILocation(line: 42, column: 9, scope: !663)
!683 = !DILocation(line: 44, column: 9, scope: !663)
!684 = !DILocation(line: 46, column: 9, scope: !685)
!685 = distinct !DILexicalBlock(scope: !663, file: !3, line: 46, column: 9)
!686 = !DILocation(line: 46, column: 16, scope: !685)
!687 = !DILocation(line: 46, column: 9, scope: !663)
!688 = !DILocation(line: 46, column: 43, scope: !685)
!689 = !DILocation(line: 46, column: 36, scope: !685)
!690 = !DILocation(line: 48, column: 11, scope: !691)
!691 = distinct !DILexicalBlock(scope: !663, file: !3, line: 48, column: 5)
!692 = !DILocation(line: 48, column: 10, scope: !691)
!693 = !DILocation(line: 48, column: 14, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !3, line: 48, column: 5)
!695 = !DILocation(line: 48, column: 16, scope: !694)
!696 = !DILocation(line: 48, column: 15, scope: !694)
!697 = !DILocation(line: 48, column: 5, scope: !691)
!698 = !DILocation(line: 49, column: 14, scope: !699)
!699 = distinct !DILexicalBlock(scope: !694, file: !3, line: 48, column: 27)
!700 = !DILocation(line: 49, column: 19, scope: !699)
!701 = !DILocation(line: 49, column: 12, scope: !699)
!702 = !DILocation(line: 51, column: 13, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !3, line: 51, column: 13)
!704 = !DILocation(line: 51, column: 16, scope: !703)
!705 = !DILocation(line: 51, column: 24, scope: !703)
!706 = !DILocation(line: 51, column: 27, scope: !703)
!707 = !DILocation(line: 51, column: 32, scope: !703)
!708 = !DILocation(line: 51, column: 33, scope: !703)
!709 = !DILocation(line: 51, column: 37, scope: !703)
!710 = !DILocation(line: 51, column: 13, scope: !699)
!711 = !DILocation(line: 51, column: 46, scope: !703)
!712 = !DILocation(line: 53, column: 13, scope: !713)
!713 = distinct !DILexicalBlock(scope: !699, file: !3, line: 53, column: 13)
!714 = !DILocation(line: 53, column: 16, scope: !713)
!715 = !DILocation(line: 53, column: 22, scope: !713)
!716 = !DILocation(line: 53, column: 25, scope: !713)
!717 = !DILocation(line: 53, column: 28, scope: !713)
!718 = !DILocation(line: 53, column: 36, scope: !713)
!719 = !DILocation(line: 53, column: 39, scope: !713)
!720 = !DILocation(line: 53, column: 42, scope: !713)
!721 = !DILocation(line: 53, column: 13, scope: !699)
!722 = !DILocation(line: 54, column: 36, scope: !723)
!723 = distinct !DILexicalBlock(scope: !713, file: !3, line: 53, column: 50)
!724 = !DILocation(line: 54, column: 30, scope: !723)
!725 = !DILocation(line: 54, column: 24, scope: !723)
!726 = !DILocation(line: 54, column: 13, scope: !723)
!727 = !DILocation(line: 54, column: 28, scope: !723)
!728 = !DILocation(line: 55, column: 9, scope: !723)
!729 = !DILocation(line: 56, column: 24, scope: !730)
!730 = distinct !DILexicalBlock(scope: !713, file: !3, line: 55, column: 14)
!731 = !DILocation(line: 56, column: 13, scope: !730)
!732 = !DILocation(line: 56, column: 28, scope: !730)
!733 = !DILocation(line: 58, column: 5, scope: !699)
!734 = !DILocation(line: 48, column: 24, scope: !694)
!735 = !DILocation(line: 48, column: 5, scope: !694)
!736 = distinct !{!736, !697, !737, !738}
!737 = !DILocation(line: 58, column: 5, scope: !691)
!738 = !{!"llvm.loop.mustprogress"}
!739 = !DILocation(line: 60, column: 13, scope: !663)
!740 = !DILocation(line: 60, column: 5, scope: !663)
!741 = !DILocation(line: 60, column: 18, scope: !663)
!742 = !DILocation(line: 62, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !663, file: !3, line: 62, column: 9)
!744 = !DILocation(line: 62, column: 9, scope: !663)
!745 = !DILocation(line: 63, column: 43, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !3, line: 62, column: 18)
!747 = !DILocation(line: 63, column: 9, scope: !746)
!748 = !DILocation(line: 64, column: 5, scope: !746)
!749 = !DILocation(line: 66, column: 31, scope: !663)
!750 = !DILocation(line: 66, column: 5, scope: !663)
!751 = !DILocation(line: 67, column: 33, scope: !663)
!752 = !DILocation(line: 68, column: 1, scope: !663)
!753 = distinct !DISubprogram(name: "process_SOFn", scope: !3, file: !3, line: 74, type: !664, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !35)
!754 = !DILocalVariable(name: "Data", arg: 1, scope: !753, file: !3, line: 74, type: !666)
!755 = !DILocation(line: 74, column: 41, scope: !753)
!756 = !DILocalVariable(name: "marker", arg: 2, scope: !753, file: !3, line: 74, type: !19)
!757 = !DILocation(line: 74, column: 51, scope: !753)
!758 = !DILocalVariable(name: "data_precision", scope: !753, file: !3, line: 76, type: !19)
!759 = !DILocation(line: 76, column: 9, scope: !753)
!760 = !DILocalVariable(name: "num_components", scope: !753, file: !3, line: 76, type: !19)
!761 = !DILocation(line: 76, column: 25, scope: !753)
!762 = !DILocation(line: 78, column: 22, scope: !753)
!763 = !DILocation(line: 78, column: 20, scope: !753)
!764 = !DILocation(line: 79, column: 31, scope: !753)
!765 = !DILocation(line: 79, column: 35, scope: !753)
!766 = !DILocation(line: 79, column: 24, scope: !753)
!767 = !DILocation(line: 79, column: 22, scope: !753)
!768 = !DILocation(line: 80, column: 30, scope: !753)
!769 = !DILocation(line: 80, column: 34, scope: !753)
!770 = !DILocation(line: 80, column: 23, scope: !753)
!771 = !DILocation(line: 80, column: 21, scope: !753)
!772 = !DILocation(line: 81, column: 22, scope: !753)
!773 = !DILocation(line: 81, column: 20, scope: !753)
!774 = !DILocation(line: 83, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !753, file: !3, line: 83, column: 9)
!776 = !DILocation(line: 83, column: 24, scope: !775)
!777 = !DILocation(line: 83, column: 9, scope: !753)
!778 = !DILocation(line: 84, column: 27, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !3, line: 83, column: 29)
!780 = !DILocation(line: 85, column: 5, scope: !779)
!781 = !DILocation(line: 86, column: 27, scope: !782)
!782 = distinct !DILexicalBlock(scope: !775, file: !3, line: 85, column: 10)
!783 = !DILocation(line: 89, column: 25, scope: !753)
!784 = !DILocation(line: 89, column: 23, scope: !753)
!785 = !DILocation(line: 91, column: 9, scope: !786)
!786 = distinct !DILexicalBlock(scope: !753, file: !3, line: 91, column: 9)
!787 = !DILocation(line: 91, column: 9, scope: !753)
!788 = !DILocation(line: 93, column: 30, scope: !789)
!789 = distinct !DILexicalBlock(scope: !786, file: !3, line: 91, column: 18)
!790 = !DILocation(line: 93, column: 47, scope: !789)
!791 = !DILocation(line: 93, column: 55, scope: !789)
!792 = !DILocation(line: 93, column: 71, scope: !789)
!793 = !DILocation(line: 92, column: 9, scope: !789)
!794 = !DILocation(line: 94, column: 5, scope: !789)
!795 = !DILocation(line: 95, column: 1, scope: !753)
!796 = distinct !DISubprogram(name: "DiscardData", scope: !3, file: !3, line: 352, type: !629, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!797 = !DILocalVariable(name: "a", scope: !796, file: !3, line: 354, type: !19)
!798 = !DILocation(line: 354, column: 9, scope: !796)
!799 = !DILocation(line: 356, column: 11, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !3, line: 356, column: 5)
!801 = !DILocation(line: 356, column: 10, scope: !800)
!802 = !DILocation(line: 356, column: 14, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !3, line: 356, column: 5)
!804 = !DILocation(line: 356, column: 16, scope: !803)
!805 = !DILocation(line: 356, column: 15, scope: !803)
!806 = !DILocation(line: 356, column: 5, scope: !800)
!807 = !DILocation(line: 357, column: 14, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !3, line: 356, column: 33)
!809 = !DILocation(line: 357, column: 23, scope: !808)
!810 = !DILocation(line: 357, column: 26, scope: !808)
!811 = !DILocation(line: 357, column: 9, scope: !808)
!812 = !DILocation(line: 358, column: 5, scope: !808)
!813 = !DILocation(line: 356, column: 30, scope: !803)
!814 = !DILocation(line: 356, column: 5, scope: !803)
!815 = distinct !{!815, !806, !816, !738}
!816 = !DILocation(line: 358, column: 5, scope: !800)
!817 = !DILocation(line: 360, column: 5, scope: !796)
!818 = !DILocation(line: 361, column: 18, scope: !796)
!819 = !DILocation(line: 362, column: 13, scope: !796)
!820 = !DILocation(line: 363, column: 1, scope: !796)
!821 = distinct !DISubprogram(name: "ReadJpegFile", scope: !3, file: !3, line: 368, type: !822, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!822 = !DISubroutineType(types: !823)
!823 = !{!19, !33, !191}
!824 = !DILocalVariable(name: "FileName", arg: 1, scope: !821, file: !3, line: 368, type: !33)
!825 = !DILocation(line: 368, column: 31, scope: !821)
!826 = !DILocalVariable(name: "ReadMode", arg: 2, scope: !821, file: !3, line: 368, type: !191)
!827 = !DILocation(line: 368, column: 52, scope: !821)
!828 = !DILocalVariable(name: "infile", scope: !821, file: !3, line: 370, type: !136)
!829 = !DILocation(line: 370, column: 12, scope: !821)
!830 = !DILocalVariable(name: "ret", scope: !821, file: !3, line: 371, type: !19)
!831 = !DILocation(line: 371, column: 9, scope: !821)
!832 = !DILocation(line: 373, column: 20, scope: !821)
!833 = !DILocation(line: 373, column: 14, scope: !821)
!834 = !DILocation(line: 373, column: 12, scope: !821)
!835 = !DILocation(line: 375, column: 9, scope: !836)
!836 = distinct !DILexicalBlock(scope: !821, file: !3, line: 375, column: 9)
!837 = !DILocation(line: 375, column: 16, scope: !836)
!838 = !DILocation(line: 375, column: 9, scope: !821)
!839 = !DILocation(line: 376, column: 17, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !3, line: 375, column: 25)
!841 = !DILocation(line: 376, column: 46, scope: !840)
!842 = !DILocation(line: 376, column: 9, scope: !840)
!843 = !DILocation(line: 377, column: 9, scope: !840)
!844 = !DILocation(line: 382, column: 28, scope: !821)
!845 = !DILocation(line: 382, column: 36, scope: !821)
!846 = !DILocation(line: 382, column: 11, scope: !821)
!847 = !DILocation(line: 382, column: 9, scope: !821)
!848 = !DILocation(line: 383, column: 10, scope: !849)
!849 = distinct !DILexicalBlock(scope: !821, file: !3, line: 383, column: 9)
!850 = !DILocation(line: 383, column: 9, scope: !821)
!851 = !DILocation(line: 384, column: 13, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 384, column: 13)
!853 = distinct !DILexicalBlock(scope: !849, file: !3, line: 383, column: 14)
!854 = !DILocation(line: 384, column: 22, scope: !852)
!855 = !DILocation(line: 384, column: 13, scope: !853)
!856 = !DILocation(line: 387, column: 17, scope: !857)
!857 = distinct !DILexicalBlock(scope: !852, file: !3, line: 384, column: 34)
!858 = !DILocation(line: 388, column: 9, scope: !857)
!859 = !DILocation(line: 389, column: 21, scope: !860)
!860 = distinct !DILexicalBlock(scope: !852, file: !3, line: 388, column: 14)
!861 = !DILocation(line: 389, column: 45, scope: !860)
!862 = !DILocation(line: 389, column: 13, scope: !860)
!863 = !DILocation(line: 391, column: 5, scope: !853)
!864 = !DILocation(line: 393, column: 12, scope: !821)
!865 = !DILocation(line: 393, column: 5, scope: !821)
!866 = !DILocation(line: 395, column: 9, scope: !867)
!867 = distinct !DILexicalBlock(scope: !821, file: !3, line: 395, column: 9)
!868 = !DILocation(line: 395, column: 13, scope: !867)
!869 = !DILocation(line: 395, column: 9, scope: !821)
!870 = !DILocation(line: 396, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !867, file: !3, line: 395, column: 22)
!872 = !DILocation(line: 397, column: 5, scope: !871)
!873 = !DILocation(line: 398, column: 12, scope: !821)
!874 = !DILocation(line: 398, column: 5, scope: !821)
!875 = !DILocation(line: 399, column: 1, scope: !821)
!876 = distinct !DISubprogram(name: "SaveThumbnail", scope: !3, file: !3, line: 405, type: !877, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!877 = !DISubroutineType(types: !878)
!878 = !{!19, !144}
!879 = !DILocalVariable(name: "ThumbFileName", arg: 1, scope: !876, file: !3, line: 405, type: !144)
!880 = !DILocation(line: 405, column: 26, scope: !876)
!881 = !DILocalVariable(name: "ThumbnailFile", scope: !876, file: !3, line: 407, type: !136)
!882 = !DILocation(line: 407, column: 12, scope: !876)
!883 = !DILocation(line: 409, column: 19, scope: !884)
!884 = distinct !DILexicalBlock(scope: !876, file: !3, line: 409, column: 9)
!885 = !DILocation(line: 409, column: 35, scope: !884)
!886 = !DILocation(line: 409, column: 40, scope: !884)
!887 = !DILocation(line: 409, column: 53, scope: !884)
!888 = !DILocation(line: 409, column: 67, scope: !884)
!889 = !DILocation(line: 409, column: 9, scope: !876)
!890 = !DILocation(line: 410, column: 17, scope: !891)
!891 = distinct !DILexicalBlock(scope: !884, file: !3, line: 409, column: 72)
!892 = !DILocation(line: 410, column: 9, scope: !891)
!893 = !DILocation(line: 411, column: 9, scope: !891)
!894 = !DILocation(line: 414, column: 16, scope: !895)
!895 = distinct !DILexicalBlock(scope: !876, file: !3, line: 414, column: 9)
!896 = !DILocation(line: 414, column: 9, scope: !895)
!897 = !DILocation(line: 414, column: 36, scope: !895)
!898 = !DILocation(line: 414, column: 9, scope: !876)
!899 = !DILocation(line: 417, column: 25, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !3, line: 414, column: 41)
!901 = !DILocation(line: 417, column: 23, scope: !900)
!902 = !DILocation(line: 418, column: 5, scope: !900)
!903 = !DILocation(line: 419, column: 31, scope: !904)
!904 = distinct !DILexicalBlock(scope: !895, file: !3, line: 418, column: 10)
!905 = !DILocation(line: 419, column: 25, scope: !904)
!906 = !DILocation(line: 419, column: 23, scope: !904)
!907 = !DILocation(line: 422, column: 9, scope: !908)
!908 = distinct !DILexicalBlock(scope: !876, file: !3, line: 422, column: 9)
!909 = !DILocation(line: 422, column: 9, scope: !876)
!910 = !DILocalVariable(name: "ThumbnailPointer", scope: !911, file: !3, line: 423, type: !14)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 422, column: 23)
!912 = !DILocation(line: 423, column: 17, scope: !911)
!913 = !DILocalVariable(name: "ExifSection", scope: !911, file: !3, line: 424, type: !20)
!914 = !DILocation(line: 424, column: 21, scope: !911)
!915 = !DILocation(line: 425, column: 23, scope: !911)
!916 = !DILocation(line: 425, column: 21, scope: !911)
!917 = !DILocation(line: 426, column: 28, scope: !911)
!918 = !DILocation(line: 426, column: 41, scope: !911)
!919 = !DILocation(line: 426, column: 56, scope: !911)
!920 = !DILocation(line: 426, column: 45, scope: !911)
!921 = !DILocation(line: 426, column: 71, scope: !911)
!922 = !DILocation(line: 426, column: 26, scope: !911)
!923 = !DILocation(line: 428, column: 16, scope: !911)
!924 = !DILocation(line: 428, column: 44, scope: !911)
!925 = !DILocation(line: 428, column: 34, scope: !911)
!926 = !DILocation(line: 428, column: 62, scope: !911)
!927 = !DILocation(line: 428, column: 9, scope: !911)
!928 = !DILocation(line: 429, column: 16, scope: !911)
!929 = !DILocation(line: 429, column: 9, scope: !911)
!930 = !DILocation(line: 430, column: 9, scope: !911)
!931 = !DILocation(line: 432, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !908, file: !3, line: 431, column: 10)
!933 = !DILocation(line: 433, column: 9, scope: !932)
!934 = !DILocation(line: 435, column: 1, scope: !876)
!935 = distinct !DISubprogram(name: "FindSection", scope: !3, file: !3, line: 643, type: !936, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!936 = !DISubroutineType(types: !937)
!937 = !{!20, !19}
!938 = !DILocalVariable(name: "SectionType", arg: 1, scope: !935, file: !3, line: 643, type: !19)
!939 = !DILocation(line: 643, column: 29, scope: !935)
!940 = !DILocalVariable(name: "a", scope: !935, file: !3, line: 645, type: !19)
!941 = !DILocation(line: 645, column: 9, scope: !935)
!942 = !DILocation(line: 647, column: 11, scope: !943)
!943 = distinct !DILexicalBlock(scope: !935, file: !3, line: 647, column: 5)
!944 = !DILocation(line: 647, column: 10, scope: !943)
!945 = !DILocation(line: 647, column: 14, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !3, line: 647, column: 5)
!947 = !DILocation(line: 647, column: 16, scope: !946)
!948 = !DILocation(line: 647, column: 15, scope: !946)
!949 = !DILocation(line: 647, column: 5, scope: !943)
!950 = !DILocation(line: 648, column: 13, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 648, column: 13)
!952 = distinct !DILexicalBlock(scope: !946, file: !3, line: 647, column: 33)
!953 = !DILocation(line: 648, column: 22, scope: !951)
!954 = !DILocation(line: 648, column: 25, scope: !951)
!955 = !DILocation(line: 648, column: 33, scope: !951)
!956 = !DILocation(line: 648, column: 30, scope: !951)
!957 = !DILocation(line: 648, column: 13, scope: !952)
!958 = !DILocation(line: 649, column: 21, scope: !959)
!959 = distinct !DILexicalBlock(scope: !951, file: !3, line: 648, column: 45)
!960 = !DILocation(line: 649, column: 30, scope: !959)
!961 = !DILocation(line: 649, column: 13, scope: !959)
!962 = !DILocation(line: 651, column: 5, scope: !952)
!963 = !DILocation(line: 647, column: 30, scope: !946)
!964 = !DILocation(line: 647, column: 5, scope: !946)
!965 = distinct !{!965, !949, !966, !738}
!966 = !DILocation(line: 651, column: 5, scope: !943)
!967 = !DILocation(line: 653, column: 5, scope: !935)
!968 = !DILocation(line: 654, column: 1, scope: !935)
!969 = distinct !DISubprogram(name: "ReplaceThumbnail", scope: !3, file: !3, line: 440, type: !970, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!970 = !DISubroutineType(types: !971)
!971 = !{!19, !33}
!972 = !DILocalVariable(name: "ThumbFileName", arg: 1, scope: !969, file: !3, line: 440, type: !33)
!973 = !DILocation(line: 440, column: 35, scope: !969)
!974 = !DILocalVariable(name: "ThumbnailFile", scope: !969, file: !3, line: 442, type: !136)
!975 = !DILocation(line: 442, column: 12, scope: !969)
!976 = !DILocalVariable(name: "ThumbLen", scope: !969, file: !3, line: 443, type: !19)
!977 = !DILocation(line: 443, column: 9, scope: !969)
!978 = !DILocalVariable(name: "NewExifSize", scope: !969, file: !3, line: 443, type: !19)
!979 = !DILocation(line: 443, column: 19, scope: !969)
!980 = !DILocalVariable(name: "ExifSection", scope: !969, file: !3, line: 444, type: !20)
!981 = !DILocation(line: 444, column: 17, scope: !969)
!982 = !DILocalVariable(name: "ThumbnailPointer", scope: !969, file: !3, line: 445, type: !14)
!983 = !DILocation(line: 445, column: 13, scope: !969)
!984 = !DILocation(line: 447, column: 19, scope: !985)
!985 = distinct !DILexicalBlock(scope: !969, file: !3, line: 447, column: 9)
!986 = !DILocation(line: 447, column: 35, scope: !985)
!987 = !DILocation(line: 447, column: 40, scope: !985)
!988 = !DILocation(line: 447, column: 53, scope: !985)
!989 = !DILocation(line: 447, column: 43, scope: !985)
!990 = !DILocation(line: 447, column: 68, scope: !985)
!991 = !DILocation(line: 447, column: 9, scope: !969)
!992 = !DILocation(line: 448, column: 13, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 448, column: 13)
!994 = distinct !DILexicalBlock(scope: !985, file: !3, line: 447, column: 77)
!995 = !DILocation(line: 448, column: 27, scope: !993)
!996 = !DILocation(line: 448, column: 13, scope: !994)
!997 = !DILocation(line: 451, column: 13, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !3, line: 448, column: 35)
!999 = !DILocation(line: 456, column: 17, scope: !994)
!1000 = !DILocation(line: 456, column: 9, scope: !994)
!1001 = !DILocation(line: 457, column: 9, scope: !994)
!1002 = !DILocation(line: 460, column: 9, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !969, file: !3, line: 460, column: 9)
!1004 = !DILocation(line: 460, column: 9, scope: !969)
!1005 = !DILocation(line: 461, column: 31, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 460, column: 23)
!1007 = !DILocation(line: 461, column: 25, scope: !1006)
!1008 = !DILocation(line: 461, column: 23, scope: !1006)
!1009 = !DILocation(line: 463, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 463, column: 13)
!1011 = !DILocation(line: 463, column: 27, scope: !1010)
!1012 = !DILocation(line: 463, column: 13, scope: !1006)
!1013 = !DILocation(line: 463, column: 35, scope: !1010)
!1014 = !DILabel(scope: !1015, name: "noread", file: !3, line: 464)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 463, column: 35)
!1016 = !DILocation(line: 464, column: 13, scope: !1015)
!1017 = !DILocation(line: 465, column: 13, scope: !1015)
!1018 = !DILocation(line: 466, column: 13, scope: !1015)
!1019 = !DILocation(line: 470, column: 15, scope: !1006)
!1020 = !DILocation(line: 470, column: 9, scope: !1006)
!1021 = !DILocation(line: 472, column: 26, scope: !1006)
!1022 = !DILocation(line: 472, column: 20, scope: !1006)
!1023 = !DILocation(line: 472, column: 18, scope: !1006)
!1024 = !DILocation(line: 473, column: 15, scope: !1006)
!1025 = !DILocation(line: 473, column: 9, scope: !1006)
!1026 = !DILocation(line: 475, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 475, column: 13)
!1028 = !DILocation(line: 475, column: 34, scope: !1027)
!1029 = !DILocation(line: 475, column: 22, scope: !1027)
!1030 = !DILocation(line: 475, column: 50, scope: !1027)
!1031 = !DILocation(line: 475, column: 13, scope: !1006)
!1032 = !DILocation(line: 476, column: 13, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 475, column: 63)
!1034 = !DILocation(line: 477, column: 9, scope: !1033)
!1035 = !DILocation(line: 478, column: 5, scope: !1006)
!1036 = !DILocation(line: 479, column: 23, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 479, column: 13)
!1038 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 478, column: 10)
!1039 = !DILocation(line: 479, column: 37, scope: !1037)
!1040 = !DILocation(line: 479, column: 13, scope: !1038)
!1041 = !DILocation(line: 480, column: 14, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 479, column: 42)
!1043 = !DILocation(line: 483, column: 18, scope: !1038)
!1044 = !DILocation(line: 484, column: 23, scope: !1038)
!1045 = !DILocation(line: 487, column: 19, scope: !969)
!1046 = !DILocation(line: 487, column: 17, scope: !969)
!1047 = !DILocation(line: 489, column: 29, scope: !969)
!1048 = !DILocation(line: 489, column: 44, scope: !969)
!1049 = !DILocation(line: 489, column: 47, scope: !969)
!1050 = !DILocation(line: 489, column: 46, scope: !969)
!1051 = !DILocation(line: 489, column: 17, scope: !969)
!1052 = !DILocation(line: 490, column: 42, scope: !969)
!1053 = !DILocation(line: 490, column: 55, scope: !969)
!1054 = !DILocation(line: 490, column: 61, scope: !969)
!1055 = !DILocation(line: 490, column: 34, scope: !969)
!1056 = !DILocation(line: 490, column: 5, scope: !969)
!1057 = !DILocation(line: 490, column: 18, scope: !969)
!1058 = !DILocation(line: 490, column: 23, scope: !969)
!1059 = !DILocation(line: 492, column: 24, scope: !969)
!1060 = !DILocation(line: 492, column: 37, scope: !969)
!1061 = !DILocation(line: 492, column: 52, scope: !969)
!1062 = !DILocation(line: 492, column: 41, scope: !969)
!1063 = !DILocation(line: 492, column: 67, scope: !969)
!1064 = !DILocation(line: 492, column: 22, scope: !969)
!1065 = !DILocation(line: 494, column: 9, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !969, file: !3, line: 494, column: 9)
!1067 = !DILocation(line: 494, column: 9, scope: !969)
!1068 = !DILocation(line: 495, column: 19, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 495, column: 13)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 494, column: 23)
!1071 = !DILocation(line: 495, column: 40, scope: !1069)
!1072 = !DILocation(line: 495, column: 50, scope: !1069)
!1073 = !DILocation(line: 495, column: 13, scope: !1069)
!1074 = !DILocation(line: 495, column: 68, scope: !1069)
!1075 = !DILocation(line: 495, column: 65, scope: !1069)
!1076 = !DILocation(line: 495, column: 13, scope: !1070)
!1077 = !DILocation(line: 496, column: 13, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 495, column: 77)
!1079 = !DILocation(line: 498, column: 16, scope: !1070)
!1080 = !DILocation(line: 498, column: 9, scope: !1070)
!1081 = !DILocation(line: 499, column: 5, scope: !1070)
!1082 = !DILocation(line: 501, column: 31, scope: !969)
!1083 = !DILocation(line: 501, column: 29, scope: !969)
!1084 = !DILocation(line: 503, column: 12, scope: !969)
!1085 = !DILocation(line: 503, column: 25, scope: !969)
!1086 = !DILocation(line: 503, column: 40, scope: !969)
!1087 = !DILocation(line: 503, column: 29, scope: !969)
!1088 = !DILocation(line: 503, column: 59, scope: !969)
!1089 = !DILocation(line: 503, column: 63, scope: !969)
!1090 = !DILocation(line: 503, column: 5, scope: !969)
!1091 = !DILocation(line: 505, column: 36, scope: !969)
!1092 = !DILocation(line: 505, column: 48, scope: !969)
!1093 = !DILocation(line: 505, column: 28, scope: !969)
!1094 = !DILocation(line: 505, column: 5, scope: !969)
!1095 = !DILocation(line: 505, column: 18, scope: !969)
!1096 = !DILocation(line: 505, column: 26, scope: !969)
!1097 = !DILocation(line: 506, column: 35, scope: !969)
!1098 = !DILocation(line: 506, column: 28, scope: !969)
!1099 = !DILocation(line: 506, column: 5, scope: !969)
!1100 = !DILocation(line: 506, column: 18, scope: !969)
!1101 = !DILocation(line: 506, column: 26, scope: !969)
!1102 = !DILocation(line: 507, column: 25, scope: !969)
!1103 = !DILocation(line: 507, column: 5, scope: !969)
!1104 = !DILocation(line: 507, column: 18, scope: !969)
!1105 = !DILocation(line: 507, column: 23, scope: !969)
!1106 = !DILocation(line: 509, column: 5, scope: !969)
!1107 = !DILocation(line: 510, column: 1, scope: !969)
!1108 = distinct !DISubprogram(name: "DiscardAllButExif", scope: !3, file: !3, line: 516, type: !629, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!1109 = !DILocalVariable(name: "ExifKeeper", scope: !1108, file: !3, line: 518, type: !21)
!1110 = !DILocation(line: 518, column: 15, scope: !1108)
!1111 = !DILocalVariable(name: "CommentKeeper", scope: !1108, file: !3, line: 519, type: !21)
!1112 = !DILocation(line: 519, column: 15, scope: !1108)
!1113 = !DILocalVariable(name: "IptcKeeper", scope: !1108, file: !3, line: 520, type: !21)
!1114 = !DILocation(line: 520, column: 15, scope: !1108)
!1115 = !DILocalVariable(name: "XmpKeeper", scope: !1108, file: !3, line: 521, type: !21)
!1116 = !DILocation(line: 521, column: 15, scope: !1108)
!1117 = !DILocalVariable(name: "a", scope: !1108, file: !3, line: 522, type: !19)
!1118 = !DILocation(line: 522, column: 9, scope: !1108)
!1119 = !DILocation(line: 524, column: 5, scope: !1108)
!1120 = !DILocation(line: 525, column: 5, scope: !1108)
!1121 = !DILocation(line: 526, column: 5, scope: !1108)
!1122 = !DILocation(line: 527, column: 5, scope: !1108)
!1123 = !DILocation(line: 529, column: 11, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 529, column: 5)
!1125 = !DILocation(line: 529, column: 10, scope: !1124)
!1126 = !DILocation(line: 529, column: 14, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 529, column: 5)
!1128 = !DILocation(line: 529, column: 16, scope: !1127)
!1129 = !DILocation(line: 529, column: 15, scope: !1127)
!1130 = !DILocation(line: 529, column: 5, scope: !1124)
!1131 = !DILocation(line: 530, column: 13, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 530, column: 13)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 529, column: 33)
!1134 = !DILocation(line: 530, column: 22, scope: !1132)
!1135 = !DILocation(line: 530, column: 25, scope: !1132)
!1136 = !DILocation(line: 530, column: 30, scope: !1132)
!1137 = !DILocation(line: 530, column: 40, scope: !1132)
!1138 = !DILocation(line: 530, column: 54, scope: !1132)
!1139 = !DILocation(line: 530, column: 59, scope: !1132)
!1140 = !DILocation(line: 530, column: 13, scope: !1133)
!1141 = !DILocation(line: 531, column: 25, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 530, column: 64)
!1143 = !DILocation(line: 531, column: 34, scope: !1142)
!1144 = !DILocation(line: 532, column: 9, scope: !1142)
!1145 = !DILocation(line: 532, column: 19, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 532, column: 19)
!1147 = !DILocation(line: 532, column: 28, scope: !1146)
!1148 = !DILocation(line: 532, column: 31, scope: !1146)
!1149 = !DILocation(line: 532, column: 36, scope: !1146)
!1150 = !DILocation(line: 532, column: 45, scope: !1146)
!1151 = !DILocation(line: 532, column: 58, scope: !1146)
!1152 = !DILocation(line: 532, column: 63, scope: !1146)
!1153 = !DILocation(line: 532, column: 19, scope: !1132)
!1154 = !DILocation(line: 533, column: 24, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 532, column: 68)
!1156 = !DILocation(line: 533, column: 33, scope: !1155)
!1157 = !DILocation(line: 534, column: 9, scope: !1155)
!1158 = !DILocation(line: 534, column: 19, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 534, column: 19)
!1160 = !DILocation(line: 534, column: 28, scope: !1159)
!1161 = !DILocation(line: 534, column: 31, scope: !1159)
!1162 = !DILocation(line: 534, column: 36, scope: !1159)
!1163 = !DILocation(line: 534, column: 45, scope: !1159)
!1164 = !DILocation(line: 534, column: 62, scope: !1159)
!1165 = !DILocation(line: 534, column: 67, scope: !1159)
!1166 = !DILocation(line: 534, column: 19, scope: !1146)
!1167 = !DILocation(line: 535, column: 29, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 534, column: 72)
!1169 = !DILocation(line: 535, column: 38, scope: !1168)
!1170 = !DILocation(line: 536, column: 9, scope: !1168)
!1171 = !DILocation(line: 536, column: 19, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 536, column: 19)
!1173 = !DILocation(line: 536, column: 28, scope: !1172)
!1174 = !DILocation(line: 536, column: 31, scope: !1172)
!1175 = !DILocation(line: 536, column: 36, scope: !1172)
!1176 = !DILocation(line: 536, column: 46, scope: !1172)
!1177 = !DILocation(line: 536, column: 60, scope: !1172)
!1178 = !DILocation(line: 536, column: 65, scope: !1172)
!1179 = !DILocation(line: 536, column: 19, scope: !1159)
!1180 = !DILocation(line: 537, column: 26, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 536, column: 70)
!1182 = !DILocation(line: 537, column: 35, scope: !1181)
!1183 = !DILocation(line: 538, column: 9, scope: !1181)
!1184 = !DILocation(line: 539, column: 18, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 538, column: 14)
!1186 = !DILocation(line: 539, column: 27, scope: !1185)
!1187 = !DILocation(line: 539, column: 30, scope: !1185)
!1188 = !DILocation(line: 539, column: 13, scope: !1185)
!1189 = !DILocation(line: 541, column: 5, scope: !1133)
!1190 = !DILocation(line: 529, column: 30, scope: !1127)
!1191 = !DILocation(line: 529, column: 5, scope: !1127)
!1192 = distinct !{!1192, !1130, !1193, !738}
!1193 = !DILocation(line: 541, column: 5, scope: !1124)
!1194 = !DILocation(line: 542, column: 18, scope: !1108)
!1195 = !DILocation(line: 543, column: 20, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 543, column: 9)
!1197 = !DILocation(line: 543, column: 9, scope: !1196)
!1198 = !DILocation(line: 543, column: 9, scope: !1108)
!1199 = !DILocation(line: 544, column: 9, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 543, column: 25)
!1201 = !DILocation(line: 545, column: 9, scope: !1200)
!1202 = !DILocation(line: 545, column: 30, scope: !1200)
!1203 = !DILocation(line: 545, column: 36, scope: !1200)
!1204 = !DILocation(line: 546, column: 5, scope: !1200)
!1205 = !DILocation(line: 547, column: 23, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 547, column: 9)
!1207 = !DILocation(line: 547, column: 9, scope: !1206)
!1208 = !DILocation(line: 547, column: 9, scope: !1108)
!1209 = !DILocation(line: 548, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 547, column: 28)
!1211 = !DILocation(line: 549, column: 9, scope: !1210)
!1212 = !DILocation(line: 549, column: 30, scope: !1210)
!1213 = !DILocation(line: 549, column: 36, scope: !1210)
!1214 = !DILocation(line: 550, column: 5, scope: !1210)
!1215 = !DILocation(line: 551, column: 20, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 551, column: 9)
!1217 = !DILocation(line: 551, column: 9, scope: !1216)
!1218 = !DILocation(line: 551, column: 9, scope: !1108)
!1219 = !DILocation(line: 552, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 551, column: 25)
!1221 = !DILocation(line: 553, column: 9, scope: !1220)
!1222 = !DILocation(line: 553, column: 30, scope: !1220)
!1223 = !DILocation(line: 553, column: 36, scope: !1220)
!1224 = !DILocation(line: 554, column: 5, scope: !1220)
!1225 = !DILocation(line: 556, column: 19, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 556, column: 9)
!1227 = !DILocation(line: 556, column: 9, scope: !1226)
!1228 = !DILocation(line: 556, column: 9, scope: !1108)
!1229 = !DILocation(line: 557, column: 9, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 556, column: 24)
!1231 = !DILocation(line: 558, column: 9, scope: !1230)
!1232 = !DILocation(line: 558, column: 30, scope: !1230)
!1233 = !DILocation(line: 558, column: 36, scope: !1230)
!1234 = !DILocation(line: 559, column: 5, scope: !1230)
!1235 = !DILocation(line: 560, column: 1, scope: !1108)
!1236 = !DILocalVariable(name: "FileName", arg: 1, scope: !30, file: !3, line: 565, type: !33)
!1237 = !DILocation(line: 565, column: 33, scope: !30)
!1238 = !DILocalVariable(name: "outfile", scope: !30, file: !3, line: 567, type: !136)
!1239 = !DILocation(line: 567, column: 12, scope: !30)
!1240 = !DILocalVariable(name: "a", scope: !30, file: !3, line: 568, type: !19)
!1241 = !DILocation(line: 568, column: 9, scope: !30)
!1242 = !DILocation(line: 570, column: 10, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !30, file: !3, line: 570, column: 9)
!1244 = !DILocation(line: 570, column: 9, scope: !30)
!1245 = !DILocation(line: 571, column: 9, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 570, column: 18)
!1247 = !DILocation(line: 572, column: 5, scope: !1246)
!1248 = !DILocation(line: 574, column: 21, scope: !30)
!1249 = !DILocation(line: 574, column: 15, scope: !30)
!1250 = !DILocation(line: 574, column: 13, scope: !30)
!1251 = !DILocation(line: 575, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !30, file: !3, line: 575, column: 9)
!1253 = !DILocation(line: 575, column: 17, scope: !1252)
!1254 = !DILocation(line: 575, column: 9, scope: !30)
!1255 = !DILocation(line: 576, column: 9, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 575, column: 25)
!1257 = !DILocation(line: 577, column: 5, scope: !1256)
!1258 = !DILocation(line: 580, column: 16, scope: !30)
!1259 = !DILocation(line: 580, column: 5, scope: !30)
!1260 = !DILocation(line: 581, column: 16, scope: !30)
!1261 = !DILocation(line: 581, column: 5, scope: !30)
!1262 = !DILocation(line: 583, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !30, file: !3, line: 583, column: 9)
!1264 = !DILocation(line: 583, column: 21, scope: !1263)
!1265 = !DILocation(line: 583, column: 26, scope: !1263)
!1266 = !DILocation(line: 583, column: 36, scope: !1263)
!1267 = !DILocation(line: 583, column: 39, scope: !1263)
!1268 = !DILocation(line: 583, column: 51, scope: !1263)
!1269 = !DILocation(line: 583, column: 56, scope: !1263)
!1270 = !DILocation(line: 583, column: 9, scope: !30)
!1271 = !DILocation(line: 591, column: 23, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 591, column: 13)
!1273 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 583, column: 66)
!1274 = !DILocation(line: 591, column: 38, scope: !1272)
!1275 = !DILocation(line: 591, column: 43, scope: !1272)
!1276 = !DILocation(line: 591, column: 56, scope: !1272)
!1277 = !DILocation(line: 591, column: 71, scope: !1272)
!1278 = !DILocation(line: 591, column: 13, scope: !1273)
!1279 = !DILocation(line: 596, column: 69, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 591, column: 76)
!1281 = !DILocation(line: 596, column: 83, scope: !1280)
!1282 = !DILocation(line: 596, column: 52, scope: !1280)
!1283 = !DILocation(line: 596, column: 50, scope: !1280)
!1284 = !DILocation(line: 598, column: 60, scope: !1280)
!1285 = !DILocation(line: 598, column: 45, scope: !1280)
!1286 = !DILocation(line: 598, column: 43, scope: !1280)
!1287 = !DILocation(line: 599, column: 60, scope: !1280)
!1288 = !DILocation(line: 599, column: 45, scope: !1280)
!1289 = !DILocation(line: 599, column: 43, scope: !1280)
!1290 = !DILocation(line: 600, column: 9, scope: !1280)
!1291 = !DILocation(line: 602, column: 45, scope: !1273)
!1292 = !DILocation(line: 602, column: 22, scope: !1273)
!1293 = !DILocation(line: 603, column: 53, scope: !1273)
!1294 = !DILocation(line: 603, column: 32, scope: !1273)
!1295 = !DILocation(line: 603, column: 62, scope: !1273)
!1296 = !DILocation(line: 603, column: 24, scope: !1273)
!1297 = !DILocation(line: 603, column: 22, scope: !1273)
!1298 = !DILocation(line: 604, column: 52, scope: !1273)
!1299 = !DILocation(line: 604, column: 24, scope: !1273)
!1300 = !DILocation(line: 604, column: 22, scope: !1273)
!1301 = !DILocation(line: 605, column: 53, scope: !1273)
!1302 = !DILocation(line: 605, column: 32, scope: !1273)
!1303 = !DILocation(line: 605, column: 62, scope: !1273)
!1304 = !DILocation(line: 605, column: 24, scope: !1273)
!1305 = !DILocation(line: 605, column: 22, scope: !1273)
!1306 = !DILocation(line: 606, column: 52, scope: !1273)
!1307 = !DILocation(line: 606, column: 24, scope: !1273)
!1308 = !DILocation(line: 606, column: 22, scope: !1273)
!1309 = !DILocation(line: 609, column: 33, scope: !1273)
!1310 = !DILocation(line: 609, column: 9, scope: !1273)
!1311 = !DILocation(line: 612, column: 23, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 612, column: 13)
!1313 = !DILocation(line: 612, column: 38, scope: !1312)
!1314 = !DILocation(line: 612, column: 13, scope: !1273)
!1315 = !DILocation(line: 614, column: 45, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 612, column: 44)
!1317 = !DILocation(line: 614, column: 28, scope: !1316)
!1318 = !DILocation(line: 614, column: 60, scope: !1316)
!1319 = !DILocation(line: 614, column: 26, scope: !1316)
!1320 = !DILocation(line: 615, column: 9, scope: !1316)
!1321 = !DILocation(line: 616, column: 23, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 616, column: 13)
!1323 = !DILocation(line: 616, column: 13, scope: !1322)
!1324 = !DILocation(line: 616, column: 35, scope: !1322)
!1325 = !DILocation(line: 616, column: 41, scope: !1322)
!1326 = !DILocation(line: 616, column: 54, scope: !1322)
!1327 = !DILocation(line: 616, column: 44, scope: !1322)
!1328 = !DILocation(line: 616, column: 66, scope: !1322)
!1329 = !DILocation(line: 616, column: 13, scope: !1273)
!1330 = !DILocation(line: 617, column: 51, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 616, column: 73)
!1332 = !DILocation(line: 617, column: 36, scope: !1331)
!1333 = !DILocation(line: 617, column: 62, scope: !1331)
!1334 = !DILocation(line: 617, column: 28, scope: !1331)
!1335 = !DILocation(line: 617, column: 26, scope: !1331)
!1336 = !DILocation(line: 618, column: 51, scope: !1331)
!1337 = !DILocation(line: 618, column: 36, scope: !1331)
!1338 = !DILocation(line: 618, column: 28, scope: !1331)
!1339 = !DILocation(line: 618, column: 26, scope: !1331)
!1340 = !DILocation(line: 620, column: 51, scope: !1331)
!1341 = !DILocation(line: 620, column: 36, scope: !1331)
!1342 = !DILocation(line: 620, column: 62, scope: !1331)
!1343 = !DILocation(line: 620, column: 28, scope: !1331)
!1344 = !DILocation(line: 620, column: 26, scope: !1331)
!1345 = !DILocation(line: 621, column: 51, scope: !1331)
!1346 = !DILocation(line: 621, column: 36, scope: !1331)
!1347 = !DILocation(line: 621, column: 28, scope: !1331)
!1348 = !DILocation(line: 621, column: 26, scope: !1331)
!1349 = !DILocation(line: 622, column: 9, scope: !1331)
!1350 = !DILocation(line: 623, column: 5, scope: !1273)
!1351 = !DILocation(line: 627, column: 11, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !30, file: !3, line: 627, column: 5)
!1353 = !DILocation(line: 627, column: 10, scope: !1352)
!1354 = !DILocation(line: 627, column: 14, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 627, column: 5)
!1356 = !DILocation(line: 627, column: 16, scope: !1355)
!1357 = !DILocation(line: 627, column: 28, scope: !1355)
!1358 = !DILocation(line: 627, column: 15, scope: !1355)
!1359 = !DILocation(line: 627, column: 5, scope: !1352)
!1360 = !DILocation(line: 628, column: 20, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 627, column: 35)
!1362 = !DILocation(line: 628, column: 9, scope: !1361)
!1363 = !DILocation(line: 629, column: 30, scope: !1361)
!1364 = !DILocation(line: 629, column: 39, scope: !1361)
!1365 = !DILocation(line: 629, column: 42, scope: !1361)
!1366 = !DILocation(line: 629, column: 15, scope: !1361)
!1367 = !DILocation(line: 629, column: 48, scope: !1361)
!1368 = !DILocation(line: 629, column: 9, scope: !1361)
!1369 = !DILocation(line: 630, column: 16, scope: !1361)
!1370 = !DILocation(line: 630, column: 25, scope: !1361)
!1371 = !DILocation(line: 630, column: 28, scope: !1361)
!1372 = !DILocation(line: 630, column: 34, scope: !1361)
!1373 = !DILocation(line: 630, column: 43, scope: !1361)
!1374 = !DILocation(line: 630, column: 46, scope: !1361)
!1375 = !DILocation(line: 630, column: 55, scope: !1361)
!1376 = !DILocation(line: 630, column: 9, scope: !1361)
!1377 = !DILocation(line: 631, column: 5, scope: !1361)
!1378 = !DILocation(line: 627, column: 32, scope: !1355)
!1379 = !DILocation(line: 627, column: 5, scope: !1355)
!1380 = distinct !{!1380, !1359, !1381, !738}
!1381 = !DILocation(line: 631, column: 5, scope: !1352)
!1382 = !DILocation(line: 634, column: 12, scope: !30)
!1383 = !DILocation(line: 634, column: 21, scope: !30)
!1384 = !DILocation(line: 634, column: 24, scope: !30)
!1385 = !DILocation(line: 634, column: 30, scope: !30)
!1386 = !DILocation(line: 634, column: 39, scope: !30)
!1387 = !DILocation(line: 634, column: 42, scope: !30)
!1388 = !DILocation(line: 634, column: 51, scope: !30)
!1389 = !DILocation(line: 634, column: 5, scope: !30)
!1390 = !DILocation(line: 636, column: 12, scope: !30)
!1391 = !DILocation(line: 636, column: 5, scope: !30)
!1392 = !DILocation(line: 637, column: 1, scope: !30)
!1393 = distinct !DISubprogram(name: "RemoveSectionType", scope: !3, file: !3, line: 659, type: !1394, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!19, !19}
!1396 = !DILocalVariable(name: "SectionType", arg: 1, scope: !1393, file: !3, line: 659, type: !19)
!1397 = !DILocation(line: 659, column: 27, scope: !1393)
!1398 = !DILocalVariable(name: "a", scope: !1393, file: !3, line: 661, type: !19)
!1399 = !DILocation(line: 661, column: 9, scope: !1393)
!1400 = !DILocalVariable(name: "retval", scope: !1393, file: !3, line: 662, type: !19)
!1401 = !DILocation(line: 662, column: 9, scope: !1393)
!1402 = !DILocation(line: 665, column: 11, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 665, column: 5)
!1404 = !DILocation(line: 665, column: 10, scope: !1403)
!1405 = !DILocation(line: 665, column: 14, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 665, column: 5)
!1407 = !DILocation(line: 665, column: 16, scope: !1406)
!1408 = !DILocation(line: 665, column: 28, scope: !1406)
!1409 = !DILocation(line: 665, column: 15, scope: !1406)
!1410 = !DILocation(line: 665, column: 5, scope: !1403)
!1411 = !DILocation(line: 666, column: 13, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 666, column: 13)
!1413 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 665, column: 35)
!1414 = !DILocation(line: 666, column: 22, scope: !1412)
!1415 = !DILocation(line: 666, column: 25, scope: !1412)
!1416 = !DILocation(line: 666, column: 33, scope: !1412)
!1417 = !DILocation(line: 666, column: 30, scope: !1412)
!1418 = !DILocation(line: 666, column: 13, scope: !1413)
!1419 = !DILocation(line: 668, column: 19, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 666, column: 45)
!1421 = !DILocation(line: 668, column: 28, scope: !1420)
!1422 = !DILocation(line: 668, column: 31, scope: !1420)
!1423 = !DILocation(line: 668, column: 13, scope: !1420)
!1424 = !DILocation(line: 670, column: 21, scope: !1420)
!1425 = !DILocation(line: 670, column: 30, scope: !1420)
!1426 = !DILocation(line: 670, column: 29, scope: !1420)
!1427 = !DILocation(line: 670, column: 13, scope: !1420)
!1428 = !DILocation(line: 670, column: 33, scope: !1420)
!1429 = !DILocation(line: 670, column: 42, scope: !1420)
!1430 = !DILocation(line: 670, column: 41, scope: !1420)
!1431 = !DILocation(line: 670, column: 43, scope: !1420)
!1432 = !DILocation(line: 670, column: 68, scope: !1420)
!1433 = !DILocation(line: 670, column: 81, scope: !1420)
!1434 = !DILocation(line: 670, column: 80, scope: !1420)
!1435 = !DILocation(line: 670, column: 67, scope: !1420)
!1436 = !DILocation(line: 670, column: 65, scope: !1420)
!1437 = !DILocation(line: 671, column: 26, scope: !1420)
!1438 = !DILocation(line: 672, column: 15, scope: !1420)
!1439 = !DILocation(line: 673, column: 20, scope: !1420)
!1440 = !DILocation(line: 674, column: 9, scope: !1420)
!1441 = !DILocation(line: 675, column: 5, scope: !1413)
!1442 = !DILocation(line: 665, column: 32, scope: !1406)
!1443 = !DILocation(line: 665, column: 5, scope: !1406)
!1444 = distinct !{!1444, !1410, !1445, !738}
!1445 = !DILocation(line: 675, column: 5, scope: !1403)
!1446 = !DILocation(line: 676, column: 12, scope: !1393)
!1447 = !DILocation(line: 676, column: 5, scope: !1393)
!1448 = distinct !DISubprogram(name: "RemoveUnknownSections", scope: !3, file: !3, line: 682, type: !1449, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!19}
!1451 = !DILocalVariable(name: "a", scope: !1448, file: !3, line: 684, type: !19)
!1452 = !DILocation(line: 684, column: 9, scope: !1448)
!1453 = !DILocalVariable(name: "Modified", scope: !1448, file: !3, line: 685, type: !19)
!1454 = !DILocation(line: 685, column: 9, scope: !1448)
!1455 = !DILocation(line: 687, column: 11, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 687, column: 5)
!1457 = !DILocation(line: 687, column: 10, scope: !1456)
!1458 = !DILocation(line: 687, column: 14, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 687, column: 5)
!1460 = !DILocation(line: 687, column: 16, scope: !1459)
!1461 = !DILocation(line: 687, column: 28, scope: !1459)
!1462 = !DILocation(line: 687, column: 15, scope: !1459)
!1463 = !DILocation(line: 687, column: 5, scope: !1456)
!1464 = !DILocation(line: 688, column: 16, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 687, column: 32)
!1466 = !DILocation(line: 688, column: 25, scope: !1465)
!1467 = !DILocation(line: 688, column: 28, scope: !1465)
!1468 = !DILocation(line: 688, column: 9, scope: !1465)
!1469 = !DILocation(line: 714, column: 18, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 688, column: 33)
!1471 = !DILocation(line: 715, column: 17, scope: !1470)
!1472 = !DILocation(line: 718, column: 23, scope: !1470)
!1473 = !DILocation(line: 718, column: 32, scope: !1470)
!1474 = !DILocation(line: 718, column: 35, scope: !1470)
!1475 = !DILocation(line: 718, column: 17, scope: !1470)
!1476 = !DILocation(line: 720, column: 25, scope: !1470)
!1477 = !DILocation(line: 720, column: 34, scope: !1470)
!1478 = !DILocation(line: 720, column: 33, scope: !1470)
!1479 = !DILocation(line: 720, column: 17, scope: !1470)
!1480 = !DILocation(line: 720, column: 37, scope: !1470)
!1481 = !DILocation(line: 720, column: 46, scope: !1470)
!1482 = !DILocation(line: 720, column: 45, scope: !1470)
!1483 = !DILocation(line: 720, column: 47, scope: !1470)
!1484 = !DILocation(line: 720, column: 72, scope: !1470)
!1485 = !DILocation(line: 720, column: 85, scope: !1470)
!1486 = !DILocation(line: 720, column: 84, scope: !1470)
!1487 = !DILocation(line: 720, column: 71, scope: !1470)
!1488 = !DILocation(line: 720, column: 69, scope: !1470)
!1489 = !DILocation(line: 721, column: 30, scope: !1470)
!1490 = !DILocation(line: 722, column: 26, scope: !1470)
!1491 = !DILocation(line: 723, column: 9, scope: !1470)
!1492 = !DILocation(line: 687, column: 5, scope: !1459)
!1493 = distinct !{!1493, !1463, !1494, !738}
!1494 = !DILocation(line: 724, column: 5, scope: !1456)
!1495 = !DILocation(line: 725, column: 12, scope: !1448)
!1496 = !DILocation(line: 725, column: 5, scope: !1448)
!1497 = distinct !DISubprogram(name: "CreateSection", scope: !3, file: !3, line: 732, type: !1498, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!20, !19, !1500, !19}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1501 = !DILocalVariable(name: "SectionType", arg: 1, scope: !1497, file: !3, line: 732, type: !19)
!1502 = !DILocation(line: 732, column: 31, scope: !1497)
!1503 = !DILocalVariable(name: "Data", arg: 2, scope: !1497, file: !3, line: 732, type: !1500)
!1504 = !DILocation(line: 732, column: 60, scope: !1497)
!1505 = !DILocalVariable(name: "Size", arg: 3, scope: !1497, file: !3, line: 732, type: !19)
!1506 = !DILocation(line: 732, column: 70, scope: !1497)
!1507 = !DILocalVariable(name: "NewSection", scope: !1497, file: !3, line: 734, type: !20)
!1508 = !DILocation(line: 734, column: 17, scope: !1497)
!1509 = !DILocalVariable(name: "a", scope: !1497, file: !3, line: 735, type: !19)
!1510 = !DILocation(line: 735, column: 9, scope: !1497)
!1511 = !DILocalVariable(name: "NewIndex", scope: !1497, file: !3, line: 736, type: !19)
!1512 = !DILocation(line: 736, column: 9, scope: !1497)
!1513 = !DILocation(line: 738, column: 14, scope: !1497)
!1514 = !DILocation(line: 739, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 739, column: 9)
!1516 = !DILocation(line: 739, column: 21, scope: !1515)
!1517 = !DILocation(line: 739, column: 9, scope: !1497)
!1518 = !DILocation(line: 741, column: 5, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 739, column: 31)
!1520 = !DILocation(line: 742, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 741, column: 10)
!1522 = !DILocation(line: 742, column: 15, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 742, column: 9)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 742, column: 9)
!1525 = !DILocation(line: 742, column: 24, scope: !1523)
!1526 = !DILocation(line: 742, column: 9, scope: !1524)
!1527 = !DILocation(line: 743, column: 17, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 743, column: 17)
!1529 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 742, column: 39)
!1530 = !DILocation(line: 743, column: 26, scope: !1528)
!1531 = !DILocation(line: 743, column: 36, scope: !1528)
!1532 = !DILocation(line: 743, column: 41, scope: !1528)
!1533 = !DILocation(line: 743, column: 17, scope: !1529)
!1534 = !DILocation(line: 743, column: 52, scope: !1528)
!1535 = !DILocation(line: 744, column: 17, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 744, column: 17)
!1537 = !DILocation(line: 744, column: 26, scope: !1536)
!1538 = !DILocation(line: 744, column: 36, scope: !1536)
!1539 = !DILocation(line: 744, column: 41, scope: !1536)
!1540 = !DILocation(line: 744, column: 17, scope: !1529)
!1541 = !DILocation(line: 744, column: 52, scope: !1536)
!1542 = !DILocation(line: 745, column: 13, scope: !1529)
!1543 = !DILocation(line: 742, column: 36, scope: !1523)
!1544 = !DILocation(line: 742, column: 9, scope: !1523)
!1545 = distinct !{!1545, !1526, !1546, !738}
!1546 = !DILocation(line: 746, column: 9, scope: !1524)
!1547 = !DILocation(line: 749, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 749, column: 9)
!1549 = !DILocation(line: 749, column: 24, scope: !1548)
!1550 = !DILocation(line: 749, column: 22, scope: !1548)
!1551 = !DILocation(line: 749, column: 9, scope: !1497)
!1552 = !DILocation(line: 750, column: 9, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 749, column: 33)
!1554 = !DILocation(line: 751, column: 5, scope: !1553)
!1555 = !DILocation(line: 753, column: 5, scope: !1497)
!1556 = !DILocation(line: 754, column: 12, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 754, column: 5)
!1558 = !DILocation(line: 754, column: 11, scope: !1557)
!1559 = !DILocation(line: 754, column: 10, scope: !1557)
!1560 = !DILocation(line: 754, column: 25, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 754, column: 5)
!1562 = !DILocation(line: 754, column: 27, scope: !1561)
!1563 = !DILocation(line: 754, column: 26, scope: !1561)
!1564 = !DILocation(line: 754, column: 5, scope: !1557)
!1565 = !DILocation(line: 755, column: 9, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 754, column: 40)
!1567 = !DILocation(line: 755, column: 18, scope: !1566)
!1568 = !DILocation(line: 755, column: 23, scope: !1566)
!1569 = !DILocation(line: 755, column: 32, scope: !1566)
!1570 = !DILocation(line: 755, column: 33, scope: !1566)
!1571 = !DILocation(line: 756, column: 5, scope: !1566)
!1572 = !DILocation(line: 754, column: 37, scope: !1561)
!1573 = !DILocation(line: 754, column: 5, scope: !1561)
!1574 = distinct !{!1574, !1564, !1575, !738}
!1575 = !DILocation(line: 756, column: 5, scope: !1557)
!1576 = !DILocation(line: 757, column: 18, scope: !1497)
!1577 = !DILocation(line: 759, column: 18, scope: !1497)
!1578 = !DILocation(line: 759, column: 27, scope: !1497)
!1579 = !DILocation(line: 759, column: 26, scope: !1497)
!1580 = !DILocation(line: 759, column: 16, scope: !1497)
!1581 = !DILocation(line: 761, column: 24, scope: !1497)
!1582 = !DILocation(line: 761, column: 5, scope: !1497)
!1583 = !DILocation(line: 761, column: 17, scope: !1497)
!1584 = !DILocation(line: 761, column: 22, scope: !1497)
!1585 = !DILocation(line: 762, column: 24, scope: !1497)
!1586 = !DILocation(line: 762, column: 5, scope: !1497)
!1587 = !DILocation(line: 762, column: 17, scope: !1497)
!1588 = !DILocation(line: 762, column: 22, scope: !1497)
!1589 = !DILocation(line: 763, column: 24, scope: !1497)
!1590 = !DILocation(line: 763, column: 5, scope: !1497)
!1591 = !DILocation(line: 763, column: 17, scope: !1497)
!1592 = !DILocation(line: 763, column: 22, scope: !1497)
!1593 = !DILocation(line: 765, column: 12, scope: !1497)
!1594 = !DILocation(line: 765, column: 5, scope: !1497)
!1595 = distinct !DISubprogram(name: "ResetJpgfile", scope: !3, file: !3, line: 772, type: !629, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!1596 = !DILocation(line: 774, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 774, column: 9)
!1598 = !DILocation(line: 774, column: 18, scope: !1597)
!1599 = !DILocation(line: 774, column: 9, scope: !1595)
!1600 = !DILocation(line: 775, column: 33, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 774, column: 26)
!1602 = !DILocation(line: 775, column: 20, scope: !1601)
!1603 = !DILocation(line: 775, column: 18, scope: !1601)
!1604 = !DILocation(line: 776, column: 27, scope: !1601)
!1605 = !DILocation(line: 777, column: 5, scope: !1601)
!1606 = !DILocation(line: 779, column: 18, scope: !1595)
!1607 = !DILocation(line: 780, column: 13, scope: !1595)
!1608 = !DILocation(line: 781, column: 1, scope: !1595)
!1609 = distinct !DISubprogram(name: "Get16m", scope: !3, file: !3, line: 26, type: !1610, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !35)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!19, !1612}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1614 = !DILocalVariable(name: "Short", arg: 1, scope: !1609, file: !3, line: 26, type: !1612)
!1615 = !DILocation(line: 26, column: 32, scope: !1609)
!1616 = !DILocation(line: 28, column: 23, scope: !1609)
!1617 = !DILocation(line: 28, column: 13, scope: !1609)
!1618 = !DILocation(line: 28, column: 33, scope: !1609)
!1619 = !DILocation(line: 28, column: 51, scope: !1609)
!1620 = !DILocation(line: 28, column: 41, scope: !1609)
!1621 = !DILocation(line: 28, column: 39, scope: !1609)
!1622 = !DILocation(line: 28, column: 5, scope: !1609)
