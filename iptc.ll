; ModuleID = 'iptc.c'
source_filename = "iptc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Section_t = type { i8*, i32, i32 }

@__const.show_IPTC.IptcSig1 = private unnamed_addr constant [14 x i8] c"Photoshop 3.0\00", align 1
@__const.show_IPTC.IptcSig2 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@__const.show_IPTC.IptcSig3 = private unnamed_addr constant [2 x i8] c"\04\04", align 1
@ShowTags = external dso_local global i32, align 4
@.str = private unnamed_addr constant [30 x i8] c"IPTC type signature mismatch\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"======= IPTC data: =======\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Record vers.  : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SuplementalCategories\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Keywords\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Caption\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Author\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Headline\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Spec. Instr.\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Category\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Byline\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Byline Title\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Credit\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"(C)Notice\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Object Name\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"City\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"OriginalTransmissionReference\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"DateCreated\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"(C)Flag\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Country Code\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Ref. Service\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Time Created\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Sub Location\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Image type\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Unrecognised IPTC tag: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"%s %*.*s\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Pointer corruption in IPTC\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @show_IPTC(i8* %Data, i32 %itemlen) #0 !dbg !9 {
entry:
  %Data.addr = alloca i8*, align 8
  %itemlen.addr = alloca i32, align 4
  %IptcSig1 = alloca [14 x i8], align 1
  %IptcSig2 = alloca [5 x i8], align 1
  %IptcSig3 = alloca [2 x i8], align 1
  %pos = alloca i8*, align 8
  %maxpos = alloca i8*, align 8
  %headerLen = alloca i8, align 1
  %dataLen = alloca i8, align 1
  %signature = alloca i16, align 2
  %type = alloca i8, align 1
  %length = alloca i16, align 2
  %description = alloca i8*, align 8
  %TempBuf = alloca [32 x i8], align 16
  store i8* %Data, i8** %Data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %itemlen, i32* %itemlen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %itemlen.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata [14 x i8]* %IptcSig1, metadata !19, metadata !DIExpression()), !dbg !25
  %0 = bitcast [14 x i8]* %IptcSig1 to i8*, !dbg !25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.show_IPTC.IptcSig1, i32 0, i32 0), i64 14, i1 false), !dbg !25
  call void @llvm.dbg.declare(metadata [5 x i8]* %IptcSig2, metadata !26, metadata !DIExpression()), !dbg !30
  %1 = bitcast [5 x i8]* %IptcSig2 to i8*, !dbg !30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.show_IPTC.IptcSig2, i32 0, i32 0), i64 5, i1 false), !dbg !30
  call void @llvm.dbg.declare(metadata [2 x i8]* %IptcSig3, metadata !31, metadata !DIExpression()), !dbg !35
  %2 = bitcast [2 x i8]* %IptcSig3 to i8*, !dbg !35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.show_IPTC.IptcSig3, i32 0, i32 0), i64 2, i1 false), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %pos, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = load i8*, i8** %Data.addr, align 8, !dbg !38
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 2, !dbg !39
  store i8* %add.ptr, i8** %pos, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i8** %maxpos, metadata !40, metadata !DIExpression()), !dbg !41
  %4 = load i8*, i8** %Data.addr, align 8, !dbg !42
  %5 = load i32, i32* %itemlen.addr, align 4, !dbg !43
  %idx.ext = zext i32 %5 to i64, !dbg !44
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 %idx.ext, !dbg !44
  store i8* %add.ptr1, i8** %maxpos, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata i8* %headerLen, metadata !45, metadata !DIExpression()), !dbg !46
  store i8 0, i8* %headerLen, align 1, !dbg !46
  call void @llvm.dbg.declare(metadata i8* %dataLen, metadata !47, metadata !DIExpression()), !dbg !48
  store i8 0, i8* %dataLen, align 1, !dbg !48
  %6 = load i32, i32* %itemlen.addr, align 4, !dbg !49
  %cmp = icmp ult i32 %6, 25, !dbg !51
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  br label %corrupt, !dbg !53

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %pos, align 8, !dbg !54
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %IptcSig1, i64 0, i64 0, !dbg !56
  %call = call i32 @memcmp(i8* %7, i8* %arraydecay, i64 13) #7, !dbg !57
  %cmp2 = icmp ne i32 %call, 0, !dbg !58
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !59

if.then3:                                         ; preds = %if.end
  br label %badsig, !dbg !60

if.end4:                                          ; preds = %if.end
  %8 = load i8*, i8** %pos, align 8, !dbg !61
  %add.ptr5 = getelementptr inbounds i8, i8* %8, i64 14, !dbg !61
  store i8* %add.ptr5, i8** %pos, align 8, !dbg !61
  %9 = load i8*, i8** %pos, align 8, !dbg !62
  %arraydecay6 = getelementptr inbounds [5 x i8], [5 x i8]* %IptcSig2, i64 0, i64 0, !dbg !64
  %call7 = call i32 @memcmp(i8* %9, i8* %arraydecay6, i64 4) #7, !dbg !65
  %cmp8 = icmp ne i32 %call7, 0, !dbg !66
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !67

if.then9:                                         ; preds = %if.end4
  br label %badsig, !dbg !68

if.end10:                                         ; preds = %if.end4
  %10 = load i8*, i8** %pos, align 8, !dbg !69
  %add.ptr11 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !69
  store i8* %add.ptr11, i8** %pos, align 8, !dbg !69
  br label %while.cond, !dbg !70

while.cond:                                       ; preds = %if.end29, %if.end10
  %11 = load i8*, i8** %pos, align 8, !dbg !71
  %arraydecay12 = getelementptr inbounds [2 x i8], [2 x i8]* %IptcSig3, i64 0, i64 0, !dbg !72
  %call13 = call i32 @memcmp(i8* %11, i8* %arraydecay12, i64 2) #7, !dbg !73
  %cmp14 = icmp ne i32 %call13, 0, !dbg !74
  br i1 %cmp14, label %while.body, label %while.end, !dbg !70

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %pos, align 8, !dbg !75
  %add.ptr15 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !75
  store i8* %add.ptr15, i8** %pos, align 8, !dbg !75
  %13 = load i8*, i8** %pos, align 8, !dbg !77
  %14 = load i8, i8* %13, align 1, !dbg !78
  store i8 %14, i8* %headerLen, align 1, !dbg !79
  %15 = load i8, i8* %headerLen, align 1, !dbg !80
  %conv = zext i8 %15 to i32, !dbg !80
  %and = and i32 %conv, 254, !dbg !81
  %add = add nsw i32 %and, 2, !dbg !82
  %16 = load i8*, i8** %pos, align 8, !dbg !83
  %idx.ext16 = sext i32 %add to i64, !dbg !83
  %add.ptr17 = getelementptr inbounds i8, i8* %16, i64 %idx.ext16, !dbg !83
  store i8* %add.ptr17, i8** %pos, align 8, !dbg !83
  %17 = load i8*, i8** %pos, align 8, !dbg !84
  %add.ptr18 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !84
  store i8* %add.ptr18, i8** %pos, align 8, !dbg !84
  %18 = load i8*, i8** %pos, align 8, !dbg !85
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1, !dbg !85
  store i8* %incdec.ptr, i8** %pos, align 8, !dbg !85
  %19 = load i8, i8* %18, align 1, !dbg !86
  store i8 %19, i8* %dataLen, align 1, !dbg !87
  %20 = load i8, i8* %dataLen, align 1, !dbg !88
  %conv19 = zext i8 %20 to i32, !dbg !88
  %21 = load i8*, i8** %pos, align 8, !dbg !89
  %idx.ext20 = sext i32 %conv19 to i64, !dbg !89
  %add.ptr21 = getelementptr inbounds i8, i8* %21, i64 %idx.ext20, !dbg !89
  store i8* %add.ptr21, i8** %pos, align 8, !dbg !89
  %22 = load i8*, i8** %pos, align 8, !dbg !90
  %arraydecay22 = getelementptr inbounds [5 x i8], [5 x i8]* %IptcSig2, i64 0, i64 0, !dbg !92
  %call23 = call i32 @memcmp(i8* %22, i8* %arraydecay22, i64 4) #7, !dbg !93
  %cmp24 = icmp ne i32 %call23, 0, !dbg !94
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !95

