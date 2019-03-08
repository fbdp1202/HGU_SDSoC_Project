; ModuleID = '/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/im2col.c'
source_filename = "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/im2col.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7--linux-gnueabihf"

; Function Attrs: nounwind
define float @im2col_get_pixel(float*, i32, i32, i32, i32, i32, i32, i32) #0 !dbg !9 !xidane.fname !15 !xidane.function_declaration_type !16 !xidane.function_declaration_filename !17 !xidane.ExternC !18 {
  %9 = alloca float, align 4
  %10 = alloca float*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store float* %0, float** %10, align 4
  call void @llvm.dbg.declare(metadata float** %10, metadata !19, metadata !20), !dbg !21
  store i32 %1, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !22, metadata !20), !dbg !23
  store i32 %2, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !24, metadata !20), !dbg !25
  store i32 %3, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !26, metadata !20), !dbg !27
  store i32 %4, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !28, metadata !20), !dbg !29
  store i32 %5, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !30, metadata !20), !dbg !31
  store i32 %6, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !32, metadata !20), !dbg !33
  store i32 %7, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !34, metadata !20), !dbg !35
  %18 = load i32, i32* %17, align 4, !dbg !36
  %19 = load i32, i32* %14, align 4, !dbg !37
  %20 = sub nsw i32 %19, %18, !dbg !37
  store i32 %20, i32* %14, align 4, !dbg !37
  %21 = load i32, i32* %17, align 4, !dbg !38
  %22 = load i32, i32* %15, align 4, !dbg !39
  %23 = sub nsw i32 %22, %21, !dbg !39
  store i32 %23, i32* %15, align 4, !dbg !39
  %24 = load i32, i32* %14, align 4, !dbg !40
  %25 = icmp slt i32 %24, 0, !dbg !42
  br i1 %25, label %37, label %26, !dbg !43

; <label>:26:                                     ; preds = %8
  %27 = load i32, i32* %15, align 4, !dbg !44
  %28 = icmp slt i32 %27, 0, !dbg !46
  br i1 %28, label %37, label %29, !dbg !47

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %14, align 4, !dbg !48
  %31 = load i32, i32* %11, align 4, !dbg !49
  %32 = icmp sge i32 %30, %31, !dbg !50
  br i1 %32, label %37, label %33, !dbg !51

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %15, align 4, !dbg !52
  %35 = load i32, i32* %12, align 4, !dbg !53
  %36 = icmp sge i32 %34, %35, !dbg !54
  br i1 %36, label %37, label %38, !dbg !55

; <label>:37:                                     ; preds = %33, %29, %26, %8
  store float 0.000000e+00, float* %9, align 4, !dbg !57
  br label %51, !dbg !57

; <label>:38:                                     ; preds = %33
  %39 = load i32, i32* %15, align 4, !dbg !59
  %40 = load i32, i32* %12, align 4, !dbg !60
  %41 = load i32, i32* %14, align 4, !dbg !61
  %42 = load i32, i32* %11, align 4, !dbg !62
  %43 = load i32, i32* %16, align 4, !dbg !63
  %44 = mul nsw i32 %42, %43, !dbg !64
  %45 = add nsw i32 %41, %44, !dbg !65
  %46 = mul nsw i32 %40, %45, !dbg !66
  %47 = add nsw i32 %39, %46, !dbg !67
  %48 = load float*, float** %10, align 4, !dbg !68
  %49 = getelementptr inbounds float, float* %48, i32 %47, !dbg !68
  %50 = load float, float* %49, align 4, !dbg !68
  store float %50, float* %9, align 4, !dbg !69
  br label %51, !dbg !69

; <label>:51:                                     ; preds = %38, %37
  %52 = load float, float* %9, align 4, !dbg !70
  ret float %52, !dbg !70
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define void @im2col_cpu(float*, i32, i32, i32, i32, i32, i32, float*) #0 !dbg !71 !xidane.fname !74 !xidane.function_declaration_type !75 !xidane.function_declaration_filename !76 !xidane.ExternC !18 {
  %9 = alloca float*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store float* %0, float** %9, align 4
  call void @llvm.dbg.declare(metadata float** %9, metadata !77, metadata !20), !dbg !78
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !79, metadata !20), !dbg !80
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !81, metadata !20), !dbg !82
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !83, metadata !20), !dbg !84
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !85, metadata !20), !dbg !86
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !87, metadata !20), !dbg !88
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !89, metadata !20), !dbg !90
  store float* %7, float** %16, align 4
  call void @llvm.dbg.declare(metadata float** %16, metadata !91, metadata !20), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %17, metadata !93, metadata !20), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %18, metadata !95, metadata !20), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %19, metadata !97, metadata !20), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %20, metadata !99, metadata !20), !dbg !100
  %29 = load i32, i32* %11, align 4, !dbg !101
  %30 = load i32, i32* %15, align 4, !dbg !102
  %31 = mul nsw i32 2, %30, !dbg !103
  %32 = add nsw i32 %29, %31, !dbg !104
  %33 = load i32, i32* %13, align 4, !dbg !105
  %34 = sub nsw i32 %32, %33, !dbg !106
  %35 = load i32, i32* %14, align 4, !dbg !107
  %36 = sdiv i32 %34, %35, !dbg !108
  %37 = add nsw i32 %36, 1, !dbg !109
  store i32 %37, i32* %20, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %21, metadata !110, metadata !20), !dbg !111
  %38 = load i32, i32* %12, align 4, !dbg !112
  %39 = load i32, i32* %15, align 4, !dbg !113
  %40 = mul nsw i32 2, %39, !dbg !114
  %41 = add nsw i32 %38, %40, !dbg !115
  %42 = load i32, i32* %13, align 4, !dbg !116
  %43 = sub nsw i32 %41, %42, !dbg !117
  %44 = load i32, i32* %14, align 4, !dbg !118
  %45 = sdiv i32 %43, %44, !dbg !119
  %46 = add nsw i32 %45, 1, !dbg !120
  store i32 %46, i32* %21, align 4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %22, metadata !121, metadata !20), !dbg !122
  %47 = load i32, i32* %10, align 4, !dbg !123
  %48 = load i32, i32* %13, align 4, !dbg !124
  %49 = mul nsw i32 %47, %48, !dbg !125
  %50 = load i32, i32* %13, align 4, !dbg !126
  %51 = mul nsw i32 %49, %50, !dbg !127
  store i32 %51, i32* %22, align 4, !dbg !122
  store i32 0, i32* %17, align 4, !dbg !128
  br label %52, !dbg !130

