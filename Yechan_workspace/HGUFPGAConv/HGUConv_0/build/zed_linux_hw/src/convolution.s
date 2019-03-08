; ModuleID = '/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/convolution.c'
source_filename = "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/convolution.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.layer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, float*, float* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Output Channel: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Input Channel: \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Input width and height: \00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Weight filter width and height: \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"LOAD config in layer.txt\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"layer.txt\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"layer.txt can't open\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Output Channel: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Input Channel: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Input width: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Input height: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"stride height: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"pad height: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Weight filter width: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Weight filter height: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Output width: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Output height: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"SET RAMDOM WEIGHT\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SW convolution\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"CPU im2col Time: %f seconds\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"CPU gemm convolution Time: %f seconds\0A\00", align 1
@cal_convolution.workload = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32], align 4
@.str.24 = private unnamed_addr constant [22 x i8] c"SW Number of repeat: \00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"HW Number of repeat: \00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"FPGA image convolution\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"HW convolution\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"FPGA im2col Time: %f seconds\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"FPGA imge convolution Time: %f seconds\0A\00", align 1

; Function Attrs: nounwind
define void @init_convolution_size(%struct.layer*) #0 !dbg !16 !xidane.fname !36 !xidane.function_declaration_type !37 !xidane.function_declaration_filename !38 !xidane.ExternC !39 {
  %2 = alloca %struct.layer*, align 4
  store %struct.layer* %0, %struct.layer** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.layer** %2, metadata !40, metadata !41), !dbg !42
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)), !dbg !43
  %4 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !44
  %5 = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 0, !dbg !45
  %6 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %5), !dbg !46
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !47
  %8 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !48
  %9 = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 1, !dbg !49
  %10 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %9), !dbg !50
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)), !dbg !51
  %12 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !52
  %13 = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 2, !dbg !53
  %14 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %13), !dbg !54
  %15 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !55
  %16 = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 2, !dbg !56
  %17 = load i32, i32* %16, align 4, !dbg !56
  %18 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !57
  %19 = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 3, !dbg !58
  store i32 %17, i32* %19, align 4, !dbg !59
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0)), !dbg !60
  %21 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !61
  %22 = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 8, !dbg !62
  %23 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %22), !dbg !63
  %24 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !64
  %25 = getelementptr inbounds %struct.layer, %struct.layer* %24, i32 0, i32 6, !dbg !65
  store i32 1, i32* %25, align 4, !dbg !66
  %26 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !67
  %27 = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 7, !dbg !68
  store i32 1, i32* %27, align 4, !dbg !69
  %28 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !70
  %29 = getelementptr inbounds %struct.layer, %struct.layer* %28, i32 0, i32 2, !dbg !71
  %30 = load i32, i32* %29, align 4, !dbg !71
  %31 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !72
  %32 = getelementptr inbounds %struct.layer, %struct.layer* %31, i32 0, i32 7, !dbg !73
  %33 = load i32, i32* %32, align 4, !dbg !73
  %34 = mul nsw i32 2, %33, !dbg !74
  %35 = add nsw i32 %30, %34, !dbg !75
  %36 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !76
  %37 = getelementptr inbounds %struct.layer, %struct.layer* %36, i32 0, i32 8, !dbg !77
  %38 = load i32, i32* %37, align 4, !dbg !77
  %39 = sub nsw i32 %35, %38, !dbg !78
  %40 = add nsw i32 %39, 1, !dbg !79
  %41 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !80
  %42 = getelementptr inbounds %struct.layer, %struct.layer* %41, i32 0, i32 6, !dbg !81
  %43 = load i32, i32* %42, align 4, !dbg !81
  %44 = sdiv i32 %40, %43, !dbg !82
  %45 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !83
  %46 = getelementptr inbounds %struct.layer, %struct.layer* %45, i32 0, i32 4, !dbg !84
  store i32 %44, i32* %46, align 4, !dbg !85
  %47 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !86
  %48 = getelementptr inbounds %struct.layer, %struct.layer* %47, i32 0, i32 5, !dbg !87
  store i32 %44, i32* %48, align 4, !dbg !88
  %49 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0)), !dbg !89
  ret void, !dbg !90
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !xidane.fname !91 !xidane.function_declaration_type !92 !xidane.function_declaration_filename !93 !xidane.ExternC !39 i32 @printf(i8*, ...) #2

declare !xidane.fname !94 !xidane.function_declaration_type !92 !xidane.function_declaration_filename !93 !xidane.ExternC !39 i32 @__isoc99_scanf(i8*, ...) #2

declare !xidane.fname !95 !xidane.function_declaration_type !96 !xidane.function_declaration_filename !93 !xidane.ExternC !39 i32 @puts(i8*) #2

; Function Attrs: nounwind
define void @load_convolution_config(%struct.layer*) #0 !dbg !97 !xidane.fname !98 !xidane.function_declaration_type !37 !xidane.function_declaration_filename !38 !xidane.ExternC !39 {
  %2 = alloca %struct.layer*, align 4
  %3 = alloca %struct._IO_FILE*, align 4
  store %struct.layer* %0, %struct.layer** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.layer** %2, metadata !99, metadata !41), !dbg !100
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0)), !dbg !101
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !102, metadata !41), !dbg !163
  %5 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !dbg !164
  store %struct._IO_FILE* %5, %struct._IO_FILE** %3, align 4, !dbg !163
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4, !dbg !165
  %7 = icmp eq %struct._IO_FILE* %6, null, !dbg !167
  br i1 %7, label %8, label %10, !dbg !168

; <label>:8:                                      ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0)), !dbg !169
  call void @exit(i32 1) #6, !dbg !171
  unreachable, !dbg !171

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4, !dbg !172
  %12 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !173
  %13 = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 0, !dbg !174
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %13), !dbg !175
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4, !dbg !176
  %16 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !177
  %17 = getelementptr inbounds %struct.layer, %struct.layer* %16, i32 0, i32 1, !dbg !178
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %17), !dbg !179
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4, !dbg !180
  %20 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !181
  %21 = getelementptr inbounds %struct.layer, %struct.layer* %20, i32 0, i32 2, !dbg !182
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %21), !dbg !183
  %23 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !184
  %24 = getelementptr inbounds %struct.layer, %struct.layer* %23, i32 0, i32 2, !dbg !185
  %25 = load i32, i32* %24, align 4, !dbg !185
  %26 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !186
  %27 = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 3, !dbg !187
  store i32 %25, i32* %27, align 4, !dbg !188
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4, !dbg !189
  %29 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !190
  %30 = getelementptr inbounds %struct.layer, %struct.layer* %29, i32 0, i32 8, !dbg !191
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %30), !dbg !192
  %32 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !193
  %33 = getelementptr inbounds %struct.layer, %struct.layer* %32, i32 0, i32 6, !dbg !194
  store i32 1, i32* %33, align 4, !dbg !195
  %34 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !196
  %35 = getelementptr inbounds %struct.layer, %struct.layer* %34, i32 0, i32 7, !dbg !197
  store i32 1, i32* %35, align 4, !dbg !198
  %36 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !199
  %37 = getelementptr inbounds %struct.layer, %struct.layer* %36, i32 0, i32 2, !dbg !200
  %38 = load i32, i32* %37, align 4, !dbg !200
  %39 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !201
  %40 = getelementptr inbounds %struct.layer, %struct.layer* %39, i32 0, i32 7, !dbg !202
  %41 = load i32, i32* %40, align 4, !dbg !202
  %42 = mul nsw i32 2, %41, !dbg !203
  %43 = add nsw i32 %38, %42, !dbg !204
  %44 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !205
  %45 = getelementptr inbounds %struct.layer, %struct.layer* %44, i32 0, i32 8, !dbg !206
  %46 = load i32, i32* %45, align 4, !dbg !206
  %47 = sub nsw i32 %43, %46, !dbg !207
  %48 = add nsw i32 %47, 1, !dbg !208
  %49 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !209
  %50 = getelementptr inbounds %struct.layer, %struct.layer* %49, i32 0, i32 6, !dbg !210
  %51 = load i32, i32* %50, align 4, !dbg !210
  %52 = sdiv i32 %48, %51, !dbg !211
  %53 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !212
  %54 = getelementptr inbounds %struct.layer, %struct.layer* %53, i32 0, i32 4, !dbg !213
  store i32 %52, i32* %54, align 4, !dbg !214
  %55 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !215
  %56 = getelementptr inbounds %struct.layer, %struct.layer* %55, i32 0, i32 5, !dbg !216
  store i32 %52, i32* %56, align 4, !dbg !217
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4, !dbg !218
  %58 = call i32 @fclose(%struct._IO_FILE* %57), !dbg !219
  ret void, !dbg !220
}

declare !xidane.fname !221 !xidane.function_declaration_type !222 !xidane.function_declaration_filename !93 !xidane.ExternC !39 %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noreturn nounwind
declare !xidane.fname !223 !xidane.function_declaration_type !224 !xidane.function_declaration_filename !225 !xidane.ExternC !39 void @exit(i32) #3

declare !xidane.fname !226 !xidane.function_declaration_type !227 !xidane.function_declaration_filename !93 !xidane.ExternC !39 i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare !xidane.fname !228 !xidane.function_declaration_type !229 !xidane.function_declaration_filename !93 !xidane.ExternC !39 i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
define void @print_convolution_size(%struct.layer*) #0 !dbg !230 !xidane.fname !231 !xidane.function_declaration_type !37 !xidane.function_declaration_filename !38 !xidane.ExternC !39 {
  %2 = alloca %struct.layer*, align 4
  store %struct.layer* %0, %struct.layer** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.layer** %2, metadata !232, metadata !41), !dbg !233
  %3 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !234
  %4 = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 0, !dbg !235
  %5 = load i32, i32* %4, align 4, !dbg !235
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 %5), !dbg !236
  %7 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !237
  %8 = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 1, !dbg !238
  %9 = load i32, i32* %8, align 4, !dbg !238
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i32 %9), !dbg !239
  %11 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !240
  %12 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 2, !dbg !241
  %13 = load i32, i32* %12, align 4, !dbg !241
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 %13), !dbg !242
  %15 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !243
  %16 = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 3, !dbg !244
  %17 = load i32, i32* %16, align 4, !dbg !244
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i32 %17), !dbg !245
  %19 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !246
  %20 = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 6, !dbg !247
  %21 = load i32, i32* %20, align 4, !dbg !247
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i32 %21), !dbg !248
  %23 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !249
  %24 = getelementptr inbounds %struct.layer, %struct.layer* %23, i32 0, i32 7, !dbg !250
  %25 = load i32, i32* %24, align 4, !dbg !250
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 %25), !dbg !251
  %27 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !252
  %28 = getelementptr inbounds %struct.layer, %struct.layer* %27, i32 0, i32 8, !dbg !253
  %29 = load i32, i32* %28, align 4, !dbg !253
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i32 %29), !dbg !254
  %31 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !255
  %32 = getelementptr inbounds %struct.layer, %struct.layer* %31, i32 0, i32 8, !dbg !256
  %33 = load i32, i32* %32, align 4, !dbg !256
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i32 %33), !dbg !257
  %35 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !258
  %36 = getelementptr inbounds %struct.layer, %struct.layer* %35, i32 0, i32 4, !dbg !259
  %37 = load i32, i32* %36, align 4, !dbg !259
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i32 %37), !dbg !260
  %39 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !261
  %40 = getelementptr inbounds %struct.layer, %struct.layer* %39, i32 0, i32 5, !dbg !262
  %41 = load i32, i32* %40, align 4, !dbg !262
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i32 %41), !dbg !263
  %43 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0)), !dbg !264
  ret void, !dbg !265
}

; Function Attrs: nounwind
define void @init_convolution_weight(%struct.layer*) #0 !dbg !266 !xidane.fname !267 !xidane.function_declaration_type !37 !xidane.function_declaration_filename !38 !xidane.ExternC !39 {
  %2 = alloca %struct.layer*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.layer* %0, %struct.layer** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.layer** %2, metadata !268, metadata !41), !dbg !269
  call void @llvm.dbg.declare(metadata i32* %3, metadata !270, metadata !41), !dbg !271
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0)), !dbg !272
  call void @llvm.dbg.declare(metadata i32* %4, metadata !273, metadata !41), !dbg !274
  %6 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !275
  %7 = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 0, !dbg !276
  %8 = load i32, i32* %7, align 4, !dbg !276
  %9 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !277
  %10 = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 1, !dbg !278
  %11 = load i32, i32* %10, align 4, !dbg !278
  %12 = mul nsw i32 %8, %11, !dbg !279
  %13 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !280
  %14 = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 8, !dbg !281
  %15 = load i32, i32* %14, align 4, !dbg !281
  %16 = mul nsw i32 %12, %15, !dbg !282
  %17 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !283
  %18 = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 8, !dbg !284
  %19 = load i32, i32* %18, align 4, !dbg !284
  %20 = mul nsw i32 %16, %19, !dbg !285
  store i32 %20, i32* %4, align 4, !dbg !274
  %21 = load i32, i32* %4, align 4, !dbg !286
  %22 = call noalias i8* @calloc(i32 %21, i32 4) #7, !dbg !287
  %23 = bitcast i8* %22 to float*, !dbg !288
  %24 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !289
  %25 = getelementptr inbounds %struct.layer, %struct.layer* %24, i32 0, i32 9, !dbg !290
  store float* %23, float** %25, align 4, !dbg !291
  store i32 0, i32* %3, align 4, !dbg !292
  br label %26, !dbg !294

; <label>:26:                                     ; preds = %37, %1
  %27 = load i32, i32* %3, align 4, !dbg !295
  %28 = load i32, i32* %4, align 4, !dbg !298
  %29 = icmp slt i32 %27, %28, !dbg !299
  br i1 %29, label %30, label %40, !dbg !300

; <label>:30:                                     ; preds = %26
  %31 = call float @gaussianRandom(), !dbg !301
  %32 = load i32, i32* %3, align 4, !dbg !302
  %33 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !303
  %34 = getelementptr inbounds %struct.layer, %struct.layer* %33, i32 0, i32 9, !dbg !304
  %35 = load float*, float** %34, align 4, !dbg !304
  %36 = getelementptr inbounds float, float* %35, i32 %32, !dbg !303
  store float %31, float* %36, align 4, !dbg !305
  br label %37, !dbg !303

; <label>:37:                                     ; preds = %30
  %38 = load i32, i32* %3, align 4, !dbg !306
  %39 = add nsw i32 %38, 1, !dbg !306
  store i32 %39, i32* %3, align 4, !dbg !306
  br label %26, !dbg !308, !llvm.loop !309