if.then26:                                        ; preds = %while.body
  br label %badsig, !dbg !96

badsig:                                           ; preds = %if.then26, %if.then9, %if.then3
  call void @llvm.dbg.label(metadata !97), !dbg !99
  %23 = load i32, i32* @ShowTags, align 4, !dbg !100
  %tobool = icmp ne i32 %23, 0, !dbg !100
  br i1 %tobool, label %if.then27, label %if.end28, !dbg !102

if.then27:                                        ; preds = %badsig
  call void @ErrNonfatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 0, i32 0), !dbg !103
  br label %if.end28, !dbg !105

if.end28:                                         ; preds = %if.then27, %badsig
  br label %return, !dbg !106

if.end29:                                         ; preds = %while.body
  %24 = load i8*, i8** %pos, align 8, !dbg !107
  %add.ptr30 = getelementptr inbounds i8, i8* %24, i64 4, !dbg !107
  store i8* %add.ptr30, i8** %pos, align 8, !dbg !107
  br label %while.cond, !dbg !70, !llvm.loop !108

while.end:                                        ; preds = %while.cond
  %25 = load i8*, i8** %pos, align 8, !dbg !111
  %add.ptr31 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !111
  store i8* %add.ptr31, i8** %pos, align 8, !dbg !111
  %26 = load i8*, i8** %pos, align 8, !dbg !112
  %27 = load i8*, i8** %maxpos, align 8, !dbg !114
  %cmp32 = icmp uge i8* %26, %27, !dbg !115
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !116

if.then34:                                        ; preds = %while.end
  br label %corrupt, !dbg !117

if.end35:                                         ; preds = %while.end
  %28 = load i8*, i8** %pos, align 8, !dbg !118
  %incdec.ptr36 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !118
  store i8* %incdec.ptr36, i8** %pos, align 8, !dbg !118
  %29 = load i8, i8* %28, align 1, !dbg !119
  store i8 %29, i8* %headerLen, align 1, !dbg !120
  %30 = load i8, i8* %headerLen, align 1, !dbg !121
  %conv37 = zext i8 %30 to i32, !dbg !121
  %add38 = add nsw i32 %conv37, 1, !dbg !122
  %31 = load i8, i8* %headerLen, align 1, !dbg !123
  %conv39 = zext i8 %31 to i32, !dbg !123
  %rem = srem i32 %conv39, 2, !dbg !124
  %sub = sub nsw i32 %add38, %rem, !dbg !125
  %32 = load i8*, i8** %pos, align 8, !dbg !126
  %idx.ext40 = sext i32 %sub to i64, !dbg !126
  %add.ptr41 = getelementptr inbounds i8, i8* %32, i64 %idx.ext40, !dbg !126
  store i8* %add.ptr41, i8** %pos, align 8, !dbg !126
  %33 = load i8*, i8** %pos, align 8, !dbg !127
  %add.ptr42 = getelementptr inbounds i8, i8* %33, i64 4, !dbg !129
  %34 = load i8*, i8** %maxpos, align 8, !dbg !130
  %cmp43 = icmp uge i8* %add.ptr42, %34, !dbg !131
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !132

if.then45:                                        ; preds = %if.end35
  br label %corrupt, !dbg !133

if.end46:                                         ; preds = %if.end35
  %35 = load i8*, i8** %pos, align 8, !dbg !134
  %add.ptr47 = getelementptr inbounds i8, i8* %35, i64 4, !dbg !134
  store i8* %add.ptr47, i8** %pos, align 8, !dbg !134
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)), !dbg !135
  br label %while.cond49, !dbg !136

while.cond49:                                     ; preds = %if.end144, %if.end46
  %36 = load i8*, i8** %pos, align 8, !dbg !137
  %37 = load i8*, i8** %Data.addr, align 8, !dbg !138
  %38 = load i32, i32* %itemlen.addr, align 4, !dbg !139
  %idx.ext50 = zext i32 %38 to i64, !dbg !140
  %add.ptr51 = getelementptr inbounds i8, i8* %37, i64 %idx.ext50, !dbg !140
  %add.ptr52 = getelementptr inbounds i8, i8* %add.ptr51, i64 -5, !dbg !141
  %cmp53 = icmp ult i8* %36, %add.ptr52, !dbg !142
  br i1 %cmp53, label %while.body55, label %while.end148, !dbg !136

while.body55:                                     ; preds = %while.cond49
  call void @llvm.dbg.declare(metadata i16* %signature, metadata !143, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i8* %type, metadata !147, metadata !DIExpression()), !dbg !148
  store i8 0, i8* %type, align 1, !dbg !148
  call void @llvm.dbg.declare(metadata i16* %length, metadata !149, metadata !DIExpression()), !dbg !150
  store i16 0, i16* %length, align 2, !dbg !150
  call void @llvm.dbg.declare(metadata i8** %description, metadata !151, metadata !DIExpression()), !dbg !153
  store i8* null, i8** %description, align 8, !dbg !153
  %39 = load i8*, i8** %pos, align 8, !dbg !154
  %add.ptr56 = getelementptr inbounds i8, i8* %39, i64 5, !dbg !156
  %40 = load i8*, i8** %maxpos, align 8, !dbg !157
  %cmp57 = icmp ugt i8* %add.ptr56, %40, !dbg !158
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !159

if.then59:                                        ; preds = %while.body55
  br label %corrupt, !dbg !160

if.end60:                                         ; preds = %while.body55
  %41 = load i8*, i8** %pos, align 8, !dbg !161
  %42 = load i8, i8* %41, align 1, !dbg !162
  %conv61 = zext i8 %42 to i32, !dbg !162
  %shl = shl i32 %conv61, 8, !dbg !163
  %43 = load i8*, i8** %pos, align 8, !dbg !164
  %add.ptr62 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !165
  %44 = load i8, i8* %add.ptr62, align 1, !dbg !166
  %conv63 = zext i8 %44 to i32, !dbg !167
  %add64 = add nsw i32 %shl, %conv63, !dbg !168
  %conv65 = trunc i32 %add64 to i16, !dbg !169
  store i16 %conv65, i16* %signature, align 2, !dbg !170
  %45 = load i8*, i8** %pos, align 8, !dbg !171
  %add.ptr66 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !171
  store i8* %add.ptr66, i8** %pos, align 8, !dbg !171
  %46 = load i16, i16* %signature, align 2, !dbg !172
  %conv67 = sext i16 %46 to i32, !dbg !172
  %cmp68 = icmp ne i32 %conv67, 7169, !dbg !174
  br i1 %cmp68, label %land.lhs.true, label %if.end74, !dbg !175

land.lhs.true:                                    ; preds = %if.end60
  %47 = load i16, i16* %signature, align 2, !dbg !176
  %conv70 = sext i16 %47 to i32, !dbg !176
  %cmp71 = icmp ne i32 %conv70, 7170, !dbg !177
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !178

if.then73:                                        ; preds = %land.lhs.true
  br label %while.end148, !dbg !179