; <label>:52:                                     ; preds = %119, %8
  %53 = load i32, i32* %17, align 4, !dbg !131
  %54 = load i32, i32* %22, align 4, !dbg !134
  %55 = icmp slt i32 %53, %54, !dbg !135
  br i1 %55, label %56, label %122, !dbg !136

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata i32* %23, metadata !137, metadata !20), !dbg !139
  %57 = load i32, i32* %17, align 4, !dbg !140
  %58 = load i32, i32* %13, align 4, !dbg !141
  %59 = srem i32 %57, %58, !dbg !142
  store i32 %59, i32* %23, align 4, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %24, metadata !143, metadata !20), !dbg !144
  %60 = load i32, i32* %17, align 4, !dbg !145
  %61 = load i32, i32* %13, align 4, !dbg !146
  %62 = sdiv i32 %60, %61, !dbg !147
  %63 = load i32, i32* %13, align 4, !dbg !148
  %64 = srem i32 %62, %63, !dbg !149
  store i32 %64, i32* %24, align 4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %25, metadata !150, metadata !20), !dbg !151
  %65 = load i32, i32* %17, align 4, !dbg !152
  %66 = load i32, i32* %13, align 4, !dbg !153
  %67 = sdiv i32 %65, %66, !dbg !154
  %68 = load i32, i32* %13, align 4, !dbg !155
  %69 = sdiv i32 %67, %68, !dbg !156
  store i32 %69, i32* %25, align 4, !dbg !151
  store i32 0, i32* %18, align 4, !dbg !157
  br label %70, !dbg !159

; <label>:70:                                     ; preds = %115, %56
  %71 = load i32, i32* %18, align 4, !dbg !160
  %72 = load i32, i32* %20, align 4, !dbg !163
  %73 = icmp slt i32 %71, %72, !dbg !164
  br i1 %73, label %74, label %118, !dbg !165

; <label>:74:                                     ; preds = %70
  store i32 0, i32* %19, align 4, !dbg !166
  br label %75, !dbg !169

; <label>:75:                                     ; preds = %111, %74
  %76 = load i32, i32* %19, align 4, !dbg !170
  %77 = load i32, i32* %21, align 4, !dbg !173
  %78 = icmp slt i32 %76, %77, !dbg !174
  br i1 %78, label %79, label %114, !dbg !175

; <label>:79:                                     ; preds = %75
  call void @llvm.dbg.declare(metadata i32* %26, metadata !176, metadata !20), !dbg !178
  %80 = load i32, i32* %24, align 4, !dbg !179
  %81 = load i32, i32* %18, align 4, !dbg !180
  %82 = load i32, i32* %14, align 4, !dbg !181
  %83 = mul nsw i32 %81, %82, !dbg !182
  %84 = add nsw i32 %80, %83, !dbg !183
  store i32 %84, i32* %26, align 4, !dbg !178
  call void @llvm.dbg.declare(metadata i32* %27, metadata !184, metadata !20), !dbg !185
  %85 = load i32, i32* %23, align 4, !dbg !186
  %86 = load i32, i32* %19, align 4, !dbg !187
  %87 = load i32, i32* %14, align 4, !dbg !188
  %88 = mul nsw i32 %86, %87, !dbg !189
  %89 = add nsw i32 %85, %88, !dbg !190
  store i32 %89, i32* %27, align 4, !dbg !185
  call void @llvm.dbg.declare(metadata i32* %28, metadata !191, metadata !20), !dbg !192
  %90 = load i32, i32* %17, align 4, !dbg !193
  %91 = load i32, i32* %20, align 4, !dbg !194
  %92 = mul nsw i32 %90, %91, !dbg !195
  %93 = load i32, i32* %18, align 4, !dbg !196
  %94 = add nsw i32 %92, %93, !dbg !197
  %95 = load i32, i32* %21, align 4, !dbg !198
  %96 = mul nsw i32 %94, %95, !dbg !199
  %97 = load i32, i32* %19, align 4, !dbg !200
  %98 = add nsw i32 %96, %97, !dbg !201
  store i32 %98, i32* %28, align 4, !dbg !192
  %99 = load float*, float** %9, align 4, !dbg !202
  %100 = load i32, i32* %11, align 4, !dbg !203
  %101 = load i32, i32* %12, align 4, !dbg !204
  %102 = load i32, i32* %10, align 4, !dbg !205
  %103 = load i32, i32* %26, align 4, !dbg !206
  %104 = load i32, i32* %27, align 4, !dbg !207
  %105 = load i32, i32* %25, align 4, !dbg !208
  %106 = load i32, i32* %15, align 4, !dbg !209
  %107 = call float @im2col_get_pixel(float* %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106), !dbg !210
  %108 = load i32, i32* %28, align 4, !dbg !211
  %109 = load float*, float** %16, align 4, !dbg !212
  %110 = getelementptr inbounds float, float* %109, i32 %108, !dbg !212
  store float %107, float* %110, align 4, !dbg !213
  br label %111, !dbg !214

; <label>:111:                                    ; preds = %79
  %112 = load i32, i32* %19, align 4, !dbg !215
  %113 = add nsw i32 %112, 1, !dbg !215
  store i32 %113, i32* %19, align 4, !dbg !215
  br label %75, !dbg !217, !llvm.loop !218

; <label>:114:                                    ; preds = %75
  br label %115, !dbg !220

; <label>:115:                                    ; preds = %114
  %116 = load i32, i32* %18, align 4, !dbg !221
  %117 = add nsw i32 %116, 1, !dbg !221
  store i32 %117, i32* %18, align 4, !dbg !221
  br label %70, !dbg !223, !llvm.loop !224

; <label>:118:                                    ; preds = %70
  br label %119, !dbg !226

; <label>:119:                                    ; preds = %118
  %120 = load i32, i32* %17, align 4, !dbg !227
  %121 = add nsw i32 %120, 1, !dbg !227
  store i32 %121, i32* %17, align 4, !dbg !227
  br label %52, !dbg !229, !llvm.loop !230

; <label>:122:                                    ; preds = %52
  ret void, !dbg !232
}

