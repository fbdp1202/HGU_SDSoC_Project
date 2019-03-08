; ModuleID = '/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/utils.c'
source_filename = "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/utils.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.timespec = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s() at %s::%05d\0A\00", align 1
@__FUNCTION__.minArrValue = private unnamed_addr constant [12 x i8] c"minArrValue\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/utils.c\00", align 1
@__FUNCTION__.maxArrValue = private unnamed_addr constant [12 x i8] c"maxArrValue\00", align 1

; Function Attrs: nounwind
define double @what_time_is_it_now() #0 !dbg !12 !xidane.fname !15 !xidane.function_declaration_type !16 !xidane.function_declaration_filename !17 !xidane.ExternC !18 {
  %1 = alloca %struct.timespec, align 4
  call void @llvm.dbg.declare(metadata %struct.timespec* %1, metadata !19, metadata !29), !dbg !30
  %2 = call i32 @clock_gettime(i32 0, %struct.timespec* %1) #4, !dbg !31
  %3 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0, !dbg !32
  %4 = load i32, i32* %3, align 4, !dbg !32
  %5 = sitofp i32 %4 to double, !dbg !33
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 1, !dbg !34
  %7 = load i32, i32* %6, align 4, !dbg !34
  %8 = sitofp i32 %7 to double, !dbg !35
  %9 = fmul double %8, 1.000000e-09, !dbg !36
  %10 = fadd double %5, %9, !dbg !37
  ret double %10, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !xidane.fname !39 !xidane.function_declaration_type !40 !xidane.function_declaration_filename !41 !xidane.ExternC !18 i32 @clock_gettime(i32, %struct.timespec*) #2

; Function Attrs: nounwind
define float @conversion(float, float) #0 !dbg !42 !xidane.fname !45 !xidane.function_declaration_type !46 !xidane.function_declaration_filename !17 !xidane.ExternC !18 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  call void @llvm.dbg.declare(metadata float* %4, metadata !47, metadata !29), !dbg !48
  store float %1, float* %5, align 4
  call void @llvm.dbg.declare(metadata float* %5, metadata !49, metadata !29), !dbg !50
  %6 = load float, float* %4, align 4, !dbg !51
  %7 = fcmp olt float %6, 0.000000e+00, !dbg !53
  br i1 %7, label %8, label %15, !dbg !54

; <label>:8:                                      ; preds = %2
  %9 = load float, float* %4, align 4, !dbg !55
  %10 = load float, float* %5, align 4, !dbg !56
  %11 = fdiv float %10, 2.000000e+00, !dbg !57
  %12 = fsub float %9, %11, !dbg !58
  %13 = load float, float* %5, align 4, !dbg !59
  %14 = fdiv float %12, %13, !dbg !60
  store float %14, float* %3, align 4, !dbg !61
  br label %22, !dbg !61

; <label>:15:                                     ; preds = %2
  %16 = load float, float* %4, align 4, !dbg !62
  %17 = load float, float* %5, align 4, !dbg !63
  %18 = fdiv float %17, 2.000000e+00, !dbg !64
  %19 = fadd float %16, %18, !dbg !65
  %20 = load float, float* %5, align 4, !dbg !66
  %21 = fdiv float %19, %20, !dbg !67
  store float %21, float* %3, align 4, !dbg !68
  br label %22, !dbg !68

; <label>:22:                                     ; preds = %15, %8
  %23 = load float, float* %3, align 4, !dbg !69
  ret float %23, !dbg !69
}

; Function Attrs: nounwind
define float @minArrValue(float*, i32) #0 !dbg !70 !xidane.fname !75 !xidane.function_declaration_type !76 !xidane.function_declaration_filename !17 !xidane.ExternC !18 {
  %3 = alloca float, align 4
  %4 = alloca float*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 4
  call void @llvm.dbg.declare(metadata float** %4, metadata !77, metadata !29), !dbg !78
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !79, metadata !29), !dbg !80
  %8 = load float*, float** %4, align 4, !dbg !81
  %9 = icmp ne float* %8, null, !dbg !81
  br i1 %9, label %10, label %44, !dbg !83

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !84, metadata !29), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %7, metadata !87, metadata !29), !dbg !88
  %11 = load float*, float** %4, align 4, !dbg !89
  %12 = getelementptr inbounds float, float* %11, i32 0, !dbg !89
  %13 = load float, float* %12, align 4, !dbg !89
  %14 = fptosi float %13 to i32, !dbg !89
  store i32 %14, i32* %7, align 4, !dbg !88
  store i32 1, i32* %6, align 4, !dbg !90
  br label %15, !dbg !92