if.end74:                                         ; preds = %land.lhs.true, %if.end60
  %48 = load i8*, i8** %pos, align 8, !dbg !180
  %incdec.ptr75 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !180
  store i8* %incdec.ptr75, i8** %pos, align 8, !dbg !180
  %49 = load i8, i8* %48, align 1, !dbg !181
  store i8 %49, i8* %type, align 1, !dbg !182
  %50 = load i8*, i8** %pos, align 8, !dbg !183
  %51 = load i8, i8* %50, align 1, !dbg !184
  %conv76 = zext i8 %51 to i32, !dbg !184
  %shl77 = shl i32 %conv76, 8, !dbg !185
  %52 = load i8*, i8** %pos, align 8, !dbg !186
  %add.ptr78 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !187
  %53 = load i8, i8* %add.ptr78, align 1, !dbg !188
  %conv79 = zext i8 %53 to i32, !dbg !189
  %add80 = add nsw i32 %shl77, %conv79, !dbg !190
  %conv81 = trunc i32 %add80 to i16, !dbg !191
  store i16 %conv81, i16* %length, align 2, !dbg !192
  %54 = load i16, i16* %length, align 2, !dbg !193
  %conv82 = sext i16 %54 to i32, !dbg !193
  %cmp83 = icmp slt i32 %conv82, 1, !dbg !195
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !196

if.then85:                                        ; preds = %if.end74
  br label %corrupt, !dbg !197

if.end86:                                         ; preds = %if.end74
  %55 = load i8*, i8** %pos, align 8, !dbg !198
  %add.ptr87 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !198
  store i8* %add.ptr87, i8** %pos, align 8, !dbg !198
  %56 = load i8*, i8** %pos, align 8, !dbg !199
  %57 = load i16, i16* %length, align 2, !dbg !201
  %conv88 = sext i16 %57 to i32, !dbg !201
  %idx.ext89 = sext i32 %conv88 to i64, !dbg !202
  %add.ptr90 = getelementptr inbounds i8, i8* %56, i64 %idx.ext89, !dbg !202
  %58 = load i8*, i8** %maxpos, align 8, !dbg !203
  %cmp91 = icmp ugt i8* %add.ptr90, %58, !dbg !204
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !205

if.then93:                                        ; preds = %if.end86
  br label %corrupt, !dbg !206

if.end94:                                         ; preds = %if.end86
  %59 = load i8, i8* %type, align 1, !dbg !207
  %conv95 = zext i8 %59 to i32, !dbg !207
  switch i32 %conv95, label %sw.default [
    i32 0, label %sw.bb
    i32 20, label %sw.bb102
    i32 25, label %sw.bb103
    i32 120, label %sw.bb104
    i32 122, label %sw.bb105
    i32 105, label %sw.bb106
    i32 40, label %sw.bb107
    i32 15, label %sw.bb108
    i32 80, label %sw.bb109
    i32 85, label %sw.bb110
    i32 110, label %sw.bb111
    i32 115, label %sw.bb112
    i32 116, label %sw.bb113
    i32 5, label %sw.bb114
    i32 90, label %sw.bb115
    i32 95, label %sw.bb116
    i32 101, label %sw.bb117
    i32 103, label %sw.bb118
    i32 55, label %sw.bb119
    i32 10, label %sw.bb120
    i32 45, label %sw.bb121
    i32 100, label %sw.bb122
    i32 60, label %sw.bb123
    i32 92, label %sw.bb124
    i32 130, label %sw.bb125
  ], !dbg !208

sw.bb:                                            ; preds = %if.end94
  %60 = load i8*, i8** %pos, align 8, !dbg !209
  %61 = load i8, i8* %60, align 1, !dbg !211
  %conv96 = zext i8 %61 to i32, !dbg !211
  %shl97 = shl i32 %conv96, 8, !dbg !212
  %62 = load i8*, i8** %pos, align 8, !dbg !213
  %add.ptr98 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !214
  %63 = load i8, i8* %add.ptr98, align 1, !dbg !215
  %conv99 = zext i8 %63 to i32, !dbg !216
  %add100 = add nsw i32 %shl97, %conv99, !dbg !217
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %add100), !dbg !218
  br label %sw.epilog, !dbg !219

sw.bb102:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %description, align 8, !dbg !220
  br label %sw.epilog, !dbg !221

sw.bb103:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %description, align 8, !dbg !222
  br label %sw.epilog, !dbg !223

sw.bb104:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %description, align 8, !dbg !224
  br label %sw.epilog, !dbg !225

sw.bb105:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %description, align 8, !dbg !226
  br label %sw.epilog, !dbg !227

sw.bb106:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %description, align 8, !dbg !228
  br label %sw.epilog, !dbg !229

sw.bb107:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %description, align 8, !dbg !230
  br label %sw.epilog, !dbg !231

sw.bb108:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %description, align 8, !dbg !232
  br label %sw.epilog, !dbg !233

sw.bb109:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %description, align 8, !dbg !234
  br label %sw.epilog, !dbg !235

sw.bb110:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %description, align 8, !dbg !236
  br label %sw.epilog, !dbg !237

sw.bb111:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %description, align 8, !dbg !238
  br label %sw.epilog, !dbg !239

sw.bb112:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %description, align 8, !dbg !240
  br label %sw.epilog, !dbg !241

sw.bb113:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %description, align 8, !dbg !242
  br label %sw.epilog, !dbg !243

sw.bb114:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8** %description, align 8, !dbg !244
  br label %sw.epilog, !dbg !245

sw.bb115:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %description, align 8, !dbg !246
  br label %sw.epilog, !dbg !247

sw.bb116:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8** %description, align 8, !dbg !248
  br label %sw.epilog, !dbg !249

sw.bb117:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %description, align 8, !dbg !250
  br label %sw.epilog, !dbg !251

sw.bb118:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8** %description, align 8, !dbg !252
  br label %sw.epilog, !dbg !253

sw.bb119:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8** %description, align 8, !dbg !254
  br label %sw.epilog, !dbg !255

sw.bb120:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %description, align 8, !dbg !256
  br label %sw.epilog, !dbg !257

sw.bb121:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8** %description, align 8, !dbg !258
  br label %sw.epilog, !dbg !259

sw.bb122:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8** %description, align 8, !dbg !260
  br label %sw.epilog, !dbg !261

sw.bb123:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8** %description, align 8, !dbg !262
  br label %sw.epilog, !dbg !263

sw.bb124:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8** %description, align 8, !dbg !264
  br label %sw.epilog, !dbg !265

sw.bb125:                                         ; preds = %if.end94
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8** %description, align 8, !dbg !266
  br label %sw.epilog, !dbg !267

sw.default:                                       ; preds = %if.end94
  %64 = load i32, i32* @ShowTags, align 4, !dbg !268
  %tobool126 = icmp ne i32 %64, 0, !dbg !268
  br i1 %tobool126, label %if.then127, label %if.end130, !dbg !270

if.then127:                                       ; preds = %sw.default
  %65 = load i8, i8* %type, align 1, !dbg !271
  %conv128 = zext i8 %65 to i32, !dbg !271
  %call129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 %conv128), !dbg !273
  br label %if.end130, !dbg !274

if.end130:                                        ; preds = %if.then127, %sw.default
  br label %sw.epilog, !dbg !275

sw.epilog:                                        ; preds = %if.end130, %sw.bb125, %sw.bb124, %sw.bb123, %sw.bb122, %sw.bb121, %sw.bb120, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109, %sw.bb108, %sw.bb107, %sw.bb106, %sw.bb105, %sw.bb104, %sw.bb103, %sw.bb102, %sw.bb
  %66 = load i8*, i8** %description, align 8, !dbg !276
  %cmp131 = icmp ne i8* %66, null, !dbg !278
  br i1 %cmp131, label %if.then133, label %if.end144, !dbg !279