; Function Attrs: nounwind
define void @im2col_fpga(float*, i32, i32, i32, i32, i32, i32, float*) #0 !dbg !233 !xidane.fname !234 !xidane.function_declaration_type !75 !xidane.function_declaration_filename !76 !xidane.ExternC !18 {
  %9 = alloca float*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store float* %0, float** %9, align 4
  call void @llvm.dbg.declare(metadata float** %9, metadata !235, metadata !20), !dbg !236
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !237, metadata !20), !dbg !238
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !239, metadata !20), !dbg !240
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !241, metadata !20), !dbg !242
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !243, metadata !20), !dbg !244
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !245, metadata !20), !dbg !246
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !247, metadata !20), !dbg !248
  store float* %7, float** %16, align 4
  call void @llvm.dbg.declare(metadata float** %16, metadata !249, metadata !20), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %17, metadata !251, metadata !20), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %18, metadata !253, metadata !20), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %19, metadata !255, metadata !20), !dbg !256
  call void @llvm.dbg.declare(metadata i32* %20, metadata !257, metadata !20), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %21, metadata !259, metadata !20), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %22, metadata !261, metadata !20), !dbg !262
  %31 = load i32, i32* %11, align 4, !dbg !263
  %32 = load i32, i32* %15, align 4, !dbg !264
  %33 = mul nsw i32 2, %32, !dbg !265
  %34 = add nsw i32 %31, %33, !dbg !266
  %35 = load i32, i32* %13, align 4, !dbg !267
  %36 = sub nsw i32 %34, %35, !dbg !268
  %37 = load i32, i32* %14, align 4, !dbg !269
  %38 = sdiv i32 %36, %37, !dbg !270
  %39 = add nsw i32 %38, 1, !dbg !271
  store i32 %39, i32* %22, align 4, !dbg !262
  call void @llvm.dbg.declare(metadata i32* %23, metadata !272, metadata !20), !dbg !273
  %40 = load i32, i32* %12, align 4, !dbg !274
  %41 = load i32, i32* %15, align 4, !dbg !275
  %42 = mul nsw i32 2, %41, !dbg !276
  %43 = add nsw i32 %40, %42, !dbg !277
  %44 = load i32, i32* %13, align 4, !dbg !278
  %45 = sub nsw i32 %43, %44, !dbg !279
  %46 = load i32, i32* %14, align 4, !dbg !280
  %47 = sdiv i32 %45, %46, !dbg !281
  %48 = add nsw i32 %47, 1, !dbg !282
  store i32 %48, i32* %23, align 4, !dbg !273
  call void @llvm.dbg.declare(metadata i32* %24, metadata !283, metadata !20), !dbg !284
  %49 = load i32, i32* %10, align 4, !dbg !285
  %50 = load i32, i32* %13, align 4, !dbg !286
  %51 = mul nsw i32 %49, %50, !dbg !287
  %52 = load i32, i32* %13, align 4, !dbg !288
  %53 = mul nsw i32 %51, %52, !dbg !289
  store i32 %53, i32* %24, align 4, !dbg !284
  store i32 0, i32* %17, align 4, !dbg !290
  br label %54, !dbg !292

; <label>:54:                                     ; preds = %144, %8
  %55 = load i32, i32* %17, align 4, !dbg !293
  %56 = load i32, i32* %24, align 4, !dbg !296
  %57 = icmp slt i32 %55, %56, !dbg !297
  br i1 %57, label %58, label %147, !dbg !298

; <label>:58:                                     ; preds = %54
  store i32 0, i32* %20, align 4, !dbg !299
  br label %59, !dbg !302

; <label>:59:                                     ; preds = %140, %58
  %60 = load i32, i32* %20, align 4, !dbg !303
  %61 = icmp slt i32 %60, 144, !dbg !306
  br i1 %61, label %62, label %143, !dbg !307

; <label>:62:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %25, metadata !308, metadata !20), !dbg !310
  %63 = load i32, i32* %17, align 4, !dbg !311
  %64 = load i32, i32* %20, align 4, !dbg !312
  %65 = add nsw i32 %63, %64, !dbg !313
  %66 = load i32, i32* %13, align 4, !dbg !314
  %67 = srem i32 %65, %66, !dbg !315
  store i32 %67, i32* %25, align 4, !dbg !310
  call void @llvm.dbg.declare(metadata i32* %26, metadata !316, metadata !20), !dbg !317
  %68 = load i32, i32* %17, align 4, !dbg !318
  %69 = load i32, i32* %20, align 4, !dbg !319
  %70 = add nsw i32 %68, %69, !dbg !320
  %71 = load i32, i32* %13, align 4, !dbg !321
  %72 = sdiv i32 %70, %71, !dbg !322
  %73 = load i32, i32* %13, align 4, !dbg !323
  %74 = srem i32 %72, %73, !dbg !324
  store i32 %74, i32* %26, align 4, !dbg !317
  call void @llvm.dbg.declare(metadata i32* %27, metadata !325, metadata !20), !dbg !326
  %75 = load i32, i32* %17, align 4, !dbg !327
  %76 = load i32, i32* %20, align 4, !dbg !328
  %77 = add nsw i32 %75, %76, !dbg !329
  %78 = load i32, i32* %13, align 4, !dbg !330
  %79 = sdiv i32 %77, %78, !dbg !331
  %80 = load i32, i32* %13, align 4, !dbg !332
  %81 = sdiv i32 %79, %80, !dbg !333
  store i32 %81, i32* %27, align 4, !dbg !326
  store i32 0, i32* %21, align 4, !dbg !334
  store i32 0, i32* %18, align 4, !dbg !336
  br label %82, !dbg !337

; <label>:82:                                     ; preds = %136, %62
  %83 = load i32, i32* %18, align 4, !dbg !338
  %84 = load i32, i32* %22, align 4, !dbg !341
  %85 = icmp slt i32 %83, %84, !dbg !342
  br i1 %85, label %86, label %139, !dbg !343

; <label>:86:                                     ; preds = %82
  store i32 0, i32* %19, align 4, !dbg !344
  br label %87, !dbg !347

; <label>:87:                                     ; preds = %130, %86
  %88 = load i32, i32* %19, align 4, !dbg !348
  %89 = load i32, i32* %23, align 4, !dbg !351
  %90 = icmp slt i32 %88, %89, !dbg !352
  br i1 %90, label %91, label %135, !dbg !353