; <label>:40:                                     ; preds = %26
  ret void, !dbg !311
}

; Function Attrs: nounwind
declare !xidane.fname !312 !xidane.function_declaration_type !313 !xidane.function_declaration_filename !225 !xidane.ExternC !39 noalias i8* @calloc(i32, i32) #4

declare !xidane.fname !314 !xidane.function_declaration_type !315 !xidane.function_declaration_filename !316 !xidane.ExternC !39 float @gaussianRandom() #2

; Function Attrs: nounwind
define void @init_convolution_output(%struct.layer*) #0 !dbg !317 !xidane.fname !318 !xidane.function_declaration_type !37 !xidane.function_declaration_filename !38 !xidane.ExternC !39 {
  %2 = alloca %struct.layer*, align 4
  %3 = alloca i32, align 4
  store %struct.layer* %0, %struct.layer** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.layer** %2, metadata !319, metadata !41), !dbg !320
  call void @llvm.dbg.declare(metadata i32* %3, metadata !321, metadata !41), !dbg !322
  %4 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !323
  %5 = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 0, !dbg !324
  %6 = load i32, i32* %5, align 4, !dbg !324
  %7 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !325
  %8 = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 4, !dbg !326
  %9 = load i32, i32* %8, align 4, !dbg !326
  %10 = mul nsw i32 %6, %9, !dbg !327
  %11 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !328
  %12 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 5, !dbg !329
  %13 = load i32, i32* %12, align 4, !dbg !329
  %14 = mul nsw i32 %10, %13, !dbg !330
  store i32 %14, i32* %3, align 4, !dbg !322
  %15 = load i32, i32* %3, align 4, !dbg !331
  %16 = call noalias i8* @calloc(i32 %15, i32 4) #7, !dbg !332
  %17 = bitcast i8* %16 to float*, !dbg !333
  %18 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !334
  %19 = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 10, !dbg !335
  store float* %17, float** %19, align 4, !dbg !336
  ret void, !dbg !337
}

; Function Attrs: nounwind
define void @init_convolution(%struct.layer* noalias sret) #0 !dbg !338 !xidane.fname !341 !xidane.function_declaration_type !342 !xidane.function_declaration_filename !38 !xidane.ExternC !39 {
  %2 = alloca %struct.layer, align 4
  call void @llvm.dbg.declare(metadata %struct.layer* %2, metadata !343, metadata !41), !dbg !344
  call void @load_convolution_config(%struct.layer* %2), !dbg !345
  call void @print_convolution_size(%struct.layer* %2), !dbg !346
  call void @init_convolution_weight(%struct.layer* %2), !dbg !347
  call void @init_convolution_output(%struct.layer* %2), !dbg !348
  %3 = bitcast %struct.layer* %0 to i8*, !dbg !349
  %4 = bitcast %struct.layer* %2 to i8*, !dbg !349
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 44, i32 4, i1 false), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: nounwind
define void @cpu_image_convolution(%struct.layer*, float*) #0 !dbg !351 !xidane.fname !354 !xidane.function_declaration_type !355 !xidane.function_declaration_filename !38 !xidane.ExternC !39 {
  %3 = alloca %struct.layer*, align 4
  %4 = alloca float*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.layer* %0, %struct.layer** %3, align 4
  call void @llvm.dbg.declare(metadata %struct.layer** %3, metadata !356, metadata !41), !dbg !357
  store float* %1, float** %4, align 4
  call void @llvm.dbg.declare(metadata float** %4, metadata !358, metadata !41), !dbg !359
  call void @llvm.dbg.declare(metadata i32* %5, metadata !360, metadata !41), !dbg !361
  call void @llvm.dbg.declare(metadata i32* %6, metadata !362, metadata !41), !dbg !363
  call void @llvm.dbg.declare(metadata i32* %7, metadata !364, metadata !41), !dbg !365
  call void @llvm.dbg.declare(metadata i32* %8, metadata !366, metadata !41), !dbg !367
  call void @llvm.dbg.declare(metadata i32* %9, metadata !368, metadata !41), !dbg !369
  call void @llvm.dbg.declare(metadata i32* %10, metadata !370, metadata !41), !dbg !371
  call void @llvm.dbg.declare(metadata i32* %11, metadata !372, metadata !41), !dbg !373
  %17 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !374
  %18 = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 4, !dbg !375
  %19 = load i32, i32* %18, align 4, !dbg !375
  %20 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !376
  %21 = getelementptr inbounds %struct.layer, %struct.layer* %20, i32 0, i32 5, !dbg !377
  %22 = load i32, i32* %21, align 4, !dbg !377
  %23 = mul nsw i32 %19, %22, !dbg !378
  store i32 %23, i32* %11, align 4, !dbg !373
  store i32 0, i32* %5, align 4, !dbg !379
  br label %24, !dbg !381

; <label>:24:                                     ; preds = %189, %2
  %25 = load i32, i32* %5, align 4, !dbg !382
  %26 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !385
  %27 = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 0, !dbg !386
  %28 = load i32, i32* %27, align 4, !dbg !386
  %29 = icmp slt i32 %25, %28, !dbg !387
  br i1 %29, label %30, label %192, !dbg !388

; <label>:30:                                     ; preds = %24
  store i32 0, i32* %8, align 4, !dbg !389
  br label %31, !dbg !392

; <label>:31:                                     ; preds = %185, %30
  %32 = load i32, i32* %8, align 4, !dbg !393
  %33 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !396
  %34 = getelementptr inbounds %struct.layer, %struct.layer* %33, i32 0, i32 5, !dbg !397
  %35 = load i32, i32* %34, align 4, !dbg !397
  %36 = icmp slt i32 %32, %35, !dbg !398
  br i1 %36, label %37, label %188, !dbg !399

; <label>:37:                                     ; preds = %31
  store i32 0, i32* %7, align 4, !dbg !400
  br label %38, !dbg !403

; <label>:38:                                     ; preds = %181, %37
  %39 = load i32, i32* %7, align 4, !dbg !404
  %40 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !407
  %41 = getelementptr inbounds %struct.layer, %struct.layer* %40, i32 0, i32 4, !dbg !408
  %42 = load i32, i32* %41, align 4, !dbg !408
  %43 = icmp slt i32 %39, %42, !dbg !409
  br i1 %43, label %44, label %184, !dbg !410

; <label>:44:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata float* %12, metadata !411, metadata !41), !dbg !413
  store float 0.000000e+00, float* %12, align 4, !dbg !413
  store i32 0, i32* %6, align 4, !dbg !414
  br label %45, !dbg !416

; <label>:45:                                     ; preds = %161, %44
  %46 = load i32, i32* %6, align 4, !dbg !417
  %47 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !420
  %48 = getelementptr inbounds %struct.layer, %struct.layer* %47, i32 0, i32 1, !dbg !421
  %49 = load i32, i32* %48, align 4, !dbg !421
  %50 = icmp slt i32 %46, %49, !dbg !422
  br i1 %50, label %51, label %164, !dbg !423

; <label>:51:                                     ; preds = %45
  store i32 0, i32* %9, align 4, !dbg !424
  br label %52, !dbg !427

; <label>:52:                                     ; preds = %157, %51
  %53 = load i32, i32* %9, align 4, !dbg !428
  %54 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !431
  %55 = getelementptr inbounds %struct.layer, %struct.layer* %54, i32 0, i32 8, !dbg !432
  %56 = load i32, i32* %55, align 4, !dbg !432
  %57 = icmp slt i32 %53, %56, !dbg !433
  br i1 %57, label %58, label %160, !dbg !434

; <label>:58:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata i32* %13, metadata !435, metadata !41), !dbg !437
  %59 = load i32, i32* %8, align 4, !dbg !438
  %60 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !439
  %61 = getelementptr inbounds %struct.layer, %struct.layer* %60, i32 0, i32 6, !dbg !440
  %62 = load i32, i32* %61, align 4, !dbg !440
  %63 = mul nsw i32 %59, %62, !dbg !441
  %64 = load i32, i32* %9, align 4, !dbg !442
  %65 = add nsw i32 %63, %64, !dbg !443
  %66 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !444
  %67 = getelementptr inbounds %struct.layer, %struct.layer* %66, i32 0, i32 7, !dbg !445
  %68 = load i32, i32* %67, align 4, !dbg !445
  %69 = sub nsw i32 %65, %68, !dbg !446
  store i32 %69, i32* %13, align 4, !dbg !437
  %70 = load i32, i32* %13, align 4, !dbg !447
  %71 = icmp slt i32 %70, 0, !dbg !449
  br i1 %71, label %78, label %72, !dbg !450

; <label>:72:                                     ; preds = %58
  %73 = load i32, i32* %13, align 4, !dbg !451
  %74 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !453
  %75 = getelementptr inbounds %struct.layer, %struct.layer* %74, i32 0, i32 3, !dbg !454
  %76 = load i32, i32* %75, align 4, !dbg !454
  %77 = icmp sge i32 %73, %76, !dbg !455
  br i1 %77, label %78, label %79, !dbg !456

; <label>:78:                                     ; preds = %72, %58
  br label %157, !dbg !457

; <label>:79:                                     ; preds = %72
  store i32 0, i32* %10, align 4, !dbg !459
  br label %80, !dbg !461

; <label>:80:                                     ; preds = %153, %79
  %81 = load i32, i32* %10, align 4, !dbg !462
  %82 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !465
  %83 = getelementptr inbounds %struct.layer, %struct.layer* %82, i32 0, i32 8, !dbg !466
  %84 = load i32, i32* %83, align 4, !dbg !466
  %85 = icmp slt i32 %81, %84, !dbg !467
  br i1 %85, label %86, label %156, !dbg !468

; <label>:86:                                     ; preds = %80
  call void @llvm.dbg.declare(metadata i32* %14, metadata !469, metadata !41), !dbg !471
  %87 = load i32, i32* %7, align 4, !dbg !472
  %88 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !473
  %89 = getelementptr inbounds %struct.layer, %struct.layer* %88, i32 0, i32 6, !dbg !474
  %90 = load i32, i32* %89, align 4, !dbg !474
  %91 = mul nsw i32 %87, %90, !dbg !475
  %92 = load i32, i32* %10, align 4, !dbg !476
  %93 = add nsw i32 %91, %92, !dbg !477
  %94 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !478
  %95 = getelementptr inbounds %struct.layer, %struct.layer* %94, i32 0, i32 7, !dbg !479
  %96 = load i32, i32* %95, align 4, !dbg !479
  %97 = sub nsw i32 %93, %96, !dbg !480
  store i32 %97, i32* %14, align 4, !dbg !471
  %98 = load i32, i32* %14, align 4, !dbg !481
  %99 = icmp slt i32 %98, 0, !dbg !483
  br i1 %99, label %106, label %100, !dbg !484

; <label>:100:                                    ; preds = %86
  %101 = load i32, i32* %14, align 4, !dbg !485
  %102 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !487
  %103 = getelementptr inbounds %struct.layer, %struct.layer* %102, i32 0, i32 2, !dbg !488
  %104 = load i32, i32* %103, align 4, !dbg !488
  %105 = icmp sge i32 %101, %104, !dbg !489
  br i1 %105, label %106, label %107, !dbg !490

; <label>:106:                                    ; preds = %100, %86
  br label %153, !dbg !491

; <label>:107:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata i32* %15, metadata !493, metadata !41), !dbg !494
  %108 = load i32, i32* %6, align 4, !dbg !495
  %109 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !496
  %110 = getelementptr inbounds %struct.layer, %struct.layer* %109, i32 0, i32 3, !dbg !497
  %111 = load i32, i32* %110, align 4, !dbg !497
  %112 = mul nsw i32 %108, %111, !dbg !498
  %113 = load i32, i32* %13, align 4, !dbg !499
  %114 = add nsw i32 %112, %113, !dbg !500
  %115 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !501
  %116 = getelementptr inbounds %struct.layer, %struct.layer* %115, i32 0, i32 2, !dbg !502
  %117 = load i32, i32* %116, align 4, !dbg !502
  %118 = mul nsw i32 %114, %117, !dbg !503
  %119 = load i32, i32* %14, align 4, !dbg !504
  %120 = add nsw i32 %118, %119, !dbg !505
  store i32 %120, i32* %15, align 4, !dbg !494
  call void @llvm.dbg.declare(metadata i32* %16, metadata !506, metadata !41), !dbg !507
  %121 = load i32, i32* %5, align 4, !dbg !508
  %122 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !509
  %123 = getelementptr inbounds %struct.layer, %struct.layer* %122, i32 0, i32 1, !dbg !510
  %124 = load i32, i32* %123, align 4, !dbg !510
  %125 = mul nsw i32 %121, %124, !dbg !511
  %126 = load i32, i32* %6, align 4, !dbg !512
  %127 = add nsw i32 %125, %126, !dbg !513
  %128 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !514
  %129 = getelementptr inbounds %struct.layer, %struct.layer* %128, i32 0, i32 8, !dbg !515
  %130 = load i32, i32* %129, align 4, !dbg !515
  %131 = mul nsw i32 %127, %130, !dbg !516
  %132 = load i32, i32* %9, align 4, !dbg !517
  %133 = add nsw i32 %131, %132, !dbg !518
  %134 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !519
  %135 = getelementptr inbounds %struct.layer, %struct.layer* %134, i32 0, i32 8, !dbg !520
  %136 = load i32, i32* %135, align 4, !dbg !520
  %137 = mul nsw i32 %133, %136, !dbg !521
  %138 = load i32, i32* %10, align 4, !dbg !522
  %139 = add nsw i32 %137, %138, !dbg !523
  store i32 %139, i32* %16, align 4, !dbg !507
  %140 = load i32, i32* %15, align 4, !dbg !524
  %141 = load float*, float** %4, align 4, !dbg !525
  %142 = getelementptr inbounds float, float* %141, i32 %140, !dbg !525
  %143 = load float, float* %142, align 4, !dbg !525
  %144 = load i32, i32* %16, align 4, !dbg !526
  %145 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !527
  %146 = getelementptr inbounds %struct.layer, %struct.layer* %145, i32 0, i32 9, !dbg !528
  %147 = load float*, float** %146, align 4, !dbg !528
  %148 = getelementptr inbounds float, float* %147, i32 %144, !dbg !527
  %149 = load float, float* %148, align 4, !dbg !527
  %150 = fmul float %143, %149, !dbg !529
  %151 = load float, float* %12, align 4, !dbg !530
  %152 = fadd float %151, %150, !dbg !530
  store float %152, float* %12, align 4, !dbg !530
  br label %153, !dbg !531