; <label>:15:                                     ; preds = %38, %10
  %16 = load i32, i32* %6, align 4, !dbg !93
  %17 = load i32, i32* %5, align 4, !dbg !96
  %18 = icmp slt i32 %16, %17, !dbg !97
  br i1 %18, label %19, label %41, !dbg !98

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %7, align 4, !dbg !99
  %21 = sitofp i32 %20 to float, !dbg !99
  %22 = load i32, i32* %6, align 4, !dbg !99
  %23 = load float*, float** %4, align 4, !dbg !99
  %24 = getelementptr inbounds float, float* %23, i32 %22, !dbg !99
  %25 = load float, float* %24, align 4, !dbg !99
  %26 = fcmp ogt float %21, %25, !dbg !99
  br i1 %26, label %27, label %30, !dbg !99

; <label>:27:                                     ; preds = %19
  %28 = load i32, i32* %7, align 4, !dbg !101
  %29 = sitofp i32 %28 to float, !dbg !101
  br label %35, !dbg !101

; <label>:30:                                     ; preds = %19
  %31 = load i32, i32* %6, align 4, !dbg !103
  %32 = load float*, float** %4, align 4, !dbg !103
  %33 = getelementptr inbounds float, float* %32, i32 %31, !dbg !103
  %34 = load float, float* %33, align 4, !dbg !103
  br label %35, !dbg !103

; <label>:35:                                     ; preds = %30, %27
  %36 = phi float [ %29, %27 ], [ %34, %30 ], !dbg !105
  %37 = fptosi float %36 to i32, !dbg !105
  store i32 %37, i32* %7, align 4, !dbg !107
  br label %38, !dbg !108

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %6, align 4, !dbg !109
  %40 = add nsw i32 %39, 1, !dbg !109
  store i32 %40, i32* %6, align 4, !dbg !109
  br label %15, !dbg !111, !llvm.loop !112

; <label>:41:                                     ; preds = %15
  %42 = load i32, i32* %7, align 4, !dbg !114
  %43 = sitofp i32 %42 to float, !dbg !114
  store float %43, float* %3, align 4, !dbg !115
  br label %46, !dbg !115

; <label>:44:                                     ; preds = %2
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.minArrValue, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i32 0, i32 0), i32 33), !dbg !116
  store float 0.000000e+00, float* %3, align 4, !dbg !118
  br label %46, !dbg !118

; <label>:46:                                     ; preds = %44, %41
  %47 = load float, float* %3, align 4, !dbg !119
  ret float %47, !dbg !119
}

declare !xidane.fname !120 !xidane.function_declaration_type !121 !xidane.function_declaration_filename !122 !xidane.ExternC !18 i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
define float @maxArrValue(float*, i32) #0 !dbg !123 !xidane.fname !124 !xidane.function_declaration_type !76 !xidane.function_declaration_filename !17 !xidane.ExternC !18 {
  %3 = alloca float, align 4
  %4 = alloca float*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 4
  call void @llvm.dbg.declare(metadata float** %4, metadata !125, metadata !29), !dbg !126
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !127, metadata !29), !dbg !128
  %8 = load float*, float** %4, align 4, !dbg !129
  %9 = icmp ne float* %8, null, !dbg !129
  br i1 %9, label %10, label %44, !dbg !131

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !132, metadata !29), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %7, metadata !135, metadata !29), !dbg !136
  %11 = load float*, float** %4, align 4, !dbg !137
  %12 = getelementptr inbounds float, float* %11, i32 0, !dbg !137
  %13 = load float, float* %12, align 4, !dbg !137
  %14 = fptosi float %13 to i32, !dbg !137
  store i32 %14, i32* %7, align 4, !dbg !136
  store i32 1, i32* %6, align 4, !dbg !138
  br label %15, !dbg !140