; <label>:91:                                     ; preds = %87
  call void @llvm.dbg.declare(metadata i32* %28, metadata !354, metadata !20), !dbg !356
  %92 = load i32, i32* %26, align 4, !dbg !357
  %93 = load i32, i32* %18, align 4, !dbg !358
  %94 = load i32, i32* %14, align 4, !dbg !359
  %95 = mul nsw i32 %93, %94, !dbg !360
  %96 = add nsw i32 %92, %95, !dbg !361
  store i32 %96, i32* %28, align 4, !dbg !356
  call void @llvm.dbg.declare(metadata i32* %29, metadata !362, metadata !20), !dbg !363
  %97 = load i32, i32* %25, align 4, !dbg !364
  %98 = load i32, i32* %19, align 4, !dbg !365
  %99 = load i32, i32* %14, align 4, !dbg !366
  %100 = mul nsw i32 %98, %99, !dbg !367
  %101 = add nsw i32 %97, %100, !dbg !368
  store i32 %101, i32* %29, align 4, !dbg !363
  call void @llvm.dbg.declare(metadata i32* %30, metadata !369, metadata !20), !dbg !370
  %102 = load i32, i32* %17, align 4, !dbg !371
  %103 = load i32, i32* %22, align 4, !dbg !372
  %104 = mul nsw i32 %102, %103, !dbg !373
  %105 = load i32, i32* %23, align 4, !dbg !374
  %106 = mul nsw i32 %104, %105, !dbg !375
  %107 = load i32, i32* %21, align 4, !dbg !376
  %108 = sdiv i32 %107, 169, !dbg !377
  %109 = mul nsw i32 %108, 169, !dbg !378
  %110 = mul nsw i32 %109, 144, !dbg !379
  %111 = add nsw i32 %106, %110, !dbg !380
  %112 = load i32, i32* %21, align 4, !dbg !381
  %113 = srem i32 %112, 169, !dbg !382
  %114 = add nsw i32 %111, %113, !dbg !383
  %115 = load i32, i32* %20, align 4, !dbg !384
  %116 = mul nsw i32 %115, 169, !dbg !385
  %117 = add nsw i32 %114, %116, !dbg !386
  store i32 %117, i32* %30, align 4, !dbg !370
  %118 = load float*, float** %9, align 4, !dbg !387
  %119 = load i32, i32* %11, align 4, !dbg !388
  %120 = load i32, i32* %12, align 4, !dbg !389
  %121 = load i32, i32* %10, align 4, !dbg !390
  %122 = load i32, i32* %28, align 4, !dbg !391
  %123 = load i32, i32* %29, align 4, !dbg !392
  %124 = load i32, i32* %27, align 4, !dbg !393
  %125 = load i32, i32* %15, align 4, !dbg !394
  %126 = call float @im2col_get_pixel(float* %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125), !dbg !395
  %127 = load i32, i32* %30, align 4, !dbg !396
  %128 = load float*, float** %16, align 4, !dbg !397
  %129 = getelementptr inbounds float, float* %128, i32 %127, !dbg !397
  store float %126, float* %129, align 4, !dbg !398
  br label %130, !dbg !399

; <label>:130:                                    ; preds = %91
  %131 = load i32, i32* %19, align 4, !dbg !400
  %132 = add nsw i32 %131, 1, !dbg !400
  store i32 %132, i32* %19, align 4, !dbg !400
  %133 = load i32, i32* %21, align 4, !dbg !402
  %134 = add nsw i32 %133, 1, !dbg !402
  store i32 %134, i32* %21, align 4, !dbg !402
  br label %87, !dbg !403, !llvm.loop !404

; <label>:135:                                    ; preds = %87
  br label %136, !dbg !406

; <label>:136:                                    ; preds = %135
  %137 = load i32, i32* %18, align 4, !dbg !407
  %138 = add nsw i32 %137, 1, !dbg !407
  store i32 %138, i32* %18, align 4, !dbg !407
  br label %82, !dbg !409, !llvm.loop !410

; <label>:139:                                    ; preds = %82
  br label %140, !dbg !412

; <label>:140:                                    ; preds = %139
  %141 = load i32, i32* %20, align 4, !dbg !413
  %142 = add nsw i32 %141, 1, !dbg !413
  store i32 %142, i32* %20, align 4, !dbg !413
  br label %59, !dbg !415, !llvm.loop !416

; <label>:143:                                    ; preds = %59
  br label %144, !dbg !418

; <label>:144:                                    ; preds = %143
  %145 = load i32, i32* %17, align 4, !dbg !419
  %146 = add nsw i32 %145, 144, !dbg !419
  store i32 %146, i32* %17, align 4, !dbg !419
  br label %54, !dbg !421, !llvm.loop !422

