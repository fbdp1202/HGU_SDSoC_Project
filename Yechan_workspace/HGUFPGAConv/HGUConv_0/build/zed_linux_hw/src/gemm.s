; ModuleID = '/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/gemm.c'
source_filename = "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/gemm.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7--linux-gnueabihf"

; Function Attrs: nounwind
define void @gemm(i32, i32, i32, float*, i32, float*, i32, float*, i32) #0 !dbg !12 !xidane.fname !16 !xidane.function_declaration_type !17 !xidane.function_declaration_filename !18 !xidane.ExternC !19 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !20, metadata !21), !dbg !22
  store i32 %1, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !23, metadata !21), !dbg !24
  store i32 %2, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !25, metadata !21), !dbg !26
  store float* %3, float** %13, align 4
  call void @llvm.dbg.declare(metadata float** %13, metadata !27, metadata !21), !dbg !28
  store i32 %4, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !29, metadata !21), !dbg !30
  store float* %5, float** %15, align 4
  call void @llvm.dbg.declare(metadata float** %15, metadata !31, metadata !21), !dbg !32
  store i32 %6, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !33, metadata !21), !dbg !34
  store float* %7, float** %17, align 4
  call void @llvm.dbg.declare(metadata float** %17, metadata !35, metadata !21), !dbg !36
  store i32 %8, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !37, metadata !21), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %19, metadata !39, metadata !21), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %20, metadata !41, metadata !21), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %21, metadata !43, metadata !21), !dbg !44
  store i32 0, i32* %19, align 4, !dbg !45
  br label %23, !dbg !47

; <label>:23:                                     ; preds = %73, %9
  %24 = load i32, i32* %19, align 4, !dbg !48
  %25 = load i32, i32* %10, align 4, !dbg !51
  %26 = icmp slt i32 %24, %25, !dbg !52
  br i1 %26, label %27, label %76, !dbg !53

; <label>:27:                                     ; preds = %23
  store i32 0, i32* %21, align 4, !dbg !54
  br label %28, !dbg !57

; <label>:28:                                     ; preds = %69, %27
  %29 = load i32, i32* %21, align 4, !dbg !58
  %30 = load i32, i32* %12, align 4, !dbg !61
  %31 = icmp slt i32 %29, %30, !dbg !62
  br i1 %31, label %32, label %72, !dbg !63

; <label>:32:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata float* %22, metadata !64, metadata !21), !dbg !66
  %33 = load i32, i32* %19, align 4, !dbg !67
  %34 = load i32, i32* %14, align 4, !dbg !68
  %35 = mul nsw i32 %33, %34, !dbg !69
  %36 = load i32, i32* %21, align 4, !dbg !70
  %37 = add nsw i32 %35, %36, !dbg !71
  %38 = load float*, float** %13, align 4, !dbg !72
  %39 = getelementptr inbounds float, float* %38, i32 %37, !dbg !72
  %40 = load float, float* %39, align 4, !dbg !72
  store float %40, float* %22, align 4, !dbg !66
  store i32 0, i32* %20, align 4, !dbg !73
  br label %41, !dbg !75

; <label>:41:                                     ; preds = %65, %32
  %42 = load i32, i32* %20, align 4, !dbg !76
  %43 = load i32, i32* %11, align 4, !dbg !79
  %44 = icmp slt i32 %42, %43, !dbg !80
  br i1 %44, label %45, label %68, !dbg !81

; <label>:45:                                     ; preds = %41
  %46 = load float, float* %22, align 4, !dbg !82
  %47 = load i32, i32* %21, align 4, !dbg !84
  %48 = load i32, i32* %16, align 4, !dbg !85
  %49 = mul nsw i32 %47, %48, !dbg !86
  %50 = load i32, i32* %20, align 4, !dbg !87
  %51 = add nsw i32 %49, %50, !dbg !88
  %52 = load float*, float** %15, align 4, !dbg !89
  %53 = getelementptr inbounds float, float* %52, i32 %51, !dbg !89
  %54 = load float, float* %53, align 4, !dbg !89
  %55 = fmul float %46, %54, !dbg !90
  %56 = load i32, i32* %19, align 4, !dbg !91
  %57 = load i32, i32* %18, align 4, !dbg !92
  %58 = mul nsw i32 %56, %57, !dbg !93
  %59 = load i32, i32* %20, align 4, !dbg !94
  %60 = add nsw i32 %58, %59, !dbg !95
  %61 = load float*, float** %17, align 4, !dbg !96
  %62 = getelementptr inbounds float, float* %61, i32 %60, !dbg !96
  %63 = load float, float* %62, align 4, !dbg !97
  %64 = fadd float %63, %55, !dbg !97
  store float %64, float* %62, align 4, !dbg !97
  br label %65, !dbg !98

