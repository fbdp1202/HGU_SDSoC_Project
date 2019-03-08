; ModuleID = '/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/image.c'
source_filename = "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/image.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7--linux-gnueabihf"

; Function Attrs: nounwind
define void @set_random_input(i8*, i32) #0 !dbg !11 !xidane.fname !16 !xidane.function_declaration_type !17 !xidane.function_declaration_filename !18 !xidane.ExternC !19 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !20, metadata !21), !dbg !22
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !21), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %5, metadata !25, metadata !21), !dbg !26
  store i32 0, i32* %5, align 4, !dbg !27
  br label %6, !dbg !29

; <label>:6:                                      ; preds = %17, %2
  %7 = load i32, i32* %5, align 4, !dbg !30
  %8 = load i32, i32* %4, align 4, !dbg !33
  %9 = icmp slt i32 %7, %8, !dbg !34
  br i1 %9, label %10, label %20, !dbg !35

; <label>:10:                                     ; preds = %6
  %11 = call i32 @rand() #3, !dbg !36
  %12 = srem i32 %11, 256, !dbg !37
  %13 = trunc i32 %12 to i8, !dbg !38
  %14 = load i32, i32* %5, align 4, !dbg !39
  %15 = load i8*, i8** %3, align 4, !dbg !40
  %16 = getelementptr inbounds i8, i8* %15, i32 %14, !dbg !40
  store i8 %13, i8* %16, align 1, !dbg !41
  br label %17, !dbg !40

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %5, align 4, !dbg !42
  %19 = add nsw i32 %18, 1, !dbg !42
  store i32 %19, i32* %5, align 4, !dbg !42
  br label %6, !dbg !44, !llvm.loop !45

; <label>:20:                                     ; preds = %6
  ret void, !dbg !47
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !xidane.fname !48 !xidane.function_declaration_type !49 !xidane.function_declaration_filename !50 !xidane.ExternC !19 i32 @rand() #2

; Function Attrs: nounwind
define void @copy_input(i8*, float*, i32) #0 !dbg !51 !xidane.fname !56 !xidane.function_declaration_type !57 !xidane.function_declaration_filename !18 !xidane.ExternC !19 {
  %4 = alloca i8*, align 4
  %5 = alloca float*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !58, metadata !21), !dbg !59
  store float* %1, float** %5, align 4
  call void @llvm.dbg.declare(metadata float** %5, metadata !60, metadata !21), !dbg !61
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !62, metadata !21), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %7, metadata !64, metadata !21), !dbg !65
  store i32 0, i32* %7, align 4, !dbg !66
  br label %8, !dbg !68

; <label>:8:                                      ; preds = %23, %3
  %9 = load i32, i32* %7, align 4, !dbg !69
  %10 = load i32, i32* %6, align 4, !dbg !72
  %11 = icmp slt i32 %9, %10, !dbg !73
  br i1 %11, label %12, label %26, !dbg !74

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %7, align 4, !dbg !75
  %14 = load i8*, i8** %4, align 4, !dbg !76
  %15 = getelementptr inbounds i8, i8* %14, i32 %13, !dbg !76
  %16 = load i8, i8* %15, align 1, !dbg !76
  %17 = zext i8 %16 to i32, !dbg !76
  %18 = sitofp i32 %17 to float, !dbg !76
  %19 = fdiv float %18, 2.550000e+02, !dbg !77
  %20 = load i32, i32* %7, align 4, !dbg !78
  %21 = load float*, float** %5, align 4, !dbg !79
  %22 = getelementptr inbounds float, float* %21, i32 %20, !dbg !79
  store float %19, float* %22, align 4, !dbg !80
  br label %23, !dbg !79

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* %7, align 4, !dbg !81
  %25 = add nsw i32 %24, 1, !dbg !81
  store i32 %25, i32* %7, align 4, !dbg !81
  br label %8, !dbg !83, !llvm.loop !84

