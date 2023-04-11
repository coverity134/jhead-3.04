; ModuleID = 'jpgqguess.c'
source_filename = "jpgqguess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageInfo_t = type { [4097 x i8], i64, %struct.anon, i32, [32 x i8], [40 x i8], [20 x i8], i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [16000 x i8], i32, i32, i32, i32, i8, i32, [10 x i32], i32, i32, [31 x i8], [31 x i8], [20 x i8], i32 }
%struct.anon = type { i8, i8, i16, i16 }

@ShowTags = external dso_local global i32, align 4
@.str = private unnamed_addr constant [29 x i8] c"DQT:  table %d precision %d\0A\00", align 1
@deftabs = internal global [2 x i32*] [i32* getelementptr inbounds ([64 x i32], [64 x i32]* @std_luminance_quant_tbl, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @std_chrominance_quant_tbl, i32 0, i32 0)], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [22 x i8] c"DQT section too short\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%5u \00", align 1
@jpeg_zigzag_order = internal global [64 x i32] [i32 0, i32 1, i32 5, i32 6, i32 14, i32 15, i32 27, i32 28, i32 2, i32 4, i32 7, i32 13, i32 16, i32 26, i32 29, i32 42, i32 3, i32 8, i32 12, i32 17, i32 25, i32 30, i32 41, i32 43, i32 9, i32 11, i32 18, i32 24, i32 31, i32 40, i32 44, i32 53, i32 10, i32 19, i32 23, i32 32, i32 39, i32 45, i32 52, i32 54, i32 20, i32 22, i32 33, i32 38, i32 46, i32 51, i32 55, i32 60, i32 21, i32 34, i32 37, i32 47, i32 50, i32 56, i32 59, i32 61, i32 35, i32 36, i32 48, i32 49, i32 57, i32 58, i32 62, i32 63], align 16, !dbg !18
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Approximate quality factor for qtable %d: %.0f (scale %.2f, var %.2f)\0A\00", align 1
@ImageInfo = external dso_local global %struct.ImageInfo_t, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"DHT (length %d bytes)\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"  table %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Huff table too short\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"  bits %2d (codes=%3u) \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"  $%02x \00", align 1
@std_luminance_quant_tbl = internal global [64 x i32] [i32 16, i32 11, i32 12, i32 14, i32 12, i32 10, i32 16, i32 14, i32 13, i32 14, i32 18, i32 17, i32 16, i32 19, i32 24, i32 40, i32 26, i32 24, i32 22, i32 22, i32 24, i32 49, i32 35, i32 37, i32 29, i32 40, i32 58, i32 51, i32 61, i32 60, i32 57, i32 51, i32 56, i32 55, i32 64, i32 72, i32 92, i32 78, i32 64, i32 68, i32 87, i32 69, i32 55, i32 56, i32 80, i32 109, i32 81, i32 87, i32 95, i32 98, i32 103, i32 104, i32 103, i32 62, i32 77, i32 113, i32 121, i32 112, i32 100, i32 120, i32 92, i32 101, i32 103, i32 99], align 16, !dbg !11
@std_chrominance_quant_tbl = internal global [64 x i32] [i32 17, i32 18, i32 18, i32 24, i32 21, i32 24, i32 47, i32 26, i32 26, i32 47, i32 99, i32 66, i32 56, i32 66, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], align 16, !dbg !16

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @process_DQT(i8* %Data, i32 %length) #0 !dbg !28 {
entry:
  %Data.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %c = alloca i32, align 4
  %tableindex = alloca i32, align 4
  %coefindex = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %table = alloca [64 x i32], align 16
  %reftable = alloca i32*, align 8
  %cumsf = alloca double, align 8
  %cumsf2 = alloca double, align 8
  %allones = alloca i32, align 4
  %val = alloca i32, align 4
  %temp = alloca i32, align 4
  %x = alloca double, align 8
  %qual = alloca double, align 8
  %var = alloca double, align 8
  store i8* %Data, i8** %Data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Data.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %a, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %c, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %tableindex, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %coefindex, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %row, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %col, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata [64 x i32]* %table, metadata !51, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32** %reftable, metadata !54, metadata !DIExpression()), !dbg !55
  store i32* null, i32** %reftable, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata double* %cumsf, metadata !56, metadata !DIExpression()), !dbg !57
  store double 0.000000e+00, double* %cumsf, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata double* %cumsf2, metadata !58, metadata !DIExpression()), !dbg !59
  store double 0.000000e+00, double* %cumsf2, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %allones, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 1, i32* %allones, align 4, !dbg !61
  store i32 2, i32* %a, align 4, !dbg !62
  br label %while.cond, !dbg !63

while.cond:                                       ; preds = %if.end109, %entry
  %0 = load i32, i32* %a, align 4, !dbg !64
  %1 = load i32, i32* %length.addr, align 4, !dbg !65
  %cmp = icmp slt i32 %0, %1, !dbg !66
  br i1 %cmp, label %while.body, label %while.end, !dbg !63

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %Data.addr, align 8, !dbg !67
  %3 = load i32, i32* %a, align 4, !dbg !69
  %inc = add nsw i32 %3, 1, !dbg !69
  store i32 %inc, i32* %a, align 4, !dbg !69
  %idxprom = sext i32 %3 to i64, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom, !dbg !67
  %4 = load i8, i8* %arrayidx, align 1, !dbg !67
  %conv = zext i8 %4 to i32, !dbg !67
  store i32 %conv, i32* %c, align 4, !dbg !70
  %5 = load i32, i32* %c, align 4, !dbg !71
  %and = and i32 %5, 15, !dbg !72
  store i32 %and, i32* %tableindex, align 4, !dbg !73
  %6 = load i32, i32* @ShowTags, align 4, !dbg !74
  %cmp1 = icmp sgt i32 %6, 1, !dbg !76
  br i1 %cmp1, label %if.then, label %if.end, !dbg !77

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %tableindex, align 4, !dbg !78
  %8 = load i32, i32* %c, align 4, !dbg !80
  %shr = ashr i32 %8, 4, !dbg !81
  %tobool = icmp ne i32 %shr, 0, !dbg !82
  %9 = zext i1 %tobool to i64, !dbg !82
  %cond = select i1 %tobool, i32 16, i32 8, !dbg !82
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %cond), !dbg !83
  br label %if.end, !dbg !84

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i32, i32* %tableindex, align 4, !dbg !85
  %cmp3 = icmp slt i32 %10, 2, !dbg !87
  br i1 %cmp3, label %if.then5, label %if.end8, !dbg !88

if.then5:                                         ; preds = %if.end
  %11 = load i32, i32* %tableindex, align 4, !dbg !89
  %idxprom6 = sext i32 %11 to i64, !dbg !91
  %arrayidx7 = getelementptr inbounds [2 x i32*], [2 x i32*]* @deftabs, i64 0, i64 %idxprom6, !dbg !91
  %12 = load i32*, i32** %arrayidx7, align 8, !dbg !91
  store i32* %12, i32** %reftable, align 8, !dbg !92
  br label %if.end8, !dbg !93