; <label>:153:                                    ; preds = %107, %106
  %154 = load i32, i32* %10, align 4, !dbg !532
  %155 = add nsw i32 %154, 1, !dbg !532
  store i32 %155, i32* %10, align 4, !dbg !532
  br label %80, !dbg !534, !llvm.loop !535

; <label>:156:                                    ; preds = %80
  br label %157, !dbg !537

; <label>:157:                                    ; preds = %156, %78
  %158 = load i32, i32* %9, align 4, !dbg !538
  %159 = add nsw i32 %158, 1, !dbg !538
  store i32 %159, i32* %9, align 4, !dbg !538
  br label %52, !dbg !540, !llvm.loop !541

; <label>:160:                                    ; preds = %52
  br label %161, !dbg !543

; <label>:161:                                    ; preds = %160
  %162 = load i32, i32* %6, align 4, !dbg !544
  %163 = add nsw i32 %162, 1, !dbg !544
  store i32 %163, i32* %6, align 4, !dbg !544
  br label %45, !dbg !546, !llvm.loop !547

; <label>:164:                                    ; preds = %45
  %165 = load float, float* %12, align 4, !dbg !549
  %166 = load i32, i32* %5, align 4, !dbg !550
  %167 = load i32, i32* %11, align 4, !dbg !551
  %168 = mul nsw i32 %166, %167, !dbg !552
  %169 = load i32, i32* %8, align 4, !dbg !553
  %170 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !554
  %171 = getelementptr inbounds %struct.layer, %struct.layer* %170, i32 0, i32 4, !dbg !555
  %172 = load i32, i32* %171, align 4, !dbg !555
  %173 = mul nsw i32 %169, %172, !dbg !556
  %174 = add nsw i32 %168, %173, !dbg !557
  %175 = load i32, i32* %7, align 4, !dbg !558
  %176 = add nsw i32 %174, %175, !dbg !559
  %177 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !560
  %178 = getelementptr inbounds %struct.layer, %struct.layer* %177, i32 0, i32 10, !dbg !561
  %179 = load float*, float** %178, align 4, !dbg !561
  %180 = getelementptr inbounds float, float* %179, i32 %176, !dbg !560
  store float %165, float* %180, align 4, !dbg !562
  br label %181, !dbg !563

; <label>:181:                                    ; preds = %164
  %182 = load i32, i32* %7, align 4, !dbg !564
  %183 = add nsw i32 %182, 1, !dbg !564
  store i32 %183, i32* %7, align 4, !dbg !564
  br label %38, !dbg !566, !llvm.loop !567

; <label>:184:                                    ; preds = %38
  br label %185, !dbg !569

; <label>:185:                                    ; preds = %184
  %186 = load i32, i32* %8, align 4, !dbg !570
  %187 = add nsw i32 %186, 1, !dbg !570
  store i32 %187, i32* %8, align 4, !dbg !570
  br label %31, !dbg !572, !llvm.loop !573

; <label>:188:                                    ; preds = %31
  br label %189, !dbg !575

; <label>:189:                                    ; preds = %188
  %190 = load i32, i32* %5, align 4, !dbg !576
  %191 = add nsw i32 %190, 1, !dbg !576
  store i32 %191, i32* %5, align 4, !dbg !576
  br label %24, !dbg !578, !llvm.loop !579

; <label>:192:                                    ; preds = %24
  ret void, !dbg !581
}

; Function Attrs: nounwind
define void @sw_convolutional_layer(%struct.layer*, float*, i32) #0 !dbg !582 !xidane.fname !585 !xidane.function_declaration_type !586 !xidane.function_declaration_filename !38 !xidane.ExternC !39 {
  %4 = alloca %struct.layer*, align 4
  %5 = alloca float*, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.layer, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 4
  %15 = alloca float*, align 4
  %16 = alloca float*, align 4
  store %struct.layer* %0, %struct.layer** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.layer** %4, metadata !587, metadata !41), !dbg !588
  store float* %1, float** %5, align 4
  call void @llvm.dbg.declare(metadata float** %5, metadata !589, metadata !41), !dbg !590
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !591, metadata !41), !dbg !592
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)), !dbg !593
  call void @llvm.dbg.declare(metadata double* %7, metadata !594, metadata !41), !dbg !596
  %18 = call double bitcast (double (...)* @what_time_is_it_now to double ()*)(), !dbg !597
  store double %18, double* %7, align 8, !dbg !596
  call void @llvm.dbg.declare(metadata i32* %8, metadata !598, metadata !41), !dbg !599
  call void @llvm.dbg.declare(metadata i32* %9, metadata !600, metadata !41), !dbg !601
  call void @llvm.dbg.declare(metadata %struct.layer* %10, metadata !602, metadata !41), !dbg !603
  %19 = load %struct.layer*, %struct.layer** %4, align 4, !dbg !604
  %20 = bitcast %struct.layer* %10 to i8*, !dbg !605
  %21 = bitcast %struct.layer* %19 to i8*, !dbg !605
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 44, i32 4, i1 false), !dbg !605
  call void @llvm.dbg.declare(metadata i32* %11, metadata !606, metadata !41), !dbg !607
  %22 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 0, !dbg !608
  %23 = load i32, i32* %22, align 4, !dbg !608
  store i32 %23, i32* %11, align 4, !dbg !607
  call void @llvm.dbg.declare(metadata i32* %12, metadata !609, metadata !41), !dbg !610
  %24 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 8, !dbg !611
  %25 = load i32, i32* %24, align 4, !dbg !611
  %26 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 8, !dbg !612
  %27 = load i32, i32* %26, align 4, !dbg !612
  %28 = mul nsw i32 %25, %27, !dbg !613
  %29 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 1, !dbg !614
  %30 = load i32, i32* %29, align 4, !dbg !614
  %31 = mul nsw i32 %28, %30, !dbg !615
  store i32 %31, i32* %12, align 4, !dbg !610
  call void @llvm.dbg.declare(metadata i32* %13, metadata !616, metadata !41), !dbg !617
  %32 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 4, !dbg !618
  %33 = load i32, i32* %32, align 4, !dbg !618
  %34 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 5, !dbg !619
  %35 = load i32, i32* %34, align 4, !dbg !619
  %36 = mul nsw i32 %33, %35, !dbg !620
  store i32 %36, i32* %13, align 4, !dbg !617
  call void @llvm.dbg.declare(metadata float** %14, metadata !621, metadata !41), !dbg !622
  %37 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 9, !dbg !623
  %38 = load float*, float** %37, align 4, !dbg !623
  store float* %38, float** %14, align 4, !dbg !622
  call void @llvm.dbg.declare(metadata float** %15, metadata !624, metadata !41), !dbg !625
  %39 = bitcast %struct.layer* %10 to [11 x i32]*, !dbg !626
  %40 = load [11 x i32], [11 x i32]* %39, align 4, !dbg !626
  %41 = call i32 @get_workspace_size([11 x i32] %40), !dbg !626
  %42 = call noalias i8* @calloc(i32 1, i32 %41) #7, !dbg !627
  %43 = bitcast i8* %42 to float*, !dbg !629
  store float* %43, float** %15, align 4, !dbg !625
  call void @llvm.dbg.declare(metadata float** %16, metadata !630, metadata !41), !dbg !631
  %44 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 10, !dbg !632
  %45 = load float*, float** %44, align 4, !dbg !632
  store float* %45, float** %16, align 4, !dbg !631
  %46 = load float*, float** %5, align 4, !dbg !633
  %47 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 1, !dbg !634
  %48 = load i32, i32* %47, align 4, !dbg !634
  %49 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 3, !dbg !635
  %50 = load i32, i32* %49, align 4, !dbg !635
  %51 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 2, !dbg !636
  %52 = load i32, i32* %51, align 4, !dbg !636
  %53 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 8, !dbg !637
  %54 = load i32, i32* %53, align 4, !dbg !637
  %55 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 6, !dbg !638
  %56 = load i32, i32* %55, align 4, !dbg !638
  %57 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 7, !dbg !639
  %58 = load i32, i32* %57, align 4, !dbg !639
  %59 = load float*, float** %15, align 4, !dbg !640
  call void @im2col_cpu(float* %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56, i32 %58, float* %59), !dbg !641
  %60 = call double bitcast (double (...)* @what_time_is_it_now to double ()*)(), !dbg !642
  %61 = load double, double* %7, align 8, !dbg !643
  %62 = fsub double %60, %61, !dbg !644
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), double %62), !dbg !645
  store i32 0, i32* %8, align 4, !dbg !646
  br label %64, !dbg !648

; <label>:64:                                     ; preds = %78, %3
  %65 = load i32, i32* %8, align 4, !dbg !649
  %66 = load i32, i32* %6, align 4, !dbg !652
  %67 = icmp slt i32 %65, %66, !dbg !653
  br i1 %67, label %68, label %81, !dbg !654

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %11, align 4, !dbg !655
  %70 = load i32, i32* %12, align 4, !dbg !657
  %71 = load i32, i32* %13, align 4, !dbg !658
  %72 = load float*, float** %14, align 4, !dbg !659
  %73 = load i32, i32* %13, align 4, !dbg !660
  %74 = load float*, float** %15, align 4, !dbg !661
  %75 = load i32, i32* %12, align 4, !dbg !662
  %76 = load float*, float** %16, align 4, !dbg !663
  %77 = load i32, i32* %12, align 4, !dbg !664
  call void @gemm(i32 %69, i32 %70, i32 %71, float* %72, i32 %73, float* %74, i32 %75, float* %76, i32 %77), !dbg !665
  br label %78, !dbg !666

; <label>:78:                                     ; preds = %68
  %79 = load i32, i32* %8, align 4, !dbg !667
  %80 = add nsw i32 %79, 1, !dbg !667
  store i32 %80, i32* %8, align 4, !dbg !667
  br label %64, !dbg !669, !llvm.loop !670

; <label>:81:                                     ; preds = %64
  %82 = call double bitcast (double (...)* @what_time_is_it_now to double ()*)(), !dbg !672
  %83 = load double, double* %7, align 8, !dbg !673
  %84 = fsub double %82, %83, !dbg !674
  %85 = load i32, i32* %6, align 4, !dbg !675
  %86 = sitofp i32 %85 to double, !dbg !675
  %87 = fdiv double %84, %86, !dbg !676
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), double %87), !dbg !677
  %89 = load float*, float** %15, align 4, !dbg !678
  %90 = bitcast float* %89 to i8*, !dbg !678
  call void @free(i8* %90) #7, !dbg !679
  ret void, !dbg !680
}

declare !xidane.fname !681 !xidane.function_declaration_type !682 !xidane.function_declaration_filename !316 !xidane.ExternC !39 double @what_time_is_it_now(...) #2

; Function Attrs: nounwind
define internal i32 @get_workspace_size([11 x i32]) #0 !dbg !683 !xidane.fname !687 !xidane.function_declaration_type !688 !xidane.function_declaration_filename !689 {
  %2 = alloca %struct.layer, align 4
  %3 = bitcast %struct.layer* %2 to [11 x i32]*
  store [11 x i32] %0, [11 x i32]* %3, align 4
  call void @llvm.dbg.declare(metadata %struct.layer* %2, metadata !690, metadata !41), !dbg !691
  %4 = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 3, !dbg !692
  %5 = load i32, i32* %4, align 4, !dbg !692
  %6 = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 2, !dbg !693
  %7 = load i32, i32* %6, align 4, !dbg !693
  %8 = mul i32 %5, %7, !dbg !694
  %9 = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 8, !dbg !695
  %10 = load i32, i32* %9, align 4, !dbg !695
  %11 = mul i32 %8, %10, !dbg !696
  %12 = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 8, !dbg !697
  %13 = load i32, i32* %12, align 4, !dbg !697
  %14 = mul i32 %11, %13, !dbg !698
  %15 = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 0, !dbg !699
  %16 = load i32, i32* %15, align 4, !dbg !699
  %17 = mul i32 %14, %16, !dbg !700
  %18 = mul i32 %17, 4, !dbg !701
  ret i32 %18, !dbg !702
}

declare !xidane.fname !703 !xidane.function_declaration_type !704 !xidane.function_declaration_filename !705 !xidane.ExternC !39 void @im2col_cpu(float*, i32, i32, i32, i32, i32, i32, float*) #2

declare !xidane.fname !706 !xidane.function_declaration_type !707 !xidane.function_declaration_filename !708 !xidane.ExternC !39 void @gemm(i32, i32, i32, float*, i32, float*, i32, float*, i32) #2

; Function Attrs: nounwind
declare !xidane.fname !709 !xidane.function_declaration_type !710 !xidane.function_declaration_filename !225 !xidane.ExternC !39 void @free(i8*) #4

; Function Attrs: nounwind
define void @cal_convolution(%struct.layer*, float*) #0 !dbg !711 !xidane.fname !712 !xidane.function_declaration_type !355 !xidane.function_declaration_filename !38 !xidane.ExternC !39 {
  %3 = alloca %struct.layer*, align 4
  %4 = alloca float*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.layer* %0, %struct.layer** %3, align 4
  call void @llvm.dbg.declare(metadata %struct.layer** %3, metadata !713, metadata !41), !dbg !714
  store float* %1, float** %4, align 4
  call void @llvm.dbg.declare(metadata float** %4, metadata !715, metadata !41), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %5, metadata !717, metadata !41), !dbg !718
  call void @llvm.dbg.declare(metadata i32* %6, metadata !719, metadata !41), !dbg !720
  call void @llvm.dbg.declare(metadata [6 x i32]* %7, metadata !721, metadata !41), !dbg !725
  %9 = bitcast [6 x i32]* %7 to i8*, !dbg !725
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* bitcast ([6 x i32]* @cal_convolution.workload to i8*), i32 24, i32 4, i1 false), !dbg !725
  call void @llvm.dbg.declare(metadata i32* %8, metadata !726, metadata !41), !dbg !727
  store i32 0, i32* %8, align 4, !dbg !727
  br label %10, !dbg !728

; <label>:10:                                     ; preds = %13, %2
  %11 = load i32, i32* %8, align 4, !dbg !729
  %12 = icmp sle i32 %11, 0, !dbg !731
  br i1 %12, label %13, label %16, !dbg !732

; <label>:13:                                     ; preds = %10
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0)), !dbg !733
  %15 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %8), !dbg !735
  br label %10, !dbg !736, !llvm.loop !738

; <label>:16:                                     ; preds = %10
  %17 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !739
  %18 = load float*, float** %4, align 4, !dbg !740
  %19 = load i32, i32* %8, align 4, !dbg !741
  call void @sw_convolutional_layer(%struct.layer* %17, float* %18, i32 %19), !dbg !742
  br label %20, !dbg !743

