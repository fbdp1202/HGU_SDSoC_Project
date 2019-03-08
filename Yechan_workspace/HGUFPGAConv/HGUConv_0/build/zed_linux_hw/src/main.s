; ModuleID = '/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/main.c'
source_filename = "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/main.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7--linux-gnueabihf"

; Function Attrs: nounwind
define i32 @main() #0 !dbg !9 !xidane.fname !13 !xidane.function_declaration_type !14 !xidane.function_declaration_filename !15 !xidane.ExternC !16 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @time(i32* null) #3, !dbg !17
  call void @srand(i32 %2) #3, !dbg !18
  call void bitcast (void (...)* @test_convolution to void ()*)(), !dbg !20
  ret i32 0, !dbg !21
}

; Function Attrs: nounwind
declare !xidane.fname !22 !xidane.function_declaration_type !23 !xidane.function_declaration_filename !24 !xidane.ExternC !16 void @srand(i32) #1

; Function Attrs: nounwind
declare !xidane.fname !25 !xidane.function_declaration_type !26 !xidane.function_declaration_filename !27 !xidane.ExternC !16 i32 @time(i32*) #1

declare !xidane.fname !28 !xidane.function_declaration_type !29 !xidane.function_declaration_filename !15 !xidane.ExternC !16 void @test_convolution(...) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/main.c", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 1, !"PIC Level", i32 2}
!8 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !10, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, unit: !0, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !{!"main"}
!14 = !{!"int."}
!15 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/main.c"}
!16 = !{!"t"}
!17 = !DILocation(line: 12, column: 8, scope: !9)
!18 = !DILocation(line: 12, column: 2, scope: !19)
!19 = !DILexicalBlockFile(scope: !9, file: !1, discriminator: 1)
!20 = !DILocation(line: 13, column: 2, scope: !9)
!21 = !DILocation(line: 14, column: 2, scope: !9)
!22 = !{!"srand"}
!23 = !{!"void.unsigned int.0"}
!24 = !{!"/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/stdlib.h"}
!25 = !{!"time"}
!26 = !{!"time_t.time_t *.1"}
!27 = !{!"/opt/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/time.h"}
!28 = !{!"test_convolution"}
!29 = !{!"void."}