if.end8:                                          ; preds = %if.then5, %if.end
  %13 = load i32, i32* %a, align 4, !dbg !94
  %add = add nsw i32 %13, 64, !dbg !96
  %14 = load i32, i32* %length.addr, align 4, !dbg !97
  %cmp9 = icmp sgt i32 %add, %14, !dbg !98
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !99

if.then11:                                        ; preds = %if.end8
  call void @ErrNonfatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0), !dbg !100
  br label %while.end, !dbg !102

if.end12:                                         ; preds = %if.end8
  store i32 0, i32* %coefindex, align 4, !dbg !103
  br label %for.cond, !dbg !105

for.cond:                                         ; preds = %for.inc, %if.end12
  %15 = load i32, i32* %coefindex, align 4, !dbg !106
  %cmp13 = icmp slt i32 %15, 64, !dbg !108
  br i1 %cmp13, label %for.body, label %for.end, !dbg !109

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !110, metadata !DIExpression()), !dbg !112
  %16 = load i32, i32* %c, align 4, !dbg !113
  %shr15 = ashr i32 %16, 4, !dbg !115
  %tobool16 = icmp ne i32 %shr15, 0, !dbg !115
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !116

if.then17:                                        ; preds = %for.body
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !117, metadata !DIExpression()), !dbg !119
  %17 = load i8*, i8** %Data.addr, align 8, !dbg !120
  %18 = load i32, i32* %a, align 4, !dbg !121
  %inc18 = add nsw i32 %18, 1, !dbg !121
  store i32 %inc18, i32* %a, align 4, !dbg !121
  %idxprom19 = sext i32 %18 to i64, !dbg !120
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %idxprom19, !dbg !120
  %19 = load i8, i8* %arrayidx20, align 1, !dbg !120
  %conv21 = zext i8 %19 to i32, !dbg !122
  store i32 %conv21, i32* %temp, align 4, !dbg !123
  %20 = load i32, i32* %temp, align 4, !dbg !124
  %mul = mul i32 %20, 256, !dbg !124
  store i32 %mul, i32* %temp, align 4, !dbg !124
  %21 = load i8*, i8** %Data.addr, align 8, !dbg !125
  %22 = load i32, i32* %a, align 4, !dbg !126
  %inc22 = add nsw i32 %22, 1, !dbg !126
  store i32 %inc22, i32* %a, align 4, !dbg !126
  %idxprom23 = sext i32 %22 to i64, !dbg !125
  %arrayidx24 = getelementptr inbounds i8, i8* %21, i64 %idxprom23, !dbg !125
  %23 = load i8, i8* %arrayidx24, align 1, !dbg !125
  %conv25 = zext i8 %23 to i32, !dbg !127
  %24 = load i32, i32* %temp, align 4, !dbg !128
  %add26 = add i32 %conv25, %24, !dbg !129
  store i32 %add26, i32* %val, align 4, !dbg !130
  br label %if.end31, !dbg !131

if.else:                                          ; preds = %for.body
  %25 = load i8*, i8** %Data.addr, align 8, !dbg !132
  %26 = load i32, i32* %a, align 4, !dbg !134
  %inc27 = add nsw i32 %26, 1, !dbg !134
  store i32 %inc27, i32* %a, align 4, !dbg !134
  %idxprom28 = sext i32 %26 to i64, !dbg !132
  %arrayidx29 = getelementptr inbounds i8, i8* %25, i64 %idxprom28, !dbg !132
  %27 = load i8, i8* %arrayidx29, align 1, !dbg !132
  %conv30 = zext i8 %27 to i32, !dbg !135
  store i32 %conv30, i32* %val, align 4, !dbg !136
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then17
  %28 = load i32, i32* %val, align 4, !dbg !137
  %29 = load i32, i32* %coefindex, align 4, !dbg !138
  %idxprom32 = sext i32 %29 to i64, !dbg !139
  %arrayidx33 = getelementptr inbounds [64 x i32], [64 x i32]* %table, i64 0, i64 %idxprom32, !dbg !139
  store i32 %28, i32* %arrayidx33, align 4, !dbg !140
  %30 = load i32*, i32** %reftable, align 8, !dbg !141
  %tobool34 = icmp ne i32* %30, null, !dbg !141
  br i1 %tobool34, label %if.then35, label %if.end48, !dbg !143

if.then35:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata double* %x, metadata !144, metadata !DIExpression()), !dbg !146
  %31 = load i32, i32* %val, align 4, !dbg !147
  %conv36 = uitofp i32 %31 to double, !dbg !148
  %mul37 = fmul double 1.000000e+02, %conv36, !dbg !149
  %32 = load i32*, i32** %reftable, align 8, !dbg !150
  %33 = load i32, i32* %coefindex, align 4, !dbg !151
  %idxprom38 = sext i32 %33 to i64, !dbg !150
  %arrayidx39 = getelementptr inbounds i32, i32* %32, i64 %idxprom38, !dbg !150
  %34 = load i32, i32* %arrayidx39, align 4, !dbg !150
  %conv40 = sitofp i32 %34 to double, !dbg !152
  %div = fdiv double %mul37, %conv40, !dbg !153
  store double %div, double* %x, align 8, !dbg !154
  %35 = load double, double* %x, align 8, !dbg !155
  %36 = load double, double* %cumsf, align 8, !dbg !156
  %add41 = fadd double %36, %35, !dbg !156
  store double %add41, double* %cumsf, align 8, !dbg !156
  %37 = load double, double* %x, align 8, !dbg !157
  %38 = load double, double* %x, align 8, !dbg !158
  %mul42 = fmul double %37, %38, !dbg !159
  %39 = load double, double* %cumsf2, align 8, !dbg !160
  %add43 = fadd double %39, %mul42, !dbg !160
  store double %add43, double* %cumsf2, align 8, !dbg !160
  %40 = load i32, i32* %val, align 4, !dbg !161
  %cmp44 = icmp ne i32 %40, 1, !dbg !163
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !164

if.then46:                                        ; preds = %if.then35
  store i32 0, i32* %allones, align 4, !dbg !165
  br label %if.end47, !dbg !166

if.end47:                                         ; preds = %if.then46, %if.then35
  br label %if.end48, !dbg !167

if.end48:                                         ; preds = %if.end47, %if.end31
  br label %for.inc, !dbg !168

for.inc:                                          ; preds = %if.end48
  %41 = load i32, i32* %coefindex, align 4, !dbg !169
  %inc49 = add nsw i32 %41, 1, !dbg !169
  store i32 %inc49, i32* %coefindex, align 4, !dbg !169
  br label %for.cond, !dbg !170, !llvm.loop !171

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* @ShowTags, align 4, !dbg !174
  %cmp50 = icmp sgt i32 %42, 2, !dbg !176
  br i1 %cmp50, label %if.then52, label %if.end76, !dbg !177

if.then52:                                        ; preds = %for.end
  store i32 0, i32* %row, align 4, !dbg !178
  br label %for.cond53, !dbg !181