; <label>:65:                                     ; preds = %45
  %66 = load i32, i32* %20, align 4, !dbg !99
  %67 = add nsw i32 %66, 1, !dbg !99
  store i32 %67, i32* %20, align 4, !dbg !99
  br label %41, !dbg !101, !llvm.loop !102

; <label>:68:                                     ; preds = %41
  br label %69, !dbg !104

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %21, align 4, !dbg !105
  %71 = add nsw i32 %70, 1, !dbg !105
  store i32 %71, i32* %21, align 4, !dbg !105
  br label %28, !dbg !107, !llvm.loop !108

; <label>:72:                                     ; preds = %28
  br label %73, !dbg !110

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %19, align 4, !dbg !111
  %75 = add nsw i32 %74, 1, !dbg !111
  store i32 %75, i32* %19, align 4, !dbg !111
  br label %23, !dbg !113, !llvm.loop !114

; <label>:76:                                     ; preds = %23
  ret void, !dbg !116
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define void @gemm_fpga(i32, i32, i32, float*, i32, float*, i32, float*, i32) #0 !dbg !117 !xidane.fname !118 !xidane.function_declaration_type !17 !xidane.function_declaration_filename !18 !xidane.ExternC !19 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 4
  %20 = alloca float*, align 4
  %21 = alloca float*, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !119, metadata !21), !dbg !120
  store i32 %1, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !121, metadata !21), !dbg !122
  store i32 %2, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !123, metadata !21), !dbg !124
  store float* %3, float** %13, align 4
  call void @llvm.dbg.declare(metadata float** %13, metadata !125, metadata !21), !dbg !126
  store i32 %4, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !127, metadata !21), !dbg !128
  store float* %5, float** %15, align 4
  call void @llvm.dbg.declare(metadata float** %15, metadata !129, metadata !21), !dbg !130
  store i32 %6, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !131, metadata !21), !dbg !132
  store float* %7, float** %17, align 4
  call void @llvm.dbg.declare(metadata float** %17, metadata !133, metadata !21), !dbg !134
  store i32 %8, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !135, metadata !21), !dbg !136
  call void @llvm.dbg.declare(metadata float** %19, metadata !137, metadata !21), !dbg !138
  %22 = call i8* @sds_alloc(i32 18432), !dbg !139
  %23 = bitcast i8* %22 to float*, !dbg !140
  store float* %23, float** %19, align 4, !dbg !138
  %24 = load float*, float** %19, align 4, !dbg !141
  %25 = bitcast float* %24 to i8*, !dbg !142
  %26 = load float*, float** %13, align 4, !dbg !143
  %27 = bitcast float* %26 to i8*, !dbg !142
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %27, i32 18432, i32 4, i1 false), !dbg !142
  call void @llvm.dbg.declare(metadata float** %20, metadata !144, metadata !21), !dbg !145
  %28 = call i8* @sds_alloc(i32 97344), !dbg !146
  %29 = bitcast i8* %28 to float*, !dbg !147
  store float* %29, float** %20, align 4, !dbg !145
  %30 = load float*, float** %20, align 4, !dbg !148
  %31 = bitcast float* %30 to i8*, !dbg !149
  %32 = load float*, float** %15, align 4, !dbg !150
  %33 = bitcast float* %32 to i8*, !dbg !149
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %33, i32 97344, i32 4, i1 false), !dbg !149
  call void @llvm.dbg.declare(metadata float** %21, metadata !151, metadata !21), !dbg !152
  %34 = call i8* @sds_alloc(i32 21632), !dbg !153
  %35 = bitcast i8* %34 to float*, !dbg !154
  store float* %35, float** %21, align 4, !dbg !152
  %36 = load float*, float** %19, align 4, !dbg !155
  %37 = load float*, float** %20, align 4, !dbg !156
  %38 = load float*, float** %21, align 4, !dbg !157
  call void @cal_gemm(float* %36, float* %37, float* %38), !dbg !158
  %39 = load float*, float** %17, align 4, !dbg !159
  %40 = bitcast float* %39 to i8*, !dbg !160
  %41 = load float*, float** %21, align 4, !dbg !161
  %42 = bitcast float* %41 to i8*, !dbg !160
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %42, i32 21632, i32 4, i1 false), !dbg !160
  %43 = load float*, float** %19, align 4, !dbg !162
  %44 = bitcast float* %43 to i8*, !dbg !162
  call void @sds_free(i8* %44), !dbg !163
  %45 = load float*, float** %20, align 4, !dbg !164
  %46 = bitcast float* %45 to i8*, !dbg !164
  call void @sds_free(i8* %46), !dbg !165
  %47 = load float*, float** %21, align 4, !dbg !166
  %48 = bitcast float* %47 to i8*, !dbg !166
  call void @sds_free(i8* %48), !dbg !167
  ret void, !dbg !168
}