; <label>:15:                                     ; preds = %38, %10
  %16 = load i32, i32* %6, align 4, !dbg !141
  %17 = load i32, i32* %5, align 4, !dbg !144
  %18 = icmp slt i32 %16, %17, !dbg !145
  br i1 %18, label %19, label %41, !dbg !146

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %7, align 4, !dbg !147
  %21 = sitofp i32 %20 to float, !dbg !147
  %22 = load i32, i32* %6, align 4, !dbg !147
  %23 = load float*, float** %4, align 4, !dbg !147
  %24 = getelementptr inbounds float, float* %23, i32 %22, !dbg !147
  %25 = load float, float* %24, align 4, !dbg !147
  %26 = fcmp olt float %21, %25, !dbg !147
  br i1 %26, label %27, label %30, !dbg !147

; <label>:27:                                     ; preds = %19
  %28 = load i32, i32* %7, align 4, !dbg !149
  %29 = sitofp i32 %28 to float, !dbg !149
  br label %35, !dbg !149

; <label>:30:                                     ; preds = %19
  %31 = load i32, i32* %6, align 4, !dbg !151
  %32 = load float*, float** %4, align 4, !dbg !151
  %33 = getelementptr inbounds float, float* %32, i32 %31, !dbg !151
  %34 = load float, float* %33, align 4, !dbg !151
  br label %35, !dbg !151

; <label>:35:                                     ; preds = %30, %27
  %36 = phi float [ %29, %27 ], [ %34, %30 ], !dbg !153
  %37 = fptosi float %36 to i32, !dbg !153
  store i32 %37, i32* %7, align 4, !dbg !155
  br label %38, !dbg !156

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %6, align 4, !dbg !157
  %40 = add nsw i32 %39, 1, !dbg !157
  store i32 %40, i32* %6, align 4, !dbg !157
  br label %15, !dbg !159, !llvm.loop !160

; <label>:41:                                     ; preds = %15
  %42 = load i32, i32* %7, align 4, !dbg !162
  %43 = sitofp i32 %42 to float, !dbg !162
  store float %43, float* %3, align 4, !dbg !163
  br label %46, !dbg !163

; <label>:44:                                     ; preds = %2
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.maxArrValue, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i32 0, i32 0), i32 46), !dbg !164
  store float 0.000000e+00, float* %3, align 4, !dbg !166
  br label %46, !dbg !166

; <label>:46:                                     ; preds = %44, %41
  %47 = load float, float* %3, align 4, !dbg !167
  ret float %47, !dbg !167
}

; Function Attrs: nounwind
define float @gaussianRandom() #0 !dbg !168 !xidane.fname !171 !xidane.function_declaration_type !172 !xidane.function_declaration_filename !17 !xidane.ExternC !18 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  call void @llvm.dbg.declare(metadata double* %1, metadata !173, metadata !29), !dbg !174
  call void @llvm.dbg.declare(metadata double* %2, metadata !175, metadata !29), !dbg !176
  call void @llvm.dbg.declare(metadata double* %3, metadata !177, metadata !29), !dbg !178
  br label %4, !dbg !179, !llvm.loop !180

; <label>:4:                                      ; preds = %28, %0
  %5 = call i32 @rand() #4, !dbg !181
  %6 = sitofp i32 %5 to double, !dbg !183
  %7 = fdiv double %6, 0x41DFFFFFFFC00000, !dbg !184
  %8 = fmul double 2.000000e+00, %7, !dbg !185
  %9 = fsub double %8, 1.000000e+00, !dbg !186
  store double %9, double* %1, align 8, !dbg !187
  %10 = call i32 @rand() #4, !dbg !188
  %11 = sitofp i32 %10 to double, !dbg !189
  %12 = fdiv double %11, 0x41DFFFFFFFC00000, !dbg !190
  %13 = fmul double 2.000000e+00, %12, !dbg !191
  %14 = fsub double %13, 1.000000e+00, !dbg !192
  store double %14, double* %2, align 8, !dbg !193
  %15 = load double, double* %1, align 8, !dbg !194
  %16 = load double, double* %1, align 8, !dbg !195
  %17 = fmul double %15, %16, !dbg !196
  %18 = load double, double* %2, align 8, !dbg !197
  %19 = load double, double* %2, align 8, !dbg !198
  %20 = fmul double %18, %19, !dbg !199
  %21 = fadd double %17, %20, !dbg !200
  store double %21, double* %3, align 8, !dbg !201
  br label %22, !dbg !202