if.then133:                                       ; preds = %sw.epilog
  call void @llvm.dbg.declare(metadata [32 x i8]* %TempBuf, metadata !280, metadata !DIExpression()), !dbg !285
  %arraydecay134 = getelementptr inbounds [32 x i8], [32 x i8]* %TempBuf, i64 0, i64 0, !dbg !286
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay134, i8 0, i64 32, i1 false), !dbg !286
  %arraydecay135 = getelementptr inbounds [32 x i8], [32 x i8]* %TempBuf, i64 0, i64 0, !dbg !287
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay135, i8 32, i64 14, i1 false), !dbg !287
  %arraydecay136 = getelementptr inbounds [32 x i8], [32 x i8]* %TempBuf, i64 0, i64 0, !dbg !288
  %67 = load i8*, i8** %description, align 8, !dbg !289
  %68 = load i8*, i8** %description, align 8, !dbg !290
  %call137 = call i64 @strlen(i8* %68) #7, !dbg !291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay136, i8* align 1 %67, i64 %call137, i1 false), !dbg !288
  %arraydecay138 = getelementptr inbounds [32 x i8], [32 x i8]* %TempBuf, i64 0, i64 0, !dbg !292
  %call139 = call i8* @strcat(i8* %arraydecay138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !293
  %arraydecay140 = getelementptr inbounds [32 x i8], [32 x i8]* %TempBuf, i64 0, i64 0, !dbg !294
  %69 = load i16, i16* %length, align 2, !dbg !295
  %conv141 = sext i16 %69 to i32, !dbg !295
  %70 = load i16, i16* %length, align 2, !dbg !296
  %conv142 = sext i16 %70 to i32, !dbg !296
  %71 = load i8*, i8** %pos, align 8, !dbg !297
  %call143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* %arraydecay140, i32 %conv141, i32 %conv142, i8* %71), !dbg !298
  br label %if.end144, !dbg !299

if.end144:                                        ; preds = %if.then133, %sw.epilog
  %72 = load i16, i16* %length, align 2, !dbg !300
  %conv145 = sext i16 %72 to i32, !dbg !300
  %73 = load i8*, i8** %pos, align 8, !dbg !301
  %idx.ext146 = sext i32 %conv145 to i64, !dbg !301
  %add.ptr147 = getelementptr inbounds i8, i8* %73, i64 %idx.ext146, !dbg !301
  store i8* %add.ptr147, i8** %pos, align 8, !dbg !301
  br label %while.cond49, !dbg !136, !llvm.loop !302

while.end148:                                     ; preds = %if.then73, %while.cond49
  br label %return, !dbg !304

corrupt:                                          ; preds = %if.then93, %if.then85, %if.then59, %if.then45, %if.then34, %if.then
  call void @llvm.dbg.label(metadata !305), !dbg !306
  call void @ErrNonfatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i32 0, i32 0), !dbg !307
  br label %return, !dbg !308

return:                                           ; preds = %corrupt, %while.end148, %if.end28
  ret void, !dbg !308
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @ErrNonfatal(i8*, i32, i32) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @ShowXmp(i8* %XmpSection.coerce0, i64 %XmpSection.coerce1) #0 !dbg !309 {
entry:
  %XmpSection = alloca %struct.Section_t, align 8
  %Data = alloca i8*, align 8
  %OutLine = alloca [101 x i8], align 16
  %OutLineChars = alloca i32, align 4
  %NonBlank = alloca i32, align 4
  %a = alloca i32, align 4
  %0 = bitcast %struct.Section_t* %XmpSection to { i8*, i64 }*
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  store i8* %XmpSection.coerce0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  store i64 %XmpSection.coerce1, i64* %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Section_t* %XmpSection, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata i8** %Data, metadata !324, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.declare(metadata [101 x i8]* %OutLine, metadata !326, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %OutLineChars, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %NonBlank, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %a, metadata !335, metadata !DIExpression()), !dbg !336
  store i32 0, i32* %NonBlank, align 4, !dbg !337
  %Data1 = getelementptr inbounds %struct.Section_t, %struct.Section_t* %XmpSection, i32 0, i32 0, !dbg !338
  %3 = load i8*, i8** %Data1, align 8, !dbg !338
  store i8* %3, i8** %Data, align 8, !dbg !339
  store i32 0, i32* %OutLineChars, align 4, !dbg !340
  store i32 0, i32* %a, align 4, !dbg !341
  br label %for.cond, !dbg !343

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %a, align 4, !dbg !344
  %Size = getelementptr inbounds %struct.Section_t, %struct.Section_t* %XmpSection, i32 0, i32 2, !dbg !346
  %5 = load i32, i32* %Size, align 4, !dbg !346
  %cmp = icmp ult i32 %4, %5, !dbg !347
  br i1 %cmp, label %for.body, label %for.end, !dbg !348

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %Data, align 8, !dbg !349
  %7 = load i32, i32* %a, align 4, !dbg !352
  %idxprom = zext i32 %7 to i64, !dbg !349
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom, !dbg !349
  %8 = load i8, i8* %arrayidx, align 1, !dbg !349
  %conv = zext i8 %8 to i32, !dbg !349
  %cmp2 = icmp sge i32 %conv, 32, !dbg !353
  br i1 %cmp2, label %land.lhs.true, label %if.else, !dbg !354

land.lhs.true:                                    ; preds = %for.body
  %9 = load i8*, i8** %Data, align 8, !dbg !355
  %10 = load i32, i32* %a, align 4, !dbg !356
  %idxprom4 = zext i32 %10 to i64, !dbg !355
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 %idxprom4, !dbg !355
  %11 = load i8, i8* %arrayidx5, align 1, !dbg !355
  %conv6 = zext i8 %11 to i32, !dbg !355
  %cmp7 = icmp slt i32 %conv6, 128, !dbg !357
  br i1 %cmp7, label %if.then, label %if.else, !dbg !358

if.then:                                          ; preds = %land.lhs.true
  %12 = load i8*, i8** %Data, align 8, !dbg !359
  %13 = load i32, i32* %a, align 4, !dbg !361
  %idxprom9 = zext i32 %13 to i64, !dbg !359
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %idxprom9, !dbg !359
  %14 = load i8, i8* %arrayidx10, align 1, !dbg !359
  %15 = load i32, i32* %OutLineChars, align 4, !dbg !362
  %inc = add nsw i32 %15, 1, !dbg !362
  store i32 %inc, i32* %OutLineChars, align 4, !dbg !362
  %idxprom11 = sext i32 %15 to i64, !dbg !363
  %arrayidx12 = getelementptr inbounds [101 x i8], [101 x i8]* %OutLine, i64 0, i64 %idxprom11, !dbg !363
  store i8 %14, i8* %arrayidx12, align 1, !dbg !364
  %16 = load i8*, i8** %Data, align 8, !dbg !365
  %17 = load i32, i32* %a, align 4, !dbg !367
  %idxprom13 = zext i32 %17 to i64, !dbg !365
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 %idxprom13, !dbg !365
  %18 = load i8, i8* %arrayidx14, align 1, !dbg !365
  %conv15 = zext i8 %18 to i32, !dbg !365
  %cmp16 = icmp ne i32 %conv15, 32, !dbg !368
  br i1 %cmp16, label %if.then18, label %if.end, !dbg !369