declare !xidane.fname !169 !xidane.function_declaration_type !170 !xidane.function_declaration_filename !171 !xidane.ExternC !19 i8* @sds_alloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

declare !xidane.fname !172 !xidane.function_declaration_type !173 !xidane.function_declaration_filename !174 !xidane.ExternC !19 void @cal_gemm(float*, float*, float*) #2

declare !xidane.fname !175 !xidane.function_declaration_type !176 !xidane.function_declaration_filename !171 !xidane.ExternC !19 void @sds_free(i8*) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/gemm.c", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32, align: 32)
!5 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 1, !"PIC Level", i32 2}
!11 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!12 = distinct !DISubprogram(name: "gemm", scope: !1, file: !1, line: 12, type: !13, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !15, !15, !4, !15, !4, !15, !4, !15}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{!"gemm"}
!17 = !{!"void.int.0.int.0.int.0.float *.1.int.0.float *.1.int.0.float *.1.int.0"}
!18 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/gemm.h"}
!19 = !{!"t"}
!20 = !DILocalVariable(name: "M", arg: 1, scope: !12, file: !1, line: 12, type: !15)
!21 = !DIExpression()
!22 = !DILocation(line: 12, column: 15, scope: !12)
!23 = !DILocalVariable(name: "N", arg: 2, scope: !12, file: !1, line: 12, type: !15)
!24 = !DILocation(line: 12, column: 22, scope: !12)
!25 = !DILocalVariable(name: "K", arg: 3, scope: !12, file: !1, line: 12, type: !15)
!26 = !DILocation(line: 12, column: 29, scope: !12)
!27 = !DILocalVariable(name: "A", arg: 4, scope: !12, file: !1, line: 13, type: !4)
!28 = !DILocation(line: 13, column: 16, scope: !12)
!29 = !DILocalVariable(name: "lda", arg: 5, scope: !12, file: !1, line: 13, type: !15)
!30 = !DILocation(line: 13, column: 23, scope: !12)
!31 = !DILocalVariable(name: "B", arg: 6, scope: !12, file: !1, line: 14, type: !4)
!32 = !DILocation(line: 14, column: 16, scope: !12)
!33 = !DILocalVariable(name: "ldb", arg: 7, scope: !12, file: !1, line: 14, type: !15)
!34 = !DILocation(line: 14, column: 23, scope: !12)
!35 = !DILocalVariable(name: "C", arg: 8, scope: !12, file: !1, line: 15, type: !4)
!36 = !DILocation(line: 15, column: 16, scope: !12)
!37 = !DILocalVariable(name: "ldc", arg: 9, scope: !12, file: !1, line: 15, type: !15)
!38 = !DILocation(line: 15, column: 23, scope: !12)
!39 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 17, type: !15)
!40 = !DILocation(line: 17, column: 9, scope: !12)
!41 = !DILocalVariable(name: "j", scope: !12, file: !1, line: 17, type: !15)
!42 = !DILocation(line: 17, column: 11, scope: !12)
!43 = !DILocalVariable(name: "k", scope: !12, file: !1, line: 17, type: !15)
!44 = !DILocation(line: 17, column: 13, scope: !12)
!45 = !DILocation(line: 18, column: 11, scope: !46)
!46 = distinct !DILexicalBlock(scope: !12, file: !1, line: 18, column: 5)
!47 = !DILocation(line: 18, column: 9, scope: !46)
!48 = !DILocation(line: 18, column: 16, scope: !49)
!49 = !DILexicalBlockFile(scope: !50, file: !1, discriminator: 1)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 18, column: 5)
!51 = !DILocation(line: 18, column: 20, scope: !49)
!52 = !DILocation(line: 18, column: 18, scope: !49)
!53 = !DILocation(line: 18, column: 5, scope: !49)
!54 = !DILocation(line: 19, column: 15, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 19, column: 9)
!56 = distinct !DILexicalBlock(scope: !50, file: !1, line: 18, column: 27)
!57 = !DILocation(line: 19, column: 13, scope: !55)
!58 = !DILocation(line: 19, column: 20, scope: !59)
!59 = !DILexicalBlockFile(scope: !60, file: !1, discriminator: 1)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 19, column: 9)
!61 = !DILocation(line: 19, column: 24, scope: !59)
!62 = !DILocation(line: 19, column: 22, scope: !59)
!63 = !DILocation(line: 19, column: 9, scope: !59)
!64 = !DILocalVariable(name: "A_PART", scope: !65, file: !1, line: 20, type: !5)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 19, column: 31)
!66 = !DILocation(line: 20, column: 28, scope: !65)
!67 = !DILocation(line: 20, column: 39, scope: !65)
!68 = !DILocation(line: 20, column: 41, scope: !65)
!69 = !DILocation(line: 20, column: 40, scope: !65)
!70 = !DILocation(line: 20, column: 45, scope: !65)
!71 = !DILocation(line: 20, column: 44, scope: !65)
!72 = !DILocation(line: 20, column: 37, scope: !65)
!73 = !DILocation(line: 21, column: 19, scope: !74)
!74 = distinct !DILexicalBlock(scope: !65, file: !1, line: 21, column: 13)
!75 = !DILocation(line: 21, column: 17, scope: !74)
!76 = !DILocation(line: 21, column: 24, scope: !77)
!77 = !DILexicalBlockFile(scope: !78, file: !1, discriminator: 1)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 21, column: 13)
!79 = !DILocation(line: 21, column: 28, scope: !77)
!80 = !DILocation(line: 21, column: 26, scope: !77)
!81 = !DILocation(line: 21, column: 13, scope: !77)
!82 = !DILocation(line: 22, column: 31, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 21, column: 35)
!84 = !DILocation(line: 22, column: 42, scope: !83)
!85 = !DILocation(line: 22, column: 44, scope: !83)
!86 = !DILocation(line: 22, column: 43, scope: !83)
!87 = !DILocation(line: 22, column: 48, scope: !83)
!88 = !DILocation(line: 22, column: 47, scope: !83)
!89 = !DILocation(line: 22, column: 40, scope: !83)
!90 = !DILocation(line: 22, column: 38, scope: !83)
!91 = !DILocation(line: 22, column: 19, scope: !83)
!92 = !DILocation(line: 22, column: 21, scope: !83)
!93 = !DILocation(line: 22, column: 20, scope: !83)
!94 = !DILocation(line: 22, column: 25, scope: !83)
!95 = !DILocation(line: 22, column: 24, scope: !83)
!96 = !DILocation(line: 22, column: 17, scope: !83)
!97 = !DILocation(line: 22, column: 28, scope: !83)
!98 = !DILocation(line: 23, column: 13, scope: !83)
!99 = !DILocation(line: 21, column: 31, scope: !100)
!100 = !DILexicalBlockFile(scope: !78, file: !1, discriminator: 2)
!101 = !DILocation(line: 21, column: 13, scope: !100)
!102 = distinct !{!102, !103}
!103 = !DILocation(line: 21, column: 13, scope: !65)
!104 = !DILocation(line: 24, column: 9, scope: !65)
!105 = !DILocation(line: 19, column: 27, scope: !106)
!106 = !DILexicalBlockFile(scope: !60, file: !1, discriminator: 2)
!107 = !DILocation(line: 19, column: 9, scope: !106)
!108 = distinct !{!108, !109}
!109 = !DILocation(line: 19, column: 9, scope: !56)
!110 = !DILocation(line: 25, column: 5, scope: !56)
!111 = !DILocation(line: 18, column: 23, scope: !112)
!112 = !DILexicalBlockFile(scope: !50, file: !1, discriminator: 2)
!113 = !DILocation(line: 18, column: 5, scope: !112)
!114 = distinct !{!114, !115}
!115 = !DILocation(line: 18, column: 5, scope: !12)
!116 = !DILocation(line: 26, column: 1, scope: !12)
!117 = distinct !DISubprogram(name: "gemm_fpga", scope: !1, file: !1, line: 29, type: !13, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!118 = !{!"gemm_fpga"}
!119 = !DILocalVariable(name: "M", arg: 1, scope: !117, file: !1, line: 29, type: !15)
!120 = !DILocation(line: 29, column: 20, scope: !117)
!121 = !DILocalVariable(name: "N", arg: 2, scope: !117, file: !1, line: 29, type: !15)
!122 = !DILocation(line: 29, column: 27, scope: !117)
!123 = !DILocalVariable(name: "K", arg: 3, scope: !117, file: !1, line: 29, type: !15)
!124 = !DILocation(line: 29, column: 34, scope: !117)
!125 = !DILocalVariable(name: "A", arg: 4, scope: !117, file: !1, line: 30, type: !4)
!126 = !DILocation(line: 30, column: 16, scope: !117)
!127 = !DILocalVariable(name: "lda", arg: 5, scope: !117, file: !1, line: 30, type: !15)
!128 = !DILocation(line: 30, column: 23, scope: !117)
!129 = !DILocalVariable(name: "B", arg: 6, scope: !117, file: !1, line: 31, type: !4)
!130 = !DILocation(line: 31, column: 16, scope: !117)
!131 = !DILocalVariable(name: "ldb", arg: 7, scope: !117, file: !1, line: 31, type: !15)
!132 = !DILocation(line: 31, column: 23, scope: !117)
!133 = !DILocalVariable(name: "C", arg: 8, scope: !117, file: !1, line: 32, type: !4)
!134 = !DILocation(line: 32, column: 16, scope: !117)
!135 = !DILocalVariable(name: "ldc", arg: 9, scope: !117, file: !1, line: 32, type: !15)
!136 = !DILocation(line: 32, column: 23, scope: !117)
!137 = !DILocalVariable(name: "A_buf", scope: !117, file: !1, line: 34, type: !4)
!138 = !DILocation(line: 34, column: 9, scope: !117)
!139 = !DILocation(line: 34, column: 26, scope: !117)
!140 = !DILocation(line: 34, column: 17, scope: !117)
!141 = !DILocation(line: 35, column: 9, scope: !117)
!142 = !DILocation(line: 35, column: 2, scope: !117)
!143 = !DILocation(line: 35, column: 16, scope: !117)
!144 = !DILocalVariable(name: "B_buf", scope: !117, file: !1, line: 37, type: !4)
!145 = !DILocation(line: 37, column: 9, scope: !117)
!146 = !DILocation(line: 37, column: 26, scope: !117)
!147 = !DILocation(line: 37, column: 17, scope: !117)
!148 = !DILocation(line: 38, column: 9, scope: !117)
!149 = !DILocation(line: 38, column: 2, scope: !117)
!150 = !DILocation(line: 38, column: 16, scope: !117)
!151 = !DILocalVariable(name: "C_buf", scope: !117, file: !1, line: 40, type: !4)
!152 = !DILocation(line: 40, column: 9, scope: !117)
!153 = !DILocation(line: 40, column: 26, scope: !117)
!154 = !DILocation(line: 40, column: 17, scope: !117)
!155 = !DILocation(line: 42, column: 11, scope: !117)
!156 = !DILocation(line: 42, column: 18, scope: !117)
!157 = !DILocation(line: 42, column: 25, scope: !117)
!158 = !DILocation(line: 42, column: 2, scope: !117)
!159 = !DILocation(line: 43, column: 9, scope: !117)
!160 = !DILocation(line: 43, column: 2, scope: !117)
!161 = !DILocation(line: 43, column: 12, scope: !117)
!162 = !DILocation(line: 45, column: 11, scope: !117)
!163 = !DILocation(line: 45, column: 2, scope: !117)
!164 = !DILocation(line: 46, column: 11, scope: !117)
!165 = !DILocation(line: 46, column: 2, scope: !117)
!166 = !DILocation(line: 47, column: 11, scope: !117)
!167 = !DILocation(line: 47, column: 2, scope: !117)
!168 = !DILocation(line: 48, column: 1, scope: !117)
!169 = !{!"sds_alloc"}
!170 = !{!"void .unsigned int.0"}
!171 = !{!"/opt/Xilinx/SDx/2018.2/target/aarch32-linux/include/sds_lib.h"}
!172 = !{!"cal_gemm"}
!173 = !{!"void.float *.1.float *.1.float *.1"}
!174 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.h"}
!175 = !{!"sds_free"}
!176 = !{!"void.void *.1"}