for.cond53:                                       ; preds = %for.inc73, %if.then52
  %43 = load i32, i32* %row, align 4, !dbg !182
  %cmp54 = icmp slt i32 %43, 8, !dbg !184
  br i1 %cmp54, label %for.body56, label %for.end75, !dbg !185

for.body56:                                       ; preds = %for.cond53
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !186
  store i32 0, i32* %col, align 4, !dbg !188
  br label %for.cond58, !dbg !190

for.cond58:                                       ; preds = %for.inc69, %for.body56
  %44 = load i32, i32* %col, align 4, !dbg !191
  %cmp59 = icmp slt i32 %44, 8, !dbg !193
  br i1 %cmp59, label %for.body61, label %for.end71, !dbg !194

for.body61:                                       ; preds = %for.cond58
  %45 = load i32, i32* %row, align 4, !dbg !195
  %mul62 = mul nsw i32 %45, 8, !dbg !197
  %46 = load i32, i32* %col, align 4, !dbg !198
  %add63 = add nsw i32 %mul62, %46, !dbg !199
  %idxprom64 = sext i32 %add63 to i64, !dbg !200
  %arrayidx65 = getelementptr inbounds [64 x i32], [64 x i32]* @jpeg_zigzag_order, i64 0, i64 %idxprom64, !dbg !200
  %47 = load i32, i32* %arrayidx65, align 4, !dbg !200
  %idxprom66 = sext i32 %47 to i64, !dbg !201
  %arrayidx67 = getelementptr inbounds [64 x i32], [64 x i32]* %table, i64 0, i64 %idxprom66, !dbg !201
  %48 = load i32, i32* %arrayidx67, align 4, !dbg !201
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %48), !dbg !202
  br label %for.inc69, !dbg !203

for.inc69:                                        ; preds = %for.body61
  %49 = load i32, i32* %col, align 4, !dbg !204
  %inc70 = add nsw i32 %49, 1, !dbg !204
  store i32 %inc70, i32* %col, align 4, !dbg !204
  br label %for.cond58, !dbg !205, !llvm.loop !206

for.end71:                                        ; preds = %for.cond58
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !208
  br label %for.inc73, !dbg !209

for.inc73:                                        ; preds = %for.end71
  %50 = load i32, i32* %row, align 4, !dbg !210
  %inc74 = add nsw i32 %50, 1, !dbg !210
  store i32 %inc74, i32* %row, align 4, !dbg !210
  br label %for.cond53, !dbg !211, !llvm.loop !212

for.end75:                                        ; preds = %for.cond53
  br label %if.end76, !dbg !214

if.end76:                                         ; preds = %for.end75, %for.end
  %51 = load i32*, i32** %reftable, align 8, !dbg !215
  %tobool77 = icmp ne i32* %51, null, !dbg !215
  br i1 %tobool77, label %if.then78, label %if.end109, !dbg !217

if.then78:                                        ; preds = %if.end76
  call void @llvm.dbg.declare(metadata double* %qual, metadata !218, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata double* %var, metadata !221, metadata !DIExpression()), !dbg !222
  %52 = load double, double* %cumsf, align 8, !dbg !223
  %div79 = fdiv double %52, 6.400000e+01, !dbg !223
  store double %div79, double* %cumsf, align 8, !dbg !223
  %53 = load double, double* %cumsf2, align 8, !dbg !224
  %div80 = fdiv double %53, 6.400000e+01, !dbg !224
  store double %div80, double* %cumsf2, align 8, !dbg !224
  %54 = load double, double* %cumsf2, align 8, !dbg !225
  %55 = load double, double* %cumsf, align 8, !dbg !226
  %56 = load double, double* %cumsf, align 8, !dbg !227
  %mul81 = fmul double %55, %56, !dbg !228
  %sub = fsub double %54, %mul81, !dbg !229
  store double %sub, double* %var, align 8, !dbg !230
  %57 = load i32, i32* %allones, align 4, !dbg !231
  %tobool82 = icmp ne i32 %57, 0, !dbg !231
  br i1 %tobool82, label %if.then83, label %if.else84, !dbg !233

if.then83:                                        ; preds = %if.then78
  store double 1.000000e+02, double* %qual, align 8, !dbg !234
  br label %if.end93, !dbg !236

if.else84:                                        ; preds = %if.then78
  %58 = load double, double* %cumsf, align 8, !dbg !237
  %cmp85 = fcmp ole double %58, 1.000000e+02, !dbg !239
  br i1 %cmp85, label %if.then87, label %if.else90, !dbg !240

if.then87:                                        ; preds = %if.else84
  %59 = load double, double* %cumsf, align 8, !dbg !241
  %sub88 = fsub double 2.000000e+02, %59, !dbg !243
  %div89 = fdiv double %sub88, 2.000000e+00, !dbg !244
  store double %div89, double* %qual, align 8, !dbg !245
  br label %if.end92, !dbg !246

if.else90:                                        ; preds = %if.else84
  %60 = load double, double* %cumsf, align 8, !dbg !247
  %div91 = fdiv double 5.000000e+03, %60, !dbg !249
  store double %div91, double* %qual, align 8, !dbg !250
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.then87
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then83
  %61 = load i32, i32* @ShowTags, align 4, !dbg !251
  %cmp94 = icmp sgt i32 %61, 1, !dbg !253
  br i1 %cmp94, label %if.then96, label %if.end98, !dbg !254

if.then96:                                        ; preds = %if.end93
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)), !dbg !255
  br label %if.end98, !dbg !255

if.end98:                                         ; preds = %if.then96, %if.end93
  %62 = load i32, i32* @ShowTags, align 4, !dbg !256
  %tobool99 = icmp ne i32 %62, 0, !dbg !256
  br i1 %tobool99, label %if.then100, label %if.end102, !dbg !258

if.then100:                                       ; preds = %if.end98
  %63 = load i32, i32* %tableindex, align 4, !dbg !259
  %64 = load double, double* %qual, align 8, !dbg !261
  %65 = load double, double* %cumsf, align 8, !dbg !262
  %66 = load double, double* %var, align 8, !dbg !263
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 %63, double %64, double %65, double %66), !dbg !264
  br label %if.end102, !dbg !265

if.end102:                                        ; preds = %if.then100, %if.end98
  %67 = load i32, i32* %tableindex, align 4, !dbg !266
  %cmp103 = icmp eq i32 %67, 0, !dbg !268
  br i1 %cmp103, label %if.then105, label %if.end108, !dbg !269

if.then105:                                       ; preds = %if.end102
  %68 = load double, double* %qual, align 8, !dbg !270
  %add106 = fadd double %68, 5.000000e-01, !dbg !272
  %conv107 = fptosi double %add106 to i32, !dbg !273
  store i32 %conv107, i32* getelementptr inbounds (%struct.ImageInfo_t, %struct.ImageInfo_t* @ImageInfo, i32 0, i32 44), align 4, !dbg !274
  br label %if.end108, !dbg !275

if.end108:                                        ; preds = %if.then105, %if.end102
  br label %if.end109, !dbg !276

if.end109:                                        ; preds = %if.end108, %if.end76
  br label %while.cond, !dbg !63, !llvm.loop !277