if.then18:                                        ; preds = %if.then
  %19 = load i32, i32* %NonBlank, align 4, !dbg !370
  %or = or i32 %19, 1, !dbg !370
  store i32 %or, i32* %NonBlank, align 4, !dbg !370
  br label %if.end, !dbg !371

if.end:                                           ; preds = %if.then18, %if.then
  br label %if.end29, !dbg !372

if.else:                                          ; preds = %land.lhs.true, %for.body
  %20 = load i8*, i8** %Data, align 8, !dbg !373
  %21 = load i32, i32* %a, align 4, !dbg !376
  %idxprom19 = zext i32 %21 to i64, !dbg !373
  %arrayidx20 = getelementptr inbounds i8, i8* %20, i64 %idxprom19, !dbg !373
  %22 = load i8, i8* %arrayidx20, align 1, !dbg !373
  %conv21 = zext i8 %22 to i32, !dbg !373
  %cmp22 = icmp ne i32 %conv21, 10, !dbg !377
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !378

if.then24:                                        ; preds = %if.else
  %23 = load i32, i32* %OutLineChars, align 4, !dbg !379
  %inc25 = add nsw i32 %23, 1, !dbg !379
  store i32 %inc25, i32* %OutLineChars, align 4, !dbg !379
  %idxprom26 = sext i32 %23 to i64, !dbg !381
  %arrayidx27 = getelementptr inbounds [101 x i8], [101 x i8]* %OutLine, i64 0, i64 %idxprom26, !dbg !381
  store i8 63, i8* %arrayidx27, align 1, !dbg !382
  br label %if.end28, !dbg !383

if.end28:                                         ; preds = %if.then24, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end
  %24 = load i8*, i8** %Data, align 8, !dbg !384
  %25 = load i32, i32* %a, align 4, !dbg !386
  %idxprom30 = zext i32 %25 to i64, !dbg !384
  %arrayidx31 = getelementptr inbounds i8, i8* %24, i64 %idxprom30, !dbg !384
  %26 = load i8, i8* %arrayidx31, align 1, !dbg !384
  %conv32 = zext i8 %26 to i32, !dbg !384
  %cmp33 = icmp eq i32 %conv32, 10, !dbg !387
  br i1 %cmp33, label %if.then37, label %lor.lhs.false, !dbg !388

lor.lhs.false:                                    ; preds = %if.end29
  %27 = load i32, i32* %OutLineChars, align 4, !dbg !389
  %cmp35 = icmp sge i32 %27, 100, !dbg !390
  br i1 %cmp35, label %if.then37, label %if.end42, !dbg !391

if.then37:                                        ; preds = %lor.lhs.false, %if.end29
  %28 = load i32, i32* %OutLineChars, align 4, !dbg !392
  %idxprom38 = sext i32 %28 to i64, !dbg !394
  %arrayidx39 = getelementptr inbounds [101 x i8], [101 x i8]* %OutLine, i64 0, i64 %idxprom38, !dbg !394
  store i8 0, i8* %arrayidx39, align 1, !dbg !395
  %29 = load i32, i32* %NonBlank, align 4, !dbg !396
  %tobool = icmp ne i32 %29, 0, !dbg !396
  br i1 %tobool, label %if.then40, label %if.end41, !dbg !398

if.then40:                                        ; preds = %if.then37
  %arraydecay = getelementptr inbounds [101 x i8], [101 x i8]* %OutLine, i64 0, i64 0, !dbg !399
  %call = call i32 @puts(i8* %arraydecay), !dbg !401
  br label %if.end41, !dbg !402

if.end41:                                         ; preds = %if.then40, %if.then37
  %30 = load i32, i32* %NonBlank, align 4, !dbg !403
  %and = and i32 %30, 1, !dbg !404
  %shl = shl i32 %and, 1, !dbg !405
  store i32 %shl, i32* %NonBlank, align 4, !dbg !406
  store i32 0, i32* %OutLineChars, align 4, !dbg !407
  br label %if.end42, !dbg !408

if.end42:                                         ; preds = %if.end41, %lor.lhs.false
  br label %for.inc, !dbg !409

for.inc:                                          ; preds = %if.end42
  %31 = load i32, i32* %a, align 4, !dbg !410
  %inc43 = add i32 %31, 1, !dbg !410
  store i32 %inc43, i32* %a, align 4, !dbg !410
  br label %for.cond, !dbg !411, !llvm.loop !412

for.end:                                          ; preds = %for.cond
  ret void, !dbg !414
}

declare dso_local i32 @puts(i8*) #4