; <label>:22:                                     ; preds = %4
  %23 = load double, double* %3, align 8, !dbg !203
  %24 = fcmp oge double %23, 1.000000e+00, !dbg !205
  br i1 %24, label %28, label %25, !dbg !206

; <label>:25:                                     ; preds = %22
  %26 = load double, double* %3, align 8, !dbg !207
  %27 = fcmp oeq double %26, 0.000000e+00, !dbg !209
  br label %28, !dbg !210

; <label>:28:                                     ; preds = %25, %22
  %29 = phi i1 [ true, %22 ], [ %27, %25 ]
  br i1 %29, label %4, label %30, !dbg !211, !llvm.loop !180

; <label>:30:                                     ; preds = %28
  %31 = load double, double* %3, align 8, !dbg !213
  %32 = call double @log(double %31) #4, !dbg !214
  %33 = fmul double -2.000000e+00, %32, !dbg !215
  %34 = load double, double* %3, align 8, !dbg !216
  %35 = fdiv double %33, %34, !dbg !217
  %36 = call double @sqrt(double %35) #4, !dbg !218
  store double %36, double* %3, align 8, !dbg !219
  %37 = load double, double* %1, align 8, !dbg !220
  %38 = load double, double* %3, align 8, !dbg !221
  %39 = fmul double %37, %38, !dbg !222
  %40 = fptrunc double %39 to float, !dbg !223
  ret float %40, !dbg !224
}

; Function Attrs: nounwind
declare !xidane.fname !225 !xidane.function_declaration_type !226 !xidane.function_declaration_filename !227 !xidane.ExternC !18 i32 @rand() #2

; Function Attrs: nounwind
declare !xidane.fname !228 !xidane.function_declaration_type !229 !xidane.function_declaration_filename !230 !xidane.ExternC !18 double @sqrt(double) #2