while.end:                                        ; preds = %if.then11, %while.cond
  ret void, !dbg !279
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local void @ErrNonfatal(i8*, i32, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @process_DHT(i8* %Data, i32 %length) #0 !dbg !280 {
entry:
  %Data.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %huff = alloca [16 x i8], align 16
  store i8* %Data, i8** %Data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %Data.addr, metadata !281, metadata !DIExpression()), !dbg !282
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %a, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %i, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i32* %c, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %c2, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata [16 x i8]* %huff, metadata !293, metadata !DIExpression()), !dbg !297
  %0 = load i32, i32* @ShowTags, align 4, !dbg !298
  %cmp = icmp sgt i32 %0, 1, !dbg !300
  br i1 %cmp, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %length.addr, align 4, !dbg !302
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %1), !dbg !304
  br label %if.end, !dbg !305

if.end:                                           ; preds = %if.then, %entry
  store i32 2, i32* %a, align 4, !dbg !306
  br label %while.cond, !dbg !307

while.cond:                                       ; preds = %for.end60, %if.end
  %2 = load i32, i32* %a, align 4, !dbg !308
  %3 = load i32, i32* %length.addr, align 4, !dbg !309
  %cmp1 = icmp slt i32 %2, %3, !dbg !310
  br i1 %cmp1, label %while.body, label %while.end61, !dbg !307

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %Data.addr, align 8, !dbg !311
  %5 = load i32, i32* %a, align 4, !dbg !313
  %inc = add nsw i32 %5, 1, !dbg !313
  store i32 %inc, i32* %a, align 4, !dbg !313
  %idxprom = sext i32 %5 to i64, !dbg !311
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom, !dbg !311
  %6 = load i8, i8* %arrayidx, align 1, !dbg !311
  %conv = zext i8 %6 to i32, !dbg !311
  store i32 %conv, i32* %c, align 4, !dbg !314
  %7 = load i32, i32* @ShowTags, align 4, !dbg !315
  %cmp2 = icmp sgt i32 %7, 1, !dbg !317
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !318

if.then4:                                         ; preds = %while.body
  %8 = load i32, i32* %c, align 4, !dbg !319
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %8), !dbg !321
  br label %if.end6, !dbg !322

if.end6:                                          ; preds = %if.then4, %while.body
  %9 = load i32, i32* %a, align 4, !dbg !323
  %add = add nsw i32 %9, 16, !dbg !325
  %10 = load i32, i32* %length.addr, align 4, !dbg !326
  %cmp7 = icmp sgt i32 %add, %10, !dbg !327
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !328

if.then9:                                         ; preds = %if.end6
  br label %tooshort, !dbg !329

tooshort:                                         ; preds = %if.then38, %if.then9
  call void @llvm.dbg.label(metadata !330), !dbg !332
  call void @ErrFatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0)), !dbg !333
  br label %if.end10, !dbg !334

if.end10:                                         ; preds = %tooshort, %if.end6
  store i32 0, i32* %i, align 4, !dbg !335
  br label %for.cond, !dbg !337

for.cond:                                         ; preds = %for.inc, %if.end10
  %11 = load i32, i32* %i, align 4, !dbg !338
  %cmp11 = icmp slt i32 %11, 16, !dbg !340
  br i1 %cmp11, label %for.body, label %for.end, !dbg !341

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %Data.addr, align 8, !dbg !342
  %13 = load i32, i32* %a, align 4, !dbg !344
  %inc13 = add nsw i32 %13, 1, !dbg !344
  store i32 %inc13, i32* %a, align 4, !dbg !344
  %idxprom14 = sext i32 %13 to i64, !dbg !342
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %idxprom14, !dbg !342
  %14 = load i8, i8* %arrayidx15, align 1, !dbg !342
  %15 = load i32, i32* %i, align 4, !dbg !345
  %idxprom16 = sext i32 %15 to i64, !dbg !346
  %arrayidx17 = getelementptr inbounds [16 x i8], [16 x i8]* %huff, i64 0, i64 %idxprom16, !dbg !346
  store i8 %14, i8* %arrayidx17, align 1, !dbg !347
  br label %for.inc, !dbg !348

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !349
  %inc18 = add nsw i32 %16, 1, !dbg !349
  store i32 %inc18, i32* %i, align 4, !dbg !349
  br label %for.cond, !dbg !350, !llvm.loop !351

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !353
  br label %for.cond19, !dbg !355

for.cond19:                                       ; preds = %for.inc58, %for.end
  %17 = load i32, i32* %i, align 4, !dbg !356
  %cmp20 = icmp slt i32 %17, 16, !dbg !358
  br i1 %cmp20, label %for.body22, label %for.end60, !dbg !359

for.body22:                                       ; preds = %for.cond19
  %18 = load i32, i32* @ShowTags, align 4, !dbg !360
  %cmp23 = icmp sgt i32 %18, 2, !dbg !363
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !364

if.then25:                                        ; preds = %for.body22
  %19 = load i32, i32* %i, align 4, !dbg !365
  %add26 = add nsw i32 %19, 1, !dbg !367
  %20 = load i32, i32* %i, align 4, !dbg !368
  %idxprom27 = sext i32 %20 to i64, !dbg !369
  %arrayidx28 = getelementptr inbounds [16 x i8], [16 x i8]* %huff, i64 0, i64 %idxprom27, !dbg !369
  %21 = load i8, i8* %arrayidx28, align 1, !dbg !369
  %conv29 = zext i8 %21 to i32, !dbg !370
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %add26, i32 %conv29), !dbg !371
  br label %if.end31, !dbg !372

if.end31:                                         ; preds = %if.then25, %for.body22
  %22 = load i32, i32* %a, align 4, !dbg !373
  %23 = load i32, i32* %i, align 4, !dbg !375
  %idxprom32 = sext i32 %23 to i64, !dbg !376
  %arrayidx33 = getelementptr inbounds [16 x i8], [16 x i8]* %huff, i64 0, i64 %idxprom32, !dbg !376
  %24 = load i8, i8* %arrayidx33, align 1, !dbg !376
  %conv34 = zext i8 %24 to i32, !dbg !376
  %add35 = add nsw i32 %22, %conv34, !dbg !377
  %25 = load i32, i32* %length.addr, align 4, !dbg !378
  %cmp36 = icmp sgt i32 %add35, %25, !dbg !379
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !380

if.then38:                                        ; preds = %if.end31
  br label %tooshort, !dbg !381

if.end39:                                         ; preds = %if.end31
  br label %while.cond40, !dbg !383

while.cond40:                                     ; preds = %if.end52, %if.end39
  %26 = load i32, i32* %i, align 4, !dbg !384
  %idxprom41 = sext i32 %26 to i64, !dbg !385
  %arrayidx42 = getelementptr inbounds [16 x i8], [16 x i8]* %huff, i64 0, i64 %idxprom41, !dbg !385
  %27 = load i8, i8* %arrayidx42, align 1, !dbg !386
  %dec = add i8 %27, -1, !dbg !386
  store i8 %dec, i8* %arrayidx42, align 1, !dbg !386
  %tobool = icmp ne i8 %27, 0, !dbg !383
  br i1 %tobool, label %while.body43, label %while.end, !dbg !383