attributes #0 = { noinline nounwind optnone sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "iptc.c", directory: ".")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "show_IPTC", scope: !1, file: !1, line: 52, type: !10, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DILocalVariable(name: "Data", arg: 1, scope: !9, file: !1, line: 52, type: !12)
!16 = !DILocation(line: 52, column: 32, scope: !9)
!17 = !DILocalVariable(name: "itemlen", arg: 2, scope: !9, file: !1, line: 52, type: !14)
!18 = !DILocation(line: 52, column: 51, scope: !9)
!19 = !DILocalVariable(name: "IptcSig1", scope: !9, file: !1, line: 54, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 112, elements: !23)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24}
!24 = !DISubrange(count: 14)
!25 = !DILocation(line: 54, column: 16, scope: !9)
!26 = !DILocalVariable(name: "IptcSig2", scope: !9, file: !1, line: 55, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 40, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 5)
!30 = !DILocation(line: 55, column: 16, scope: !9)
!31 = !DILocalVariable(name: "IptcSig3", scope: !9, file: !1, line: 56, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 2)
!35 = !DILocation(line: 56, column: 16, scope: !9)
!36 = !DILocalVariable(name: "pos", scope: !9, file: !1, line: 58, type: !12)
!37 = !DILocation(line: 58, column: 21, scope: !9)
!38 = !DILocation(line: 58, column: 30, scope: !9)
!39 = !DILocation(line: 58, column: 35, scope: !9)
!40 = !DILocalVariable(name: "maxpos", scope: !9, file: !1, line: 59, type: !12)
!41 = !DILocation(line: 59, column: 21, scope: !9)
!42 = !DILocation(line: 59, column: 30, scope: !9)
!43 = !DILocation(line: 59, column: 35, scope: !9)
!44 = !DILocation(line: 59, column: 34, scope: !9)
!45 = !DILocalVariable(name: "headerLen", scope: !9, file: !1, line: 60, type: !13)
!46 = !DILocation(line: 60, column: 19, scope: !9)
!47 = !DILocalVariable(name: "dataLen", scope: !9, file: !1, line: 61, type: !13)
!48 = !DILocation(line: 61, column: 19, scope: !9)
!49 = !DILocation(line: 63, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !9, file: !1, line: 63, column: 9)
!51 = !DILocation(line: 63, column: 17, scope: !50)
!52 = !DILocation(line: 63, column: 9, scope: !9)
!53 = !DILocation(line: 63, column: 23, scope: !50)
!54 = !DILocation(line: 66, column: 16, scope: !55)
!55 = distinct !DILexicalBlock(scope: !9, file: !1, line: 66, column: 9)
!56 = !DILocation(line: 66, column: 21, scope: !55)
!57 = !DILocation(line: 66, column: 9, scope: !55)
!58 = !DILocation(line: 66, column: 51, scope: !55)
!59 = !DILocation(line: 66, column: 9, scope: !9)
!60 = !DILocation(line: 66, column: 57, scope: !55)
!61 = !DILocation(line: 67, column: 9, scope: !9)
!62 = !DILocation(line: 69, column: 16, scope: !63)
!63 = distinct !DILexicalBlock(scope: !9, file: !1, line: 69, column: 9)
!64 = !DILocation(line: 69, column: 21, scope: !63)
!65 = !DILocation(line: 69, column: 9, scope: !63)
!66 = !DILocation(line: 69, column: 51, scope: !63)
!67 = !DILocation(line: 69, column: 9, scope: !9)
!68 = !DILocation(line: 69, column: 57, scope: !63)
!69 = !DILocation(line: 70, column: 9, scope: !9)
!70 = !DILocation(line: 73, column: 2, scope: !9)
!71 = !DILocation(line: 73, column: 16, scope: !9)
!72 = !DILocation(line: 73, column: 21, scope: !9)
!73 = !DILocation(line: 73, column: 9, scope: !9)
!74 = !DILocation(line: 73, column: 49, scope: !9)
!75 = !DILocation(line: 75, column: 7, scope: !76)
!76 = distinct !DILexicalBlock(scope: !9, file: !1, line: 73, column: 55)
!77 = !DILocation(line: 77, column: 16, scope: !76)
!78 = !DILocation(line: 77, column: 15, scope: !76)
!79 = !DILocation(line: 77, column: 13, scope: !76)
!80 = !DILocation(line: 78, column: 11, scope: !76)
!81 = !DILocation(line: 78, column: 21, scope: !76)
!82 = !DILocation(line: 78, column: 29, scope: !76)
!83 = !DILocation(line: 78, column: 7, scope: !76)
!84 = !DILocation(line: 80, column: 7, scope: !76)
!85 = !DILocation(line: 82, column: 17, scope: !76)
!86 = !DILocation(line: 82, column: 13, scope: !76)
!87 = !DILocation(line: 82, column: 11, scope: !76)
!88 = !DILocation(line: 83, column: 10, scope: !76)
!89 = !DILocation(line: 83, column: 7, scope: !76)
!90 = !DILocation(line: 85, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !76, file: !1, line: 85, column: 7)
!92 = !DILocation(line: 85, column: 19, scope: !91)
!93 = !DILocation(line: 85, column: 7, scope: !91)
!94 = !DILocation(line: 85, column: 51, scope: !91)
!95 = !DILocation(line: 85, column: 7, scope: !76)
!96 = !DILocation(line: 85, column: 57, scope: !91)
!97 = !DILabel(scope: !98, name: "badsig", file: !1, line: 86)
!98 = distinct !DILexicalBlock(scope: !91, file: !1, line: 85, column: 57)
!99 = !DILocation(line: 86, column: 4, scope: !98)
!100 = !DILocation(line: 86, column: 16, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 86, column: 16)
!102 = !DILocation(line: 86, column: 16, scope: !98)
!103 = !DILocation(line: 87, column: 5, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 86, column: 26)
!105 = !DILocation(line: 88, column: 4, scope: !104)
!106 = !DILocation(line: 89, column: 4, scope: !98)
!107 = !DILocation(line: 91, column: 7, scope: !76)
!108 = distinct !{!108, !70, !109, !110}
!109 = !DILocation(line: 92, column: 5, scope: !9)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 94, column: 9, scope: !9)
!112 = !DILocation(line: 96, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !9, file: !1, line: 96, column: 9)
!114 = !DILocation(line: 96, column: 16, scope: !113)
!115 = !DILocation(line: 96, column: 13, scope: !113)
!116 = !DILocation(line: 96, column: 9, scope: !9)
!117 = !DILocation(line: 96, column: 24, scope: !113)
!118 = !DILocation(line: 101, column: 21, scope: !9)
!119 = !DILocation(line: 101, column: 17, scope: !9)
!120 = !DILocation(line: 101, column: 15, scope: !9)
!121 = !DILocation(line: 102, column: 12, scope: !9)
!122 = !DILocation(line: 102, column: 22, scope: !9)
!123 = !DILocation(line: 102, column: 29, scope: !9)
!124 = !DILocation(line: 102, column: 39, scope: !9)
!125 = !DILocation(line: 102, column: 26, scope: !9)
!126 = !DILocation(line: 102, column: 9, scope: !9)
!127 = !DILocation(line: 104, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !9, file: !1, line: 104, column: 9)
!129 = !DILocation(line: 104, column: 12, scope: !128)
!130 = !DILocation(line: 104, column: 18, scope: !128)
!131 = !DILocation(line: 104, column: 15, scope: !128)
!132 = !DILocation(line: 104, column: 9, scope: !9)
!133 = !DILocation(line: 104, column: 26, scope: !128)
!134 = !DILocation(line: 109, column: 9, scope: !9)
!135 = !DILocation(line: 111, column: 5, scope: !9)
!136 = !DILocation(line: 114, column: 5, scope: !9)
!137 = !DILocation(line: 114, column: 12, scope: !9)
!138 = !DILocation(line: 114, column: 19, scope: !9)
!139 = !DILocation(line: 114, column: 26, scope: !9)
!140 = !DILocation(line: 114, column: 24, scope: !9)
!141 = !DILocation(line: 114, column: 33, scope: !9)
!142 = !DILocation(line: 114, column: 16, scope: !9)
!143 = !DILocalVariable(name: "signature", scope: !144, file: !1, line: 115, type: !145)
!144 = distinct !DILexicalBlock(scope: !9, file: !1, line: 114, column: 38)
!145 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!146 = !DILocation(line: 115, column: 16, scope: !144)
!147 = !DILocalVariable(name: "type", scope: !144, file: !1, line: 116, type: !13)
!148 = !DILocation(line: 116, column: 25, scope: !144)
!149 = !DILocalVariable(name: "length", scope: !144, file: !1, line: 117, type: !145)
!150 = !DILocation(line: 117, column: 16, scope: !144)
!151 = !DILocalVariable(name: "description", scope: !144, file: !1, line: 118, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!153 = !DILocation(line: 118, column: 22, scope: !144)
!154 = !DILocation(line: 120, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !144, file: !1, line: 120, column: 13)
!156 = !DILocation(line: 120, column: 16, scope: !155)
!157 = !DILocation(line: 120, column: 21, scope: !155)
!158 = !DILocation(line: 120, column: 19, scope: !155)
!159 = !DILocation(line: 120, column: 13, scope: !144)
!160 = !DILocation(line: 120, column: 29, scope: !155)
!161 = !DILocation(line: 122, column: 23, scope: !144)
!162 = !DILocation(line: 122, column: 22, scope: !144)
!163 = !DILocation(line: 122, column: 27, scope: !144)
!164 = !DILocation(line: 122, column: 38, scope: !144)
!165 = !DILocation(line: 122, column: 41, scope: !144)
!166 = !DILocation(line: 122, column: 36, scope: !144)
!167 = !DILocation(line: 122, column: 35, scope: !144)
!168 = !DILocation(line: 122, column: 33, scope: !144)
!169 = !DILocation(line: 122, column: 21, scope: !144)
!170 = !DILocation(line: 122, column: 19, scope: !144)
!171 = !DILocation(line: 123, column: 13, scope: !144)
!172 = !DILocation(line: 125, column: 13, scope: !173)
!173 = distinct !DILexicalBlock(scope: !144, file: !1, line: 125, column: 13)
!174 = !DILocation(line: 125, column: 23, scope: !173)
!175 = !DILocation(line: 125, column: 33, scope: !173)
!176 = !DILocation(line: 125, column: 36, scope: !173)
!177 = !DILocation(line: 125, column: 46, scope: !173)
!178 = !DILocation(line: 125, column: 13, scope: !144)
!179 = !DILocation(line: 125, column: 57, scope: !173)
!180 = !DILocation(line: 127, column: 23, scope: !144)
!181 = !DILocation(line: 127, column: 19, scope: !144)
!182 = !DILocation(line: 127, column: 17, scope: !144)
!183 = !DILocation(line: 128, column: 21, scope: !144)
!184 = !DILocation(line: 128, column: 20, scope: !144)
!185 = !DILocation(line: 128, column: 25, scope: !144)
!186 = !DILocation(line: 128, column: 36, scope: !144)
!187 = !DILocation(line: 128, column: 39, scope: !144)
!188 = !DILocation(line: 128, column: 34, scope: !144)
!189 = !DILocation(line: 128, column: 33, scope: !144)
!190 = !DILocation(line: 128, column: 31, scope: !144)
!191 = !DILocation(line: 128, column: 19, scope: !144)
!192 = !DILocation(line: 128, column: 17, scope: !144)
!193 = !DILocation(line: 129, column: 13, scope: !194)
!194 = distinct !DILexicalBlock(scope: !144, file: !1, line: 129, column: 13)
!195 = !DILocation(line: 129, column: 20, scope: !194)
!196 = !DILocation(line: 129, column: 13, scope: !144)
!197 = !DILocation(line: 129, column: 25, scope: !194)
!198 = !DILocation(line: 130, column: 16, scope: !144)
!199 = !DILocation(line: 132, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !144, file: !1, line: 132, column: 13)
!201 = !DILocation(line: 132, column: 17, scope: !200)
!202 = !DILocation(line: 132, column: 16, scope: !200)
!203 = !DILocation(line: 132, column: 26, scope: !200)
!204 = !DILocation(line: 132, column: 24, scope: !200)
!205 = !DILocation(line: 132, column: 13, scope: !144)
!206 = !DILocation(line: 132, column: 34, scope: !200)
!207 = !DILocation(line: 134, column: 17, scope: !144)
!208 = !DILocation(line: 134, column: 9, scope: !144)
!209 = !DILocation(line: 136, column: 50, scope: !210)
!210 = distinct !DILexicalBlock(scope: !144, file: !1, line: 134, column: 23)
!211 = !DILocation(line: 136, column: 49, scope: !210)
!212 = !DILocation(line: 136, column: 54, scope: !210)
!213 = !DILocation(line: 136, column: 65, scope: !210)
!214 = !DILocation(line: 136, column: 68, scope: !210)
!215 = !DILocation(line: 136, column: 63, scope: !210)
!216 = !DILocation(line: 136, column: 62, scope: !210)
!217 = !DILocation(line: 136, column: 60, scope: !210)
!218 = !DILocation(line: 136, column: 17, scope: !210)
!219 = !DILocation(line: 137, column: 17, scope: !210)
!220 = !DILocation(line: 139, column: 60, scope: !210)
!221 = !DILocation(line: 139, column: 87, scope: !210)
!222 = !DILocation(line: 140, column: 60, scope: !210)
!223 = !DILocation(line: 140, column: 74, scope: !210)
!224 = !DILocation(line: 141, column: 60, scope: !210)
!225 = !DILocation(line: 141, column: 73, scope: !210)
!226 = !DILocation(line: 142, column: 60, scope: !210)
!227 = !DILocation(line: 142, column: 72, scope: !210)
!228 = !DILocation(line: 143, column: 60, scope: !210)
!229 = !DILocation(line: 143, column: 74, scope: !210)
!230 = !DILocation(line: 144, column: 60, scope: !210)
!231 = !DILocation(line: 144, column: 78, scope: !210)
!232 = !DILocation(line: 145, column: 60, scope: !210)
!233 = !DILocation(line: 145, column: 74, scope: !210)
!234 = !DILocation(line: 146, column: 60, scope: !210)
!235 = !DILocation(line: 146, column: 72, scope: !210)
!236 = !DILocation(line: 147, column: 60, scope: !210)
!237 = !DILocation(line: 147, column: 78, scope: !210)
!238 = !DILocation(line: 148, column: 60, scope: !210)
!239 = !DILocation(line: 148, column: 72, scope: !210)
!240 = !DILocation(line: 149, column: 60, scope: !210)
!241 = !DILocation(line: 149, column: 72, scope: !210)
!242 = !DILocation(line: 150, column: 60, scope: !210)
!243 = !DILocation(line: 150, column: 75, scope: !210)
!244 = !DILocation(line: 151, column: 60, scope: !210)
!245 = !DILocation(line: 151, column: 77, scope: !210)
!246 = !DILocation(line: 152, column: 60, scope: !210)
!247 = !DILocation(line: 152, column: 70, scope: !210)
!248 = !DILocation(line: 153, column: 60, scope: !210)
!249 = !DILocation(line: 153, column: 71, scope: !210)
!250 = !DILocation(line: 154, column: 60, scope: !210)
!251 = !DILocation(line: 154, column: 73, scope: !210)
!252 = !DILocation(line: 155, column: 60, scope: !210)
!253 = !DILocation(line: 155, column: 95, scope: !210)
!254 = !DILocation(line: 156, column: 60, scope: !210)
!255 = !DILocation(line: 156, column: 77, scope: !210)
!256 = !DILocation(line: 157, column: 60, scope: !210)
!257 = !DILocation(line: 157, column: 73, scope: !210)
!258 = !DILocation(line: 158, column: 60, scope: !210)
!259 = !DILocation(line: 158, column: 78, scope: !210)
!260 = !DILocation(line: 159, column: 60, scope: !210)
!261 = !DILocation(line: 159, column: 78, scope: !210)
!262 = !DILocation(line: 160, column: 60, scope: !210)
!263 = !DILocation(line: 160, column: 78, scope: !210)
!264 = !DILocation(line: 161, column: 60, scope: !210)
!265 = !DILocation(line: 161, column: 78, scope: !210)
!266 = !DILocation(line: 162, column: 60, scope: !210)
!267 = !DILocation(line: 162, column: 76, scope: !210)
!268 = !DILocation(line: 165, column: 21, scope: !269)
!269 = distinct !DILexicalBlock(scope: !210, file: !1, line: 165, column: 21)
!270 = !DILocation(line: 165, column: 21, scope: !210)
!271 = !DILocation(line: 166, column: 59, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !1, line: 165, column: 30)
!273 = !DILocation(line: 166, column: 21, scope: !272)
!274 = !DILocation(line: 167, column: 17, scope: !272)
!275 = !DILocation(line: 168, column: 13, scope: !210)
!276 = !DILocation(line: 170, column: 13, scope: !277)
!277 = distinct !DILexicalBlock(scope: !144, file: !1, line: 170, column: 13)
!278 = !DILocation(line: 170, column: 25, scope: !277)
!279 = !DILocation(line: 170, column: 13, scope: !144)
!280 = !DILocalVariable(name: "TempBuf", scope: !281, file: !1, line: 171, type: !282)
!281 = distinct !DILexicalBlock(scope: !277, file: !1, line: 170, column: 34)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 32)
!285 = !DILocation(line: 171, column: 18, scope: !281)
!286 = !DILocation(line: 172, column: 13, scope: !281)
!287 = !DILocation(line: 173, column: 13, scope: !281)
!288 = !DILocation(line: 174, column: 13, scope: !281)
!289 = !DILocation(line: 174, column: 29, scope: !281)
!290 = !DILocation(line: 174, column: 49, scope: !281)
!291 = !DILocation(line: 174, column: 42, scope: !281)
!292 = !DILocation(line: 175, column: 20, scope: !281)
!293 = !DILocation(line: 175, column: 13, scope: !281)
!294 = !DILocation(line: 176, column: 34, scope: !281)
!295 = !DILocation(line: 176, column: 43, scope: !281)
!296 = !DILocation(line: 176, column: 51, scope: !281)
!297 = !DILocation(line: 176, column: 59, scope: !281)
!298 = !DILocation(line: 176, column: 13, scope: !281)
!299 = !DILocation(line: 177, column: 9, scope: !281)
!300 = !DILocation(line: 178, column: 16, scope: !144)
!301 = !DILocation(line: 178, column: 13, scope: !144)
!302 = distinct !{!302, !136, !303, !110}
!303 = !DILocation(line: 179, column: 5, scope: !9)
!304 = !DILocation(line: 180, column: 5, scope: !9)
!305 = !DILabel(scope: !9, name: "corrupt", file: !1, line: 181)
!306 = !DILocation(line: 181, column: 1, scope: !9)
!307 = !DILocation(line: 182, column: 5, scope: !9)
!308 = !DILocation(line: 183, column: 1, scope: !9)
!309 = distinct !DISubprogram(name: "ShowXmp", scope: !1, file: !1, line: 190, type: !310, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !312}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "Section_t", file: !313, line: 67, baseType: !314)
!313 = !DIFile(filename: "./jhead.h", directory: ".")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !313, line: 63, size: 128, elements: !315)
!315 = !{!316, !319, !321}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !314, file: !313, line: 64, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !313, line: 41, baseType: !13)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !314, file: !313, line: 65, baseType: !320, size: 32, offset: 64)
!320 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !314, file: !313, line: 66, baseType: !14, size: 32, offset: 96)
!322 = !DILocalVariable(name: "XmpSection", arg: 1, scope: !309, file: !1, line: 190, type: !312)
!323 = !DILocation(line: 190, column: 24, scope: !309)
!324 = !DILocalVariable(name: "Data", scope: !309, file: !1, line: 192, type: !12)
!325 = !DILocation(line: 192, column: 21, scope: !309)
!326 = !DILocalVariable(name: "OutLine", scope: !309, file: !1, line: 193, type: !327)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 808, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 101)
!330 = !DILocation(line: 193, column: 10, scope: !309)
!331 = !DILocalVariable(name: "OutLineChars", scope: !309, file: !1, line: 194, type: !320)
!332 = !DILocation(line: 194, column: 9, scope: !309)
!333 = !DILocalVariable(name: "NonBlank", scope: !309, file: !1, line: 195, type: !320)
!334 = !DILocation(line: 195, column: 9, scope: !309)
!335 = !DILocalVariable(name: "a", scope: !309, file: !1, line: 196, type: !14)
!336 = !DILocation(line: 196, column: 14, scope: !309)
!337 = !DILocation(line: 197, column: 14, scope: !309)
!338 = !DILocation(line: 198, column: 23, scope: !309)
!339 = !DILocation(line: 198, column: 10, scope: !309)
!340 = !DILocation(line: 199, column: 18, scope: !309)
!341 = !DILocation(line: 202, column: 11, scope: !342)
!342 = distinct !DILexicalBlock(scope: !309, file: !1, line: 202, column: 5)
!343 = !DILocation(line: 202, column: 10, scope: !342)
!344 = !DILocation(line: 202, column: 14, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !1, line: 202, column: 5)
!346 = !DILocation(line: 202, column: 27, scope: !345)
!347 = !DILocation(line: 202, column: 15, scope: !345)
!348 = !DILocation(line: 202, column: 5, scope: !342)
!349 = !DILocation(line: 203, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 203, column: 13)
!351 = distinct !DILexicalBlock(scope: !345, file: !1, line: 202, column: 36)
!352 = !DILocation(line: 203, column: 18, scope: !350)
!353 = !DILocation(line: 203, column: 21, scope: !350)
!354 = !DILocation(line: 203, column: 27, scope: !350)
!355 = !DILocation(line: 203, column: 30, scope: !350)
!356 = !DILocation(line: 203, column: 35, scope: !350)
!357 = !DILocation(line: 203, column: 38, scope: !350)
!358 = !DILocation(line: 203, column: 13, scope: !351)
!359 = !DILocation(line: 204, column: 39, scope: !360)
!360 = distinct !DILexicalBlock(scope: !350, file: !1, line: 203, column: 44)
!361 = !DILocation(line: 204, column: 44, scope: !360)
!362 = !DILocation(line: 204, column: 33, scope: !360)
!363 = !DILocation(line: 204, column: 13, scope: !360)
!364 = !DILocation(line: 204, column: 37, scope: !360)
!365 = !DILocation(line: 205, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !360, file: !1, line: 205, column: 17)
!367 = !DILocation(line: 205, column: 22, scope: !366)
!368 = !DILocation(line: 205, column: 25, scope: !366)
!369 = !DILocation(line: 205, column: 17, scope: !360)
!370 = !DILocation(line: 205, column: 42, scope: !366)
!371 = !DILocation(line: 205, column: 33, scope: !366)
!372 = !DILocation(line: 206, column: 9, scope: !360)
!373 = !DILocation(line: 207, column: 17, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 207, column: 17)
!375 = distinct !DILexicalBlock(scope: !350, file: !1, line: 206, column: 14)
!376 = !DILocation(line: 207, column: 22, scope: !374)
!377 = !DILocation(line: 207, column: 25, scope: !374)
!378 = !DILocation(line: 207, column: 17, scope: !375)
!379 = !DILocation(line: 208, column: 37, scope: !380)
!380 = distinct !DILexicalBlock(scope: !374, file: !1, line: 207, column: 33)
!381 = !DILocation(line: 208, column: 17, scope: !380)
!382 = !DILocation(line: 208, column: 41, scope: !380)
!383 = !DILocation(line: 209, column: 13, scope: !380)
!384 = !DILocation(line: 211, column: 13, scope: !385)
!385 = distinct !DILexicalBlock(scope: !351, file: !1, line: 211, column: 13)
!386 = !DILocation(line: 211, column: 18, scope: !385)
!387 = !DILocation(line: 211, column: 21, scope: !385)
!388 = !DILocation(line: 211, column: 29, scope: !385)
!389 = !DILocation(line: 211, column: 32, scope: !385)
!390 = !DILocation(line: 211, column: 45, scope: !385)
!391 = !DILocation(line: 211, column: 13, scope: !351)
!392 = !DILocation(line: 212, column: 21, scope: !393)
!393 = distinct !DILexicalBlock(scope: !385, file: !1, line: 211, column: 52)
!394 = !DILocation(line: 212, column: 13, scope: !393)
!395 = !DILocation(line: 212, column: 35, scope: !393)
!396 = !DILocation(line: 213, column: 17, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !1, line: 213, column: 17)
!398 = !DILocation(line: 213, column: 17, scope: !393)
!399 = !DILocation(line: 214, column: 22, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !1, line: 213, column: 26)
!401 = !DILocation(line: 214, column: 17, scope: !400)
!402 = !DILocation(line: 215, column: 13, scope: !400)
!403 = !DILocation(line: 216, column: 25, scope: !393)
!404 = !DILocation(line: 216, column: 34, scope: !393)
!405 = !DILocation(line: 216, column: 39, scope: !393)
!406 = !DILocation(line: 216, column: 22, scope: !393)
!407 = !DILocation(line: 217, column: 26, scope: !393)
!408 = !DILocation(line: 218, column: 9, scope: !393)
!409 = !DILocation(line: 219, column: 5, scope: !351)
!410 = !DILocation(line: 202, column: 33, scope: !345)
!411 = !DILocation(line: 202, column: 5, scope: !345)
!412 = distinct !{!412, !348, !413, !110}
!413 = !DILocation(line: 219, column: 5, scope: !342)
!414 = !DILocation(line: 220, column: 1, scope: !309)