; <label>:20:                                     ; preds = %23, %16
  %21 = load i32, i32* %8, align 4, !dbg !744
  %22 = icmp sle i32 %21, 0, !dbg !745
  br i1 %22, label %23, label %26, !dbg !746

; <label>:23:                                     ; preds = %20
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0)), !dbg !747
  %25 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %8), !dbg !749
  br label %20, !dbg !750, !llvm.loop !751

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0)), !dbg !752
  %28 = load %struct.layer*, %struct.layer** %3, align 4, !dbg !753
  %29 = load float*, float** %4, align 4, !dbg !754
  %30 = load i32, i32* %8, align 4, !dbg !755
  call void @hw_convolutional_layer(%struct.layer* %28, float* %29, i32 %30), !dbg !756
  ret void, !dbg !757
}

; Function Attrs: nounwind
define void @hw_convolutional_layer(%struct.layer*, float*, i32) #0 !dbg !758 !xidane.fname !759 !xidane.function_declaration_type !586 !xidane.function_declaration_filename !689 !xidane.ExternC !39 {
  %4 = alloca %struct.layer*, align 4
  %5 = alloca float*, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.layer, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 4
  %15 = alloca float*, align 4
  %16 = alloca float*, align 4
  store %struct.layer* %0, %struct.layer** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.layer** %4, metadata !760, metadata !41), !dbg !761
  store float* %1, float** %5, align 4
  call void @llvm.dbg.declare(metadata float** %5, metadata !762, metadata !41), !dbg !763
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !764, metadata !41), !dbg !765
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)), !dbg !766
  call void @llvm.dbg.declare(metadata double* %7, metadata !767, metadata !41), !dbg !768
  %18 = call double bitcast (double (...)* @what_time_is_it_now to double ()*)(), !dbg !769
  store double %18, double* %7, align 8, !dbg !768
  call void @llvm.dbg.declare(metadata i32* %8, metadata !770, metadata !41), !dbg !771
  call void @llvm.dbg.declare(metadata i32* %9, metadata !772, metadata !41), !dbg !773
  call void @llvm.dbg.declare(metadata %struct.layer* %10, metadata !774, metadata !41), !dbg !775
  %19 = load %struct.layer*, %struct.layer** %4, align 4, !dbg !776
  %20 = bitcast %struct.layer* %10 to i8*, !dbg !777
  %21 = bitcast %struct.layer* %19 to i8*, !dbg !777
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 44, i32 4, i1 false), !dbg !777
  call void @llvm.dbg.declare(metadata i32* %11, metadata !778, metadata !41), !dbg !779
  %22 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 0, !dbg !780
  %23 = load i32, i32* %22, align 4, !dbg !780
  store i32 %23, i32* %11, align 4, !dbg !779
  call void @llvm.dbg.declare(metadata i32* %12, metadata !781, metadata !41), !dbg !782
  %24 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 8, !dbg !783
  %25 = load i32, i32* %24, align 4, !dbg !783
  %26 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 8, !dbg !784
  %27 = load i32, i32* %26, align 4, !dbg !784
  %28 = mul nsw i32 %25, %27, !dbg !785
  %29 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 1, !dbg !786
  %30 = load i32, i32* %29, align 4, !dbg !786
  %31 = mul nsw i32 %28, %30, !dbg !787
  store i32 %31, i32* %12, align 4, !dbg !782
  call void @llvm.dbg.declare(metadata i32* %13, metadata !788, metadata !41), !dbg !789
  %32 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 4, !dbg !790
  %33 = load i32, i32* %32, align 4, !dbg !790
  %34 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 5, !dbg !791
  %35 = load i32, i32* %34, align 4, !dbg !791
  %36 = mul nsw i32 %33, %35, !dbg !792
  store i32 %36, i32* %13, align 4, !dbg !789
  call void @llvm.dbg.declare(metadata float** %14, metadata !793, metadata !41), !dbg !794
  %37 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 9, !dbg !795
  %38 = load float*, float** %37, align 4, !dbg !795
  store float* %38, float** %14, align 4, !dbg !794
  call void @llvm.dbg.declare(metadata float** %15, metadata !796, metadata !41), !dbg !797
  %39 = bitcast %struct.layer* %10 to [11 x i32]*, !dbg !798
  %40 = load [11 x i32], [11 x i32]* %39, align 4, !dbg !798
  %41 = call i32 @get_workspace_size([11 x i32] %40), !dbg !798
  %42 = call noalias i8* @calloc(i32 1, i32 %41) #7, !dbg !799
  %43 = bitcast i8* %42 to float*, !dbg !801
  store float* %43, float** %15, align 4, !dbg !797
  call void @llvm.dbg.declare(metadata float** %16, metadata !802, metadata !41), !dbg !803
  %44 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 10, !dbg !804
  %45 = load float*, float** %44, align 4, !dbg !804
  store float* %45, float** %16, align 4, !dbg !803
  %46 = load float*, float** %5, align 4, !dbg !805
  %47 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 1, !dbg !806
  %48 = load i32, i32* %47, align 4, !dbg !806
  %49 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 3, !dbg !807
  %50 = load i32, i32* %49, align 4, !dbg !807
  %51 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 2, !dbg !808
  %52 = load i32, i32* %51, align 4, !dbg !808
  %53 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 8, !dbg !809
  %54 = load i32, i32* %53, align 4, !dbg !809
  %55 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 6, !dbg !810
  %56 = load i32, i32* %55, align 4, !dbg !810
  %57 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 7, !dbg !811
  %58 = load i32, i32* %57, align 4, !dbg !811
  %59 = load float*, float** %15, align 4, !dbg !812
  call void @im2col_fpga(float* %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56, i32 %58, float* %59), !dbg !813
  %60 = call double bitcast (double (...)* @what_time_is_it_now to double ()*)(), !dbg !814
  %61 = load double, double* %7, align 8, !dbg !815
  %62 = fsub double %60, %61, !dbg !816
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), double %62), !dbg !817
  store i32 0, i32* %8, align 4, !dbg !818
  br label %64, !dbg !820

; <label>:64:                                     ; preds = %78, %3
  %65 = load i32, i32* %8, align 4, !dbg !821
  %66 = load i32, i32* %6, align 4, !dbg !824
  %67 = icmp slt i32 %65, %66, !dbg !825
  br i1 %67, label %68, label %81, !dbg !826

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %11, align 4, !dbg !827
  %70 = load i32, i32* %12, align 4, !dbg !829
  %71 = load i32, i32* %13, align 4, !dbg !830
  %72 = load float*, float** %14, align 4, !dbg !831
  %73 = load i32, i32* %13, align 4, !dbg !832
  %74 = load float*, float** %15, align 4, !dbg !833
  %75 = load i32, i32* %12, align 4, !dbg !834
  %76 = load float*, float** %16, align 4, !dbg !835
  %77 = load i32, i32* %12, align 4, !dbg !836
  call void @gemm(i32 %69, i32 %70, i32 %71, float* %72, i32 %73, float* %74, i32 %75, float* %76, i32 %77), !dbg !837
  br label %78, !dbg !838

; <label>:78:                                     ; preds = %68
  %79 = load i32, i32* %8, align 4, !dbg !839
  %80 = add nsw i32 %79, 1, !dbg !839
  store i32 %80, i32* %8, align 4, !dbg !839
  br label %64, !dbg !841, !llvm.loop !842

; <label>:81:                                     ; preds = %64
  %82 = call double bitcast (double (...)* @what_time_is_it_now to double ()*)(), !dbg !844
  %83 = load double, double* %7, align 8, !dbg !845
  %84 = fsub double %82, %83, !dbg !846
  %85 = load i32, i32* %6, align 4, !dbg !847
  %86 = sitofp i32 %85 to double, !dbg !847
  %87 = fdiv double %84, %86, !dbg !848
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), double %87), !dbg !849
  ret void, !dbg !850
}

; Function Attrs: nounwind
define void @delete_convolution(%struct.layer*) #0 !dbg !851 !xidane.fname !852 !xidane.function_declaration_type !37 !xidane.function_declaration_filename !38 !xidane.ExternC !39 {
  %2 = alloca %struct.layer*, align 4
  store %struct.layer* %0, %struct.layer** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.layer** %2, metadata !853, metadata !41), !dbg !854
  %3 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !855
  %4 = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 9, !dbg !857
  %5 = load float*, float** %4, align 4, !dbg !857
  %6 = icmp ne float* %5, null, !dbg !855
  br i1 %6, label %7, label %12, !dbg !858

; <label>:7:                                      ; preds = %1
  %8 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !859
  %9 = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 9, !dbg !861
  %10 = load float*, float** %9, align 4, !dbg !861
  %11 = bitcast float* %10 to i8*, !dbg !859
  call void @free(i8* %11) #7, !dbg !862
  br label %12, !dbg !862

; <label>:12:                                     ; preds = %7, %1
  %13 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !863
  %14 = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 10, !dbg !865
  %15 = load float*, float** %14, align 4, !dbg !865
  %16 = icmp ne float* %15, null, !dbg !863
  br i1 %16, label %17, label %22, !dbg !866

; <label>:17:                                     ; preds = %12
  %18 = load %struct.layer*, %struct.layer** %2, align 4, !dbg !867
  %19 = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 10, !dbg !869
  %20 = load float*, float** %19, align 4, !dbg !869
  %21 = bitcast float* %20 to i8*, !dbg !867
  call void @free(i8* %21) #7, !dbg !870
  br label %22, !dbg !870

; <label>:22:                                     ; preds = %17, %12
  ret void, !dbg !871
}

; Function Attrs: nounwind
define void @test_convolution() #0 !dbg !872 !xidane.fname !875 !xidane.function_declaration_type !876 !xidane.function_declaration_filename !689 !xidane.ExternC !39 {
  %1 = alloca %struct.layer, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca float*, align 4
  call void @llvm.dbg.declare(metadata %struct.layer* %1, metadata !877, metadata !41), !dbg !878
  call void @init_convolution(%struct.layer* sret %1), !dbg !879
  call void @llvm.dbg.declare(metadata i32* %2, metadata !880, metadata !41), !dbg !881
  %5 = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 1, !dbg !882
  %6 = load i32, i32* %5, align 4, !dbg !882
  %7 = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 2, !dbg !883
  %8 = load i32, i32* %7, align 4, !dbg !883
  %9 = mul nsw i32 %6, %8, !dbg !884
  %10 = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 3, !dbg !885
  %11 = load i32, i32* %10, align 4, !dbg !885
  %12 = mul nsw i32 %9, %11, !dbg !886
  store i32 %12, i32* %2, align 4, !dbg !881
  call void @llvm.dbg.declare(metadata i8** %3, metadata !887, metadata !41), !dbg !890
  %13 = load i32, i32* %2, align 4, !dbg !891
  %14 = call noalias i8* @calloc(i32 %13, i32 1) #7, !dbg !892
  store i8* %14, i8** %3, align 4, !dbg !890
  %15 = load i8*, i8** %3, align 4, !dbg !893
  %16 = load i32, i32* %2, align 4, !dbg !894
  %17 = call i32 bitcast (i32 (...)* @set_random_input to i32 (i8*, i32)*)(i8* %15, i32 %16), !dbg !895
  call void @llvm.dbg.declare(metadata float** %4, metadata !896, metadata !41), !dbg !897
  %18 = load i32, i32* %2, align 4, !dbg !898
  %19 = call noalias i8* @calloc(i32 %18, i32 4) #7, !dbg !899
  %20 = bitcast i8* %19 to float*, !dbg !899
  store float* %20, float** %4, align 4, !dbg !897
  %21 = load i8*, i8** %3, align 4, !dbg !900
  %22 = load float*, float** %4, align 4, !dbg !901
  %23 = load i32, i32* %2, align 4, !dbg !902
  %24 = call i32 bitcast (i32 (...)* @copy_input to i32 (i8*, float*, i32)*)(i8* %21, float* %22, i32 %23), !dbg !903
  %25 = load float*, float** %4, align 4, !dbg !904
  call void @cal_convolution(%struct.layer* %1, float* %25), !dbg !905
  %26 = load float*, float** %4, align 4, !dbg !906
  %27 = bitcast float* %26 to i8*, !dbg !906
  call void @free(i8* %27) #7, !dbg !907
  %28 = load i8*, i8** %3, align 4, !dbg !908
  call void @free(i8* %28) #7, !dbg !909
  call void @delete_convolution(%struct.layer* %1), !dbg !910
  ret void, !dbg !911
}

declare !xidane.fname !912 !xidane.function_declaration_type !913 !xidane.function_declaration_filename !38 !xidane.ExternC !39 i32 @set_random_input(...) #2

declare !xidane.fname !914 !xidane.function_declaration_type !913 !xidane.function_declaration_filename !38 !xidane.ExternC !39 i32 @copy_input(...) #2