while.body43:                                     ; preds = %while.cond40
  %28 = load i8*, i8** %Data.addr, align 8, !dbg !387
  %29 = load i32, i32* %a, align 4, !dbg !389
  %inc44 = add nsw i32 %29, 1, !dbg !389
  store i32 %inc44, i32* %a, align 4, !dbg !389
  %idxprom45 = sext i32 %29 to i64, !dbg !387
  %arrayidx46 = getelementptr inbounds i8, i8* %28, i64 %idxprom45, !dbg !387
  %30 = load i8, i8* %arrayidx46, align 1, !dbg !387
  %conv47 = zext i8 %30 to i32, !dbg !387
  store i32 %conv47, i32* %c2, align 4, !dbg !390
  %31 = load i32, i32* @ShowTags, align 4, !dbg !391
  %cmp48 = icmp sgt i32 %31, 2, !dbg !393
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !394

if.then50:                                        ; preds = %while.body43
  %32 = load i32, i32* %c2, align 4, !dbg !395
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %32), !dbg !397
  br label %if.end52, !dbg !398

if.end52:                                         ; preds = %if.then50, %while.body43
  br label %while.cond40, !dbg !383, !llvm.loop !399

while.end:                                        ; preds = %while.cond40
  %33 = load i32, i32* @ShowTags, align 4, !dbg !401
  %cmp53 = icmp sgt i32 %33, 2, !dbg !403
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !404

if.then55:                                        ; preds = %while.end
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !405
  br label %if.end57, !dbg !407

if.end57:                                         ; preds = %if.then55, %while.end
  br label %for.inc58, !dbg !408

for.inc58:                                        ; preds = %if.end57
  %34 = load i32, i32* %i, align 4, !dbg !409
  %inc59 = add nsw i32 %34, 1, !dbg !409
  store i32 %inc59, i32* %i, align 4, !dbg !409
  br label %for.cond19, !dbg !410, !llvm.loop !411

for.end60:                                        ; preds = %for.cond19
  br label %while.cond, !dbg !307, !llvm.loop !413