; <label>:147:                                    ; preds = %54
  ret void, !dbg !424
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/im2col.c", directory: "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 1, !"PIC Level", i32 2}
!8 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!9 = distinct !DISubprogram(name: "im2col_get_pixel", scope: !1, file: !1, line: 4, type: !10, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !14, !14, !14, !14, !14, !14, !14}
!12 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32, align: 32)
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !{!"im2col_get_pixel"}
!16 = !{!"float.float *.1.int.0.int.0.int.0.int.0.int.0.int.0.int.0"}
!17 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/im2col.c"}
!18 = !{!"t"}
!19 = !DILocalVariable(name: "im", arg: 1, scope: !9, file: !1, line: 4, type: !13)
!20 = !DIExpression()
!21 = !DILocation(line: 4, column: 31, scope: !9)
!22 = !DILocalVariable(name: "height", arg: 2, scope: !9, file: !1, line: 4, type: !14)
!23 = !DILocation(line: 4, column: 39, scope: !9)
!24 = !DILocalVariable(name: "width", arg: 3, scope: !9, file: !1, line: 4, type: !14)
!25 = !DILocation(line: 4, column: 51, scope: !9)
!26 = !DILocalVariable(name: "channels", arg: 4, scope: !9, file: !1, line: 4, type: !14)
!27 = !DILocation(line: 4, column: 62, scope: !9)
!28 = !DILocalVariable(name: "row", arg: 5, scope: !9, file: !1, line: 5, type: !14)
!29 = !DILocation(line: 5, column: 29, scope: !9)
!30 = !DILocalVariable(name: "col", arg: 6, scope: !9, file: !1, line: 5, type: !14)
!31 = !DILocation(line: 5, column: 38, scope: !9)
!32 = !DILocalVariable(name: "channel", arg: 7, scope: !9, file: !1, line: 5, type: !14)
!33 = !DILocation(line: 5, column: 47, scope: !9)
!34 = !DILocalVariable(name: "pad", arg: 8, scope: !9, file: !1, line: 5, type: !14)
!35 = !DILocation(line: 5, column: 60, scope: !9)
!36 = !DILocation(line: 7, column: 12, scope: !9)
!37 = !DILocation(line: 7, column: 9, scope: !9)
!38 = !DILocation(line: 8, column: 12, scope: !9)
!39 = !DILocation(line: 8, column: 9, scope: !9)
!40 = !DILocation(line: 10, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !9, file: !1, line: 10, column: 9)
!42 = !DILocation(line: 10, column: 13, scope: !41)
!43 = !DILocation(line: 10, column: 17, scope: !41)
!44 = !DILocation(line: 10, column: 20, scope: !45)
!45 = !DILexicalBlockFile(scope: !41, file: !1, discriminator: 1)
!46 = !DILocation(line: 10, column: 24, scope: !45)
!47 = !DILocation(line: 10, column: 28, scope: !45)
!48 = !DILocation(line: 11, column: 9, scope: !41)
!49 = !DILocation(line: 11, column: 16, scope: !41)
!50 = !DILocation(line: 11, column: 13, scope: !41)
!51 = !DILocation(line: 11, column: 23, scope: !41)
!52 = !DILocation(line: 11, column: 26, scope: !45)
!53 = !DILocation(line: 11, column: 33, scope: !45)
!54 = !DILocation(line: 11, column: 30, scope: !45)
!55 = !DILocation(line: 10, column: 9, scope: !56)
!56 = !DILexicalBlockFile(scope: !9, file: !1, discriminator: 2)
!57 = !DILocation(line: 11, column: 40, scope: !58)
!58 = !DILexicalBlockFile(scope: !41, file: !1, discriminator: 2)
!59 = !DILocation(line: 12, column: 15, scope: !9)
!60 = !DILocation(line: 12, column: 21, scope: !9)
!61 = !DILocation(line: 12, column: 28, scope: !9)
!62 = !DILocation(line: 12, column: 34, scope: !9)
!63 = !DILocation(line: 12, column: 41, scope: !9)
!64 = !DILocation(line: 12, column: 40, scope: !9)
!65 = !DILocation(line: 12, column: 32, scope: !9)
!66 = !DILocation(line: 12, column: 26, scope: !9)
!67 = !DILocation(line: 12, column: 19, scope: !9)
!68 = !DILocation(line: 12, column: 12, scope: !9)
!69 = !DILocation(line: 12, column: 5, scope: !9)
!70 = !DILocation(line: 13, column: 1, scope: !9)
!71 = distinct !DISubprogram(name: "im2col_cpu", scope: !1, file: !1, line: 17, type: !72, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !13, !14, !14, !14, !14, !14, !14, !13}
!74 = !{!"im2col_cpu"}
!75 = !{!"void.float *.1.int.0.int.0.int.0.int.0.int.0.int.0.float *.1"}
!76 = !{!"/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/im2col.h"}
!77 = !DILocalVariable(name: "data_im", arg: 1, scope: !71, file: !1, line: 17, type: !13)
!78 = !DILocation(line: 17, column: 24, scope: !71)
!79 = !DILocalVariable(name: "channels", arg: 2, scope: !71, file: !1, line: 18, type: !14)
!80 = !DILocation(line: 18, column: 10, scope: !71)
!81 = !DILocalVariable(name: "height", arg: 3, scope: !71, file: !1, line: 18, type: !14)
!82 = !DILocation(line: 18, column: 25, scope: !71)
!83 = !DILocalVariable(name: "width", arg: 4, scope: !71, file: !1, line: 18, type: !14)
!84 = !DILocation(line: 18, column: 38, scope: !71)
!85 = !DILocalVariable(name: "ksize", arg: 5, scope: !71, file: !1, line: 19, type: !14)
!86 = !DILocation(line: 19, column: 10, scope: !71)
!87 = !DILocalVariable(name: "stride", arg: 6, scope: !71, file: !1, line: 19, type: !14)
!88 = !DILocation(line: 19, column: 22, scope: !71)
!89 = !DILocalVariable(name: "pad", arg: 7, scope: !71, file: !1, line: 19, type: !14)
!90 = !DILocation(line: 19, column: 34, scope: !71)
!91 = !DILocalVariable(name: "data_col", arg: 8, scope: !71, file: !1, line: 19, type: !13)
!92 = !DILocation(line: 19, column: 46, scope: !71)
!93 = !DILocalVariable(name: "c", scope: !71, file: !1, line: 21, type: !14)
!94 = !DILocation(line: 21, column: 9, scope: !71)
!95 = !DILocalVariable(name: "h", scope: !71, file: !1, line: 21, type: !14)
!96 = !DILocation(line: 21, column: 11, scope: !71)
!97 = !DILocalVariable(name: "w", scope: !71, file: !1, line: 21, type: !14)
!98 = !DILocation(line: 21, column: 13, scope: !71)
!99 = !DILocalVariable(name: "height_col", scope: !71, file: !1, line: 22, type: !14)
!100 = !DILocation(line: 22, column: 9, scope: !71)
!101 = !DILocation(line: 22, column: 23, scope: !71)
!102 = !DILocation(line: 22, column: 34, scope: !71)
!103 = !DILocation(line: 22, column: 33, scope: !71)
!104 = !DILocation(line: 22, column: 30, scope: !71)
!105 = !DILocation(line: 22, column: 40, scope: !71)
!106 = !DILocation(line: 22, column: 38, scope: !71)
!107 = !DILocation(line: 22, column: 49, scope: !71)
!108 = !DILocation(line: 22, column: 47, scope: !71)
!109 = !DILocation(line: 22, column: 56, scope: !71)
!110 = !DILocalVariable(name: "width_col", scope: !71, file: !1, line: 23, type: !14)
!111 = !DILocation(line: 23, column: 9, scope: !71)
!112 = !DILocation(line: 23, column: 22, scope: !71)
!113 = !DILocation(line: 23, column: 32, scope: !71)
!114 = !DILocation(line: 23, column: 31, scope: !71)
!115 = !DILocation(line: 23, column: 28, scope: !71)
!116 = !DILocation(line: 23, column: 38, scope: !71)
!117 = !DILocation(line: 23, column: 36, scope: !71)
!118 = !DILocation(line: 23, column: 47, scope: !71)
!119 = !DILocation(line: 23, column: 45, scope: !71)
!120 = !DILocation(line: 23, column: 54, scope: !71)
!121 = !DILocalVariable(name: "channels_col", scope: !71, file: !1, line: 25, type: !14)
!122 = !DILocation(line: 25, column: 9, scope: !71)
!123 = !DILocation(line: 25, column: 24, scope: !71)
!124 = !DILocation(line: 25, column: 35, scope: !71)
!125 = !DILocation(line: 25, column: 33, scope: !71)
!126 = !DILocation(line: 25, column: 43, scope: !71)
!127 = !DILocation(line: 25, column: 41, scope: !71)
!128 = !DILocation(line: 26, column: 12, scope: !129)
!129 = distinct !DILexicalBlock(scope: !71, file: !1, line: 26, column: 5)
!130 = !DILocation(line: 26, column: 10, scope: !129)
!131 = !DILocation(line: 26, column: 17, scope: !132)
!132 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 1)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 26, column: 5)
!134 = !DILocation(line: 26, column: 21, scope: !132)
!135 = !DILocation(line: 26, column: 19, scope: !132)
!136 = !DILocation(line: 26, column: 5, scope: !132)
!137 = !DILocalVariable(name: "w_offset", scope: !138, file: !1, line: 27, type: !14)
!138 = distinct !DILexicalBlock(scope: !133, file: !1, line: 26, column: 40)
!139 = !DILocation(line: 27, column: 13, scope: !138)
!140 = !DILocation(line: 27, column: 24, scope: !138)
!141 = !DILocation(line: 27, column: 28, scope: !138)
!142 = !DILocation(line: 27, column: 26, scope: !138)
!143 = !DILocalVariable(name: "h_offset", scope: !138, file: !1, line: 28, type: !14)
!144 = !DILocation(line: 28, column: 13, scope: !138)
!145 = !DILocation(line: 28, column: 25, scope: !138)
!146 = !DILocation(line: 28, column: 29, scope: !138)
!147 = !DILocation(line: 28, column: 27, scope: !138)
!148 = !DILocation(line: 28, column: 38, scope: !138)
!149 = !DILocation(line: 28, column: 36, scope: !138)
!150 = !DILocalVariable(name: "c_im", scope: !138, file: !1, line: 29, type: !14)
!151 = !DILocation(line: 29, column: 13, scope: !138)
!152 = !DILocation(line: 29, column: 20, scope: !138)
!153 = !DILocation(line: 29, column: 24, scope: !138)
!154 = !DILocation(line: 29, column: 22, scope: !138)
!155 = !DILocation(line: 29, column: 32, scope: !138)
!156 = !DILocation(line: 29, column: 30, scope: !138)
!157 = !DILocation(line: 30, column: 16, scope: !158)
!158 = distinct !DILexicalBlock(scope: !138, file: !1, line: 30, column: 9)
!159 = !DILocation(line: 30, column: 14, scope: !158)
!160 = !DILocation(line: 30, column: 21, scope: !161)
!161 = !DILexicalBlockFile(scope: !162, file: !1, discriminator: 1)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 30, column: 9)
!163 = !DILocation(line: 30, column: 25, scope: !161)
!164 = !DILocation(line: 30, column: 23, scope: !161)
!165 = !DILocation(line: 30, column: 9, scope: !161)
!166 = !DILocation(line: 31, column: 20, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 31, column: 13)
!168 = distinct !DILexicalBlock(scope: !162, file: !1, line: 30, column: 42)
!169 = !DILocation(line: 31, column: 18, scope: !167)
!170 = !DILocation(line: 31, column: 25, scope: !171)
!171 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 1)
!172 = distinct !DILexicalBlock(scope: !167, file: !1, line: 31, column: 13)
!173 = !DILocation(line: 31, column: 29, scope: !171)
!174 = !DILocation(line: 31, column: 27, scope: !171)
!175 = !DILocation(line: 31, column: 13, scope: !171)
!176 = !DILocalVariable(name: "im_row", scope: !177, file: !1, line: 32, type: !14)
!177 = distinct !DILexicalBlock(scope: !172, file: !1, line: 31, column: 45)
!178 = !DILocation(line: 32, column: 21, scope: !177)
!179 = !DILocation(line: 32, column: 30, scope: !177)
!180 = !DILocation(line: 32, column: 41, scope: !177)
!181 = !DILocation(line: 32, column: 45, scope: !177)
!182 = !DILocation(line: 32, column: 43, scope: !177)
!183 = !DILocation(line: 32, column: 39, scope: !177)
!184 = !DILocalVariable(name: "im_col", scope: !177, file: !1, line: 33, type: !14)
!185 = !DILocation(line: 33, column: 21, scope: !177)
!186 = !DILocation(line: 33, column: 30, scope: !177)
!187 = !DILocation(line: 33, column: 41, scope: !177)
!188 = !DILocation(line: 33, column: 45, scope: !177)
!189 = !DILocation(line: 33, column: 43, scope: !177)
!190 = !DILocation(line: 33, column: 39, scope: !177)
!191 = !DILocalVariable(name: "col_index", scope: !177, file: !1, line: 34, type: !14)
!192 = !DILocation(line: 34, column: 21, scope: !177)
!193 = !DILocation(line: 34, column: 34, scope: !177)
!194 = !DILocation(line: 34, column: 38, scope: !177)
!195 = !DILocation(line: 34, column: 36, scope: !177)
!196 = !DILocation(line: 34, column: 51, scope: !177)
!197 = !DILocation(line: 34, column: 49, scope: !177)
!198 = !DILocation(line: 34, column: 56, scope: !177)
!199 = !DILocation(line: 34, column: 54, scope: !177)
!200 = !DILocation(line: 34, column: 68, scope: !177)
!201 = !DILocation(line: 34, column: 66, scope: !177)
!202 = !DILocation(line: 35, column: 56, scope: !177)
!203 = !DILocation(line: 35, column: 65, scope: !177)
!204 = !DILocation(line: 35, column: 73, scope: !177)
!205 = !DILocation(line: 35, column: 80, scope: !177)
!206 = !DILocation(line: 36, column: 25, scope: !177)
!207 = !DILocation(line: 36, column: 33, scope: !177)
!208 = !DILocation(line: 36, column: 41, scope: !177)
!209 = !DILocation(line: 36, column: 47, scope: !177)
!210 = !DILocation(line: 35, column: 39, scope: !177)
!211 = !DILocation(line: 35, column: 26, scope: !177)
!212 = !DILocation(line: 35, column: 17, scope: !177)
!213 = !DILocation(line: 35, column: 37, scope: !177)
!214 = !DILocation(line: 37, column: 13, scope: !177)
!215 = !DILocation(line: 31, column: 40, scope: !216)
!216 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 2)
!217 = !DILocation(line: 31, column: 13, scope: !216)
!218 = distinct !{!218, !219}
!219 = !DILocation(line: 31, column: 13, scope: !168)
!220 = !DILocation(line: 38, column: 9, scope: !168)
!221 = !DILocation(line: 30, column: 37, scope: !222)
!222 = !DILexicalBlockFile(scope: !162, file: !1, discriminator: 2)
!223 = !DILocation(line: 30, column: 9, scope: !222)
!224 = distinct !{!224, !225}
!225 = !DILocation(line: 30, column: 9, scope: !138)
!226 = !DILocation(line: 39, column: 5, scope: !138)
!227 = !DILocation(line: 26, column: 35, scope: !228)
!228 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 2)
!229 = !DILocation(line: 26, column: 5, scope: !228)
!230 = distinct !{!230, !231}
!231 = !DILocation(line: 26, column: 5, scope: !71)
!232 = !DILocation(line: 40, column: 1, scope: !71)
!233 = distinct !DISubprogram(name: "im2col_fpga", scope: !1, file: !1, line: 43, type: !72, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!234 = !{!"im2col_fpga"}
!235 = !DILocalVariable(name: "data_im", arg: 1, scope: !233, file: !1, line: 43, type: !13)
!236 = !DILocation(line: 43, column: 25, scope: !233)
!237 = !DILocalVariable(name: "channels", arg: 2, scope: !233, file: !1, line: 44, type: !14)
!238 = !DILocation(line: 44, column: 10, scope: !233)
!239 = !DILocalVariable(name: "height", arg: 3, scope: !233, file: !1, line: 44, type: !14)
!240 = !DILocation(line: 44, column: 25, scope: !233)
!241 = !DILocalVariable(name: "width", arg: 4, scope: !233, file: !1, line: 44, type: !14)
!242 = !DILocation(line: 44, column: 38, scope: !233)
!243 = !DILocalVariable(name: "ksize", arg: 5, scope: !233, file: !1, line: 45, type: !14)
!244 = !DILocation(line: 45, column: 10, scope: !233)
!245 = !DILocalVariable(name: "stride", arg: 6, scope: !233, file: !1, line: 45, type: !14)
!246 = !DILocation(line: 45, column: 22, scope: !233)
!247 = !DILocalVariable(name: "pad", arg: 7, scope: !233, file: !1, line: 45, type: !14)
!248 = !DILocation(line: 45, column: 34, scope: !233)
!249 = !DILocalVariable(name: "data_col", arg: 8, scope: !233, file: !1, line: 45, type: !13)
!250 = !DILocation(line: 45, column: 46, scope: !233)
!251 = !DILocalVariable(name: "c", scope: !233, file: !1, line: 47, type: !14)
!252 = !DILocation(line: 47, column: 9, scope: !233)
!253 = !DILocalVariable(name: "h", scope: !233, file: !1, line: 47, type: !14)
!254 = !DILocation(line: 47, column: 11, scope: !233)
!255 = !DILocalVariable(name: "w", scope: !233, file: !1, line: 47, type: !14)
!256 = !DILocation(line: 47, column: 13, scope: !233)
!257 = !DILocalVariable(name: "k", scope: !233, file: !1, line: 47, type: !14)
!258 = !DILocation(line: 47, column: 15, scope: !233)
!259 = !DILocalVariable(name: "n", scope: !233, file: !1, line: 47, type: !14)
!260 = !DILocation(line: 47, column: 17, scope: !233)
!261 = !DILocalVariable(name: "height_col", scope: !233, file: !1, line: 48, type: !14)
!262 = !DILocation(line: 48, column: 9, scope: !233)
!263 = !DILocation(line: 48, column: 23, scope: !233)
!264 = !DILocation(line: 48, column: 34, scope: !233)
!265 = !DILocation(line: 48, column: 33, scope: !233)
!266 = !DILocation(line: 48, column: 30, scope: !233)
!267 = !DILocation(line: 48, column: 40, scope: !233)
!268 = !DILocation(line: 48, column: 38, scope: !233)
!269 = !DILocation(line: 48, column: 49, scope: !233)
!270 = !DILocation(line: 48, column: 47, scope: !233)
!271 = !DILocation(line: 48, column: 56, scope: !233)
!272 = !DILocalVariable(name: "width_col", scope: !233, file: !1, line: 49, type: !14)
!273 = !DILocation(line: 49, column: 9, scope: !233)
!274 = !DILocation(line: 49, column: 22, scope: !233)
!275 = !DILocation(line: 49, column: 32, scope: !233)
!276 = !DILocation(line: 49, column: 31, scope: !233)
!277 = !DILocation(line: 49, column: 28, scope: !233)
!278 = !DILocation(line: 49, column: 38, scope: !233)
!279 = !DILocation(line: 49, column: 36, scope: !233)
!280 = !DILocation(line: 49, column: 47, scope: !233)
!281 = !DILocation(line: 49, column: 45, scope: !233)
!282 = !DILocation(line: 49, column: 54, scope: !233)
!283 = !DILocalVariable(name: "channels_col", scope: !233, file: !1, line: 50, type: !14)
!284 = !DILocation(line: 50, column: 9, scope: !233)
!285 = !DILocation(line: 50, column: 24, scope: !233)
!286 = !DILocation(line: 50, column: 35, scope: !233)
!287 = !DILocation(line: 50, column: 33, scope: !233)
!288 = !DILocation(line: 50, column: 43, scope: !233)
!289 = !DILocation(line: 50, column: 41, scope: !233)
!290 = !DILocation(line: 51, column: 12, scope: !291)
!291 = distinct !DILexicalBlock(scope: !233, file: !1, line: 51, column: 5)
!292 = !DILocation(line: 51, column: 10, scope: !291)
!293 = !DILocation(line: 51, column: 17, scope: !294)
!294 = !DILexicalBlockFile(scope: !295, file: !1, discriminator: 1)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 51, column: 5)
!296 = !DILocation(line: 51, column: 21, scope: !294)
!297 = !DILocation(line: 51, column: 19, scope: !294)
!298 = !DILocation(line: 51, column: 5, scope: !294)
!299 = !DILocation(line: 52, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 52, column: 6)
!301 = distinct !DILexicalBlock(scope: !295, file: !1, line: 51, column: 44)
!302 = !DILocation(line: 52, column: 11, scope: !300)
!303 = !DILocation(line: 52, column: 18, scope: !304)
!304 = !DILexicalBlockFile(scope: !305, file: !1, discriminator: 1)
!305 = distinct !DILexicalBlock(scope: !300, file: !1, line: 52, column: 6)
!306 = !DILocation(line: 52, column: 20, scope: !304)
!307 = !DILocation(line: 52, column: 6, scope: !304)
!308 = !DILocalVariable(name: "w_offset", scope: !309, file: !1, line: 53, type: !14)
!309 = distinct !DILexicalBlock(scope: !305, file: !1, line: 52, column: 31)
!310 = !DILocation(line: 53, column: 14, scope: !309)
!311 = !DILocation(line: 53, column: 26, scope: !309)
!312 = !DILocation(line: 53, column: 28, scope: !309)
!313 = !DILocation(line: 53, column: 27, scope: !309)
!314 = !DILocation(line: 53, column: 33, scope: !309)
!315 = !DILocation(line: 53, column: 31, scope: !309)
!316 = !DILocalVariable(name: "h_offset", scope: !309, file: !1, line: 54, type: !14)
!317 = !DILocation(line: 54, column: 14, scope: !309)
!318 = !DILocation(line: 54, column: 27, scope: !309)
!319 = !DILocation(line: 54, column: 29, scope: !309)
!320 = !DILocation(line: 54, column: 28, scope: !309)
!321 = !DILocation(line: 54, column: 33, scope: !309)
!322 = !DILocation(line: 54, column: 31, scope: !309)
!323 = !DILocation(line: 54, column: 42, scope: !309)
!324 = !DILocation(line: 54, column: 40, scope: !309)
!325 = !DILocalVariable(name: "c_im", scope: !309, file: !1, line: 55, type: !14)
!326 = !DILocation(line: 55, column: 14, scope: !309)
!327 = !DILocation(line: 55, column: 22, scope: !309)
!328 = !DILocation(line: 55, column: 24, scope: !309)
!329 = !DILocation(line: 55, column: 23, scope: !309)
!330 = !DILocation(line: 55, column: 29, scope: !309)
!331 = !DILocation(line: 55, column: 27, scope: !309)
!332 = !DILocation(line: 55, column: 37, scope: !309)
!333 = !DILocation(line: 55, column: 35, scope: !309)
!334 = !DILocation(line: 56, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !309, file: !1, line: 56, column: 10)
!336 = !DILocation(line: 56, column: 24, scope: !335)
!337 = !DILocation(line: 56, column: 15, scope: !335)
!338 = !DILocation(line: 56, column: 29, scope: !339)
!339 = !DILexicalBlockFile(scope: !340, file: !1, discriminator: 1)
!340 = distinct !DILexicalBlock(scope: !335, file: !1, line: 56, column: 10)
!341 = !DILocation(line: 56, column: 33, scope: !339)
!342 = !DILocation(line: 56, column: 31, scope: !339)
!343 = !DILocation(line: 56, column: 10, scope: !339)
!344 = !DILocation(line: 57, column: 21, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 57, column: 14)
!346 = distinct !DILexicalBlock(scope: !340, file: !1, line: 56, column: 50)
!347 = !DILocation(line: 57, column: 19, scope: !345)
!348 = !DILocation(line: 57, column: 26, scope: !349)
!349 = !DILexicalBlockFile(scope: !350, file: !1, discriminator: 1)
!350 = distinct !DILexicalBlock(scope: !345, file: !1, line: 57, column: 14)
!351 = !DILocation(line: 57, column: 30, scope: !349)
!352 = !DILocation(line: 57, column: 28, scope: !349)
!353 = !DILocation(line: 57, column: 14, scope: !349)
!354 = !DILocalVariable(name: "im_row", scope: !355, file: !1, line: 58, type: !14)
!355 = distinct !DILexicalBlock(scope: !350, file: !1, line: 57, column: 51)
!356 = !DILocation(line: 58, column: 22, scope: !355)
!357 = !DILocation(line: 58, column: 31, scope: !355)
!358 = !DILocation(line: 58, column: 42, scope: !355)
!359 = !DILocation(line: 58, column: 46, scope: !355)
!360 = !DILocation(line: 58, column: 44, scope: !355)
!361 = !DILocation(line: 58, column: 40, scope: !355)
!362 = !DILocalVariable(name: "im_col", scope: !355, file: !1, line: 59, type: !14)
!363 = !DILocation(line: 59, column: 22, scope: !355)
!364 = !DILocation(line: 59, column: 31, scope: !355)
!365 = !DILocation(line: 59, column: 42, scope: !355)
!366 = !DILocation(line: 59, column: 46, scope: !355)
!367 = !DILocation(line: 59, column: 44, scope: !355)
!368 = !DILocation(line: 59, column: 40, scope: !355)
!369 = !DILocalVariable(name: "col_index", scope: !355, file: !1, line: 60, type: !14)
!370 = !DILocation(line: 60, column: 22, scope: !355)
!371 = !DILocation(line: 60, column: 34, scope: !355)
!372 = !DILocation(line: 60, column: 38, scope: !355)
!373 = !DILocation(line: 60, column: 36, scope: !355)
!374 = !DILocation(line: 60, column: 51, scope: !355)
!375 = !DILocation(line: 60, column: 49, scope: !355)
!376 = !DILocation(line: 60, column: 64, scope: !355)
!377 = !DILocation(line: 60, column: 65, scope: !355)
!378 = !DILocation(line: 60, column: 70, scope: !355)
!379 = !DILocation(line: 60, column: 74, scope: !355)
!380 = !DILocation(line: 60, column: 61, scope: !355)
!381 = !DILocation(line: 60, column: 82, scope: !355)
!382 = !DILocation(line: 60, column: 83, scope: !355)
!383 = !DILocation(line: 60, column: 79, scope: !355)
!384 = !DILocation(line: 60, column: 91, scope: !355)
!385 = !DILocation(line: 60, column: 92, scope: !355)
!386 = !DILocation(line: 60, column: 89, scope: !355)
!387 = !DILocation(line: 61, column: 57, scope: !355)
!388 = !DILocation(line: 61, column: 66, scope: !355)
!389 = !DILocation(line: 61, column: 74, scope: !355)
!390 = !DILocation(line: 61, column: 81, scope: !355)
!391 = !DILocation(line: 62, column: 26, scope: !355)
!392 = !DILocation(line: 62, column: 34, scope: !355)
!393 = !DILocation(line: 62, column: 42, scope: !355)
!394 = !DILocation(line: 62, column: 48, scope: !355)
!395 = !DILocation(line: 61, column: 40, scope: !355)
!396 = !DILocation(line: 61, column: 27, scope: !355)
!397 = !DILocation(line: 61, column: 18, scope: !355)
!398 = !DILocation(line: 61, column: 38, scope: !355)
!399 = !DILocation(line: 63, column: 14, scope: !355)
!400 = !DILocation(line: 57, column: 42, scope: !401)
!401 = !DILexicalBlockFile(scope: !350, file: !1, discriminator: 2)
!402 = !DILocation(line: 57, column: 47, scope: !401)
!403 = !DILocation(line: 57, column: 14, scope: !401)
!404 = distinct !{!404, !405}
!405 = !DILocation(line: 57, column: 14, scope: !346)
!406 = !DILocation(line: 64, column: 10, scope: !346)
!407 = !DILocation(line: 56, column: 46, scope: !408)
!408 = !DILexicalBlockFile(scope: !340, file: !1, discriminator: 2)
!409 = !DILocation(line: 56, column: 10, scope: !408)
!410 = distinct !{!410, !411}
!411 = !DILocation(line: 56, column: 10, scope: !309)
!412 = !DILocation(line: 65, column: 6, scope: !309)
!413 = !DILocation(line: 52, column: 27, scope: !414)
!414 = !DILexicalBlockFile(scope: !305, file: !1, discriminator: 2)
!415 = !DILocation(line: 52, column: 6, scope: !414)
!416 = distinct !{!416, !417}
!417 = !DILocation(line: 52, column: 6, scope: !301)
!418 = !DILocation(line: 66, column: 5, scope: !301)
!419 = !DILocation(line: 51, column: 36, scope: !420)
!420 = !DILexicalBlockFile(scope: !295, file: !1, discriminator: 2)
!421 = !DILocation(line: 51, column: 5, scope: !420)
!422 = distinct !{!422, !423}
!423 = !DILocation(line: 51, column: 5, scope: !233)
!424 = !DILocation(line: 67, column: 1, scope: !233)