; <label>:26:                                     ; preds = %8
  ret void, !dbg !86
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/image.c", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 1, !"PIC Level", i32 2}
!10 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!11 = distinct !DISubprogram(name: "set_random_input", scope: !1, file: !1, line: 5, type: !12, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !15}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{!"set_random_input"}
!17 = !{!"void.unsigned char *.1.int.0"}
!18 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/image.c"}
!19 = !{!"t"}
!20 = !DILocalVariable(name: "inputs", arg: 1, scope: !11, file: !1, line: 5, type: !14)
!21 = !DIExpression()
!22 = !DILocation(line: 5, column: 38, scope: !11)
!23 = !DILocalVariable(name: "input_size", arg: 2, scope: !11, file: !1, line: 5, type: !15)
!24 = !DILocation(line: 5, column: 50, scope: !11)
!25 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 6, type: !15)
!26 = !DILocation(line: 6, column: 6, scope: !11)
!27 = !DILocation(line: 7, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !11, file: !1, line: 7, column: 2)
!29 = !DILocation(line: 7, column: 7, scope: !28)
!30 = !DILocation(line: 7, column: 12, scope: !31)
!31 = !DILexicalBlockFile(scope: !32, file: !1, discriminator: 1)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 7, column: 2)
!33 = !DILocation(line: 7, column: 14, scope: !31)
!34 = !DILocation(line: 7, column: 13, scope: !31)
!35 = !DILocation(line: 7, column: 2, scope: !31)
!36 = !DILocation(line: 8, column: 31, scope: !32)
!37 = !DILocation(line: 8, column: 37, scope: !32)
!38 = !DILocation(line: 8, column: 15, scope: !32)
!39 = !DILocation(line: 8, column: 10, scope: !32)
!40 = !DILocation(line: 8, column: 3, scope: !32)
!41 = !DILocation(line: 8, column: 13, scope: !32)
!42 = !DILocation(line: 7, column: 27, scope: !43)
!43 = !DILexicalBlockFile(scope: !32, file: !1, discriminator: 2)
!44 = !DILocation(line: 7, column: 2, scope: !43)
!45 = distinct !{!45, !46}
!46 = !DILocation(line: 7, column: 2, scope: !11)
!47 = !DILocation(line: 9, column: 1, scope: !11)
!48 = !{!"rand"}
!49 = !{!"int."}
!50 = !{!"/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/stdlib.h"}
!51 = distinct !DISubprogram(name: "copy_input", scope: !1, file: !1, line: 11, type: !52, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !14, !54, !15}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32, align: 32)
!55 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!56 = !{!"copy_input"}
!57 = !{!"void.unsigned char *.1.float *.1.int.0"}
!58 = !DILocalVariable(name: "src", arg: 1, scope: !51, file: !1, line: 11, type: !14)
!59 = !DILocation(line: 11, column: 32, scope: !51)
!60 = !DILocalVariable(name: "dst", arg: 2, scope: !51, file: !1, line: 11, type: !54)
!61 = !DILocation(line: 11, column: 44, scope: !51)
!62 = !DILocalVariable(name: "input_size", arg: 3, scope: !51, file: !1, line: 11, type: !15)
!63 = !DILocation(line: 11, column: 53, scope: !51)
!64 = !DILocalVariable(name: "i", scope: !51, file: !1, line: 12, type: !15)
!65 = !DILocation(line: 12, column: 6, scope: !51)
!66 = !DILocation(line: 13, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !51, file: !1, line: 13, column: 2)
!68 = !DILocation(line: 13, column: 7, scope: !67)
!69 = !DILocation(line: 13, column: 12, scope: !70)
!70 = !DILexicalBlockFile(scope: !71, file: !1, discriminator: 1)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 13, column: 2)
!72 = !DILocation(line: 13, column: 14, scope: !70)
!73 = !DILocation(line: 13, column: 13, scope: !70)
!74 = !DILocation(line: 13, column: 2, scope: !70)
!75 = !DILocation(line: 14, column: 16, scope: !71)
!76 = !DILocation(line: 14, column: 12, scope: !71)
!77 = !DILocation(line: 14, column: 18, scope: !71)
!78 = !DILocation(line: 14, column: 7, scope: !71)
!79 = !DILocation(line: 14, column: 3, scope: !71)
!80 = !DILocation(line: 14, column: 10, scope: !71)
!81 = !DILocation(line: 13, column: 27, scope: !82)
!82 = !DILexicalBlockFile(scope: !71, file: !1, discriminator: 2)
!83 = !DILocation(line: 13, column: 2, scope: !82)
!84 = distinct !{!84, !85}
!85 = !DILocation(line: 13, column: 2, scope: !51)
!86 = !DILocation(line: 15, column: 1, scope: !51)