declare !xidane.fname !915 !xidane.function_declaration_type !704 !xidane.function_declaration_filename !705 !xidane.ExternC !39 void @im2col_fpga(float*, i32, i32, i32, i32, i32, i32, float*) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/convolution.c", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32, align: 32)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32, align: 32)
!6 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 216, baseType: !9)
!8 = !DIFile(filename: "/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/7.2.1/include/stddef.h", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!9 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 1, !"PIC Level", i32 2}
!15 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!16 = distinct !DISubprogram(name: "init_convolution_size", scope: !1, file: !1, line: 13, type: !17, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32, align: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "layer", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/main.h", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "layer", file: !21, line: 9, size: 352, align: 32, elements: !23)
!23 = !{!24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !22, file: !21, line: 10, baseType: !25, size: 32, align: 32)
!25 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !22, file: !21, line: 11, baseType: !25, size: 32, align: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !22, file: !21, line: 12, baseType: !25, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !22, file: !21, line: 13, baseType: !25, size: 32, align: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "out_w", scope: !22, file: !21, line: 14, baseType: !25, size: 32, align: 32, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "out_h", scope: !22, file: !21, line: 15, baseType: !25, size: 32, align: 32, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !22, file: !21, line: 16, baseType: !25, size: 32, align: 32, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !22, file: !21, line: 17, baseType: !25, size: 32, align: 32, offset: 224)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !22, file: !21, line: 18, baseType: !25, size: 32, align: 32, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "weights", scope: !22, file: !21, line: 19, baseType: !5, size: 32, align: 32, offset: 288)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "outputs", scope: !22, file: !21, line: 20, baseType: !5, size: 32, align: 32, offset: 320)
!36 = !{!"init_convolution_size"}
!37 = !{!"void.layer *.1"}
!38 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/convolution.c"}
!39 = !{!"t"}
!40 = !DILocalVariable(name: "pl", arg: 1, scope: !16, file: !1, line: 13, type: !19)
!41 = !DIExpression()
!42 = !DILocation(line: 13, column: 35, scope: !16)
!43 = !DILocation(line: 14, column: 2, scope: !16)
!44 = !DILocation(line: 15, column: 16, scope: !16)
!45 = !DILocation(line: 15, column: 20, scope: !16)
!46 = !DILocation(line: 15, column: 2, scope: !16)
!47 = !DILocation(line: 17, column: 2, scope: !16)
!48 = !DILocation(line: 18, column: 16, scope: !16)
!49 = !DILocation(line: 18, column: 20, scope: !16)
!50 = !DILocation(line: 18, column: 2, scope: !16)
!51 = !DILocation(line: 20, column: 2, scope: !16)
!52 = !DILocation(line: 21, column: 16, scope: !16)
!53 = !DILocation(line: 21, column: 20, scope: !16)
!54 = !DILocation(line: 21, column: 2, scope: !16)
!55 = !DILocation(line: 22, column: 10, scope: !16)
!56 = !DILocation(line: 22, column: 14, scope: !16)
!57 = !DILocation(line: 22, column: 2, scope: !16)
!58 = !DILocation(line: 22, column: 6, scope: !16)
!59 = !DILocation(line: 22, column: 8, scope: !16)
!60 = !DILocation(line: 24, column: 2, scope: !16)
!61 = !DILocation(line: 25, column: 16, scope: !16)
!62 = !DILocation(line: 25, column: 20, scope: !16)
!63 = !DILocation(line: 25, column: 2, scope: !16)
!64 = !DILocation(line: 27, column: 2, scope: !16)
!65 = !DILocation(line: 27, column: 6, scope: !16)
!66 = !DILocation(line: 27, column: 13, scope: !16)
!67 = !DILocation(line: 28, column: 2, scope: !16)
!68 = !DILocation(line: 28, column: 6, scope: !16)
!69 = !DILocation(line: 28, column: 10, scope: !16)
!70 = !DILocation(line: 29, column: 27, scope: !16)
!71 = !DILocation(line: 29, column: 31, scope: !16)
!72 = !DILocation(line: 29, column: 37, scope: !16)
!73 = !DILocation(line: 29, column: 41, scope: !16)
!74 = !DILocation(line: 29, column: 36, scope: !16)
!75 = !DILocation(line: 29, column: 33, scope: !16)
!76 = !DILocation(line: 29, column: 47, scope: !16)
!77 = !DILocation(line: 29, column: 51, scope: !16)
!78 = !DILocation(line: 29, column: 45, scope: !16)
!79 = !DILocation(line: 29, column: 56, scope: !16)
!80 = !DILocation(line: 29, column: 61, scope: !16)
!81 = !DILocation(line: 29, column: 65, scope: !16)
!82 = !DILocation(line: 29, column: 60, scope: !16)
!83 = !DILocation(line: 29, column: 14, scope: !16)
!84 = !DILocation(line: 29, column: 18, scope: !16)
!85 = !DILocation(line: 29, column: 24, scope: !16)
!86 = !DILocation(line: 29, column: 2, scope: !16)
!87 = !DILocation(line: 29, column: 6, scope: !16)
!88 = !DILocation(line: 29, column: 12, scope: !16)
!89 = !DILocation(line: 30, column: 2, scope: !16)
!90 = !DILocation(line: 32, column: 1, scope: !16)
!91 = !{!"printf"}
!92 = !{!"int.const char *__restrict.1"}
!93 = !{!"/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/stdio.h"}
!94 = !{!"scanf"}
!95 = !{!"puts"}
!96 = !{!"int.const char *.1"}
!97 = distinct !DISubprogram(name: "load_convolution_config", scope: !1, file: !1, line: 34, type: !17, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!98 = !{!"load_convolution_config"}
!99 = !DILocalVariable(name: "pl", arg: 1, scope: !97, file: !1, line: 34, type: !19)
!100 = !DILocation(line: 34, column: 37, scope: !97)
!101 = !DILocation(line: 35, column: 2, scope: !97)
!102 = !DILocalVariable(name: "fp", scope: !97, file: !1, line: 36, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32, align: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !106)
!105 = !DIFile(filename: "/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/bits/types/FILE.h", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 241, size: 1216, align: 64, elements: !108)
!107 = !DIFile(filename: "/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/libio.h", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!108 = !{!109, !110, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !131, !132, !133, !134, !138, !140, !142, !146, !149, !153, !154, !155, !156, !157, !158, !159}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !106, file: !107, line: 242, baseType: !25, size: 32, align: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !106, file: !107, line: 247, baseType: !111, size: 32, align: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32, align: 32)
!112 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !106, file: !107, line: 248, baseType: !111, size: 32, align: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !106, file: !107, line: 249, baseType: !111, size: 32, align: 32, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !106, file: !107, line: 250, baseType: !111, size: 32, align: 32, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !106, file: !107, line: 251, baseType: !111, size: 32, align: 32, offset: 160)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !106, file: !107, line: 252, baseType: !111, size: 32, align: 32, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !106, file: !107, line: 253, baseType: !111, size: 32, align: 32, offset: 224)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !106, file: !107, line: 254, baseType: !111, size: 32, align: 32, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !106, file: !107, line: 256, baseType: !111, size: 32, align: 32, offset: 288)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !106, file: !107, line: 257, baseType: !111, size: 32, align: 32, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !106, file: !107, line: 258, baseType: !111, size: 32, align: 32, offset: 352)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !106, file: !107, line: 260, baseType: !124, size: 32, align: 32, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32, align: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !107, line: 156, size: 96, align: 32, elements: !126)
!126 = !{!127, !128, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !125, file: !107, line: 157, baseType: !124, size: 32, align: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !125, file: !107, line: 158, baseType: !129, size: 32, align: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32, align: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !125, file: !107, line: 162, baseType: !25, size: 32, align: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !106, file: !107, line: 262, baseType: !129, size: 32, align: 32, offset: 416)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !106, file: !107, line: 264, baseType: !25, size: 32, align: 32, offset: 448)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !106, file: !107, line: 268, baseType: !25, size: 32, align: 32, offset: 480)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !106, file: !107, line: 270, baseType: !135, size: 32, align: 32, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !136, line: 140, baseType: !137)
!136 = !DIFile(filename: "/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/bits/types.h", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!137 = !DIBasicType(name: "long int", size: 32, align: 32, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !106, file: !107, line: 274, baseType: !139, size: 16, align: 16, offset: 544)
!139 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !106, file: !107, line: 275, baseType: !141, size: 8, align: 8, offset: 560)
!141 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !106, file: !107, line: 276, baseType: !143, size: 8, align: 8, offset: 568)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 8, align: 8, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 1)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !106, file: !107, line: 280, baseType: !147, size: 32, align: 32, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32, align: 32)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !107, line: 150, baseType: null)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !106, file: !107, line: 289, baseType: !150, size: 64, align: 64, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !136, line: 141, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !136, line: 55, baseType: !152)
!152 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !106, file: !107, line: 297, baseType: !4, size: 32, align: 32, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !106, file: !107, line: 298, baseType: !4, size: 32, align: 32, offset: 736)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !106, file: !107, line: 299, baseType: !4, size: 32, align: 32, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !106, file: !107, line: 300, baseType: !4, size: 32, align: 32, offset: 800)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !106, file: !107, line: 302, baseType: !7, size: 32, align: 32, offset: 832)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !106, file: !107, line: 303, baseType: !25, size: 32, align: 32, offset: 864)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !106, file: !107, line: 305, baseType: !160, size: 320, align: 8, offset: 896)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 320, align: 8, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 40)
!163 = !DILocation(line: 36, column: 8, scope: !97)
!164 = !DILocation(line: 36, column: 13, scope: !97)
!165 = !DILocation(line: 37, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !97, file: !1, line: 37, column: 6)
!167 = !DILocation(line: 37, column: 9, scope: !166)
!168 = !DILocation(line: 37, column: 6, scope: !97)
!169 = !DILocation(line: 38, column: 3, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 37, column: 18)
!171 = !DILocation(line: 39, column: 3, scope: !170)
!172 = !DILocation(line: 41, column: 9, scope: !97)
!173 = !DILocation(line: 41, column: 21, scope: !97)
!174 = !DILocation(line: 41, column: 25, scope: !97)
!175 = !DILocation(line: 41, column: 2, scope: !97)
!176 = !DILocation(line: 42, column: 9, scope: !97)
!177 = !DILocation(line: 42, column: 21, scope: !97)
!178 = !DILocation(line: 42, column: 25, scope: !97)
!179 = !DILocation(line: 42, column: 2, scope: !97)
!180 = !DILocation(line: 43, column: 9, scope: !97)
!181 = !DILocation(line: 43, column: 21, scope: !97)
!182 = !DILocation(line: 43, column: 25, scope: !97)
!183 = !DILocation(line: 43, column: 2, scope: !97)
!184 = !DILocation(line: 44, column: 10, scope: !97)
!185 = !DILocation(line: 44, column: 14, scope: !97)
!186 = !DILocation(line: 44, column: 2, scope: !97)
!187 = !DILocation(line: 44, column: 6, scope: !97)
!188 = !DILocation(line: 44, column: 8, scope: !97)
!189 = !DILocation(line: 45, column: 9, scope: !97)
!190 = !DILocation(line: 45, column: 21, scope: !97)
!191 = !DILocation(line: 45, column: 25, scope: !97)
!192 = !DILocation(line: 45, column: 2, scope: !97)
!193 = !DILocation(line: 46, column: 2, scope: !97)
!194 = !DILocation(line: 46, column: 6, scope: !97)
!195 = !DILocation(line: 46, column: 13, scope: !97)
!196 = !DILocation(line: 47, column: 2, scope: !97)
!197 = !DILocation(line: 47, column: 6, scope: !97)
!198 = !DILocation(line: 47, column: 10, scope: !97)
!199 = !DILocation(line: 48, column: 27, scope: !97)
!200 = !DILocation(line: 48, column: 31, scope: !97)
!201 = !DILocation(line: 48, column: 37, scope: !97)
!202 = !DILocation(line: 48, column: 41, scope: !97)
!203 = !DILocation(line: 48, column: 36, scope: !97)
!204 = !DILocation(line: 48, column: 33, scope: !97)
!205 = !DILocation(line: 48, column: 47, scope: !97)
!206 = !DILocation(line: 48, column: 51, scope: !97)
!207 = !DILocation(line: 48, column: 45, scope: !97)
!208 = !DILocation(line: 48, column: 56, scope: !97)
!209 = !DILocation(line: 48, column: 61, scope: !97)
!210 = !DILocation(line: 48, column: 65, scope: !97)
!211 = !DILocation(line: 48, column: 60, scope: !97)
!212 = !DILocation(line: 48, column: 14, scope: !97)
!213 = !DILocation(line: 48, column: 18, scope: !97)
!214 = !DILocation(line: 48, column: 24, scope: !97)
!215 = !DILocation(line: 48, column: 2, scope: !97)
!216 = !DILocation(line: 48, column: 6, scope: !97)
!217 = !DILocation(line: 48, column: 12, scope: !97)
!218 = !DILocation(line: 49, column: 9, scope: !97)
!219 = !DILocation(line: 49, column: 2, scope: !97)
!220 = !DILocation(line: 50, column: 1, scope: !97)
!221 = !{!"fopen"}
!222 = !{!"FILE .const char *__restrict.1.const char *__restrict.1"}
!223 = !{!"exit"}
!224 = !{!"void.int.0"}
!225 = !{!"/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/stdlib.h"}
!226 = !{!"fscanf"}
!227 = !{!"int.FILE *__restrict.1.const char *__restrict.1"}
!228 = !{!"fclose"}
!229 = !{!"int.FILE *.1"}
!230 = distinct !DISubprogram(name: "print_convolution_size", scope: !1, file: !1, line: 52, type: !17, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!231 = !{!"print_convolution_size"}
!232 = !DILocalVariable(name: "pl", arg: 1, scope: !230, file: !1, line: 52, type: !19)
!233 = !DILocation(line: 52, column: 36, scope: !230)
!234 = !DILocation(line: 53, column: 33, scope: !230)
!235 = !DILocation(line: 53, column: 37, scope: !230)
!236 = !DILocation(line: 53, column: 2, scope: !230)
!237 = !DILocation(line: 54, column: 32, scope: !230)
!238 = !DILocation(line: 54, column: 36, scope: !230)
!239 = !DILocation(line: 54, column: 2, scope: !230)
!240 = !DILocation(line: 55, column: 30, scope: !230)
!241 = !DILocation(line: 55, column: 34, scope: !230)
!242 = !DILocation(line: 55, column: 2, scope: !230)
!243 = !DILocation(line: 56, column: 31, scope: !230)
!244 = !DILocation(line: 56, column: 35, scope: !230)
!245 = !DILocation(line: 56, column: 2, scope: !230)
!246 = !DILocation(line: 57, column: 32, scope: !230)
!247 = !DILocation(line: 57, column: 36, scope: !230)
!248 = !DILocation(line: 57, column: 2, scope: !230)
!249 = !DILocation(line: 58, column: 29, scope: !230)
!250 = !DILocation(line: 58, column: 33, scope: !230)
!251 = !DILocation(line: 58, column: 2, scope: !230)
!252 = !DILocation(line: 59, column: 38, scope: !230)
!253 = !DILocation(line: 59, column: 42, scope: !230)
!254 = !DILocation(line: 59, column: 2, scope: !230)
!255 = !DILocation(line: 60, column: 39, scope: !230)
!256 = !DILocation(line: 60, column: 43, scope: !230)
!257 = !DILocation(line: 60, column: 2, scope: !230)
!258 = !DILocation(line: 61, column: 31, scope: !230)
!259 = !DILocation(line: 61, column: 35, scope: !230)
!260 = !DILocation(line: 61, column: 2, scope: !230)
!261 = !DILocation(line: 62, column: 32, scope: !230)
!262 = !DILocation(line: 62, column: 36, scope: !230)
!263 = !DILocation(line: 62, column: 2, scope: !230)
!264 = !DILocation(line: 64, column: 2, scope: !230)
!265 = !DILocation(line: 65, column: 1, scope: !230)
!266 = distinct !DISubprogram(name: "init_convolution_weight", scope: !1, file: !1, line: 67, type: !17, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!267 = !{!"init_convolution_weight"}
!268 = !DILocalVariable(name: "pl", arg: 1, scope: !266, file: !1, line: 67, type: !19)
!269 = !DILocation(line: 67, column: 37, scope: !266)
!270 = !DILocalVariable(name: "i", scope: !266, file: !1, line: 68, type: !25)
!271 = !DILocation(line: 68, column: 6, scope: !266)
!272 = !DILocation(line: 69, column: 2, scope: !266)
!273 = !DILocalVariable(name: "nweight", scope: !266, file: !1, line: 70, type: !25)
!274 = !DILocation(line: 70, column: 6, scope: !266)
!275 = !DILocation(line: 70, column: 16, scope: !266)
!276 = !DILocation(line: 70, column: 20, scope: !266)
!277 = !DILocation(line: 70, column: 24, scope: !266)
!278 = !DILocation(line: 70, column: 28, scope: !266)
!279 = !DILocation(line: 70, column: 22, scope: !266)
!280 = !DILocation(line: 70, column: 32, scope: !266)
!281 = !DILocation(line: 70, column: 36, scope: !266)
!282 = !DILocation(line: 70, column: 30, scope: !266)
!283 = !DILocation(line: 70, column: 43, scope: !266)
!284 = !DILocation(line: 70, column: 47, scope: !266)
!285 = !DILocation(line: 70, column: 41, scope: !266)
!286 = !DILocation(line: 71, column: 32, scope: !266)
!287 = !DILocation(line: 71, column: 25, scope: !266)
!288 = !DILocation(line: 71, column: 16, scope: !266)
!289 = !DILocation(line: 71, column: 2, scope: !266)
!290 = !DILocation(line: 71, column: 6, scope: !266)
!291 = !DILocation(line: 71, column: 14, scope: !266)
!292 = !DILocation(line: 72, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !266, file: !1, line: 72, column: 2)
!294 = !DILocation(line: 72, column: 7, scope: !293)
!295 = !DILocation(line: 72, column: 12, scope: !296)
!296 = !DILexicalBlockFile(scope: !297, file: !1, discriminator: 1)
!297 = distinct !DILexicalBlock(scope: !293, file: !1, line: 72, column: 2)
!298 = !DILocation(line: 72, column: 14, scope: !296)
!299 = !DILocation(line: 72, column: 13, scope: !296)
!300 = !DILocation(line: 72, column: 2, scope: !296)
!301 = !DILocation(line: 73, column: 20, scope: !297)
!302 = !DILocation(line: 73, column: 15, scope: !297)
!303 = !DILocation(line: 73, column: 3, scope: !297)
!304 = !DILocation(line: 73, column: 7, scope: !297)
!305 = !DILocation(line: 73, column: 18, scope: !297)
!306 = !DILocation(line: 72, column: 24, scope: !307)
!307 = !DILexicalBlockFile(scope: !297, file: !1, discriminator: 2)
!308 = !DILocation(line: 72, column: 2, scope: !307)
!309 = distinct !{!309, !310}
!310 = !DILocation(line: 72, column: 2, scope: !266)
!311 = !DILocation(line: 74, column: 1, scope: !266)
!312 = !{!"calloc"}
!313 = !{!"void .size_t.0.size_t.0"}
!314 = !{!"gaussianRandom"}
!315 = !{!"float."}
!316 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/utils.h"}
!317 = distinct !DISubprogram(name: "init_convolution_output", scope: !1, file: !1, line: 76, type: !17, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!318 = !{!"init_convolution_output"}
!319 = !DILocalVariable(name: "pl", arg: 1, scope: !317, file: !1, line: 76, type: !19)
!320 = !DILocation(line: 76, column: 37, scope: !317)
!321 = !DILocalVariable(name: "noutput", scope: !317, file: !1, line: 77, type: !25)
!322 = !DILocation(line: 77, column: 6, scope: !317)
!323 = !DILocation(line: 77, column: 16, scope: !317)
!324 = !DILocation(line: 77, column: 20, scope: !317)
!325 = !DILocation(line: 77, column: 24, scope: !317)
!326 = !DILocation(line: 77, column: 28, scope: !317)
!327 = !DILocation(line: 77, column: 22, scope: !317)
!328 = !DILocation(line: 77, column: 36, scope: !317)
!329 = !DILocation(line: 77, column: 40, scope: !317)
!330 = !DILocation(line: 77, column: 34, scope: !317)
!331 = !DILocation(line: 78, column: 32, scope: !317)
!332 = !DILocation(line: 78, column: 25, scope: !317)
!333 = !DILocation(line: 78, column: 16, scope: !317)
!334 = !DILocation(line: 78, column: 2, scope: !317)
!335 = !DILocation(line: 78, column: 6, scope: !317)
!336 = !DILocation(line: 78, column: 14, scope: !317)
!337 = !DILocation(line: 79, column: 1, scope: !317)
!338 = distinct !DISubprogram(name: "init_convolution", scope: !1, file: !1, line: 81, type: !339, isLocal: false, isDefinition: true, scopeLine: 81, isOptimized: false, unit: !0, variables: !2)
!339 = !DISubroutineType(types: !340)
!340 = !{!20}
!341 = !{!"init_convolution"}
!342 = !{!"layer."}
!343 = !DILocalVariable(name: "l", scope: !338, file: !1, line: 82, type: !20)
!344 = !DILocation(line: 82, column: 8, scope: !338)
!345 = !DILocation(line: 83, column: 2, scope: !338)
!346 = !DILocation(line: 84, column: 2, scope: !338)
!347 = !DILocation(line: 85, column: 2, scope: !338)
!348 = !DILocation(line: 86, column: 2, scope: !338)
!349 = !DILocation(line: 87, column: 9, scope: !338)
!350 = !DILocation(line: 87, column: 2, scope: !338)
!351 = distinct !DISubprogram(name: "cpu_image_convolution", scope: !1, file: !1, line: 90, type: !352, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !19, !5}
!354 = !{!"cpu_image_convolution"}
!355 = !{!"void.layer *.1.float *.1"}
!356 = !DILocalVariable(name: "pl", arg: 1, scope: !351, file: !1, line: 90, type: !19)
!357 = !DILocation(line: 90, column: 35, scope: !351)
!358 = !DILocalVariable(name: "inputs", arg: 2, scope: !351, file: !1, line: 90, type: !5)
!359 = !DILocation(line: 90, column: 46, scope: !351)
!360 = !DILocalVariable(name: "k", scope: !351, file: !1, line: 91, type: !25)
!361 = !DILocation(line: 91, column: 6, scope: !351)
!362 = !DILocalVariable(name: "c", scope: !351, file: !1, line: 91, type: !25)
!363 = !DILocation(line: 91, column: 9, scope: !351)
!364 = !DILocalVariable(name: "w", scope: !351, file: !1, line: 91, type: !25)
!365 = !DILocation(line: 91, column: 12, scope: !351)
!366 = !DILocalVariable(name: "h", scope: !351, file: !1, line: 91, type: !25)
!367 = !DILocation(line: 91, column: 15, scope: !351)
!368 = !DILocalVariable(name: "mh", scope: !351, file: !1, line: 91, type: !25)
!369 = !DILocation(line: 91, column: 18, scope: !351)
!370 = !DILocalVariable(name: "mw", scope: !351, file: !1, line: 91, type: !25)
!371 = !DILocation(line: 91, column: 22, scope: !351)
!372 = !DILocalVariable(name: "outpus_size", scope: !351, file: !1, line: 92, type: !25)
!373 = !DILocation(line: 92, column: 6, scope: !351)
!374 = !DILocation(line: 92, column: 20, scope: !351)
!375 = !DILocation(line: 92, column: 24, scope: !351)
!376 = !DILocation(line: 92, column: 32, scope: !351)
!377 = !DILocation(line: 92, column: 36, scope: !351)
!378 = !DILocation(line: 92, column: 30, scope: !351)
!379 = !DILocation(line: 93, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !351, file: !1, line: 93, column: 2)
!381 = !DILocation(line: 93, column: 7, scope: !380)
!382 = !DILocation(line: 93, column: 12, scope: !383)
!383 = !DILexicalBlockFile(scope: !384, file: !1, discriminator: 1)
!384 = distinct !DILexicalBlock(scope: !380, file: !1, line: 93, column: 2)
!385 = !DILocation(line: 93, column: 14, scope: !383)
!386 = !DILocation(line: 93, column: 18, scope: !383)
!387 = !DILocation(line: 93, column: 13, scope: !383)
!388 = !DILocation(line: 93, column: 2, scope: !383)
!389 = !DILocation(line: 94, column: 9, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 94, column: 3)
!391 = distinct !DILexicalBlock(scope: !384, file: !1, line: 93, column: 26)
!392 = !DILocation(line: 94, column: 8, scope: !390)
!393 = !DILocation(line: 94, column: 13, scope: !394)
!394 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 1)
!395 = distinct !DILexicalBlock(scope: !390, file: !1, line: 94, column: 3)
!396 = !DILocation(line: 94, column: 15, scope: !394)
!397 = !DILocation(line: 94, column: 19, scope: !394)
!398 = !DILocation(line: 94, column: 14, scope: !394)
!399 = !DILocation(line: 94, column: 3, scope: !394)
!400 = !DILocation(line: 95, column: 10, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 95, column: 4)
!402 = distinct !DILexicalBlock(scope: !395, file: !1, line: 94, column: 31)
!403 = !DILocation(line: 95, column: 9, scope: !401)
!404 = !DILocation(line: 95, column: 14, scope: !405)
!405 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 1)
!406 = distinct !DILexicalBlock(scope: !401, file: !1, line: 95, column: 4)
!407 = !DILocation(line: 95, column: 16, scope: !405)
!408 = !DILocation(line: 95, column: 20, scope: !405)
!409 = !DILocation(line: 95, column: 15, scope: !405)
!410 = !DILocation(line: 95, column: 4, scope: !405)
!411 = !DILocalVariable(name: "ret", scope: !412, file: !1, line: 96, type: !6)
!412 = distinct !DILexicalBlock(scope: !406, file: !1, line: 95, column: 32)
!413 = !DILocation(line: 96, column: 11, scope: !412)
!414 = !DILocation(line: 97, column: 11, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !1, line: 97, column: 5)
!416 = !DILocation(line: 97, column: 10, scope: !415)
!417 = !DILocation(line: 97, column: 15, scope: !418)
!418 = !DILexicalBlockFile(scope: !419, file: !1, discriminator: 1)
!419 = distinct !DILexicalBlock(scope: !415, file: !1, line: 97, column: 5)
!420 = !DILocation(line: 97, column: 17, scope: !418)
!421 = !DILocation(line: 97, column: 21, scope: !418)
!422 = !DILocation(line: 97, column: 16, scope: !418)
!423 = !DILocation(line: 97, column: 5, scope: !418)
!424 = !DILocation(line: 98, column: 13, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 98, column: 6)
!426 = distinct !DILexicalBlock(scope: !419, file: !1, line: 97, column: 29)
!427 = !DILocation(line: 98, column: 11, scope: !425)
!428 = !DILocation(line: 98, column: 17, scope: !429)
!429 = !DILexicalBlockFile(scope: !430, file: !1, discriminator: 1)
!430 = distinct !DILexicalBlock(scope: !425, file: !1, line: 98, column: 6)
!431 = !DILocation(line: 98, column: 20, scope: !429)
!432 = !DILocation(line: 98, column: 24, scope: !429)
!433 = !DILocation(line: 98, column: 19, scope: !429)
!434 = !DILocation(line: 98, column: 6, scope: !429)
!435 = !DILocalVariable(name: "curr_h", scope: !436, file: !1, line: 99, type: !25)
!436 = distinct !DILexicalBlock(scope: !430, file: !1, line: 98, column: 36)
!437 = !DILocation(line: 99, column: 11, scope: !436)
!438 = !DILocation(line: 99, column: 20, scope: !436)
!439 = !DILocation(line: 99, column: 24, scope: !436)
!440 = !DILocation(line: 99, column: 28, scope: !436)
!441 = !DILocation(line: 99, column: 22, scope: !436)
!442 = !DILocation(line: 99, column: 37, scope: !436)
!443 = !DILocation(line: 99, column: 35, scope: !436)
!444 = !DILocation(line: 99, column: 42, scope: !436)
!445 = !DILocation(line: 99, column: 46, scope: !436)
!446 = !DILocation(line: 99, column: 40, scope: !436)
!447 = !DILocation(line: 100, column: 11, scope: !448)
!448 = distinct !DILexicalBlock(scope: !436, file: !1, line: 100, column: 11)
!449 = !DILocation(line: 100, column: 18, scope: !448)
!450 = !DILocation(line: 100, column: 22, scope: !448)
!451 = !DILocation(line: 100, column: 25, scope: !452)
!452 = !DILexicalBlockFile(scope: !448, file: !1, discriminator: 1)
!453 = !DILocation(line: 100, column: 35, scope: !452)
!454 = !DILocation(line: 100, column: 39, scope: !452)
!455 = !DILocation(line: 100, column: 32, scope: !452)
!456 = !DILocation(line: 100, column: 11, scope: !452)
!457 = !DILocation(line: 100, column: 42, scope: !458)
!458 = !DILexicalBlockFile(scope: !448, file: !1, discriminator: 2)
!459 = !DILocation(line: 101, column: 14, scope: !460)
!460 = distinct !DILexicalBlock(scope: !436, file: !1, line: 101, column: 7)
!461 = !DILocation(line: 101, column: 12, scope: !460)
!462 = !DILocation(line: 101, column: 18, scope: !463)
!463 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 1)
!464 = distinct !DILexicalBlock(scope: !460, file: !1, line: 101, column: 7)
!465 = !DILocation(line: 101, column: 21, scope: !463)
!466 = !DILocation(line: 101, column: 25, scope: !463)
!467 = !DILocation(line: 101, column: 20, scope: !463)
!468 = !DILocation(line: 101, column: 7, scope: !463)
!469 = !DILocalVariable(name: "curr_w", scope: !470, file: !1, line: 102, type: !25)
!470 = distinct !DILexicalBlock(scope: !464, file: !1, line: 101, column: 37)
!471 = !DILocation(line: 102, column: 12, scope: !470)
!472 = !DILocation(line: 102, column: 21, scope: !470)
!473 = !DILocation(line: 102, column: 25, scope: !470)
!474 = !DILocation(line: 102, column: 29, scope: !470)
!475 = !DILocation(line: 102, column: 23, scope: !470)
!476 = !DILocation(line: 102, column: 38, scope: !470)
!477 = !DILocation(line: 102, column: 36, scope: !470)
!478 = !DILocation(line: 102, column: 43, scope: !470)
!479 = !DILocation(line: 102, column: 47, scope: !470)
!480 = !DILocation(line: 102, column: 41, scope: !470)
!481 = !DILocation(line: 103, column: 12, scope: !482)
!482 = distinct !DILexicalBlock(scope: !470, file: !1, line: 103, column: 12)
!483 = !DILocation(line: 103, column: 19, scope: !482)
!484 = !DILocation(line: 103, column: 23, scope: !482)
!485 = !DILocation(line: 103, column: 26, scope: !486)
!486 = !DILexicalBlockFile(scope: !482, file: !1, discriminator: 1)
!487 = !DILocation(line: 103, column: 36, scope: !486)
!488 = !DILocation(line: 103, column: 40, scope: !486)
!489 = !DILocation(line: 103, column: 33, scope: !486)
!490 = !DILocation(line: 103, column: 12, scope: !486)
!491 = !DILocation(line: 103, column: 43, scope: !492)
!492 = !DILexicalBlockFile(scope: !482, file: !1, discriminator: 2)
!493 = !DILocalVariable(name: "inputIdx", scope: !470, file: !1, line: 104, type: !25)
!494 = !DILocation(line: 104, column: 12, scope: !470)
!495 = !DILocation(line: 104, column: 24, scope: !470)
!496 = !DILocation(line: 104, column: 26, scope: !470)
!497 = !DILocation(line: 104, column: 30, scope: !470)
!498 = !DILocation(line: 104, column: 25, scope: !470)
!499 = !DILocation(line: 104, column: 32, scope: !470)
!500 = !DILocation(line: 104, column: 31, scope: !470)
!501 = !DILocation(line: 104, column: 40, scope: !470)
!502 = !DILocation(line: 104, column: 44, scope: !470)
!503 = !DILocation(line: 104, column: 39, scope: !470)
!504 = !DILocation(line: 104, column: 46, scope: !470)
!505 = !DILocation(line: 104, column: 45, scope: !470)
!506 = !DILocalVariable(name: "weightIdx", scope: !470, file: !1, line: 105, type: !25)
!507 = !DILocation(line: 105, column: 12, scope: !470)
!508 = !DILocation(line: 105, column: 26, scope: !470)
!509 = !DILocation(line: 105, column: 28, scope: !470)
!510 = !DILocation(line: 105, column: 32, scope: !470)
!511 = !DILocation(line: 105, column: 27, scope: !470)
!512 = !DILocation(line: 105, column: 34, scope: !470)
!513 = !DILocation(line: 105, column: 33, scope: !470)
!514 = !DILocation(line: 105, column: 37, scope: !470)
!515 = !DILocation(line: 105, column: 41, scope: !470)
!516 = !DILocation(line: 105, column: 36, scope: !470)
!517 = !DILocation(line: 105, column: 46, scope: !470)
!518 = !DILocation(line: 105, column: 45, scope: !470)
!519 = !DILocation(line: 105, column: 50, scope: !470)
!520 = !DILocation(line: 105, column: 54, scope: !470)
!521 = !DILocation(line: 105, column: 49, scope: !470)
!522 = !DILocation(line: 105, column: 59, scope: !470)
!523 = !DILocation(line: 105, column: 58, scope: !470)
!524 = !DILocation(line: 106, column: 22, scope: !470)
!525 = !DILocation(line: 106, column: 15, scope: !470)
!526 = !DILocation(line: 106, column: 46, scope: !470)
!527 = !DILocation(line: 106, column: 34, scope: !470)
!528 = !DILocation(line: 106, column: 38, scope: !470)
!529 = !DILocation(line: 106, column: 32, scope: !470)
!530 = !DILocation(line: 106, column: 12, scope: !470)
!531 = !DILocation(line: 107, column: 7, scope: !470)
!532 = !DILocation(line: 101, column: 33, scope: !533)
!533 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 2)
!534 = !DILocation(line: 101, column: 7, scope: !533)
!535 = distinct !{!535, !536}
!536 = !DILocation(line: 101, column: 7, scope: !436)
!537 = !DILocation(line: 108, column: 6, scope: !436)
!538 = !DILocation(line: 98, column: 32, scope: !539)
!539 = !DILexicalBlockFile(scope: !430, file: !1, discriminator: 2)
!540 = !DILocation(line: 98, column: 6, scope: !539)
!541 = distinct !{!541, !542}
!542 = !DILocation(line: 98, column: 6, scope: !426)
!543 = !DILocation(line: 109, column: 5, scope: !426)
!544 = !DILocation(line: 97, column: 25, scope: !545)
!545 = !DILexicalBlockFile(scope: !419, file: !1, discriminator: 2)
!546 = !DILocation(line: 97, column: 5, scope: !545)
!547 = distinct !{!547, !548}
!548 = !DILocation(line: 97, column: 5, scope: !412)
!549 = !DILocation(line: 110, column: 52, scope: !412)
!550 = !DILocation(line: 110, column: 17, scope: !412)
!551 = !DILocation(line: 110, column: 19, scope: !412)
!552 = !DILocation(line: 110, column: 18, scope: !412)
!553 = !DILocation(line: 110, column: 33, scope: !412)
!554 = !DILocation(line: 110, column: 35, scope: !412)
!555 = !DILocation(line: 110, column: 39, scope: !412)
!556 = !DILocation(line: 110, column: 34, scope: !412)
!557 = !DILocation(line: 110, column: 31, scope: !412)
!558 = !DILocation(line: 110, column: 47, scope: !412)
!559 = !DILocation(line: 110, column: 45, scope: !412)
!560 = !DILocation(line: 110, column: 5, scope: !412)
!561 = !DILocation(line: 110, column: 9, scope: !412)
!562 = !DILocation(line: 110, column: 50, scope: !412)
!563 = !DILocation(line: 111, column: 4, scope: !412)
!564 = !DILocation(line: 95, column: 28, scope: !565)
!565 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 2)
!566 = !DILocation(line: 95, column: 4, scope: !565)
!567 = distinct !{!567, !568}
!568 = !DILocation(line: 95, column: 4, scope: !402)
!569 = !DILocation(line: 112, column: 3, scope: !402)
!570 = !DILocation(line: 94, column: 27, scope: !571)
!571 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 2)
!572 = !DILocation(line: 94, column: 3, scope: !571)
!573 = distinct !{!573, !574}
!574 = !DILocation(line: 94, column: 3, scope: !391)
!575 = !DILocation(line: 113, column: 2, scope: !391)
!576 = !DILocation(line: 93, column: 22, scope: !577)
!577 = !DILexicalBlockFile(scope: !384, file: !1, discriminator: 2)
!578 = !DILocation(line: 93, column: 2, scope: !577)
!579 = distinct !{!579, !580}
!580 = !DILocation(line: 93, column: 2, scope: !351)
!581 = !DILocation(line: 114, column: 1, scope: !351)
!582 = distinct !DISubprogram(name: "sw_convolutional_layer", scope: !1, file: !1, line: 116, type: !583, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !19, !5, !25}
!585 = !{!"sw_convolutional_layer"}
!586 = !{!"void.layer *.1.float *.1.int.0"}
!587 = !DILocalVariable(name: "pl", arg: 1, scope: !582, file: !1, line: 116, type: !19)
!588 = !DILocation(line: 116, column: 36, scope: !582)
!589 = !DILocalVariable(name: "inputs", arg: 2, scope: !582, file: !1, line: 116, type: !5)
!590 = !DILocation(line: 116, column: 47, scope: !582)
!591 = !DILocalVariable(name: "num_repeat", arg: 3, scope: !582, file: !1, line: 116, type: !25)
!592 = !DILocation(line: 116, column: 59, scope: !582)
!593 = !DILocation(line: 117, column: 2, scope: !582)
!594 = !DILocalVariable(name: "start_cpu_time", scope: !582, file: !1, line: 119, type: !595)
!595 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!596 = !DILocation(line: 119, column: 9, scope: !582)
!597 = !DILocation(line: 119, column: 26, scope: !582)
!598 = !DILocalVariable(name: "i", scope: !582, file: !1, line: 120, type: !25)
!599 = !DILocation(line: 120, column: 6, scope: !582)
!600 = !DILocalVariable(name: "j", scope: !582, file: !1, line: 120, type: !25)
!601 = !DILocation(line: 120, column: 9, scope: !582)
!602 = !DILocalVariable(name: "l", scope: !582, file: !1, line: 121, type: !20)
!603 = !DILocation(line: 121, column: 8, scope: !582)
!604 = !DILocation(line: 121, column: 13, scope: !582)
!605 = !DILocation(line: 121, column: 12, scope: !582)
!606 = !DILocalVariable(name: "m", scope: !582, file: !1, line: 123, type: !25)
!607 = !DILocation(line: 123, column: 6, scope: !582)
!608 = !DILocation(line: 123, column: 12, scope: !582)
!609 = !DILocalVariable(name: "n", scope: !582, file: !1, line: 124, type: !25)
!610 = !DILocation(line: 124, column: 6, scope: !582)
!611 = !DILocation(line: 124, column: 12, scope: !582)
!612 = !DILocation(line: 124, column: 19, scope: !582)
!613 = !DILocation(line: 124, column: 16, scope: !582)
!614 = !DILocation(line: 124, column: 26, scope: !582)
!615 = !DILocation(line: 124, column: 23, scope: !582)
!616 = !DILocalVariable(name: "k", scope: !582, file: !1, line: 125, type: !25)
!617 = !DILocation(line: 125, column: 6, scope: !582)
!618 = !DILocation(line: 125, column: 12, scope: !582)
!619 = !DILocation(line: 125, column: 20, scope: !582)
!620 = !DILocation(line: 125, column: 17, scope: !582)
!621 = !DILocalVariable(name: "a", scope: !582, file: !1, line: 126, type: !5)
!622 = !DILocation(line: 126, column: 12, scope: !582)
!623 = !DILocation(line: 126, column: 18, scope: !582)
!624 = !DILocalVariable(name: "b", scope: !582, file: !1, line: 127, type: !5)
!625 = !DILocation(line: 127, column: 12, scope: !582)
!626 = !DILocation(line: 127, column: 35, scope: !582)
!627 = !DILocation(line: 127, column: 25, scope: !628)
!628 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 1)
!629 = !DILocation(line: 127, column: 16, scope: !582)
!630 = !DILocalVariable(name: "c", scope: !582, file: !1, line: 128, type: !5)
!631 = !DILocation(line: 128, column: 12, scope: !582)
!632 = !DILocation(line: 128, column: 18, scope: !582)
!633 = !DILocation(line: 130, column: 13, scope: !582)
!634 = !DILocation(line: 130, column: 23, scope: !582)
!635 = !DILocation(line: 130, column: 28, scope: !582)
!636 = !DILocation(line: 130, column: 33, scope: !582)
!637 = !DILocation(line: 130, column: 38, scope: !582)
!638 = !DILocation(line: 130, column: 46, scope: !582)
!639 = !DILocation(line: 130, column: 56, scope: !582)
!640 = !DILocation(line: 130, column: 61, scope: !582)
!641 = !DILocation(line: 130, column: 2, scope: !582)
!642 = !DILocation(line: 131, column: 43, scope: !582)
!643 = !DILocation(line: 131, column: 65, scope: !582)
!644 = !DILocation(line: 131, column: 64, scope: !582)
!645 = !DILocation(line: 131, column: 2, scope: !628)
!646 = !DILocation(line: 133, column: 8, scope: !647)
!647 = distinct !DILexicalBlock(scope: !582, file: !1, line: 133, column: 2)
!648 = !DILocation(line: 133, column: 7, scope: !647)
!649 = !DILocation(line: 133, column: 12, scope: !650)
!650 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 1)
!651 = distinct !DILexicalBlock(scope: !647, file: !1, line: 133, column: 2)
!652 = !DILocation(line: 133, column: 14, scope: !650)
!653 = !DILocation(line: 133, column: 13, scope: !650)
!654 = !DILocation(line: 133, column: 2, scope: !650)
!655 = !DILocation(line: 134, column: 8, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !1, line: 133, column: 31)
!657 = !DILocation(line: 134, column: 10, scope: !656)
!658 = !DILocation(line: 134, column: 12, scope: !656)
!659 = !DILocation(line: 134, column: 14, scope: !656)
!660 = !DILocation(line: 134, column: 16, scope: !656)
!661 = !DILocation(line: 134, column: 18, scope: !656)
!662 = !DILocation(line: 134, column: 20, scope: !656)
!663 = !DILocation(line: 134, column: 22, scope: !656)
!664 = !DILocation(line: 134, column: 24, scope: !656)
!665 = !DILocation(line: 134, column: 3, scope: !656)
!666 = !DILocation(line: 135, column: 2, scope: !656)
!667 = !DILocation(line: 133, column: 27, scope: !668)
!668 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 2)
!669 = !DILocation(line: 133, column: 2, scope: !668)
!670 = distinct !{!670, !671}
!671 = !DILocation(line: 133, column: 2, scope: !582)
!672 = !DILocation(line: 136, column: 53, scope: !582)
!673 = !DILocation(line: 136, column: 75, scope: !582)
!674 = !DILocation(line: 136, column: 74, scope: !582)
!675 = !DILocation(line: 136, column: 91, scope: !582)
!676 = !DILocation(line: 136, column: 90, scope: !582)
!677 = !DILocation(line: 136, column: 2, scope: !628)
!678 = !DILocation(line: 137, column: 7, scope: !582)
!679 = !DILocation(line: 137, column: 2, scope: !582)
!680 = !DILocation(line: 138, column: 1, scope: !582)
!681 = !{!"what_time_is_it_now"}
!682 = !{!"double."}
!683 = distinct !DISubprogram(name: "get_workspace_size", scope: !684, file: !684, line: 8, type: !685, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!684 = !DIFile(filename: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/convolution.h", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!685 = !DISubroutineType(types: !686)
!686 = !{!7, !20}
!687 = !{!"get_workspace_size"}
!688 = !{!"size_t.layer.0"}
!689 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/convolution.h"}
!690 = !DILocalVariable(name: "l", arg: 1, scope: !683, file: !684, line: 8, type: !20)
!691 = !DILocation(line: 8, column: 40, scope: !683)
!692 = !DILocation(line: 9, column: 19, scope: !683)
!693 = !DILocation(line: 9, column: 23, scope: !683)
!694 = !DILocation(line: 9, column: 20, scope: !683)
!695 = !DILocation(line: 9, column: 27, scope: !683)
!696 = !DILocation(line: 9, column: 24, scope: !683)
!697 = !DILocation(line: 9, column: 34, scope: !683)
!698 = !DILocation(line: 9, column: 31, scope: !683)
!699 = !DILocation(line: 9, column: 41, scope: !683)
!700 = !DILocation(line: 9, column: 38, scope: !683)
!701 = !DILocation(line: 9, column: 42, scope: !683)
!702 = !DILocation(line: 9, column: 2, scope: !683)
!703 = !{!"im2col_cpu"}
!704 = !{!"void.float *.1.int.0.int.0.int.0.int.0.int.0.int.0.float *.1"}
!705 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/im2col.h"}
!706 = !{!"gemm"}
!707 = !{!"void.int.0.int.0.int.0.float *.1.int.0.float *.1.int.0.float *.1.int.0"}
!708 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/gemm.h"}
!709 = !{!"free"}
!710 = !{!"void.void *.1"}
!711 = distinct !DISubprogram(name: "cal_convolution", scope: !1, file: !1, line: 140, type: !352, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!712 = !{!"cal_convolution"}
!713 = !DILocalVariable(name: "pl", arg: 1, scope: !711, file: !1, line: 140, type: !19)
!714 = !DILocation(line: 140, column: 29, scope: !711)
!715 = !DILocalVariable(name: "inputs", arg: 2, scope: !711, file: !1, line: 140, type: !5)
!716 = !DILocation(line: 140, column: 40, scope: !711)
!717 = !DILocalVariable(name: "i", scope: !711, file: !1, line: 141, type: !25)
!718 = !DILocation(line: 141, column: 6, scope: !711)
!719 = !DILocalVariable(name: "w", scope: !711, file: !1, line: 141, type: !25)
!720 = !DILocation(line: 141, column: 9, scope: !711)
!721 = !DILocalVariable(name: "workload", scope: !711, file: !1, line: 142, type: !722)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, align: 32, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 6)
!725 = !DILocation(line: 142, column: 6, scope: !711)
!726 = !DILocalVariable(name: "num_repeat", scope: !711, file: !1, line: 144, type: !25)
!727 = !DILocation(line: 144, column: 6, scope: !711)
!728 = !DILocation(line: 145, column: 2, scope: !711)
!729 = !DILocation(line: 145, column: 9, scope: !730)
!730 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 1)
!731 = !DILocation(line: 145, column: 19, scope: !730)
!732 = !DILocation(line: 145, column: 2, scope: !730)
!733 = !DILocation(line: 146, column: 3, scope: !734)
!734 = distinct !DILexicalBlock(scope: !711, file: !1, line: 145, column: 24)
!735 = !DILocation(line: 147, column: 3, scope: !734)
!736 = !DILocation(line: 145, column: 2, scope: !737)
!737 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 2)
!738 = distinct !{!738, !728}
!739 = !DILocation(line: 149, column: 25, scope: !711)
!740 = !DILocation(line: 149, column: 29, scope: !711)
!741 = !DILocation(line: 149, column: 37, scope: !711)
!742 = !DILocation(line: 149, column: 2, scope: !711)
!743 = !DILocation(line: 152, column: 2, scope: !711)
!744 = !DILocation(line: 152, column: 9, scope: !730)
!745 = !DILocation(line: 152, column: 19, scope: !730)
!746 = !DILocation(line: 152, column: 2, scope: !730)
!747 = !DILocation(line: 153, column: 3, scope: !748)
!748 = distinct !DILexicalBlock(scope: !711, file: !1, line: 152, column: 24)
!749 = !DILocation(line: 154, column: 3, scope: !748)
!750 = !DILocation(line: 152, column: 2, scope: !737)
!751 = distinct !{!751, !743}
!752 = !DILocation(line: 156, column: 2, scope: !711)
!753 = !DILocation(line: 157, column: 25, scope: !711)
!754 = !DILocation(line: 157, column: 29, scope: !711)
!755 = !DILocation(line: 157, column: 37, scope: !711)
!756 = !DILocation(line: 157, column: 2, scope: !711)
!757 = !DILocation(line: 159, column: 1, scope: !711)
!758 = distinct !DISubprogram(name: "hw_convolutional_layer", scope: !1, file: !1, line: 186, type: !583, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!759 = !{!"hw_convolutional_layer"}
!760 = !DILocalVariable(name: "pl", arg: 1, scope: !758, file: !1, line: 186, type: !19)
!761 = !DILocation(line: 186, column: 36, scope: !758)
!762 = !DILocalVariable(name: "inputs", arg: 2, scope: !758, file: !1, line: 186, type: !5)
!763 = !DILocation(line: 186, column: 47, scope: !758)
!764 = !DILocalVariable(name: "num_repeat", arg: 3, scope: !758, file: !1, line: 186, type: !25)
!765 = !DILocation(line: 186, column: 59, scope: !758)
!766 = !DILocation(line: 187, column: 2, scope: !758)
!767 = !DILocalVariable(name: "start_fpga_time", scope: !758, file: !1, line: 189, type: !595)
!768 = !DILocation(line: 189, column: 9, scope: !758)
!769 = !DILocation(line: 189, column: 27, scope: !758)
!770 = !DILocalVariable(name: "i", scope: !758, file: !1, line: 190, type: !25)
!771 = !DILocation(line: 190, column: 6, scope: !758)
!772 = !DILocalVariable(name: "j", scope: !758, file: !1, line: 190, type: !25)
!773 = !DILocation(line: 190, column: 9, scope: !758)
!774 = !DILocalVariable(name: "l", scope: !758, file: !1, line: 191, type: !20)
!775 = !DILocation(line: 191, column: 8, scope: !758)
!776 = !DILocation(line: 191, column: 13, scope: !758)
!777 = !DILocation(line: 191, column: 12, scope: !758)
!778 = !DILocalVariable(name: "m", scope: !758, file: !1, line: 193, type: !25)
!779 = !DILocation(line: 193, column: 6, scope: !758)
!780 = !DILocation(line: 193, column: 12, scope: !758)
!781 = !DILocalVariable(name: "n", scope: !758, file: !1, line: 194, type: !25)
!782 = !DILocation(line: 194, column: 6, scope: !758)
!783 = !DILocation(line: 194, column: 12, scope: !758)
!784 = !DILocation(line: 194, column: 19, scope: !758)
!785 = !DILocation(line: 194, column: 16, scope: !758)
!786 = !DILocation(line: 194, column: 26, scope: !758)
!787 = !DILocation(line: 194, column: 23, scope: !758)
!788 = !DILocalVariable(name: "k", scope: !758, file: !1, line: 195, type: !25)
!789 = !DILocation(line: 195, column: 6, scope: !758)
!790 = !DILocation(line: 195, column: 12, scope: !758)
!791 = !DILocation(line: 195, column: 20, scope: !758)
!792 = !DILocation(line: 195, column: 17, scope: !758)
!793 = !DILocalVariable(name: "a", scope: !758, file: !1, line: 196, type: !5)
!794 = !DILocation(line: 196, column: 12, scope: !758)
!795 = !DILocation(line: 196, column: 18, scope: !758)
!796 = !DILocalVariable(name: "b", scope: !758, file: !1, line: 197, type: !5)
!797 = !DILocation(line: 197, column: 12, scope: !758)
!798 = !DILocation(line: 197, column: 35, scope: !758)
!799 = !DILocation(line: 197, column: 25, scope: !800)
!800 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 1)
!801 = !DILocation(line: 197, column: 16, scope: !758)
!802 = !DILocalVariable(name: "c", scope: !758, file: !1, line: 198, type: !5)
!803 = !DILocation(line: 198, column: 12, scope: !758)
!804 = !DILocation(line: 198, column: 18, scope: !758)
!805 = !DILocation(line: 200, column: 14, scope: !758)
!806 = !DILocation(line: 200, column: 24, scope: !758)
!807 = !DILocation(line: 200, column: 29, scope: !758)
!808 = !DILocation(line: 200, column: 34, scope: !758)
!809 = !DILocation(line: 200, column: 39, scope: !758)
!810 = !DILocation(line: 200, column: 47, scope: !758)
!811 = !DILocation(line: 200, column: 57, scope: !758)
!812 = !DILocation(line: 200, column: 62, scope: !758)
!813 = !DILocation(line: 200, column: 2, scope: !758)
!814 = !DILocation(line: 201, column: 44, scope: !758)
!815 = !DILocation(line: 201, column: 66, scope: !758)
!816 = !DILocation(line: 201, column: 65, scope: !758)
!817 = !DILocation(line: 201, column: 2, scope: !800)
!818 = !DILocation(line: 203, column: 8, scope: !819)
!819 = distinct !DILexicalBlock(scope: !758, file: !1, line: 203, column: 2)
!820 = !DILocation(line: 203, column: 7, scope: !819)
!821 = !DILocation(line: 203, column: 12, scope: !822)
!822 = !DILexicalBlockFile(scope: !823, file: !1, discriminator: 1)
!823 = distinct !DILexicalBlock(scope: !819, file: !1, line: 203, column: 2)
!824 = !DILocation(line: 203, column: 14, scope: !822)
!825 = !DILocation(line: 203, column: 13, scope: !822)
!826 = !DILocation(line: 203, column: 2, scope: !822)
!827 = !DILocation(line: 204, column: 8, scope: !828)
!828 = distinct !DILexicalBlock(scope: !823, file: !1, line: 203, column: 31)
!829 = !DILocation(line: 204, column: 10, scope: !828)
!830 = !DILocation(line: 204, column: 12, scope: !828)
!831 = !DILocation(line: 204, column: 14, scope: !828)
!832 = !DILocation(line: 204, column: 16, scope: !828)
!833 = !DILocation(line: 204, column: 18, scope: !828)
!834 = !DILocation(line: 204, column: 20, scope: !828)
!835 = !DILocation(line: 204, column: 22, scope: !828)
!836 = !DILocation(line: 204, column: 24, scope: !828)
!837 = !DILocation(line: 204, column: 3, scope: !828)
!838 = !DILocation(line: 205, column: 2, scope: !828)
!839 = !DILocation(line: 203, column: 27, scope: !840)
!840 = !DILexicalBlockFile(scope: !823, file: !1, discriminator: 2)
!841 = !DILocation(line: 203, column: 2, scope: !840)
!842 = distinct !{!842, !843}
!843 = !DILocation(line: 203, column: 2, scope: !758)
!844 = !DILocation(line: 206, column: 54, scope: !758)
!845 = !DILocation(line: 206, column: 76, scope: !758)
!846 = !DILocation(line: 206, column: 75, scope: !758)
!847 = !DILocation(line: 206, column: 93, scope: !758)
!848 = !DILocation(line: 206, column: 92, scope: !758)
!849 = !DILocation(line: 206, column: 2, scope: !800)
!850 = !DILocation(line: 207, column: 1, scope: !758)
!851 = distinct !DISubprogram(name: "delete_convolution", scope: !1, file: !1, line: 161, type: !17, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!852 = !{!"delete_convolution"}
!853 = !DILocalVariable(name: "pl", arg: 1, scope: !851, file: !1, line: 161, type: !19)
!854 = !DILocation(line: 161, column: 32, scope: !851)
!855 = !DILocation(line: 162, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !851, file: !1, line: 162, column: 6)
!857 = !DILocation(line: 162, column: 10, scope: !856)
!858 = !DILocation(line: 162, column: 6, scope: !851)
!859 = !DILocation(line: 162, column: 24, scope: !860)
!860 = !DILexicalBlockFile(scope: !856, file: !1, discriminator: 1)
!861 = !DILocation(line: 162, column: 28, scope: !860)
!862 = !DILocation(line: 162, column: 19, scope: !860)
!863 = !DILocation(line: 163, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !851, file: !1, line: 163, column: 6)
!865 = !DILocation(line: 163, column: 10, scope: !864)
!866 = !DILocation(line: 163, column: 6, scope: !851)
!867 = !DILocation(line: 163, column: 24, scope: !868)
!868 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 1)
!869 = !DILocation(line: 163, column: 28, scope: !868)
!870 = !DILocation(line: 163, column: 19, scope: !868)
!871 = !DILocation(line: 164, column: 1, scope: !851)
!872 = distinct !DISubprogram(name: "test_convolution", scope: !1, file: !1, line: 166, type: !873, isLocal: false, isDefinition: true, scopeLine: 166, isOptimized: false, unit: !0, variables: !2)
!873 = !DISubroutineType(types: !874)
!874 = !{null}
!875 = !{!"test_convolution"}
!876 = !{!"void."}
!877 = !DILocalVariable(name: "l", scope: !872, file: !1, line: 167, type: !20)
!878 = !DILocation(line: 167, column: 8, scope: !872)
!879 = !DILocation(line: 167, column: 12, scope: !872)
!880 = !DILocalVariable(name: "input_size", scope: !872, file: !1, line: 169, type: !25)
!881 = !DILocation(line: 169, column: 6, scope: !872)
!882 = !DILocation(line: 169, column: 21, scope: !872)
!883 = !DILocation(line: 169, column: 25, scope: !872)
!884 = !DILocation(line: 169, column: 22, scope: !872)
!885 = !DILocation(line: 169, column: 29, scope: !872)
!886 = !DILocation(line: 169, column: 26, scope: !872)
!887 = !DILocalVariable(name: "inputs", scope: !872, file: !1, line: 170, type: !888)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 32, align: 32)
!889 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!890 = !DILocation(line: 170, column: 17, scope: !872)
!891 = !DILocation(line: 170, column: 33, scope: !872)
!892 = !DILocation(line: 170, column: 26, scope: !872)
!893 = !DILocation(line: 171, column: 19, scope: !872)
!894 = !DILocation(line: 171, column: 27, scope: !872)
!895 = !DILocation(line: 171, column: 2, scope: !872)
!896 = !DILocalVariable(name: "X", scope: !872, file: !1, line: 173, type: !5)
!897 = !DILocation(line: 173, column: 9, scope: !872)
!898 = !DILocation(line: 173, column: 20, scope: !872)
!899 = !DILocation(line: 173, column: 13, scope: !872)
!900 = !DILocation(line: 174, column: 13, scope: !872)
!901 = !DILocation(line: 174, column: 21, scope: !872)
!902 = !DILocation(line: 174, column: 24, scope: !872)
!903 = !DILocation(line: 174, column: 2, scope: !872)
!904 = !DILocation(line: 175, column: 22, scope: !872)
!905 = !DILocation(line: 175, column: 2, scope: !872)
!906 = !DILocation(line: 177, column: 7, scope: !872)
!907 = !DILocation(line: 177, column: 2, scope: !872)
!908 = !DILocation(line: 178, column: 7, scope: !872)
!909 = !DILocation(line: 178, column: 2, scope: !872)
!910 = !DILocation(line: 179, column: 2, scope: !872)
!911 = !DILocation(line: 180, column: 1, scope: !872)
!912 = !{!"set_random_input"}
!913 = !{!"int."}
!914 = !{!"copy_input"}
!915 = !{!"im2col_fpga"}