while.end61:                                      ; preds = %while.cond
  ret void, !dbg !415
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @ErrFatal(i8*) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "deftabs", scope: !2, file: !3, line: 37, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "jpgqguess.c", directory: ".")
!4 = !{}
!5 = !{!6, !7, !8, !9}
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!0, !11, !16, !18}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "std_luminance_quant_tbl", scope: !2, file: !3, line: 15, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 64)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "std_chrominance_quant_tbl", scope: !2, file: !3, line: 26, type: !13, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "jpeg_zigzag_order", scope: !2, file: !3, line: 43, type: !13, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !22)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!22 = !{!23}
!23 = !DISubrange(count: 2)
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{!"clang version 12.0.0"}
!28 = distinct !DISubprogram(name: "process_DQT", scope: !3, file: !3, line: 78, type: !29, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !8}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !34, line: 41, baseType: !9)
!34 = !DIFile(filename: "./jhead.h", directory: ".")
!35 = !DILocalVariable(name: "Data", arg: 1, scope: !28, file: !3, line: 78, type: !31)
!36 = !DILocation(line: 78, column: 33, scope: !28)
!37 = !DILocalVariable(name: "length", arg: 2, scope: !28, file: !3, line: 78, type: !8)
!38 = !DILocation(line: 78, column: 43, scope: !28)
!39 = !DILocalVariable(name: "a", scope: !28, file: !3, line: 80, type: !8)
!40 = !DILocation(line: 80, column: 9, scope: !28)
!41 = !DILocalVariable(name: "c", scope: !28, file: !3, line: 81, type: !8)
!42 = !DILocation(line: 81, column: 9, scope: !28)
!43 = !DILocalVariable(name: "tableindex", scope: !28, file: !3, line: 82, type: !8)
!44 = !DILocation(line: 82, column: 9, scope: !28)
!45 = !DILocalVariable(name: "coefindex", scope: !28, file: !3, line: 82, type: !8)
!46 = !DILocation(line: 82, column: 21, scope: !28)
!47 = !DILocalVariable(name: "row", scope: !28, file: !3, line: 82, type: !8)
!48 = !DILocation(line: 82, column: 32, scope: !28)
!49 = !DILocalVariable(name: "col", scope: !28, file: !3, line: 82, type: !8)
!50 = !DILocation(line: 82, column: 37, scope: !28)
!51 = !DILocalVariable(name: "table", scope: !28, file: !3, line: 83, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !14)
!53 = !DILocation(line: 83, column: 18, scope: !28)
!54 = !DILocalVariable(name: "reftable", scope: !28, file: !3, line: 84, type: !21)
!55 = !DILocation(line: 84, column: 10, scope: !28)
!56 = !DILocalVariable(name: "cumsf", scope: !28, file: !3, line: 85, type: !7)
!57 = !DILocation(line: 85, column: 12, scope: !28)
!58 = !DILocalVariable(name: "cumsf2", scope: !28, file: !3, line: 85, type: !7)
!59 = !DILocation(line: 85, column: 25, scope: !28)
!60 = !DILocalVariable(name: "allones", scope: !28, file: !3, line: 86, type: !8)
!61 = !DILocation(line: 86, column: 9, scope: !28)
!62 = !DILocation(line: 88, column: 6, scope: !28)
!63 = !DILocation(line: 89, column: 5, scope: !28)
!64 = !DILocation(line: 89, column: 12, scope: !28)
!65 = !DILocation(line: 89, column: 14, scope: !28)
!66 = !DILocation(line: 89, column: 13, scope: !28)
!67 = !DILocation(line: 91, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !28, file: !3, line: 90, column: 5)
!69 = !DILocation(line: 91, column: 19, scope: !68)
!70 = !DILocation(line: 91, column: 11, scope: !68)
!71 = !DILocation(line: 92, column: 22, scope: !68)
!72 = !DILocation(line: 92, column: 24, scope: !68)
!73 = !DILocation(line: 92, column: 20, scope: !68)
!74 = !DILocation(line: 93, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !68, file: !3, line: 93, column: 13)
!76 = !DILocation(line: 93, column: 21, scope: !75)
!77 = !DILocation(line: 93, column: 13, scope: !68)
!78 = !DILocation(line: 94, column: 53, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !3, line: 93, column: 24)
!80 = !DILocation(line: 94, column: 66, scope: !79)
!81 = !DILocation(line: 94, column: 67, scope: !79)
!82 = !DILocation(line: 94, column: 65, scope: !79)
!83 = !DILocation(line: 94, column: 13, scope: !79)
!84 = !DILocation(line: 95, column: 9, scope: !79)
!85 = !DILocation(line: 96, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !68, file: !3, line: 96, column: 13)
!87 = !DILocation(line: 96, column: 24, scope: !86)
!88 = !DILocation(line: 96, column: 13, scope: !68)
!89 = !DILocation(line: 97, column: 32, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !3, line: 96, column: 28)
!91 = !DILocation(line: 97, column: 24, scope: !90)
!92 = !DILocation(line: 97, column: 22, scope: !90)
!93 = !DILocation(line: 98, column: 9, scope: !90)
!94 = !DILocation(line: 101, column: 13, scope: !95)
!95 = distinct !DILexicalBlock(scope: !68, file: !3, line: 101, column: 13)
!96 = !DILocation(line: 101, column: 14, scope: !95)
!97 = !DILocation(line: 101, column: 20, scope: !95)
!98 = !DILocation(line: 101, column: 18, scope: !95)
!99 = !DILocation(line: 101, column: 13, scope: !68)
!100 = !DILocation(line: 102, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !95, file: !3, line: 101, column: 28)
!102 = !DILocation(line: 103, column: 13, scope: !101)
!103 = !DILocation(line: 105, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !68, file: !3, line: 105, column: 9)
!105 = !DILocation(line: 105, column: 14, scope: !104)
!106 = !DILocation(line: 105, column: 29, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 105, column: 9)
!108 = !DILocation(line: 105, column: 39, scope: !107)
!109 = !DILocation(line: 105, column: 9, scope: !104)
!110 = !DILocalVariable(name: "val", scope: !111, file: !3, line: 106, type: !6)
!111 = distinct !DILexicalBlock(scope: !107, file: !3, line: 105, column: 58)
!112 = !DILocation(line: 106, column: 26, scope: !111)
!113 = !DILocation(line: 107, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !3, line: 107, column: 17)
!115 = !DILocation(line: 107, column: 18, scope: !114)
!116 = !DILocation(line: 107, column: 17, scope: !111)
!117 = !DILocalVariable(name: "temp", scope: !118, file: !3, line: 108, type: !6)
!118 = distinct !DILexicalBlock(scope: !114, file: !3, line: 107, column: 23)
!119 = !DILocation(line: 108, column: 39, scope: !118)
!120 = !DILocation(line: 110, column: 38, scope: !118)
!121 = !DILocation(line: 110, column: 44, scope: !118)
!122 = !DILocation(line: 110, column: 22, scope: !118)
!123 = !DILocation(line: 110, column: 21, scope: !118)
!124 = !DILocation(line: 111, column: 22, scope: !118)
!125 = !DILocation(line: 112, column: 36, scope: !118)
!126 = !DILocation(line: 112, column: 42, scope: !118)
!127 = !DILocation(line: 112, column: 21, scope: !118)
!128 = !DILocation(line: 112, column: 48, scope: !118)
!129 = !DILocation(line: 112, column: 46, scope: !118)
!130 = !DILocation(line: 112, column: 20, scope: !118)
!131 = !DILocation(line: 113, column: 13, scope: !118)
!132 = !DILocation(line: 114, column: 36, scope: !133)
!133 = distinct !DILexicalBlock(scope: !114, file: !3, line: 113, column: 20)
!134 = !DILocation(line: 114, column: 42, scope: !133)
!135 = !DILocation(line: 114, column: 21, scope: !133)
!136 = !DILocation(line: 114, column: 20, scope: !133)
!137 = !DILocation(line: 116, column: 32, scope: !111)
!138 = !DILocation(line: 116, column: 19, scope: !111)
!139 = !DILocation(line: 116, column: 13, scope: !111)
!140 = !DILocation(line: 116, column: 30, scope: !111)
!141 = !DILocation(line: 117, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !111, file: !3, line: 117, column: 17)
!143 = !DILocation(line: 117, column: 17, scope: !111)
!144 = !DILocalVariable(name: "x", scope: !145, file: !3, line: 118, type: !7)
!145 = distinct !DILexicalBlock(scope: !142, file: !3, line: 117, column: 27)
!146 = !DILocation(line: 118, column: 24, scope: !145)
!147 = !DILocation(line: 120, column: 37, scope: !145)
!148 = !DILocation(line: 120, column: 29, scope: !145)
!149 = !DILocation(line: 120, column: 27, scope: !145)
!150 = !DILocation(line: 120, column: 51, scope: !145)
!151 = !DILocation(line: 120, column: 60, scope: !145)
!152 = !DILocation(line: 120, column: 43, scope: !145)
!153 = !DILocation(line: 120, column: 41, scope: !145)
!154 = !DILocation(line: 120, column: 19, scope: !145)
!155 = !DILocation(line: 121, column: 26, scope: !145)
!156 = !DILocation(line: 121, column: 23, scope: !145)
!157 = !DILocation(line: 122, column: 27, scope: !145)
!158 = !DILocation(line: 122, column: 31, scope: !145)
!159 = !DILocation(line: 122, column: 29, scope: !145)
!160 = !DILocation(line: 122, column: 24, scope: !145)
!161 = !DILocation(line: 124, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !145, file: !3, line: 124, column: 21)
!163 = !DILocation(line: 124, column: 25, scope: !162)
!164 = !DILocation(line: 124, column: 21, scope: !145)
!165 = !DILocation(line: 124, column: 39, scope: !162)
!166 = !DILocation(line: 124, column: 31, scope: !162)
!167 = !DILocation(line: 125, column: 13, scope: !145)
!168 = !DILocation(line: 126, column: 9, scope: !111)
!169 = !DILocation(line: 105, column: 54, scope: !107)
!170 = !DILocation(line: 105, column: 9, scope: !107)
!171 = distinct !{!171, !109, !172, !173}
!172 = !DILocation(line: 126, column: 9, scope: !104)
!173 = !{!"llvm.loop.mustprogress"}
!174 = !DILocation(line: 128, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !68, file: !3, line: 128, column: 13)
!176 = !DILocation(line: 128, column: 21, scope: !175)
!177 = !DILocation(line: 128, column: 13, scope: !68)
!178 = !DILocation(line: 129, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 129, column: 13)
!180 = distinct !DILexicalBlock(scope: !175, file: !3, line: 128, column: 24)
!181 = !DILocation(line: 129, column: 18, scope: !179)
!182 = !DILocation(line: 129, column: 25, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !3, line: 129, column: 13)
!184 = !DILocation(line: 129, column: 28, scope: !183)
!185 = !DILocation(line: 129, column: 13, scope: !179)
!186 = !DILocation(line: 130, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !3, line: 129, column: 39)
!188 = !DILocation(line: 131, column: 25, scope: !189)
!189 = distinct !DILexicalBlock(scope: !187, file: !3, line: 131, column: 17)
!190 = !DILocation(line: 131, column: 22, scope: !189)
!191 = !DILocation(line: 131, column: 29, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 131, column: 17)
!193 = !DILocation(line: 131, column: 32, scope: !192)
!194 = !DILocation(line: 131, column: 17, scope: !189)
!195 = !DILocation(line: 132, column: 60, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !3, line: 131, column: 43)
!197 = !DILocation(line: 132, column: 63, scope: !196)
!198 = !DILocation(line: 132, column: 66, scope: !196)
!199 = !DILocation(line: 132, column: 65, scope: !196)
!200 = !DILocation(line: 132, column: 42, scope: !196)
!201 = !DILocation(line: 132, column: 36, scope: !196)
!202 = !DILocation(line: 132, column: 21, scope: !196)
!203 = !DILocation(line: 133, column: 17, scope: !196)
!204 = !DILocation(line: 131, column: 39, scope: !192)
!205 = !DILocation(line: 131, column: 17, scope: !192)
!206 = distinct !{!206, !194, !207, !173}
!207 = !DILocation(line: 133, column: 17, scope: !189)
!208 = !DILocation(line: 134, column: 17, scope: !187)
!209 = !DILocation(line: 135, column: 13, scope: !187)
!210 = !DILocation(line: 129, column: 35, scope: !183)
!211 = !DILocation(line: 129, column: 13, scope: !183)
!212 = distinct !{!212, !185, !213, !173}
!213 = !DILocation(line: 135, column: 13, scope: !179)
!214 = !DILocation(line: 136, column: 9, scope: !180)
!215 = !DILocation(line: 138, column: 13, scope: !216)
!216 = distinct !DILexicalBlock(scope: !68, file: !3, line: 138, column: 13)
!217 = !DILocation(line: 138, column: 13, scope: !68)
!218 = !DILocalVariable(name: "qual", scope: !219, file: !3, line: 139, type: !7)
!219 = distinct !DILexicalBlock(scope: !216, file: !3, line: 138, column: 23)
!220 = !DILocation(line: 139, column: 20, scope: !219)
!221 = !DILocalVariable(name: "var", scope: !219, file: !3, line: 139, type: !7)
!222 = !DILocation(line: 139, column: 26, scope: !219)
!223 = !DILocation(line: 140, column: 19, scope: !219)
!224 = !DILocation(line: 141, column: 20, scope: !219)
!225 = !DILocation(line: 142, column: 19, scope: !219)
!226 = !DILocation(line: 142, column: 29, scope: !219)
!227 = !DILocation(line: 142, column: 37, scope: !219)
!228 = !DILocation(line: 142, column: 35, scope: !219)
!229 = !DILocation(line: 142, column: 26, scope: !219)
!230 = !DILocation(line: 142, column: 17, scope: !219)
!231 = !DILocation(line: 143, column: 17, scope: !232)
!232 = distinct !DILexicalBlock(scope: !219, file: !3, line: 143, column: 17)
!233 = !DILocation(line: 143, column: 17, scope: !219)
!234 = !DILocation(line: 144, column: 22, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !3, line: 143, column: 25)
!236 = !DILocation(line: 145, column: 13, scope: !235)
!237 = !DILocation(line: 145, column: 23, scope: !238)
!238 = distinct !DILexicalBlock(scope: !232, file: !3, line: 145, column: 23)
!239 = !DILocation(line: 145, column: 29, scope: !238)
!240 = !DILocation(line: 145, column: 23, scope: !232)
!241 = !DILocation(line: 146, column: 33, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 145, column: 38)
!243 = !DILocation(line: 146, column: 31, scope: !242)
!244 = !DILocation(line: 146, column: 40, scope: !242)
!245 = !DILocation(line: 146, column: 22, scope: !242)
!246 = !DILocation(line: 147, column: 13, scope: !242)
!247 = !DILocation(line: 148, column: 33, scope: !248)
!248 = distinct !DILexicalBlock(scope: !238, file: !3, line: 147, column: 18)
!249 = !DILocation(line: 148, column: 31, scope: !248)
!250 = !DILocation(line: 148, column: 22, scope: !248)
!251 = !DILocation(line: 150, column: 17, scope: !252)
!252 = distinct !DILexicalBlock(scope: !219, file: !3, line: 150, column: 17)
!253 = !DILocation(line: 150, column: 25, scope: !252)
!254 = !DILocation(line: 150, column: 17, scope: !219)
!255 = !DILocation(line: 150, column: 30, scope: !252)
!256 = !DILocation(line: 152, column: 17, scope: !257)
!257 = distinct !DILexicalBlock(scope: !219, file: !3, line: 152, column: 17)
!258 = !DILocation(line: 152, column: 17, scope: !219)
!259 = !DILocation(line: 154, column: 22, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !3, line: 152, column: 26)
!261 = !DILocation(line: 154, column: 34, scope: !260)
!262 = !DILocation(line: 154, column: 40, scope: !260)
!263 = !DILocation(line: 154, column: 47, scope: !260)
!264 = !DILocation(line: 153, column: 17, scope: !260)
!265 = !DILocation(line: 155, column: 13, scope: !260)
!266 = !DILocation(line: 156, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !219, file: !3, line: 156, column: 17)
!268 = !DILocation(line: 156, column: 28, scope: !267)
!269 = !DILocation(line: 156, column: 17, scope: !219)
!270 = !DILocation(line: 157, column: 48, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 156, column: 33)
!272 = !DILocation(line: 157, column: 52, scope: !271)
!273 = !DILocation(line: 157, column: 42, scope: !271)
!274 = !DILocation(line: 157, column: 40, scope: !271)
!275 = !DILocation(line: 158, column: 13, scope: !271)
!276 = !DILocation(line: 159, column: 9, scope: !219)
!277 = distinct !{!277, !63, !278, !173}
!278 = !DILocation(line: 160, column: 5, scope: !28)
!279 = !DILocation(line: 161, column: 1, scope: !28)
!280 = distinct !DISubprogram(name: "process_DHT", scope: !3, file: !3, line: 171, type: !29, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!281 = !DILocalVariable(name: "Data", arg: 1, scope: !280, file: !3, line: 171, type: !31)
!282 = !DILocation(line: 171, column: 33, scope: !280)
!283 = !DILocalVariable(name: "length", arg: 2, scope: !280, file: !3, line: 171, type: !8)
!284 = !DILocation(line: 171, column: 43, scope: !280)
!285 = !DILocalVariable(name: "a", scope: !280, file: !3, line: 173, type: !8)
!286 = !DILocation(line: 173, column: 9, scope: !280)
!287 = !DILocalVariable(name: "i", scope: !280, file: !3, line: 173, type: !8)
!288 = !DILocation(line: 173, column: 12, scope: !280)
!289 = !DILocalVariable(name: "c", scope: !280, file: !3, line: 174, type: !8)
!290 = !DILocation(line: 174, column: 9, scope: !280)
!291 = !DILocalVariable(name: "c2", scope: !280, file: !3, line: 174, type: !8)
!292 = !DILocation(line: 174, column: 12, scope: !280)
!293 = !DILocalVariable(name: "huff", scope: !280, file: !3, line: 175, type: !294)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 16)
!297 = !DILocation(line: 175, column: 19, scope: !280)
!298 = !DILocation(line: 176, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !280, file: !3, line: 176, column: 9)
!300 = !DILocation(line: 176, column: 17, scope: !299)
!301 = !DILocation(line: 176, column: 9, scope: !280)
!302 = !DILocation(line: 177, column: 43, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 176, column: 20)
!304 = !DILocation(line: 177, column: 9, scope: !303)
!305 = !DILocation(line: 178, column: 5, scope: !303)
!306 = !DILocation(line: 180, column: 6, scope: !280)
!307 = !DILocation(line: 181, column: 5, scope: !280)
!308 = !DILocation(line: 181, column: 12, scope: !280)
!309 = !DILocation(line: 181, column: 14, scope: !280)
!310 = !DILocation(line: 181, column: 13, scope: !280)
!311 = !DILocation(line: 183, column: 13, scope: !312)
!312 = distinct !DILexicalBlock(scope: !280, file: !3, line: 182, column: 5)
!313 = !DILocation(line: 183, column: 19, scope: !312)
!314 = !DILocation(line: 183, column: 11, scope: !312)
!315 = !DILocation(line: 184, column: 13, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 184, column: 13)
!317 = !DILocation(line: 184, column: 21, scope: !316)
!318 = !DILocation(line: 184, column: 13, scope: !312)
!319 = !DILocation(line: 185, column: 36, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 184, column: 24)
!321 = !DILocation(line: 185, column: 13, scope: !320)
!322 = !DILocation(line: 186, column: 9, scope: !320)
!323 = !DILocation(line: 187, column: 13, scope: !324)
!324 = distinct !DILexicalBlock(scope: !312, file: !3, line: 187, column: 13)
!325 = !DILocation(line: 187, column: 14, scope: !324)
!326 = !DILocation(line: 187, column: 20, scope: !324)
!327 = !DILocation(line: 187, column: 18, scope: !324)
!328 = !DILocation(line: 187, column: 13, scope: !312)
!329 = !DILocation(line: 187, column: 27, scope: !324)
!330 = !DILabel(scope: !331, name: "tooshort", file: !3, line: 188)
!331 = distinct !DILexicalBlock(scope: !324, file: !3, line: 187, column: 27)
!332 = !DILocation(line: 188, column: 13, scope: !331)
!333 = !DILocation(line: 189, column: 13, scope: !331)
!334 = !DILocation(line: 190, column: 9, scope: !331)
!335 = !DILocation(line: 192, column: 15, scope: !336)
!336 = distinct !DILexicalBlock(scope: !312, file: !3, line: 192, column: 9)
!337 = !DILocation(line: 192, column: 14, scope: !336)
!338 = !DILocation(line: 192, column: 19, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !3, line: 192, column: 9)
!340 = !DILocation(line: 192, column: 20, scope: !339)
!341 = !DILocation(line: 192, column: 9, scope: !336)
!342 = !DILocation(line: 193, column: 37, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !3, line: 192, column: 30)
!344 = !DILocation(line: 193, column: 43, scope: !343)
!345 = !DILocation(line: 193, column: 18, scope: !343)
!346 = !DILocation(line: 193, column: 13, scope: !343)
!347 = !DILocation(line: 193, column: 20, scope: !343)
!348 = !DILocation(line: 194, column: 9, scope: !343)
!349 = !DILocation(line: 192, column: 26, scope: !339)
!350 = !DILocation(line: 192, column: 9, scope: !339)
!351 = distinct !{!351, !341, !352, !173}
!352 = !DILocation(line: 194, column: 9, scope: !336)
!353 = !DILocation(line: 195, column: 15, scope: !354)
!354 = distinct !DILexicalBlock(scope: !312, file: !3, line: 195, column: 9)
!355 = !DILocation(line: 195, column: 14, scope: !354)
!356 = !DILocation(line: 195, column: 19, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !3, line: 195, column: 9)
!358 = !DILocation(line: 195, column: 20, scope: !357)
!359 = !DILocation(line: 195, column: 9, scope: !354)
!360 = !DILocation(line: 196, column: 17, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 196, column: 17)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 195, column: 30)
!363 = !DILocation(line: 196, column: 25, scope: !361)
!364 = !DILocation(line: 196, column: 17, scope: !362)
!365 = !DILocation(line: 197, column: 51, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !3, line: 196, column: 28)
!367 = !DILocation(line: 197, column: 52, scope: !366)
!368 = !DILocation(line: 197, column: 76, scope: !366)
!369 = !DILocation(line: 197, column: 71, scope: !366)
!370 = !DILocation(line: 197, column: 56, scope: !366)
!371 = !DILocation(line: 197, column: 17, scope: !366)
!372 = !DILocation(line: 198, column: 13, scope: !366)
!373 = !DILocation(line: 199, column: 17, scope: !374)
!374 = distinct !DILexicalBlock(scope: !362, file: !3, line: 199, column: 17)
!375 = !DILocation(line: 199, column: 24, scope: !374)
!376 = !DILocation(line: 199, column: 19, scope: !374)
!377 = !DILocation(line: 199, column: 18, scope: !374)
!378 = !DILocation(line: 199, column: 29, scope: !374)
!379 = !DILocation(line: 199, column: 27, scope: !374)
!380 = !DILocation(line: 199, column: 17, scope: !362)
!381 = !DILocation(line: 200, column: 17, scope: !382)
!382 = distinct !DILexicalBlock(scope: !374, file: !3, line: 199, column: 36)
!383 = !DILocation(line: 202, column: 13, scope: !362)
!384 = !DILocation(line: 202, column: 25, scope: !362)
!385 = !DILocation(line: 202, column: 20, scope: !362)
!386 = !DILocation(line: 202, column: 27, scope: !362)
!387 = !DILocation(line: 203, column: 22, scope: !388)
!388 = distinct !DILexicalBlock(scope: !362, file: !3, line: 202, column: 31)
!389 = !DILocation(line: 203, column: 28, scope: !388)
!390 = !DILocation(line: 203, column: 20, scope: !388)
!391 = !DILocation(line: 204, column: 21, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 204, column: 21)
!393 = !DILocation(line: 204, column: 29, scope: !392)
!394 = !DILocation(line: 204, column: 21, scope: !388)
!395 = !DILocation(line: 205, column: 40, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !3, line: 204, column: 32)
!397 = !DILocation(line: 205, column: 21, scope: !396)
!398 = !DILocation(line: 206, column: 17, scope: !396)
!399 = distinct !{!399, !383, !400, !173}
!400 = !DILocation(line: 207, column: 13, scope: !362)
!401 = !DILocation(line: 208, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !362, file: !3, line: 208, column: 17)
!403 = !DILocation(line: 208, column: 25, scope: !402)
!404 = !DILocation(line: 208, column: 17, scope: !362)
!405 = !DILocation(line: 209, column: 17, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !3, line: 208, column: 28)
!407 = !DILocation(line: 210, column: 13, scope: !406)
!408 = !DILocation(line: 211, column: 9, scope: !362)
!409 = !DILocation(line: 195, column: 26, scope: !357)
!410 = !DILocation(line: 195, column: 9, scope: !357)
!411 = distinct !{!411, !359, !412, !173}
!412 = !DILocation(line: 211, column: 9, scope: !354)
!413 = distinct !{!413, !307, !414, !173}
!414 = !DILocation(line: 212, column: 5, scope: !280)
!415 = !DILocation(line: 213, column: 1, scope: !280)