; Function Attrs: nounwind
declare !xidane.fname !231 !xidane.function_declaration_type !229 !xidane.function_declaration_filename !230 !xidane.ExternC !18 double @log(double) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/utils.c", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!5 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 1, !"PIC Level", i32 2}
!11 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!12 = distinct !DISubprogram(name: "what_time_is_it_now", scope: !1, file: !1, line: 11, type: !13, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, unit: !0, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!4}
!15 = !{!"what_time_is_it_now"}
!16 = !{!"double."}
!17 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/utils.h"}
!18 = !{!"t"}
!19 = !DILocalVariable(name: "now", scope: !12, file: !1, line: 12, type: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !21, line: 8, size: 64, align: 32, elements: !22)
!21 = !DIFile(filename: "/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/bits/types/struct_timespec.h", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!22 = !{!23, !27}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !20, file: !21, line: 10, baseType: !24, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !25, line: 148, baseType: !26)
!25 = !DIFile(filename: "/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/bits/types.h", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!26 = !DIBasicType(name: "long int", size: 32, align: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !20, file: !21, line: 11, baseType: !28, size: 32, align: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !25, line: 184, baseType: !26)
!29 = !DIExpression()
!30 = !DILocation(line: 12, column: 21, scope: !12)
!31 = !DILocation(line: 13, column: 5, scope: !12)
!32 = !DILocation(line: 14, column: 16, scope: !12)
!33 = !DILocation(line: 14, column: 12, scope: !12)
!34 = !DILocation(line: 14, column: 29, scope: !12)
!35 = !DILocation(line: 14, column: 25, scope: !12)
!36 = !DILocation(line: 14, column: 36, scope: !12)
!37 = !DILocation(line: 14, column: 23, scope: !12)
!38 = !DILocation(line: 14, column: 5, scope: !12)
!39 = !{!"clock_gettime"}
!40 = !{!"int.clockid_t.0.struct timespec *.1"}
!41 = !{!"/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/time.h"}
!42 = distinct !DISubprogram(name: "conversion", scope: !1, file: !1, line: 17, type: !43, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!43 = !DISubroutineType(types: !44)
!44 = !{!5, !5, !5}
!45 = !{!"conversion"}
!46 = !{!"float.float.0.float.0"}
!47 = !DILocalVariable(name: "x", arg: 1, scope: !42, file: !1, line: 17, type: !5)
!48 = !DILocation(line: 17, column: 24, scope: !42)
!49 = !DILocalVariable(name: "step", arg: 2, scope: !42, file: !1, line: 17, type: !5)
!50 = !DILocation(line: 17, column: 33, scope: !42)
!51 = !DILocation(line: 18, column: 8, scope: !52)
!52 = distinct !DILexicalBlock(scope: !42, file: !1, line: 18, column: 8)
!53 = !DILocation(line: 18, column: 10, scope: !52)
!54 = !DILocation(line: 18, column: 8, scope: !42)
!55 = !DILocation(line: 19, column: 17, scope: !52)
!56 = !DILocation(line: 19, column: 19, scope: !52)
!57 = !DILocation(line: 19, column: 23, scope: !52)
!58 = !DILocation(line: 19, column: 18, scope: !52)
!59 = !DILocation(line: 19, column: 27, scope: !52)
!60 = !DILocation(line: 19, column: 26, scope: !52)
!61 = !DILocation(line: 19, column: 9, scope: !52)
!62 = !DILocation(line: 21, column: 17, scope: !52)
!63 = !DILocation(line: 21, column: 19, scope: !52)
!64 = !DILocation(line: 21, column: 23, scope: !52)
!65 = !DILocation(line: 21, column: 18, scope: !52)
!66 = !DILocation(line: 21, column: 27, scope: !52)
!67 = !DILocation(line: 21, column: 26, scope: !52)
!68 = !DILocation(line: 21, column: 9, scope: !52)
!69 = !DILocation(line: 22, column: 1, scope: !42)
!70 = distinct !DISubprogram(name: "minArrValue", scope: !1, file: !1, line: 24, type: !71, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{!5, !73, !74}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32, align: 32)
!74 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!75 = !{!"minArrValue"}
!76 = !{!"float.float *.1.int.0"}
!77 = !DILocalVariable(name: "arr", arg: 1, scope: !70, file: !1, line: 24, type: !73)
!78 = !DILocation(line: 24, column: 26, scope: !70)
!79 = !DILocalVariable(name: "arrsize", arg: 2, scope: !70, file: !1, line: 24, type: !74)
!80 = !DILocation(line: 24, column: 35, scope: !70)
!81 = !DILocation(line: 25, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !70, file: !1, line: 25, column: 9)
!83 = !DILocation(line: 25, column: 9, scope: !70)
!84 = !DILocalVariable(name: "i", scope: !85, file: !1, line: 26, type: !74)
!85 = distinct !DILexicalBlock(scope: !82, file: !1, line: 25, column: 14)
!86 = !DILocation(line: 26, column: 13, scope: !85)
!87 = !DILocalVariable(name: "minV", scope: !85, file: !1, line: 27, type: !74)
!88 = !DILocation(line: 27, column: 13, scope: !85)
!89 = !DILocation(line: 27, column: 20, scope: !85)
!90 = !DILocation(line: 28, column: 15, scope: !91)
!91 = distinct !DILexicalBlock(scope: !85, file: !1, line: 28, column: 9)
!92 = !DILocation(line: 28, column: 14, scope: !91)
!93 = !DILocation(line: 28, column: 19, scope: !94)
!94 = !DILexicalBlockFile(scope: !95, file: !1, discriminator: 1)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 28, column: 9)
!96 = !DILocation(line: 28, column: 21, scope: !94)
!97 = !DILocation(line: 28, column: 20, scope: !94)
!98 = !DILocation(line: 28, column: 9, scope: !94)
!99 = !DILocation(line: 29, column: 20, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 28, column: 35)
!101 = !DILocation(line: 29, column: 20, scope: !102)
!102 = !DILexicalBlockFile(scope: !100, file: !1, discriminator: 1)
!103 = !DILocation(line: 29, column: 20, scope: !104)
!104 = !DILexicalBlockFile(scope: !100, file: !1, discriminator: 2)
!105 = !DILocation(line: 29, column: 20, scope: !106)
!106 = !DILexicalBlockFile(scope: !100, file: !1, discriminator: 3)
!107 = !DILocation(line: 29, column: 18, scope: !106)
!108 = !DILocation(line: 30, column: 9, scope: !100)
!109 = !DILocation(line: 28, column: 31, scope: !110)
!110 = !DILexicalBlockFile(scope: !95, file: !1, discriminator: 2)
!111 = !DILocation(line: 28, column: 9, scope: !110)
!112 = distinct !{!112, !113}
!113 = !DILocation(line: 28, column: 9, scope: !85)
!114 = !DILocation(line: 31, column: 16, scope: !85)
!115 = !DILocation(line: 31, column: 9, scope: !85)
!116 = !DILocation(line: 33, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !82, file: !1, line: 32, column: 12)
!118 = !DILocation(line: 33, column: 16, scope: !117)
!119 = !DILocation(line: 35, column: 1, scope: !70)
!120 = !{!"printf"}
!121 = !{!"int.const char *__restrict.1"}
!122 = !{!"/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/stdio.h"}
!123 = distinct !DISubprogram(name: "maxArrValue", scope: !1, file: !1, line: 37, type: !71, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!124 = !{!"maxArrValue"}
!125 = !DILocalVariable(name: "arr", arg: 1, scope: !123, file: !1, line: 37, type: !73)
!126 = !DILocation(line: 37, column: 26, scope: !123)
!127 = !DILocalVariable(name: "arrsize", arg: 2, scope: !123, file: !1, line: 37, type: !74)
!128 = !DILocation(line: 37, column: 35, scope: !123)
!129 = !DILocation(line: 38, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !123, file: !1, line: 38, column: 9)
!131 = !DILocation(line: 38, column: 9, scope: !123)
!132 = !DILocalVariable(name: "i", scope: !133, file: !1, line: 39, type: !74)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 38, column: 14)
!134 = !DILocation(line: 39, column: 13, scope: !133)
!135 = !DILocalVariable(name: "maxV", scope: !133, file: !1, line: 40, type: !74)
!136 = !DILocation(line: 40, column: 13, scope: !133)
!137 = !DILocation(line: 40, column: 20, scope: !133)
!138 = !DILocation(line: 41, column: 15, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 41, column: 9)
!140 = !DILocation(line: 41, column: 14, scope: !139)
!141 = !DILocation(line: 41, column: 19, scope: !142)
!142 = !DILexicalBlockFile(scope: !143, file: !1, discriminator: 1)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 41, column: 9)
!144 = !DILocation(line: 41, column: 21, scope: !142)
!145 = !DILocation(line: 41, column: 20, scope: !142)
!146 = !DILocation(line: 41, column: 9, scope: !142)
!147 = !DILocation(line: 42, column: 20, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 41, column: 35)
!149 = !DILocation(line: 42, column: 20, scope: !150)
!150 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 1)
!151 = !DILocation(line: 42, column: 20, scope: !152)
!152 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 2)
!153 = !DILocation(line: 42, column: 20, scope: !154)
!154 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 3)
!155 = !DILocation(line: 42, column: 18, scope: !154)
!156 = !DILocation(line: 43, column: 9, scope: !148)
!157 = !DILocation(line: 41, column: 31, scope: !158)
!158 = !DILexicalBlockFile(scope: !143, file: !1, discriminator: 2)
!159 = !DILocation(line: 41, column: 9, scope: !158)
!160 = distinct !{!160, !161}
!161 = !DILocation(line: 41, column: 9, scope: !133)
!162 = !DILocation(line: 44, column: 16, scope: !133)
!163 = !DILocation(line: 44, column: 9, scope: !133)
!164 = !DILocation(line: 46, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !130, file: !1, line: 45, column: 12)
!166 = !DILocation(line: 46, column: 16, scope: !165)
!167 = !DILocation(line: 49, column: 1, scope: !123)
!168 = distinct !DISubprogram(name: "gaussianRandom", scope: !1, file: !1, line: 51, type: !169, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!169 = !DISubroutineType(types: !170)
!170 = !{!5}
!171 = !{!"gaussianRandom"}
!172 = !{!"float."}
!173 = !DILocalVariable(name: "v1", scope: !168, file: !1, line: 52, type: !4)
!174 = !DILocation(line: 52, column: 9, scope: !168)
!175 = !DILocalVariable(name: "v2", scope: !168, file: !1, line: 52, type: !4)
!176 = !DILocation(line: 52, column: 13, scope: !168)
!177 = !DILocalVariable(name: "s", scope: !168, file: !1, line: 52, type: !4)
!178 = !DILocation(line: 52, column: 17, scope: !168)
!179 = !DILocation(line: 54, column: 2, scope: !168)
!180 = distinct !{!180, !179}
!181 = !DILocation(line: 55, column: 23, scope: !182)
!182 = distinct !DILexicalBlock(scope: !168, file: !1, line: 54, column: 5)
!183 = !DILocation(line: 55, column: 14, scope: !182)
!184 = !DILocation(line: 55, column: 30, scope: !182)
!185 = !DILocation(line: 55, column: 11, scope: !182)
!186 = !DILocation(line: 55, column: 42, scope: !182)
!187 = !DILocation(line: 55, column: 6, scope: !182)
!188 = !DILocation(line: 56, column: 23, scope: !182)
!189 = !DILocation(line: 56, column: 14, scope: !182)
!190 = !DILocation(line: 56, column: 30, scope: !182)
!191 = !DILocation(line: 56, column: 11, scope: !182)
!192 = !DILocation(line: 56, column: 42, scope: !182)
!193 = !DILocation(line: 56, column: 6, scope: !182)
!194 = !DILocation(line: 57, column: 7, scope: !182)
!195 = !DILocation(line: 57, column: 12, scope: !182)
!196 = !DILocation(line: 57, column: 10, scope: !182)
!197 = !DILocation(line: 57, column: 17, scope: !182)
!198 = !DILocation(line: 57, column: 22, scope: !182)
!199 = !DILocation(line: 57, column: 20, scope: !182)
!200 = !DILocation(line: 57, column: 15, scope: !182)
!201 = !DILocation(line: 57, column: 5, scope: !182)
!202 = !DILocation(line: 58, column: 2, scope: !182)
!203 = !DILocation(line: 58, column: 11, scope: !204)
!204 = !DILexicalBlockFile(scope: !168, file: !1, discriminator: 1)
!205 = !DILocation(line: 58, column: 13, scope: !204)
!206 = !DILocation(line: 58, column: 18, scope: !204)
!207 = !DILocation(line: 58, column: 21, scope: !208)
!208 = !DILexicalBlockFile(scope: !168, file: !1, discriminator: 2)
!209 = !DILocation(line: 58, column: 23, scope: !208)
!210 = !DILocation(line: 58, column: 18, scope: !208)
!211 = !DILocation(line: 58, column: 2, scope: !212)
!212 = !DILexicalBlockFile(scope: !182, file: !1, discriminator: 3)
!213 = !DILocation(line: 60, column: 22, scope: !168)
!214 = !DILocation(line: 60, column: 18, scope: !168)
!215 = !DILocation(line: 60, column: 16, scope: !168)
!216 = !DILocation(line: 60, column: 28, scope: !168)
!217 = !DILocation(line: 60, column: 26, scope: !168)
!218 = !DILocation(line: 60, column: 6, scope: !204)
!219 = !DILocation(line: 60, column: 4, scope: !168)
!220 = !DILocation(line: 62, column: 17, scope: !168)
!221 = !DILocation(line: 62, column: 22, scope: !168)
!222 = !DILocation(line: 62, column: 20, scope: !168)
!223 = !DILocation(line: 62, column: 9, scope: !168)
!224 = !DILocation(line: 62, column: 2, scope: !168)
!225 = !{!"rand"}
!226 = !{!"int."}
!227 = !{!"/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/stdlib.h"}
!228 = !{!"sqrt"}
!229 = !{!"double.double.0"}
!230 = !{!"/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/bits/mathcalls.h"}
!231 = !{!"log"}
