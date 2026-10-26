// lib: , url: package:simaster_ugm/app/modules/profile/views/profile_view.dart

// class id: 1050348, size: 0x8
class :: {

  static late final ValueNotifier<double> waveBottom1Notifier; // offset: 0x181c
  static late final ValueNotifier<double> waveBottom2Notifier; // offset: 0x1820
  static late final ValueNotifier<double> waveOffset2Notifier; // offset: 0x1818
  static late final ValueNotifier<double> waveOffset1Notifier; // offset: 0x1814
  static late final ValueNotifier<Alignment> mascotAlignmentNotifier; // offset: 0x1810

  static ValueNotifier<double> waveBottom1Notifier() {
    // ** addr: 0xe99620, size: 0x7c
    // 0xe99620: EnterFrame
    //     0xe99620: stp             fp, lr, [SP, #-0x10]!
    //     0xe99624: mov             fp, SP
    // 0xe99628: AllocStack(0x8)
    //     0xe99628: sub             SP, SP, #8
    // 0xe9962c: CheckStackOverflow
    //     0xe9962c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe99630: cmp             SP, x16
    //     0xe99634: b.ls            #0xe99694
    // 0xe99638: r1 = <double>
    //     0xe99638: ldr             x1, [PP, #0x4440]  ; [pp+0x4440] TypeArguments: <double>
    // 0xe9963c: r0 = ValueNotifier()
    //     0xe9963c: bl              #0x89f884  ; AllocateValueNotifierStub -> ValueNotifier<X0> (size=0x2c)
    // 0xe99640: mov             x1, x0
    // 0xe99644: r0 = 30.000000
    //     0xe99644: add             x0, PP, #0x18, lsl #12  ; [pp+0x180c8] 30
    //     0xe99648: ldr             x0, [x0, #0xc8]
    // 0xe9964c: stur            x1, [fp, #-8]
    // 0xe99650: StoreField: r1->field_27 = r0
    //     0xe99650: stur            w0, [x1, #0x27]
    // 0xe99654: StoreField: r1->field_7 = rZR
    //     0xe99654: stur            xzr, [x1, #7]
    // 0xe99658: StoreField: r1->field_13 = rZR
    //     0xe99658: stur            xzr, [x1, #0x13]
    // 0xe9965c: StoreField: r1->field_1b = rZR
    //     0xe9965c: stur            xzr, [x1, #0x1b]
    // 0xe99660: r0 = LoadStaticField(0x45c)
    //     0xe99660: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe99664: ldr             x0, [x0, #0x8b8]
    // 0xe99668: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe9966c: cmp             w0, w16
    // 0xe99670: b.ne            #0xe9967c
    // 0xe99674: r2 = _emptyListeners
    //     0xe99674: ldr             x2, [PP, #0x17f0]  ; [pp+0x17f0] Field <ChangeNotifier._emptyListeners@28329750>: static late final (offset: 0x45c)
    // 0xe99678: r0 = InitLateFinalStaticField()
    //     0xe99678: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe9967c: mov             x1, x0
    // 0xe99680: ldur            x0, [fp, #-8]
    // 0xe99684: StoreField: r0->field_f = r1
    //     0xe99684: stur            w1, [x0, #0xf]
    // 0xe99688: LeaveFrame
    //     0xe99688: mov             SP, fp
    //     0xe9968c: ldp             fp, lr, [SP], #0x10
    // 0xe99690: ret
    //     0xe99690: ret             
    // 0xe99694: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe99694: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe99698: b               #0xe99638
  }
  static ValueNotifier<double> waveOffset2Notifier() {
    // ** addr: 0xe9969c, size: 0x7c
    // 0xe9969c: EnterFrame
    //     0xe9969c: stp             fp, lr, [SP, #-0x10]!
    //     0xe996a0: mov             fp, SP
    // 0xe996a4: AllocStack(0x8)
    //     0xe996a4: sub             SP, SP, #8
    // 0xe996a8: CheckStackOverflow
    //     0xe996a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe996ac: cmp             SP, x16
    //     0xe996b0: b.ls            #0xe99710
    // 0xe996b4: r1 = <double>
    //     0xe996b4: ldr             x1, [PP, #0x4440]  ; [pp+0x4440] TypeArguments: <double>
    // 0xe996b8: r0 = ValueNotifier()
    //     0xe996b8: bl              #0x89f884  ; AllocateValueNotifierStub -> ValueNotifier<X0> (size=0x2c)
    // 0xe996bc: mov             x1, x0
    // 0xe996c0: r0 = 18.000000
    //     0xe996c0: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e530] 18
    //     0xe996c4: ldr             x0, [x0, #0x530]
    // 0xe996c8: stur            x1, [fp, #-8]
    // 0xe996cc: StoreField: r1->field_27 = r0
    //     0xe996cc: stur            w0, [x1, #0x27]
    // 0xe996d0: StoreField: r1->field_7 = rZR
    //     0xe996d0: stur            xzr, [x1, #7]
    // 0xe996d4: StoreField: r1->field_13 = rZR
    //     0xe996d4: stur            xzr, [x1, #0x13]
    // 0xe996d8: StoreField: r1->field_1b = rZR
    //     0xe996d8: stur            xzr, [x1, #0x1b]
    // 0xe996dc: r0 = LoadStaticField(0x45c)
    //     0xe996dc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe996e0: ldr             x0, [x0, #0x8b8]
    // 0xe996e4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe996e8: cmp             w0, w16
    // 0xe996ec: b.ne            #0xe996f8
    // 0xe996f0: r2 = _emptyListeners
    //     0xe996f0: ldr             x2, [PP, #0x17f0]  ; [pp+0x17f0] Field <ChangeNotifier._emptyListeners@28329750>: static late final (offset: 0x45c)
    // 0xe996f4: r0 = InitLateFinalStaticField()
    //     0xe996f4: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe996f8: mov             x1, x0
    // 0xe996fc: ldur            x0, [fp, #-8]
    // 0xe99700: StoreField: r0->field_f = r1
    //     0xe99700: stur            w1, [x0, #0xf]
    // 0xe99704: LeaveFrame
    //     0xe99704: mov             SP, fp
    //     0xe99708: ldp             fp, lr, [SP], #0x10
    // 0xe9970c: ret
    //     0xe9970c: ret             
    // 0xe99710: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe99710: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe99714: b               #0xe996b4
  }
  static ValueNotifier<double> waveOffset1Notifier() {
    // ** addr: 0xe99718, size: 0x78
    // 0xe99718: EnterFrame
    //     0xe99718: stp             fp, lr, [SP, #-0x10]!
    //     0xe9971c: mov             fp, SP
    // 0xe99720: AllocStack(0x8)
    //     0xe99720: sub             SP, SP, #8
    // 0xe99724: CheckStackOverflow
    //     0xe99724: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe99728: cmp             SP, x16
    //     0xe9972c: b.ls            #0xe99788
    // 0xe99730: r1 = <double>
    //     0xe99730: ldr             x1, [PP, #0x4440]  ; [pp+0x4440] TypeArguments: <double>
    // 0xe99734: r0 = ValueNotifier()
    //     0xe99734: bl              #0x89f884  ; AllocateValueNotifierStub -> ValueNotifier<X0> (size=0x2c)
    // 0xe99738: mov             x1, x0
    // 0xe9973c: r0 = 0.000000
    //     0xe9973c: ldr             x0, [PP, #0x4c28]  ; [pp+0x4c28] 0
    // 0xe99740: stur            x1, [fp, #-8]
    // 0xe99744: StoreField: r1->field_27 = r0
    //     0xe99744: stur            w0, [x1, #0x27]
    // 0xe99748: StoreField: r1->field_7 = rZR
    //     0xe99748: stur            xzr, [x1, #7]
    // 0xe9974c: StoreField: r1->field_13 = rZR
    //     0xe9974c: stur            xzr, [x1, #0x13]
    // 0xe99750: StoreField: r1->field_1b = rZR
    //     0xe99750: stur            xzr, [x1, #0x1b]
    // 0xe99754: r0 = LoadStaticField(0x45c)
    //     0xe99754: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe99758: ldr             x0, [x0, #0x8b8]
    // 0xe9975c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe99760: cmp             w0, w16
    // 0xe99764: b.ne            #0xe99770
    // 0xe99768: r2 = _emptyListeners
    //     0xe99768: ldr             x2, [PP, #0x17f0]  ; [pp+0x17f0] Field <ChangeNotifier._emptyListeners@28329750>: static late final (offset: 0x45c)
    // 0xe9976c: r0 = InitLateFinalStaticField()
    //     0xe9976c: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe99770: mov             x1, x0
    // 0xe99774: ldur            x0, [fp, #-8]
    // 0xe99778: StoreField: r0->field_f = r1
    //     0xe99778: stur            w1, [x0, #0xf]
    // 0xe9977c: LeaveFrame
    //     0xe9977c: mov             SP, fp
    //     0xe99780: ldp             fp, lr, [SP], #0x10
    // 0xe99784: ret
    //     0xe99784: ret             
    // 0xe99788: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe99788: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9978c: b               #0xe99730
  }
  static ValueNotifier<Alignment> mascotAlignmentNotifier() {
    // ** addr: 0xe99790, size: 0x80
    // 0xe99790: EnterFrame
    //     0xe99790: stp             fp, lr, [SP, #-0x10]!
    //     0xe99794: mov             fp, SP
    // 0xe99798: AllocStack(0x8)
    //     0xe99798: sub             SP, SP, #8
    // 0xe9979c: CheckStackOverflow
    //     0xe9979c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe997a0: cmp             SP, x16
    //     0xe997a4: b.ls            #0xe99808
    // 0xe997a8: r1 = <Alignment>
    //     0xe997a8: add             x1, PP, #0x16, lsl #12  ; [pp+0x16db8] TypeArguments: <Alignment>
    //     0xe997ac: ldr             x1, [x1, #0xdb8]
    // 0xe997b0: r0 = ValueNotifier()
    //     0xe997b0: bl              #0x89f884  ; AllocateValueNotifierStub -> ValueNotifier<X0> (size=0x2c)
    // 0xe997b4: mov             x1, x0
    // 0xe997b8: r0 = Instance_Alignment
    //     0xe997b8: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e8f8] Obj!Alignment@129e831
    //     0xe997bc: ldr             x0, [x0, #0x8f8]
    // 0xe997c0: stur            x1, [fp, #-8]
    // 0xe997c4: StoreField: r1->field_27 = r0
    //     0xe997c4: stur            w0, [x1, #0x27]
    // 0xe997c8: StoreField: r1->field_7 = rZR
    //     0xe997c8: stur            xzr, [x1, #7]
    // 0xe997cc: StoreField: r1->field_13 = rZR
    //     0xe997cc: stur            xzr, [x1, #0x13]
    // 0xe997d0: StoreField: r1->field_1b = rZR
    //     0xe997d0: stur            xzr, [x1, #0x1b]
    // 0xe997d4: r0 = LoadStaticField(0x45c)
    //     0xe997d4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe997d8: ldr             x0, [x0, #0x8b8]
    // 0xe997dc: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe997e0: cmp             w0, w16
    // 0xe997e4: b.ne            #0xe997f0
    // 0xe997e8: r2 = _emptyListeners
    //     0xe997e8: ldr             x2, [PP, #0x17f0]  ; [pp+0x17f0] Field <ChangeNotifier._emptyListeners@28329750>: static late final (offset: 0x45c)
    // 0xe997ec: r0 = InitLateFinalStaticField()
    //     0xe997ec: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe997f0: mov             x1, x0
    // 0xe997f4: ldur            x0, [fp, #-8]
    // 0xe997f8: StoreField: r0->field_f = r1
    //     0xe997f8: stur            w1, [x0, #0xf]
    // 0xe997fc: LeaveFrame
    //     0xe997fc: mov             SP, fp
    //     0xe99800: ldp             fp, lr, [SP], #0x10
    // 0xe99804: ret
    //     0xe99804: ret             
    // 0xe99808: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe99808: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9980c: b               #0xe997a8
  }
}

// class id: 4316, size: 0x18, field offset: 0xc
//   const constructor, 
class _WavePainter extends CustomPainter {

  _ paint(/* No info */) {
    // ** addr: 0xb7edc8, size: 0x43c
    // 0xb7edc8: EnterFrame
    //     0xb7edc8: stp             fp, lr, [SP, #-0x10]!
    //     0xb7edcc: mov             fp, SP
    // 0xb7edd0: AllocStack(0x80)
    //     0xb7edd0: sub             SP, SP, #0x80
    // 0xb7edd4: SetupParameters(_WavePainter this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0xb7edd4: stur            x1, [fp, #-8]
    //     0xb7edd8: stur            x2, [fp, #-0x10]
    //     0xb7eddc: stur            x3, [fp, #-0x18]
    // 0xb7ede0: CheckStackOverflow
    //     0xb7ede0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xb7ede4: cmp             SP, x16
    //     0xb7ede8: b.ls            #0xb7f1dc
    // 0xb7edec: r16 = 136
    //     0xb7edec: mov             x16, #0x88
    // 0xb7edf0: stp             x16, NULL, [SP]
    // 0xb7edf4: r0 = ByteData()
    //     0xb7edf4: bl              #0x81de08  ; [dart:typed_data] ByteData::ByteData
    // 0xb7edf8: stur            x0, [fp, #-0x20]
    // 0xb7edfc: r0 = Paint()
    //     0xb7edfc: bl              #0x85c688  ; AllocatePaintStub -> Paint (size=0x10)
    // 0xb7ee00: ldur            x5, [fp, #-0x20]
    // 0xb7ee04: stur            x0, [fp, #-0x28]
    // 0xb7ee08: StoreField: r0->field_7 = r5
    //     0xb7ee08: stur            w5, [x0, #7]
    // 0xb7ee0c: ldur            x3, [fp, #-8]
    // 0xb7ee10: LoadField: r2 = r3->field_b
    //     0xb7ee10: ldur            w2, [x3, #0xb]
    // 0xb7ee14: DecompressPointer r2
    //     0xb7ee14: add             x2, x2, HEAP, lsl #32
    // 0xb7ee18: mov             x1, x0
    // 0xb7ee1c: r0 = color=()
    //     0xb7ee1c: bl              #0x85c494  ; [dart:ui] Paint::color=
    // 0xb7ee20: ldur            x5, [fp, #-0x20]
    // 0xb7ee24: ArrayLoad: r0 = r5[0]  ; List_4
    //     0xb7ee24: ldur            w0, [x5, #0x17]
    // 0xb7ee28: DecompressPointer r0
    //     0xb7ee28: add             x0, x0, HEAP, lsl #32
    // 0xb7ee2c: LoadField: r1 = r0->field_7
    //     0xb7ee2c: ldur            x1, [x0, #7]
    // 0xb7ee30: str             wzr, [x1, #0x1c]
    // 0xb7ee34: r0 = _NativePath()
    //     0xb7ee34: bl              #0xb69eb4  ; Allocate_NativePathStub -> _NativePath (size=0xc)
    // 0xb7ee38: mov             x1, x0
    // 0xb7ee3c: stur            x0, [fp, #-0x30]
    // 0xb7ee40: r0 = __constructor$Method$FfiNative()
    //     0xb7ee40: bl              #0xb69d18  ; [dart:ui] _NativePath::__constructor$Method$FfiNative
    // 0xb7ee44: ldur            x0, [fp, #-0x18]
    // 0xb7ee48: LoadField: d1 = r0->field_f
    //     0xb7ee48: ldur            d1, [x0, #0xf]
    // 0xb7ee4c: stur            d1, [fp, #-0x48]
    // 0xb7ee50: d0 = 0.650000
    //     0xb7ee50: add             x17, PP, #0x9c, lsl #12  ; [pp+0x9cf68] IMM: double(0.65) from 0x3fe4cccccccccccd
    //     0xb7ee54: ldr             d0, [x17, #0xf68]
    // 0xb7ee58: fmul            d2, d1, d0
    // 0xb7ee5c: ldur            x2, [fp, #-0x30]
    // 0xb7ee60: stur            d2, [fp, #-0x40]
    // 0xb7ee64: LoadField: r1 = r2->field_7
    //     0xb7ee64: ldur            w1, [x2, #7]
    // 0xb7ee68: DecompressPointer r1
    //     0xb7ee68: add             x1, x1, HEAP, lsl #32
    // 0xb7ee6c: cmp             w1, NULL
    // 0xb7ee70: b.eq            #0xb7f1e4
    // 0xb7ee74: LoadField: r3 = r1->field_7
    //     0xb7ee74: ldur            x3, [x1, #7]
    // 0xb7ee78: ldr             x1, [x3]
    // 0xb7ee7c: cbz             x1, #0xb7f16c
    // 0xb7ee80: ldur            x3, [fp, #-8]
    // 0xb7ee84: mov             x4, x1
    // 0xb7ee88: stur            x4, [fp, #-0x38]
    // 0xb7ee8c: r1 = <Never>
    //     0xb7ee8c: ldr             x1, [PP, #0x2470]  ; [pp+0x2470] TypeArguments: <Never>
    // 0xb7ee90: r0 = Pointer()
    //     0xb7ee90: bl              #0x81b9fc  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0xb7ee94: mov             x1, x0
    // 0xb7ee98: ldur            x0, [fp, #-0x38]
    // 0xb7ee9c: StoreField: r1->field_7 = r0
    //     0xb7ee9c: stur            x0, [x1, #7]
    // 0xb7eea0: ldur            d1, [fp, #-0x40]
    // 0xb7eea4: d0 = 0.000000
    //     0xb7eea4: eor             v0.16b, v0.16b, v0.16b
    // 0xb7eea8: r0 = _moveTo$Method$FfiNative()
    //     0xb7eea8: bl              #0xb69c74  ; [dart:ui] _NativePath::_moveTo$Method$FfiNative
    // 0xb7eeac: ldur            x0, [fp, #-0x18]
    // 0xb7eeb0: LoadField: d2 = r0->field_7
    //     0xb7eeb0: ldur            d2, [x0, #7]
    // 0xb7eeb4: stur            d2, [fp, #-0x70]
    // 0xb7eeb8: d0 = 0.220000
    //     0xb7eeb8: add             x17, PP, #0x9c, lsl #12  ; [pp+0x9cf70] IMM: double(0.22) from 0x3fcc28f5c28f5c29
    //     0xb7eebc: ldr             d0, [x17, #0xf70]
    // 0xb7eec0: fmul            d1, d2, d0
    // 0xb7eec4: ldur            x0, [fp, #-8]
    // 0xb7eec8: stur            d1, [fp, #-0x68]
    // 0xb7eecc: LoadField: d0 = r0->field_f
    //     0xb7eecc: ldur            d0, [x0, #0xf]
    // 0xb7eed0: stur            d0, [fp, #-0x60]
    // 0xb7eed4: d3 = -8.000000
    //     0xb7eed4: fmov            d3, #-8.00000000
    // 0xb7eed8: fadd            d4, d0, d3
    // 0xb7eedc: stur            d4, [fp, #-0x58]
    // 0xb7eee0: d3 = 0.480000
    //     0xb7eee0: add             x17, PP, #0x9c, lsl #12  ; [pp+0x9cf78] IMM: double(0.48) from 0x3fdeb851eb851eb8
    //     0xb7eee4: ldr             d3, [x17, #0xf78]
    // 0xb7eee8: fmul            d5, d2, d3
    // 0xb7eeec: ldur            d3, [fp, #-0x48]
    // 0xb7eef0: stur            d5, [fp, #-0x50]
    // 0xb7eef4: d6 = 0.620000
    //     0xb7eef4: add             x17, PP, #0x9c, lsl #12  ; [pp+0x9cf80] IMM: double(0.62) from 0x3fe3d70a3d70a3d7
    //     0xb7eef8: ldr             d6, [x17, #0xf80]
    // 0xb7eefc: fmul            d7, d3, d6
    // 0xb7ef00: ldur            x0, [fp, #-0x30]
    // 0xb7ef04: stur            d7, [fp, #-0x40]
    // 0xb7ef08: LoadField: r1 = r0->field_7
    //     0xb7ef08: ldur            w1, [x0, #7]
    // 0xb7ef0c: DecompressPointer r1
    //     0xb7ef0c: add             x1, x1, HEAP, lsl #32
    // 0xb7ef10: cmp             w1, NULL
    // 0xb7ef14: b.eq            #0xb7f1e8
    // 0xb7ef18: LoadField: r2 = r1->field_7
    //     0xb7ef18: ldur            x2, [x1, #7]
    // 0xb7ef1c: ldr             x1, [x2]
    // 0xb7ef20: cbz             x1, #0xb7f17c
    // 0xb7ef24: mov             x2, x1
    // 0xb7ef28: stur            x2, [fp, #-0x38]
    // 0xb7ef2c: r1 = <Never>
    //     0xb7ef2c: ldr             x1, [PP, #0x2470]  ; [pp+0x2470] TypeArguments: <Never>
    // 0xb7ef30: r0 = Pointer()
    //     0xb7ef30: bl              #0x81b9fc  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0xb7ef34: mov             x1, x0
    // 0xb7ef38: ldur            x0, [fp, #-0x38]
    // 0xb7ef3c: StoreField: r1->field_7 = r0
    //     0xb7ef3c: stur            x0, [x1, #7]
    // 0xb7ef40: ldur            d0, [fp, #-0x68]
    // 0xb7ef44: ldur            d1, [fp, #-0x58]
    // 0xb7ef48: ldur            d2, [fp, #-0x50]
    // 0xb7ef4c: ldur            d3, [fp, #-0x40]
    // 0xb7ef50: r0 = _quadraticBezierTo$Method$FfiNative()
    //     0xb7ef50: bl              #0xb7f204  ; [dart:ui] _NativePath::_quadraticBezierTo$Method$FfiNative
    // 0xb7ef54: ldur            d2, [fp, #-0x70]
    // 0xb7ef58: d0 = 0.740000
    //     0xb7ef58: add             x17, PP, #0x9c, lsl #12  ; [pp+0x9cf88] IMM: double(0.74) from 0x3fe7ae147ae147ae
    //     0xb7ef5c: ldr             d0, [x17, #0xf88]
    // 0xb7ef60: fmul            d1, d2, d0
    // 0xb7ef64: ldur            d0, [fp, #-0x48]
    // 0xb7ef68: stur            d1, [fp, #-0x58]
    // 0xb7ef6c: d3 = 1.150000
    //     0xb7ef6c: add             x17, PP, #0x9c, lsl #12  ; [pp+0x9cf90] IMM: double(1.15) from 0x3ff2666666666666
    //     0xb7ef70: ldr             d3, [x17, #0xf90]
    // 0xb7ef74: fmul            d4, d0, d3
    // 0xb7ef78: ldur            d3, [fp, #-0x60]
    // 0xb7ef7c: fsub            d5, d4, d3
    // 0xb7ef80: stur            d5, [fp, #-0x50]
    // 0xb7ef84: d3 = 0.550000
    //     0xb7ef84: add             x17, PP, #0x87, lsl #12  ; [pp+0x87fd8] IMM: double(0.55) from 0x3fe199999999999a
    //     0xb7ef88: ldr             d3, [x17, #0xfd8]
    // 0xb7ef8c: fmul            d4, d0, d3
    // 0xb7ef90: ldur            x0, [fp, #-0x30]
    // 0xb7ef94: stur            d4, [fp, #-0x40]
    // 0xb7ef98: LoadField: r1 = r0->field_7
    //     0xb7ef98: ldur            w1, [x0, #7]
    // 0xb7ef9c: DecompressPointer r1
    //     0xb7ef9c: add             x1, x1, HEAP, lsl #32
    // 0xb7efa0: cmp             w1, NULL
    // 0xb7efa4: b.eq            #0xb7f1ec
    // 0xb7efa8: LoadField: r2 = r1->field_7
    //     0xb7efa8: ldur            x2, [x1, #7]
    // 0xb7efac: ldr             x1, [x2]
    // 0xb7efb0: cbz             x1, #0xb7f18c
    // 0xb7efb4: mov             x2, x1
    // 0xb7efb8: stur            x2, [fp, #-0x38]
    // 0xb7efbc: r1 = <Never>
    //     0xb7efbc: ldr             x1, [PP, #0x2470]  ; [pp+0x2470] TypeArguments: <Never>
    // 0xb7efc0: r0 = Pointer()
    //     0xb7efc0: bl              #0x81b9fc  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0xb7efc4: mov             x1, x0
    // 0xb7efc8: ldur            x0, [fp, #-0x38]
    // 0xb7efcc: StoreField: r1->field_7 = r0
    //     0xb7efcc: stur            x0, [x1, #7]
    // 0xb7efd0: ldur            d0, [fp, #-0x58]
    // 0xb7efd4: ldur            d1, [fp, #-0x50]
    // 0xb7efd8: ldur            d2, [fp, #-0x70]
    // 0xb7efdc: ldur            d3, [fp, #-0x40]
    // 0xb7efe0: r0 = _quadraticBezierTo$Method$FfiNative()
    //     0xb7efe0: bl              #0xb7f204  ; [dart:ui] _NativePath::_quadraticBezierTo$Method$FfiNative
    // 0xb7efe4: ldur            x0, [fp, #-0x30]
    // 0xb7efe8: LoadField: r1 = r0->field_7
    //     0xb7efe8: ldur            w1, [x0, #7]
    // 0xb7efec: DecompressPointer r1
    //     0xb7efec: add             x1, x1, HEAP, lsl #32
    // 0xb7eff0: cmp             w1, NULL
    // 0xb7eff4: b.eq            #0xb7f1f0
    // 0xb7eff8: LoadField: r2 = r1->field_7
    //     0xb7eff8: ldur            x2, [x1, #7]
    // 0xb7effc: ldr             x1, [x2]
    // 0xb7f000: cbz             x1, #0xb7f19c
    // 0xb7f004: mov             x2, x1
    // 0xb7f008: stur            x2, [fp, #-0x38]
    // 0xb7f00c: r1 = <Never>
    //     0xb7f00c: ldr             x1, [PP, #0x2470]  ; [pp+0x2470] TypeArguments: <Never>
    // 0xb7f010: r0 = Pointer()
    //     0xb7f010: bl              #0x81b9fc  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0xb7f014: mov             x1, x0
    // 0xb7f018: ldur            x0, [fp, #-0x38]
    // 0xb7f01c: StoreField: r1->field_7 = r0
    //     0xb7f01c: stur            x0, [x1, #7]
    // 0xb7f020: ldur            d0, [fp, #-0x70]
    // 0xb7f024: ldur            d1, [fp, #-0x48]
    // 0xb7f028: r0 = _lineTo$Method$FfiNative()
    //     0xb7f028: bl              #0xb69bd0  ; [dart:ui] _NativePath::_lineTo$Method$FfiNative
    // 0xb7f02c: ldur            x0, [fp, #-0x30]
    // 0xb7f030: LoadField: r1 = r0->field_7
    //     0xb7f030: ldur            w1, [x0, #7]
    // 0xb7f034: DecompressPointer r1
    //     0xb7f034: add             x1, x1, HEAP, lsl #32
    // 0xb7f038: cmp             w1, NULL
    // 0xb7f03c: b.eq            #0xb7f1f4
    // 0xb7f040: LoadField: r2 = r1->field_7
    //     0xb7f040: ldur            x2, [x1, #7]
    // 0xb7f044: ldr             x1, [x2]
    // 0xb7f048: cbz             x1, #0xb7f1ac
    // 0xb7f04c: mov             x2, x1
    // 0xb7f050: stur            x2, [fp, #-0x38]
    // 0xb7f054: r1 = <Never>
    //     0xb7f054: ldr             x1, [PP, #0x2470]  ; [pp+0x2470] TypeArguments: <Never>
    // 0xb7f058: r0 = Pointer()
    //     0xb7f058: bl              #0x81b9fc  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0xb7f05c: mov             x1, x0
    // 0xb7f060: ldur            x0, [fp, #-0x38]
    // 0xb7f064: StoreField: r1->field_7 = r0
    //     0xb7f064: stur            x0, [x1, #7]
    // 0xb7f068: ldur            d1, [fp, #-0x48]
    // 0xb7f06c: d0 = 0.000000
    //     0xb7f06c: eor             v0.16b, v0.16b, v0.16b
    // 0xb7f070: r0 = _lineTo$Method$FfiNative()
    //     0xb7f070: bl              #0xb69bd0  ; [dart:ui] _NativePath::_lineTo$Method$FfiNative
    // 0xb7f074: ldur            x0, [fp, #-0x30]
    // 0xb7f078: LoadField: r1 = r0->field_7
    //     0xb7f078: ldur            w1, [x0, #7]
    // 0xb7f07c: DecompressPointer r1
    //     0xb7f07c: add             x1, x1, HEAP, lsl #32
    // 0xb7f080: cmp             w1, NULL
    // 0xb7f084: b.eq            #0xb7f1f8
    // 0xb7f088: LoadField: r2 = r1->field_7
    //     0xb7f088: ldur            x2, [x1, #7]
    // 0xb7f08c: ldr             x1, [x2]
    // 0xb7f090: cbz             x1, #0xb7f1bc
    // 0xb7f094: ldur            x3, [fp, #-0x10]
    // 0xb7f098: ldur            x2, [fp, #-0x28]
    // 0xb7f09c: mov             x4, x1
    // 0xb7f0a0: stur            x4, [fp, #-0x38]
    // 0xb7f0a4: r1 = <Never>
    //     0xb7f0a4: ldr             x1, [PP, #0x2470]  ; [pp+0x2470] TypeArguments: <Never>
    // 0xb7f0a8: r0 = Pointer()
    //     0xb7f0a8: bl              #0x81b9fc  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0xb7f0ac: mov             x1, x0
    // 0xb7f0b0: ldur            x0, [fp, #-0x38]
    // 0xb7f0b4: StoreField: r1->field_7 = r0
    //     0xb7f0b4: stur            x0, [x1, #7]
    // 0xb7f0b8: r0 = _close$Method$FfiNative()
    //     0xb7f0b8: bl              #0xb78188  ; [dart:ui] _NativePath::_close$Method$FfiNative
    // 0xb7f0bc: ldur            x0, [fp, #-0x28]
    // 0xb7f0c0: LoadField: r3 = r0->field_b
    //     0xb7f0c0: ldur            w3, [x0, #0xb]
    // 0xb7f0c4: DecompressPointer r3
    //     0xb7f0c4: add             x3, x3, HEAP, lsl #32
    // 0xb7f0c8: ldur            x0, [fp, #-0x10]
    // 0xb7f0cc: stur            x3, [fp, #-8]
    // 0xb7f0d0: LoadField: r1 = r0->field_7
    //     0xb7f0d0: ldur            w1, [x0, #7]
    // 0xb7f0d4: DecompressPointer r1
    //     0xb7f0d4: add             x1, x1, HEAP, lsl #32
    // 0xb7f0d8: cmp             w1, NULL
    // 0xb7f0dc: b.eq            #0xb7f1fc
    // 0xb7f0e0: LoadField: r2 = r1->field_7
    //     0xb7f0e0: ldur            x2, [x1, #7]
    // 0xb7f0e4: ldr             x1, [x2]
    // 0xb7f0e8: cbz             x1, #0xb7f1cc
    // 0xb7f0ec: ldur            x2, [fp, #-0x30]
    // 0xb7f0f0: mov             x4, x1
    // 0xb7f0f4: stur            x4, [fp, #-0x38]
    // 0xb7f0f8: r1 = <Never>
    //     0xb7f0f8: ldr             x1, [PP, #0x2470]  ; [pp+0x2470] TypeArguments: <Never>
    // 0xb7f0fc: r0 = Pointer()
    //     0xb7f0fc: bl              #0x81b9fc  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0xb7f100: mov             x2, x0
    // 0xb7f104: ldur            x0, [fp, #-0x38]
    // 0xb7f108: stur            x2, [fp, #-0x18]
    // 0xb7f10c: StoreField: r2->field_7 = r0
    //     0xb7f10c: stur            x0, [x2, #7]
    // 0xb7f110: ldur            x0, [fp, #-0x30]
    // 0xb7f114: LoadField: r1 = r0->field_7
    //     0xb7f114: ldur            w1, [x0, #7]
    // 0xb7f118: DecompressPointer r1
    //     0xb7f118: add             x1, x1, HEAP, lsl #32
    // 0xb7f11c: cmp             w1, NULL
    // 0xb7f120: b.eq            #0xb7f200
    // 0xb7f124: LoadField: r3 = r1->field_7
    //     0xb7f124: ldur            x3, [x1, #7]
    // 0xb7f128: ldr             x1, [x3]
    // 0xb7f12c: mov             x3, x1
    // 0xb7f130: stur            x3, [fp, #-0x38]
    // 0xb7f134: r1 = <Never>
    //     0xb7f134: ldr             x1, [PP, #0x2470]  ; [pp+0x2470] TypeArguments: <Never>
    // 0xb7f138: r0 = Pointer()
    //     0xb7f138: bl              #0x81b9fc  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0xb7f13c: mov             x1, x0
    // 0xb7f140: ldur            x0, [fp, #-0x38]
    // 0xb7f144: StoreField: r1->field_7 = r0
    //     0xb7f144: stur            x0, [x1, #7]
    // 0xb7f148: mov             x2, x1
    // 0xb7f14c: ldur            x1, [fp, #-0x18]
    // 0xb7f150: ldur            x3, [fp, #-8]
    // 0xb7f154: ldur            x5, [fp, #-0x20]
    // 0xb7f158: r0 = __drawPath$Method$FfiNative()
    //     0xb7f158: bl              #0xb69a00  ; [dart:ui] _NativeCanvas::__drawPath$Method$FfiNative
    // 0xb7f15c: r0 = Null
    //     0xb7f15c: mov             x0, NULL
    // 0xb7f160: LeaveFrame
    //     0xb7f160: mov             SP, fp
    //     0xb7f164: ldp             fp, lr, [SP], #0x10
    // 0xb7f168: ret
    //     0xb7f168: ret             
    // 0xb7f16c: r16 = "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    //     0xb7f16c: ldr             x16, [PP, #0x2478]  ; [pp+0x2478] "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    // 0xb7f170: str             x16, [SP]
    // 0xb7f174: r0 = _throwNew()
    //     0xb7f174: bl              #0x7d927c  ; [dart:core] StateError::_throwNew
    // 0xb7f178: brk             #0
    // 0xb7f17c: r16 = "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    //     0xb7f17c: ldr             x16, [PP, #0x2478]  ; [pp+0x2478] "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    // 0xb7f180: str             x16, [SP]
    // 0xb7f184: r0 = _throwNew()
    //     0xb7f184: bl              #0x7d927c  ; [dart:core] StateError::_throwNew
    // 0xb7f188: brk             #0
    // 0xb7f18c: r16 = "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    //     0xb7f18c: ldr             x16, [PP, #0x2478]  ; [pp+0x2478] "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    // 0xb7f190: str             x16, [SP]
    // 0xb7f194: r0 = _throwNew()
    //     0xb7f194: bl              #0x7d927c  ; [dart:core] StateError::_throwNew
    // 0xb7f198: brk             #0
    // 0xb7f19c: r16 = "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    //     0xb7f19c: ldr             x16, [PP, #0x2478]  ; [pp+0x2478] "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    // 0xb7f1a0: str             x16, [SP]
    // 0xb7f1a4: r0 = _throwNew()
    //     0xb7f1a4: bl              #0x7d927c  ; [dart:core] StateError::_throwNew
    // 0xb7f1a8: brk             #0
    // 0xb7f1ac: r16 = "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    //     0xb7f1ac: ldr             x16, [PP, #0x2478]  ; [pp+0x2478] "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    // 0xb7f1b0: str             x16, [SP]
    // 0xb7f1b4: r0 = _throwNew()
    //     0xb7f1b4: bl              #0x7d927c  ; [dart:core] StateError::_throwNew
    // 0xb7f1b8: brk             #0
    // 0xb7f1bc: r16 = "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    //     0xb7f1bc: ldr             x16, [PP, #0x2478]  ; [pp+0x2478] "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    // 0xb7f1c0: str             x16, [SP]
    // 0xb7f1c4: r0 = _throwNew()
    //     0xb7f1c4: bl              #0x7d927c  ; [dart:core] StateError::_throwNew
    // 0xb7f1c8: brk             #0
    // 0xb7f1cc: r16 = "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    //     0xb7f1cc: ldr             x16, [PP, #0x2478]  ; [pp+0x2478] "A Dart object attempted to access a native peer, but the native peer has been collected (nullptr). This is usually the result of calling methods on a native-backed object when the native resources have already been disposed."
    // 0xb7f1d0: str             x16, [SP]
    // 0xb7f1d4: r0 = _throwNew()
    //     0xb7f1d4: bl              #0x7d927c  ; [dart:core] StateError::_throwNew
    // 0xb7f1d8: brk             #0
    // 0xb7f1dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xb7f1dc: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xb7f1e0: b               #0xb7edec
    // 0xb7f1e4: r0 = NullErrorSharedWithFPURegs()
    //     0xb7f1e4: bl              #0x13e02c0  ; NullErrorSharedWithFPURegsStub
    // 0xb7f1e8: r0 = NullErrorSharedWithFPURegs()
    //     0xb7f1e8: bl              #0x13e02c0  ; NullErrorSharedWithFPURegsStub
    // 0xb7f1ec: r0 = NullErrorSharedWithFPURegs()
    //     0xb7f1ec: bl              #0x13e02c0  ; NullErrorSharedWithFPURegsStub
    // 0xb7f1f0: r0 = NullErrorSharedWithoutFPURegs()
    //     0xb7f1f0: bl              #0x13e0274  ; NullErrorSharedWithoutFPURegsStub
    // 0xb7f1f4: r0 = NullErrorSharedWithoutFPURegs()
    //     0xb7f1f4: bl              #0x13e0274  ; NullErrorSharedWithoutFPURegsStub
    // 0xb7f1f8: r0 = NullErrorSharedWithoutFPURegs()
    //     0xb7f1f8: bl              #0x13e0274  ; NullErrorSharedWithoutFPURegsStub
    // 0xb7f1fc: r0 = NullErrorSharedWithoutFPURegs()
    //     0xb7f1fc: bl              #0x13e0274  ; NullErrorSharedWithoutFPURegsStub
    // 0xb7f200: r0 = NullErrorSharedWithoutFPURegs()
    //     0xb7f200: bl              #0x13e0274  ; NullErrorSharedWithoutFPURegsStub
  }
  _ shouldRepaint(/* No info */) {
    // ** addr: 0xb940c4, size: 0xc8
    // 0xb940c4: EnterFrame
    //     0xb940c4: stp             fp, lr, [SP, #-0x10]!
    //     0xb940c8: mov             fp, SP
    // 0xb940cc: AllocStack(0x20)
    //     0xb940cc: sub             SP, SP, #0x20
    // 0xb940d0: SetupParameters(_WavePainter this /* r1 => r4, fp-0x8 */, dynamic _ /* r2 => r3, fp-0x10 */)
    //     0xb940d0: mov             x4, x1
    //     0xb940d4: mov             x3, x2
    //     0xb940d8: stur            x1, [fp, #-8]
    //     0xb940dc: stur            x2, [fp, #-0x10]
    // 0xb940e0: CheckStackOverflow
    //     0xb940e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xb940e4: cmp             SP, x16
    //     0xb940e8: b.ls            #0xb94184
    // 0xb940ec: mov             x0, x3
    // 0xb940f0: r2 = Null
    //     0xb940f0: mov             x2, NULL
    // 0xb940f4: r1 = Null
    //     0xb940f4: mov             x1, NULL
    // 0xb940f8: r4 = 60
    //     0xb940f8: mov             x4, #0x3c
    // 0xb940fc: branchIfSmi(r0, 0xb94108)
    //     0xb940fc: tbz             w0, #0, #0xb94108
    // 0xb94100: r4 = LoadClassIdInstr(r0)
    //     0xb94100: ldur            x4, [x0, #-1]
    //     0xb94104: ubfx            x4, x4, #0xc, #0x14
    // 0xb94108: r17 = 4316
    //     0xb94108: mov             x17, #0x10dc
    // 0xb9410c: cmp             x4, x17
    // 0xb94110: b.eq            #0xb94128
    // 0xb94114: r8 = _WavePainter
    //     0xb94114: add             x8, PP, #0x92, lsl #12  ; [pp+0x92a50] Type: _WavePainter
    //     0xb94118: ldr             x8, [x8, #0xa50]
    // 0xb9411c: r3 = Null
    //     0xb9411c: add             x3, PP, #0x92, lsl #12  ; [pp+0x92a58] Null
    //     0xb94120: ldr             x3, [x3, #0xa58]
    // 0xb94124: r0 = DefaultTypeTest()
    //     0xb94124: bl              #0x13dd7a4  ; DefaultTypeTestStub
    // 0xb94128: ldur            x0, [fp, #-0x10]
    // 0xb9412c: LoadField: r1 = r0->field_b
    //     0xb9412c: ldur            w1, [x0, #0xb]
    // 0xb94130: DecompressPointer r1
    //     0xb94130: add             x1, x1, HEAP, lsl #32
    // 0xb94134: ldur            x2, [fp, #-8]
    // 0xb94138: LoadField: r3 = r2->field_b
    //     0xb94138: ldur            w3, [x2, #0xb]
    // 0xb9413c: DecompressPointer r3
    //     0xb9413c: add             x3, x3, HEAP, lsl #32
    // 0xb94140: stp             x3, x1, [SP]
    // 0xb94144: r0 = ==()
    //     0xb94144: bl              #0x128cb50  ; [dart:ui] Color::==
    // 0xb94148: tbz             w0, #4, #0xb94154
    // 0xb9414c: r0 = true
    //     0xb9414c: add             x0, NULL, #0x20  ; true
    // 0xb94150: b               #0xb94178
    // 0xb94154: ldur            x2, [fp, #-8]
    // 0xb94158: ldur            x1, [fp, #-0x10]
    // 0xb9415c: LoadField: d0 = r1->field_f
    //     0xb9415c: ldur            d0, [x1, #0xf]
    // 0xb94160: LoadField: d1 = r2->field_f
    //     0xb94160: ldur            d1, [x2, #0xf]
    // 0xb94164: fcmp            d0, d1
    // 0xb94168: r16 = true
    //     0xb94168: add             x16, NULL, #0x20  ; true
    // 0xb9416c: r17 = false
    //     0xb9416c: add             x17, NULL, #0x30  ; false
    // 0xb94170: csel            x1, x16, x17, ne
    // 0xb94174: mov             x0, x1
    // 0xb94178: LeaveFrame
    //     0xb94178: mov             SP, fp
    //     0xb9417c: ldp             fp, lr, [SP], #0x10
    // 0xb94180: ret
    //     0xb94180: ret             
    // 0xb94184: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xb94184: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xb94188: b               #0xb940ec
  }
}

// class id: 5389, size: 0x24, field offset: 0x14
class _ProfileStoryViewerState extends State<dynamic> {

  late Future<String> _qrFuture; // offset: 0x20

  _ build(/* No info */) {
    // ** addr: 0xe9a8c8, size: 0x510
    // 0xe9a8c8: EnterFrame
    //     0xe9a8c8: stp             fp, lr, [SP, #-0x10]!
    //     0xe9a8cc: mov             fp, SP
    // 0xe9a8d0: AllocStack(0x50)
    //     0xe9a8d0: sub             SP, SP, #0x50
    // 0xe9a8d4: SetupParameters(_ProfileStoryViewerState this /* r1 => r1, fp-0x8 */)
    //     0xe9a8d4: stur            x1, [fp, #-8]
    // 0xe9a8d8: CheckStackOverflow
    //     0xe9a8d8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe9a8dc: cmp             SP, x16
    //     0xe9a8e0: b.ls            #0xe9adb4
    // 0xe9a8e4: r1 = 1
    //     0xe9a8e4: mov             x1, #1
    // 0xe9a8e8: r0 = AllocateContext()
    //     0xe9a8e8: bl              #0x13de838  ; AllocateContextStub
    // 0xe9a8ec: mov             x2, x0
    // 0xe9a8f0: ldur            x0, [fp, #-8]
    // 0xe9a8f4: stur            x2, [fp, #-0x18]
    // 0xe9a8f8: StoreField: r2->field_f = r0
    //     0xe9a8f8: stur            w0, [x2, #0xf]
    // 0xe9a8fc: LoadField: r1 = r0->field_b
    //     0xe9a8fc: ldur            w1, [x0, #0xb]
    // 0xe9a900: DecompressPointer r1
    //     0xe9a900: add             x1, x1, HEAP, lsl #32
    // 0xe9a904: cmp             w1, NULL
    // 0xe9a908: b.eq            #0xe9adbc
    // 0xe9a90c: LoadField: r3 = r1->field_b
    //     0xe9a90c: ldur            w3, [x1, #0xb]
    // 0xe9a910: DecompressPointer r3
    //     0xe9a910: add             x3, x3, HEAP, lsl #32
    // 0xe9a914: mov             x1, x3
    // 0xe9a918: stur            x3, [fp, #-0x10]
    // 0xe9a91c: r0 = notifyChildrens()
    //     0xe9a91c: bl              #0x82f7c0  ; [dart:mixin_deduplication] _MixinApplication2&DisposableInterface&ListenableMixin&ListNotifierMixin::notifyChildrens
    // 0xe9a920: ldur            x0, [fp, #-0x10]
    // 0xe9a924: LoadField: r1 = r0->field_1b
    //     0xe9a924: ldur            w1, [x0, #0x1b]
    // 0xe9a928: DecompressPointer r1
    //     0xe9a928: add             x1, x1, HEAP, lsl #32
    // 0xe9a92c: stur            x1, [fp, #-0x28]
    // 0xe9a930: cmp             w1, NULL
    // 0xe9a934: b.ne            #0xe9a948
    // 0xe9a938: r0 = Instance_SizedBox
    //     0xe9a938: ldr             x0, [PP, #0x4f58]  ; [pp+0x4f58] Obj!SizedBox@12b70e1
    // 0xe9a93c: LeaveFrame
    //     0xe9a93c: mov             SP, fp
    //     0xe9a940: ldp             fp, lr, [SP], #0x10
    // 0xe9a944: ret
    //     0xe9a944: ret             
    // 0xe9a948: ldur            x0, [fp, #-8]
    // 0xe9a94c: LoadField: r3 = r0->field_13
    //     0xe9a94c: ldur            w3, [x0, #0x13]
    // 0xe9a950: DecompressPointer r3
    //     0xe9a950: add             x3, x3, HEAP, lsl #32
    // 0xe9a954: stur            x3, [fp, #-0x20]
    // 0xe9a958: LoadField: r2 = r0->field_1f
    //     0xe9a958: ldur            w2, [x0, #0x1f]
    // 0xe9a95c: DecompressPointer r2
    //     0xe9a95c: add             x2, x2, HEAP, lsl #32
    // 0xe9a960: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe9a964: cmp             w2, w16
    // 0xe9a968: b.eq            #0xe9adc0
    // 0xe9a96c: stur            x2, [fp, #-0x10]
    // 0xe9a970: r0 = _StoryQr()
    //     0xe9a970: bl              #0xe9ade4  ; Allocate_StoryQrStub -> _StoryQr (size=0x10)
    // 0xe9a974: mov             x1, x0
    // 0xe9a978: ldur            x0, [fp, #-0x10]
    // 0xe9a97c: stur            x1, [fp, #-0x38]
    // 0xe9a980: StoreField: r1->field_b = r0
    //     0xe9a980: stur            w0, [x1, #0xb]
    // 0xe9a984: ldur            x0, [fp, #-0x28]
    // 0xe9a988: LoadField: r2 = r0->field_33
    //     0xe9a988: ldur            w2, [x0, #0x33]
    // 0xe9a98c: DecompressPointer r2
    //     0xe9a98c: add             x2, x2, HEAP, lsl #32
    // 0xe9a990: stur            x2, [fp, #-0x30]
    // 0xe9a994: LoadField: r3 = r0->field_37
    //     0xe9a994: ldur            w3, [x0, #0x37]
    // 0xe9a998: DecompressPointer r3
    //     0xe9a998: add             x3, x3, HEAP, lsl #32
    // 0xe9a99c: stur            x3, [fp, #-0x10]
    // 0xe9a9a0: LoadField: r4 = r0->field_3f
    //     0xe9a9a0: ldur            w4, [x0, #0x3f]
    // 0xe9a9a4: DecompressPointer r4
    //     0xe9a9a4: add             x4, x4, HEAP, lsl #32
    // 0xe9a9a8: stur            x4, [fp, #-8]
    // 0xe9a9ac: r0 = _StoryProfile()
    //     0xe9a9ac: bl              #0xe9add8  ; Allocate_StoryProfileStub -> _StoryProfile (size=0x18)
    // 0xe9a9b0: mov             x3, x0
    // 0xe9a9b4: ldur            x0, [fp, #-0x30]
    // 0xe9a9b8: stur            x3, [fp, #-0x28]
    // 0xe9a9bc: StoreField: r3->field_b = r0
    //     0xe9a9bc: stur            w0, [x3, #0xb]
    // 0xe9a9c0: ldur            x0, [fp, #-0x10]
    // 0xe9a9c4: StoreField: r3->field_f = r0
    //     0xe9a9c4: stur            w0, [x3, #0xf]
    // 0xe9a9c8: ldur            x0, [fp, #-8]
    // 0xe9a9cc: StoreField: r3->field_13 = r0
    //     0xe9a9cc: stur            w0, [x3, #0x13]
    // 0xe9a9d0: r1 = Null
    //     0xe9a9d0: mov             x1, NULL
    // 0xe9a9d4: r2 = 4
    //     0xe9a9d4: mov             x2, #4
    // 0xe9a9d8: r0 = AllocateArray()
    //     0xe9a9d8: bl              #0x13df928  ; AllocateArrayStub
    // 0xe9a9dc: mov             x2, x0
    // 0xe9a9e0: ldur            x0, [fp, #-0x38]
    // 0xe9a9e4: stur            x2, [fp, #-8]
    // 0xe9a9e8: StoreField: r2->field_f = r0
    //     0xe9a9e8: stur            w0, [x2, #0xf]
    // 0xe9a9ec: ldur            x0, [fp, #-0x28]
    // 0xe9a9f0: StoreField: r2->field_13 = r0
    //     0xe9a9f0: stur            w0, [x2, #0x13]
    // 0xe9a9f4: r1 = <Widget>
    //     0xe9a9f4: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0xe9a9f8: r0 = AllocateGrowableArray()
    //     0xe9a9f8: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0xe9a9fc: mov             x3, x0
    // 0xe9aa00: ldur            x0, [fp, #-8]
    // 0xe9aa04: stur            x3, [fp, #-0x10]
    // 0xe9aa08: StoreField: r3->field_f = r0
    //     0xe9aa08: stur            w0, [x3, #0xf]
    // 0xe9aa0c: r0 = 4
    //     0xe9aa0c: mov             x0, #4
    // 0xe9aa10: StoreField: r3->field_b = r0
    //     0xe9aa10: stur            w0, [x3, #0xb]
    // 0xe9aa14: ldur            x2, [fp, #-0x18]
    // 0xe9aa18: r1 = Function '<anonymous closure>':.
    //     0xe9aa18: add             x1, PP, #0x9c, lsl #12  ; [pp+0x9ced8] AnonymousClosure: (0xe9b0ec), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _ProfileStoryViewerState::build (0xe9a8c8)
    //     0xe9aa1c: ldr             x1, [x1, #0xed8]
    // 0xe9aa20: r0 = AllocateClosure()
    //     0xe9aa20: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe9aa24: stur            x0, [fp, #-8]
    // 0xe9aa28: r0 = PageView()
    //     0xe9aa28: bl              #0xdeef3c  ; AllocatePageViewStub -> PageView (size=0x48)
    // 0xe9aa2c: stur            x0, [fp, #-0x28]
    // 0xe9aa30: ldur            x16, [fp, #-8]
    // 0xe9aa34: str             x16, [SP]
    // 0xe9aa38: mov             x1, x0
    // 0xe9aa3c: ldur            x2, [fp, #-0x10]
    // 0xe9aa40: ldur            x3, [fp, #-0x20]
    // 0xe9aa44: r4 = const [0, 0x4, 0x1, 0x3, onPageChanged, 0x3, null]
    //     0xe9aa44: add             x4, PP, #0x9c, lsl #12  ; [pp+0x9cee0] List(7) [0, 0x4, 0x1, 0x3, "onPageChanged", 0x3, Null]
    //     0xe9aa48: ldr             x4, [x4, #0xee0]
    // 0xe9aa4c: r0 = PageView()
    //     0xe9aa4c: bl              #0xe00efc  ; [package:flutter/src/widgets/page_view.dart] PageView::PageView
    // 0xe9aa50: ldur            x2, [fp, #-0x18]
    // 0xe9aa54: r1 = Function '<anonymous closure>':.
    //     0xe9aa54: add             x1, PP, #0x9c, lsl #12  ; [pp+0x9cee8] AnonymousClosure: (0xe9afc0), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _ProfileStoryViewerState::build (0xe9a8c8)
    //     0xe9aa58: ldr             x1, [x1, #0xee8]
    // 0xe9aa5c: r0 = AllocateClosure()
    //     0xe9aa5c: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe9aa60: r1 = <Widget>
    //     0xe9aa60: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0xe9aa64: r2 = 2
    //     0xe9aa64: mov             x2, #2
    // 0xe9aa68: stur            x0, [fp, #-8]
    // 0xe9aa6c: r0 = _GrowableList()
    //     0xe9aa6c: bl              #0x7d9940  ; [dart:core] _GrowableList::_GrowableList
    // 0xe9aa70: mov             x1, x0
    // 0xe9aa74: stur            x1, [fp, #-0x10]
    // 0xe9aa78: r2 = 0
    //     0xe9aa78: mov             x2, #0
    // 0xe9aa7c: stur            x2, [fp, #-0x40]
    // 0xe9aa80: CheckStackOverflow
    //     0xe9aa80: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe9aa84: cmp             SP, x16
    //     0xe9aa88: b.ls            #0xe9adcc
    // 0xe9aa8c: LoadField: r0 = r1->field_b
    //     0xe9aa8c: ldur            w0, [x1, #0xb]
    // 0xe9aa90: r3 = LoadInt32Instr(r0)
    //     0xe9aa90: sbfx            x3, x0, #1, #0x1f
    // 0xe9aa94: cmp             x2, x3
    // 0xe9aa98: b.ge            #0xe9ab60
    // 0xe9aa9c: lsl             x0, x2, #1
    // 0xe9aaa0: ldur            x16, [fp, #-8]
    // 0xe9aaa4: stp             x0, x16, [SP]
    // 0xe9aaa8: ldur            x0, [fp, #-8]
    // 0xe9aaac: ClosureCall
    //     0xe9aaac: ldr             x4, [PP, #0x148]  ; [pp+0x148] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0xe9aab0: ldur            x2, [x0, #0x1f]
    //     0xe9aab4: blr             x2
    // 0xe9aab8: mov             x3, x0
    // 0xe9aabc: r2 = Null
    //     0xe9aabc: mov             x2, NULL
    // 0xe9aac0: r1 = Null
    //     0xe9aac0: mov             x1, NULL
    // 0xe9aac4: stur            x3, [fp, #-0x18]
    // 0xe9aac8: r4 = 60
    //     0xe9aac8: mov             x4, #0x3c
    // 0xe9aacc: branchIfSmi(r0, 0xe9aad8)
    //     0xe9aacc: tbz             w0, #0, #0xe9aad8
    // 0xe9aad0: r4 = LoadClassIdInstr(r0)
    //     0xe9aad0: ldur            x4, [x0, #-1]
    //     0xe9aad4: ubfx            x4, x4, #0xc, #0x14
    // 0xe9aad8: r17 = -5846
    //     0xe9aad8: mov             x17, #-0x16d6
    // 0xe9aadc: add             x4, x4, x17
    // 0xe9aae0: cmp             x4, #0x3f6
    // 0xe9aae4: b.ls            #0xe9aafc
    // 0xe9aae8: r8 = Widget
    //     0xe9aae8: add             x8, PP, #0x1e, lsl #12  ; [pp+0x1e5f0] Type: Widget
    //     0xe9aaec: ldr             x8, [x8, #0x5f0]
    // 0xe9aaf0: r3 = Null
    //     0xe9aaf0: add             x3, PP, #0x9c, lsl #12  ; [pp+0x9cef0] Null
    //     0xe9aaf4: ldr             x3, [x3, #0xef0]
    // 0xe9aaf8: r0 = Widget()
    //     0xe9aaf8: bl              #0x829290  ; IsType_Widget_Stub
    // 0xe9aafc: ldur            x3, [fp, #-0x10]
    // 0xe9ab00: LoadField: r0 = r3->field_b
    //     0xe9ab00: ldur            w0, [x3, #0xb]
    // 0xe9ab04: r1 = LoadInt32Instr(r0)
    //     0xe9ab04: sbfx            x1, x0, #1, #0x1f
    // 0xe9ab08: mov             x0, x1
    // 0xe9ab0c: ldur            x1, [fp, #-0x40]
    // 0xe9ab10: cmp             x1, x0
    // 0xe9ab14: b.hs            #0xe9add4
    // 0xe9ab18: LoadField: r1 = r3->field_f
    //     0xe9ab18: ldur            w1, [x3, #0xf]
    // 0xe9ab1c: DecompressPointer r1
    //     0xe9ab1c: add             x1, x1, HEAP, lsl #32
    // 0xe9ab20: ldur            x0, [fp, #-0x18]
    // 0xe9ab24: ldur            x2, [fp, #-0x40]
    // 0xe9ab28: ArrayStore: r1[r2] = r0  ; List_4
    //     0xe9ab28: add             x25, x1, x2, lsl #2
    //     0xe9ab2c: add             x25, x25, #0xf
    //     0xe9ab30: str             w0, [x25]
    //     0xe9ab34: tbz             w0, #0, #0xe9ab50
    //     0xe9ab38: ldurb           w16, [x1, #-1]
    //     0xe9ab3c: ldurb           w17, [x0, #-1]
    //     0xe9ab40: and             x16, x17, x16, lsr #2
    //     0xe9ab44: tst             x16, HEAP, lsr #32
    //     0xe9ab48: b.eq            #0xe9ab50
    //     0xe9ab4c: bl              #0x13ddb50  ; ArrayWriteBarrierStub
    // 0xe9ab50: add             x0, x2, #1
    // 0xe9ab54: mov             x2, x0
    // 0xe9ab58: mov             x1, x3
    // 0xe9ab5c: b               #0xe9aa7c
    // 0xe9ab60: ldur            x0, [fp, #-0x28]
    // 0xe9ab64: mov             x3, x1
    // 0xe9ab68: r0 = Row()
    //     0xe9ab68: bl              #0x8a5b04  ; AllocateRowStub -> Row (size=0x38)
    // 0xe9ab6c: mov             x2, x0
    // 0xe9ab70: r0 = Instance_Axis
    //     0xe9ab70: ldr             x0, [PP, #0x49c8]  ; [pp+0x49c8] Obj!Axis@12c4a61
    // 0xe9ab74: stur            x2, [fp, #-8]
    // 0xe9ab78: StoreField: r2->field_f = r0
    //     0xe9ab78: stur            w0, [x2, #0xf]
    // 0xe9ab7c: r0 = Instance_MainAxisAlignment
    //     0xe9ab7c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15820] Obj!MainAxisAlignment@12c4541
    //     0xe9ab80: ldr             x0, [x0, #0x820]
    // 0xe9ab84: StoreField: r2->field_13 = r0
    //     0xe9ab84: stur            w0, [x2, #0x13]
    // 0xe9ab88: r0 = Instance_MainAxisSize
    //     0xe9ab88: add             x0, PP, #0x15, lsl #12  ; [pp+0x15828] Obj!MainAxisSize@12c4621
    //     0xe9ab8c: ldr             x0, [x0, #0x828]
    // 0xe9ab90: ArrayStore: r2[0] = r0  ; List_4
    //     0xe9ab90: stur            w0, [x2, #0x17]
    // 0xe9ab94: r0 = Instance_CrossAxisAlignment
    //     0xe9ab94: add             x0, PP, #0x15, lsl #12  ; [pp+0x15888] Obj!CrossAxisAlignment@12c44a1
    //     0xe9ab98: ldr             x0, [x0, #0x888]
    // 0xe9ab9c: StoreField: r2->field_1b = r0
    //     0xe9ab9c: stur            w0, [x2, #0x1b]
    // 0xe9aba0: r0 = Instance_VerticalDirection
    //     0xe9aba0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15838] Obj!VerticalDirection@12c4a21
    //     0xe9aba4: ldr             x0, [x0, #0x838]
    // 0xe9aba8: StoreField: r2->field_23 = r0
    //     0xe9aba8: stur            w0, [x2, #0x23]
    // 0xe9abac: r0 = Instance_Clip
    //     0xe9abac: add             x0, PP, #0x15, lsl #12  ; [pp+0x15840] Obj!Clip@12c80c1
    //     0xe9abb0: ldr             x0, [x0, #0x840]
    // 0xe9abb4: StoreField: r2->field_2b = r0
    //     0xe9abb4: stur            w0, [x2, #0x2b]
    // 0xe9abb8: StoreField: r2->field_2f = rZR
    //     0xe9abb8: stur            xzr, [x2, #0x2f]
    // 0xe9abbc: ldur            x1, [fp, #-0x10]
    // 0xe9abc0: StoreField: r2->field_b = r1
    //     0xe9abc0: stur            w1, [x2, #0xb]
    // 0xe9abc4: r1 = <StackParentData>
    //     0xe9abc4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15858] TypeArguments: <StackParentData>
    //     0xe9abc8: ldr             x1, [x1, #0x858]
    // 0xe9abcc: r0 = Positioned()
    //     0xe9abcc: bl              #0x8a54a4  ; AllocatePositionedStub -> Positioned (size=0x2c)
    // 0xe9abd0: mov             x1, x0
    // 0xe9abd4: r0 = 16.000000
    //     0xe9abd4: add             x0, PP, #0x13, lsl #12  ; [pp+0x13df8] 16
    //     0xe9abd8: ldr             x0, [x0, #0xdf8]
    // 0xe9abdc: stur            x1, [fp, #-0x10]
    // 0xe9abe0: StoreField: r1->field_13 = r0
    //     0xe9abe0: stur            w0, [x1, #0x13]
    // 0xe9abe4: r2 = 12.000000
    //     0xe9abe4: add             x2, PP, #0x19, lsl #12  ; [pp+0x19c58] 12
    //     0xe9abe8: ldr             x2, [x2, #0xc58]
    // 0xe9abec: ArrayStore: r1[0] = r2  ; List_4
    //     0xe9abec: stur            w2, [x1, #0x17]
    // 0xe9abf0: StoreField: r1->field_1b = r0
    //     0xe9abf0: stur            w0, [x1, #0x1b]
    // 0xe9abf4: ldur            x0, [fp, #-8]
    // 0xe9abf8: StoreField: r1->field_b = r0
    //     0xe9abf8: stur            w0, [x1, #0xb]
    // 0xe9abfc: r0 = LoadStaticField(0x13e8)
    //     0xe9abfc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe9ac00: ldr             x0, [x0, #0x27d0]
    // 0xe9ac04: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe9ac08: cmp             w0, w16
    // 0xe9ac0c: b.ne            #0xe9ac18
    // 0xe9ac10: r2 = Get
    //     0xe9ac10: ldr             x2, [PP, #0x79d0]  ; [pp+0x79d0] Field <::.Get>: static late final (offset: 0x13e8)
    // 0xe9ac14: r0 = InitLateFinalStaticField()
    //     0xe9ac14: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe9ac18: r1 = Function '<anonymous closure>': static.
    //     0xe9ac18: add             x1, PP, #0x9c, lsl #12  ; [pp+0x9cf00] AnonymousClosure: static (0xe9adf0), of [package:get/get_navigation/src/extension_navigation.dart] 
    //     0xe9ac1c: ldr             x1, [x1, #0xf00]
    // 0xe9ac20: r2 = Null
    //     0xe9ac20: mov             x2, NULL
    // 0xe9ac24: r0 = AllocateClosureGeneric()
    //     0xe9ac24: bl              #0x13deb28  ; AllocateClosureGenericStub
    // 0xe9ac28: stp             NULL, x0, [SP]
    // 0xe9ac2c: r0 = _instantiateClosure()
    //     0xe9ac2c: bl              #0x7d92dc  ; [dart:_internal] ::_instantiateClosure
    // 0xe9ac30: stur            x0, [fp, #-8]
    // 0xe9ac34: r0 = IconButton()
    //     0xe9ac34: bl              #0xd16288  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0xe9ac38: mov             x2, x0
    // 0xe9ac3c: ldur            x0, [fp, #-8]
    // 0xe9ac40: stur            x2, [fp, #-0x18]
    // 0xe9ac44: StoreField: r2->field_3b = r0
    //     0xe9ac44: stur            w0, [x2, #0x3b]
    // 0xe9ac48: r0 = false
    //     0xe9ac48: add             x0, NULL, #0x30  ; false
    // 0xe9ac4c: StoreField: r2->field_4f = r0
    //     0xe9ac4c: stur            w0, [x2, #0x4f]
    // 0xe9ac50: r1 = Instance_Icon
    //     0xe9ac50: add             x1, PP, #0x9c, lsl #12  ; [pp+0x9cf08] Obj!Icon@12b5fa1
    //     0xe9ac54: ldr             x1, [x1, #0xf08]
    // 0xe9ac58: StoreField: r2->field_1f = r1
    //     0xe9ac58: stur            w1, [x2, #0x1f]
    // 0xe9ac5c: r1 = Instance__IconButtonVariant
    //     0xe9ac5c: add             x1, PP, #0x17, lsl #12  ; [pp+0x177a8] Obj!_IconButtonVariant@12c57a1
    //     0xe9ac60: ldr             x1, [x1, #0x7a8]
    // 0xe9ac64: StoreField: r2->field_6f = r1
    //     0xe9ac64: stur            w1, [x2, #0x6f]
    // 0xe9ac68: r1 = <StackParentData>
    //     0xe9ac68: add             x1, PP, #0x15, lsl #12  ; [pp+0x15858] TypeArguments: <StackParentData>
    //     0xe9ac6c: ldr             x1, [x1, #0x858]
    // 0xe9ac70: r0 = Positioned()
    //     0xe9ac70: bl              #0x8a54a4  ; AllocatePositionedStub -> Positioned (size=0x2c)
    // 0xe9ac74: mov             x3, x0
    // 0xe9ac78: r0 = 24.000000
    //     0xe9ac78: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e4d0] 24
    //     0xe9ac7c: ldr             x0, [x0, #0x4d0]
    // 0xe9ac80: stur            x3, [fp, #-8]
    // 0xe9ac84: ArrayStore: r3[0] = r0  ; List_4
    //     0xe9ac84: stur            w0, [x3, #0x17]
    // 0xe9ac88: r0 = 12.000000
    //     0xe9ac88: add             x0, PP, #0x19, lsl #12  ; [pp+0x19c58] 12
    //     0xe9ac8c: ldr             x0, [x0, #0xc58]
    // 0xe9ac90: StoreField: r3->field_1b = r0
    //     0xe9ac90: stur            w0, [x3, #0x1b]
    // 0xe9ac94: ldur            x0, [fp, #-0x18]
    // 0xe9ac98: StoreField: r3->field_b = r0
    //     0xe9ac98: stur            w0, [x3, #0xb]
    // 0xe9ac9c: r1 = Null
    //     0xe9ac9c: mov             x1, NULL
    // 0xe9aca0: r2 = 6
    //     0xe9aca0: mov             x2, #6
    // 0xe9aca4: r0 = AllocateArray()
    //     0xe9aca4: bl              #0x13df928  ; AllocateArrayStub
    // 0xe9aca8: mov             x2, x0
    // 0xe9acac: ldur            x0, [fp, #-0x28]
    // 0xe9acb0: stur            x2, [fp, #-0x18]
    // 0xe9acb4: StoreField: r2->field_f = r0
    //     0xe9acb4: stur            w0, [x2, #0xf]
    // 0xe9acb8: ldur            x0, [fp, #-0x10]
    // 0xe9acbc: StoreField: r2->field_13 = r0
    //     0xe9acbc: stur            w0, [x2, #0x13]
    // 0xe9acc0: ldur            x0, [fp, #-8]
    // 0xe9acc4: ArrayStore: r2[0] = r0  ; List_4
    //     0xe9acc4: stur            w0, [x2, #0x17]
    // 0xe9acc8: r1 = <Widget>
    //     0xe9acc8: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0xe9accc: r0 = AllocateGrowableArray()
    //     0xe9accc: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0xe9acd0: mov             x1, x0
    // 0xe9acd4: ldur            x0, [fp, #-0x18]
    // 0xe9acd8: stur            x1, [fp, #-8]
    // 0xe9acdc: StoreField: r1->field_f = r0
    //     0xe9acdc: stur            w0, [x1, #0xf]
    // 0xe9ace0: r0 = 6
    //     0xe9ace0: mov             x0, #6
    // 0xe9ace4: StoreField: r1->field_b = r0
    //     0xe9ace4: stur            w0, [x1, #0xb]
    // 0xe9ace8: r0 = Stack()
    //     0xe9ace8: bl              #0xd1a854  ; AllocateStackStub -> Stack (size=0x20)
    // 0xe9acec: mov             x1, x0
    // 0xe9acf0: r0 = Instance_AlignmentDirectional
    //     0xe9acf0: add             x0, PP, #0x15, lsl #12  ; [pp+0x158d8] Obj!AlignmentDirectional@129e611
    //     0xe9acf4: ldr             x0, [x0, #0x8d8]
    // 0xe9acf8: stur            x1, [fp, #-0x10]
    // 0xe9acfc: StoreField: r1->field_f = r0
    //     0xe9acfc: stur            w0, [x1, #0xf]
    // 0xe9ad00: r0 = Instance_StackFit
    //     0xe9ad00: add             x0, PP, #0x15, lsl #12  ; [pp+0x158e0] Obj!StackFit@12c4221
    //     0xe9ad04: ldr             x0, [x0, #0x8e0]
    // 0xe9ad08: ArrayStore: r1[0] = r0  ; List_4
    //     0xe9ad08: stur            w0, [x1, #0x17]
    // 0xe9ad0c: r0 = Instance_Clip
    //     0xe9ad0c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15850] Obj!Clip@12c80e1
    //     0xe9ad10: ldr             x0, [x0, #0x850]
    // 0xe9ad14: StoreField: r1->field_1b = r0
    //     0xe9ad14: stur            w0, [x1, #0x1b]
    // 0xe9ad18: ldur            x0, [fp, #-8]
    // 0xe9ad1c: StoreField: r1->field_b = r0
    //     0xe9ad1c: stur            w0, [x1, #0xb]
    // 0xe9ad20: r0 = SafeArea()
    //     0xe9ad20: bl              #0xd73100  ; AllocateSafeAreaStub -> SafeArea (size=0x28)
    // 0xe9ad24: mov             x1, x0
    // 0xe9ad28: r0 = true
    //     0xe9ad28: add             x0, NULL, #0x20  ; true
    // 0xe9ad2c: stur            x1, [fp, #-8]
    // 0xe9ad30: StoreField: r1->field_b = r0
    //     0xe9ad30: stur            w0, [x1, #0xb]
    // 0xe9ad34: StoreField: r1->field_f = r0
    //     0xe9ad34: stur            w0, [x1, #0xf]
    // 0xe9ad38: StoreField: r1->field_13 = r0
    //     0xe9ad38: stur            w0, [x1, #0x13]
    // 0xe9ad3c: ArrayStore: r1[0] = r0  ; List_4
    //     0xe9ad3c: stur            w0, [x1, #0x17]
    // 0xe9ad40: r2 = Instance_EdgeInsets
    //     0xe9ad40: ldr             x2, [PP, #0x52b0]  ; [pp+0x52b0] Obj!EdgeInsets@129cbd1
    // 0xe9ad44: StoreField: r1->field_1b = r2
    //     0xe9ad44: stur            w2, [x1, #0x1b]
    // 0xe9ad48: r2 = false
    //     0xe9ad48: add             x2, NULL, #0x30  ; false
    // 0xe9ad4c: StoreField: r1->field_1f = r2
    //     0xe9ad4c: stur            w2, [x1, #0x1f]
    // 0xe9ad50: ldur            x3, [fp, #-0x10]
    // 0xe9ad54: StoreField: r1->field_23 = r3
    //     0xe9ad54: stur            w3, [x1, #0x23]
    // 0xe9ad58: r0 = Material()
    //     0xe9ad58: bl              #0x8a54b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0xe9ad5c: r1 = Instance_MaterialType
    //     0xe9ad5c: add             x1, PP, #0x17, lsl #12  ; [pp+0x17210] Obj!MaterialType@12c5341
    //     0xe9ad60: ldr             x1, [x1, #0x210]
    // 0xe9ad64: StoreField: r0->field_f = r1
    //     0xe9ad64: stur            w1, [x0, #0xf]
    // 0xe9ad68: ArrayStore: r0[0] = rZR  ; List_8
    //     0xe9ad68: stur            xzr, [x0, #0x17]
    // 0xe9ad6c: r1 = Instance_Color
    //     0xe9ad6c: add             x1, PP, #0x9c, lsl #12  ; [pp+0x9cf10] Obj!Color@12a4501
    //     0xe9ad70: ldr             x1, [x1, #0xf10]
    // 0xe9ad74: StoreField: r0->field_1f = r1
    //     0xe9ad74: stur            w1, [x0, #0x1f]
    // 0xe9ad78: r1 = true
    //     0xe9ad78: add             x1, NULL, #0x20  ; true
    // 0xe9ad7c: StoreField: r0->field_33 = r1
    //     0xe9ad7c: stur            w1, [x0, #0x33]
    // 0xe9ad80: r1 = Instance_Clip
    //     0xe9ad80: add             x1, PP, #0x15, lsl #12  ; [pp+0x15840] Obj!Clip@12c80c1
    //     0xe9ad84: ldr             x1, [x1, #0x840]
    // 0xe9ad88: StoreField: r0->field_37 = r1
    //     0xe9ad88: stur            w1, [x0, #0x37]
    // 0xe9ad8c: r1 = Instance_Duration
    //     0xe9ad8c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15318] Obj!Duration@12c8981
    //     0xe9ad90: ldr             x1, [x1, #0x318]
    // 0xe9ad94: StoreField: r0->field_3b = r1
    //     0xe9ad94: stur            w1, [x0, #0x3b]
    // 0xe9ad98: ldur            x1, [fp, #-8]
    // 0xe9ad9c: StoreField: r0->field_b = r1
    //     0xe9ad9c: stur            w1, [x0, #0xb]
    // 0xe9ada0: r1 = false
    //     0xe9ada0: add             x1, NULL, #0x30  ; false
    // 0xe9ada4: StoreField: r0->field_13 = r1
    //     0xe9ada4: stur            w1, [x0, #0x13]
    // 0xe9ada8: LeaveFrame
    //     0xe9ada8: mov             SP, fp
    //     0xe9adac: ldp             fp, lr, [SP], #0x10
    // 0xe9adb0: ret
    //     0xe9adb0: ret             
    // 0xe9adb4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe9adb4: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9adb8: b               #0xe9a8e4
    // 0xe9adbc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0xe9adbc: bl              #0x13e00c4  ; NullCastErrorSharedWithoutFPURegsStub
    // 0xe9adc0: r9 = _qrFuture
    //     0xe9adc0: add             x9, PP, #0x9c, lsl #12  ; [pp+0x9cf18] Field <_ProfileStoryViewerState@1979106386._qrFuture@1979106386>: late (offset: 0x20)
    //     0xe9adc4: ldr             x9, [x9, #0xf18]
    // 0xe9adc8: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0xe9adc8: bl              #0x13e034c  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0xe9adcc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe9adcc: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9add0: b               #0xe9aa8c
    // 0xe9add4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0xe9add4: bl              #0x13dff64  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] Expanded <anonymous closure>(dynamic, int) {
    // ** addr: 0xe9afc0, size: 0x12c
    // 0xe9afc0: EnterFrame
    //     0xe9afc0: stp             fp, lr, [SP, #-0x10]!
    //     0xe9afc4: mov             fp, SP
    // 0xe9afc8: AllocStack(0x30)
    //     0xe9afc8: sub             SP, SP, #0x30
    // 0xe9afcc: SetupParameters([dynamic _ /* r0 */])
    //     0xe9afcc: ldr             x0, [fp, #0x18]
    //     0xe9afd0: ldur            w1, [x0, #0x17]
    //     0xe9afd4: add             x1, x1, HEAP, lsl #32
    // 0xe9afd8: CheckStackOverflow
    //     0xe9afd8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe9afdc: cmp             SP, x16
    //     0xe9afe0: b.ls            #0xe9b0e4
    // 0xe9afe4: LoadField: r0 = r1->field_f
    //     0xe9afe4: ldur            w0, [x1, #0xf]
    // 0xe9afe8: DecompressPointer r0
    //     0xe9afe8: add             x0, x0, HEAP, lsl #32
    // 0xe9afec: ArrayLoad: r1 = r0[0]  ; List_8
    //     0xe9afec: ldur            x1, [x0, #0x17]
    // 0xe9aff0: ldr             x0, [fp, #0x10]
    // 0xe9aff4: r2 = LoadInt32Instr(r0)
    //     0xe9aff4: sbfx            x2, x0, #1, #0x1f
    //     0xe9aff8: tbz             w0, #0, #0xe9b000
    //     0xe9affc: ldur            x2, [x0, #7]
    // 0xe9b000: cmp             x2, x1
    // 0xe9b004: b.gt            #0xe9b014
    // 0xe9b008: r0 = Instance_Color
    //     0xe9b008: add             x0, PP, #0x12, lsl #12  ; [pp+0x12c38] Obj!Color@12a2701
    //     0xe9b00c: ldr             x0, [x0, #0xc38]
    // 0xe9b010: b               #0xe9b01c
    // 0xe9b014: r0 = Instance_Color
    //     0xe9b014: add             x0, PP, #0x9c, lsl #12  ; [pp+0x9cf28] Obj!Color@12a27c1
    //     0xe9b018: ldr             x0, [x0, #0xf28]
    // 0xe9b01c: stur            x0, [fp, #-8]
    // 0xe9b020: r0 = Radius()
    //     0xe9b020: bl              #0x8a73d4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0xe9b024: d0 = 4.000000
    //     0xe9b024: fmov            d0, #4.00000000
    // 0xe9b028: stur            x0, [fp, #-0x10]
    // 0xe9b02c: StoreField: r0->field_7 = d0
    //     0xe9b02c: stur            d0, [x0, #7]
    // 0xe9b030: StoreField: r0->field_f = d0
    //     0xe9b030: stur            d0, [x0, #0xf]
    // 0xe9b034: r0 = BorderRadius()
    //     0xe9b034: bl              #0x8a73c8  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0xe9b038: mov             x1, x0
    // 0xe9b03c: ldur            x0, [fp, #-0x10]
    // 0xe9b040: stur            x1, [fp, #-0x18]
    // 0xe9b044: StoreField: r1->field_7 = r0
    //     0xe9b044: stur            w0, [x1, #7]
    // 0xe9b048: StoreField: r1->field_b = r0
    //     0xe9b048: stur            w0, [x1, #0xb]
    // 0xe9b04c: StoreField: r1->field_f = r0
    //     0xe9b04c: stur            w0, [x1, #0xf]
    // 0xe9b050: StoreField: r1->field_13 = r0
    //     0xe9b050: stur            w0, [x1, #0x13]
    // 0xe9b054: r0 = BoxDecoration()
    //     0xe9b054: bl              #0x8a721c  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0xe9b058: mov             x1, x0
    // 0xe9b05c: ldur            x0, [fp, #-8]
    // 0xe9b060: stur            x1, [fp, #-0x10]
    // 0xe9b064: StoreField: r1->field_7 = r0
    //     0xe9b064: stur            w0, [x1, #7]
    // 0xe9b068: ldur            x0, [fp, #-0x18]
    // 0xe9b06c: StoreField: r1->field_13 = r0
    //     0xe9b06c: stur            w0, [x1, #0x13]
    // 0xe9b070: r0 = Instance_BoxShape
    //     0xe9b070: add             x0, PP, #0x17, lsl #12  ; [pp+0x171f8] Obj!BoxShape@12c4921
    //     0xe9b074: ldr             x0, [x0, #0x1f8]
    // 0xe9b078: StoreField: r1->field_23 = r0
    //     0xe9b078: stur            w0, [x1, #0x23]
    // 0xe9b07c: r0 = Container()
    //     0xe9b07c: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0xe9b080: stur            x0, [fp, #-8]
    // 0xe9b084: r16 = 3.000000
    //     0xe9b084: add             x16, PP, #0x22, lsl #12  ; [pp+0x223f8] 3
    //     0xe9b088: ldr             x16, [x16, #0x3f8]
    // 0xe9b08c: r30 = Instance_EdgeInsets
    //     0xe9b08c: add             lr, PP, #0x9c, lsl #12  ; [pp+0x9cf30] Obj!EdgeInsets@129d7a1
    //     0xe9b090: ldr             lr, [lr, #0xf30]
    // 0xe9b094: stp             lr, x16, [SP, #8]
    // 0xe9b098: ldur            x16, [fp, #-0x10]
    // 0xe9b09c: str             x16, [SP]
    // 0xe9b0a0: mov             x1, x0
    // 0xe9b0a4: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x1, margin, 0x2, null]
    //     0xe9b0a4: add             x4, PP, #0x80, lsl #12  ; [pp+0x80be8] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x1, "margin", 0x2, Null]
    //     0xe9b0a8: ldr             x4, [x4, #0xbe8]
    // 0xe9b0ac: r0 = Container()
    //     0xe9b0ac: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0xe9b0b0: r1 = <FlexParentData>
    //     0xe9b0b0: add             x1, PP, #0x15, lsl #12  ; [pp+0x15878] TypeArguments: <FlexParentData>
    //     0xe9b0b4: ldr             x1, [x1, #0x878]
    // 0xe9b0b8: r0 = Expanded()
    //     0xe9b0b8: bl              #0x8a5b10  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0xe9b0bc: r1 = 1
    //     0xe9b0bc: mov             x1, #1
    // 0xe9b0c0: StoreField: r0->field_13 = r1
    //     0xe9b0c0: stur            x1, [x0, #0x13]
    // 0xe9b0c4: r1 = Instance_FlexFit
    //     0xe9b0c4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15880] Obj!FlexFit@12c4641
    //     0xe9b0c8: ldr             x1, [x1, #0x880]
    // 0xe9b0cc: StoreField: r0->field_1b = r1
    //     0xe9b0cc: stur            w1, [x0, #0x1b]
    // 0xe9b0d0: ldur            x1, [fp, #-8]
    // 0xe9b0d4: StoreField: r0->field_b = r1
    //     0xe9b0d4: stur            w1, [x0, #0xb]
    // 0xe9b0d8: LeaveFrame
    //     0xe9b0d8: mov             SP, fp
    //     0xe9b0dc: ldp             fp, lr, [SP], #0x10
    // 0xe9b0e0: ret
    //     0xe9b0e0: ret             
    // 0xe9b0e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe9b0e4: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9b0e8: b               #0xe9afe4
  }
  [closure] void <anonymous closure>(dynamic, int) {
    // ** addr: 0xe9b0ec, size: 0x84
    // 0xe9b0ec: EnterFrame
    //     0xe9b0ec: stp             fp, lr, [SP, #-0x10]!
    //     0xe9b0f0: mov             fp, SP
    // 0xe9b0f4: AllocStack(0x10)
    //     0xe9b0f4: sub             SP, SP, #0x10
    // 0xe9b0f8: SetupParameters([dynamic _ /* r0 */])
    //     0xe9b0f8: ldr             x0, [fp, #0x18]
    //     0xe9b0fc: ldur            w1, [x0, #0x17]
    //     0xe9b100: add             x1, x1, HEAP, lsl #32
    //     0xe9b104: stur            x1, [fp, #-8]
    // 0xe9b108: CheckStackOverflow
    //     0xe9b108: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe9b10c: cmp             SP, x16
    //     0xe9b110: b.ls            #0xe9b168
    // 0xe9b114: r1 = 1
    //     0xe9b114: mov             x1, #1
    // 0xe9b118: r0 = AllocateContext()
    //     0xe9b118: bl              #0x13de838  ; AllocateContextStub
    // 0xe9b11c: mov             x1, x0
    // 0xe9b120: ldur            x0, [fp, #-8]
    // 0xe9b124: StoreField: r1->field_b = r0
    //     0xe9b124: stur            w0, [x1, #0xb]
    // 0xe9b128: ldr             x2, [fp, #0x10]
    // 0xe9b12c: StoreField: r1->field_f = r2
    //     0xe9b12c: stur            w2, [x1, #0xf]
    // 0xe9b130: LoadField: r3 = r0->field_f
    //     0xe9b130: ldur            w3, [x0, #0xf]
    // 0xe9b134: DecompressPointer r3
    //     0xe9b134: add             x3, x3, HEAP, lsl #32
    // 0xe9b138: mov             x2, x1
    // 0xe9b13c: stur            x3, [fp, #-0x10]
    // 0xe9b140: r1 = Function '<anonymous closure>':.
    //     0xe9b140: add             x1, PP, #0x9c, lsl #12  ; [pp+0x9cf38] AnonymousClosure: (0xe9b170), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _ProfileStoryViewerState::build (0xe9a8c8)
    //     0xe9b144: ldr             x1, [x1, #0xf38]
    // 0xe9b148: r0 = AllocateClosure()
    //     0xe9b148: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe9b14c: ldur            x1, [fp, #-0x10]
    // 0xe9b150: mov             x2, x0
    // 0xe9b154: r0 = setState()
    //     0xe9b154: bl              #0x82938c  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0xe9b158: r0 = Null
    //     0xe9b158: mov             x0, NULL
    // 0xe9b15c: LeaveFrame
    //     0xe9b15c: mov             SP, fp
    //     0xe9b160: ldp             fp, lr, [SP], #0x10
    // 0xe9b164: ret
    //     0xe9b164: ret             
    // 0xe9b168: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe9b168: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9b16c: b               #0xe9b114
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0xe9b170, size: 0x38
    // 0xe9b170: ldr             x1, [SP]
    // 0xe9b174: ArrayLoad: r2 = r1[0]  ; List_4
    //     0xe9b174: ldur            w2, [x1, #0x17]
    // 0xe9b178: DecompressPointer r2
    //     0xe9b178: add             x2, x2, HEAP, lsl #32
    // 0xe9b17c: LoadField: r1 = r2->field_b
    //     0xe9b17c: ldur            w1, [x2, #0xb]
    // 0xe9b180: DecompressPointer r1
    //     0xe9b180: add             x1, x1, HEAP, lsl #32
    // 0xe9b184: LoadField: r3 = r1->field_f
    //     0xe9b184: ldur            w3, [x1, #0xf]
    // 0xe9b188: DecompressPointer r3
    //     0xe9b188: add             x3, x3, HEAP, lsl #32
    // 0xe9b18c: LoadField: r0 = r2->field_f
    //     0xe9b18c: ldur            w0, [x2, #0xf]
    // 0xe9b190: DecompressPointer r0
    //     0xe9b190: add             x0, x0, HEAP, lsl #32
    // 0xe9b194: r1 = LoadInt32Instr(r0)
    //     0xe9b194: sbfx            x1, x0, #1, #0x1f
    //     0xe9b198: tbz             w0, #0, #0xe9b1a0
    //     0xe9b19c: ldur            x1, [x0, #7]
    // 0xe9b1a0: ArrayStore: r3[0] = r1  ; List_8
    //     0xe9b1a0: stur            x1, [x3, #0x17]
    // 0xe9b1a4: ret
    //     0xe9b1a4: ret             
  }
  _ initState(/* No info */) {
    // ** addr: 0xf957f4, size: 0x60
    // 0xf957f4: EnterFrame
    //     0xf957f4: stp             fp, lr, [SP, #-0x10]!
    //     0xf957f8: mov             fp, SP
    // 0xf957fc: AllocStack(0x8)
    //     0xf957fc: sub             SP, SP, #8
    // 0xf95800: SetupParameters(_ProfileStoryViewerState this /* r1 => r0, fp-0x8 */)
    //     0xf95800: mov             x0, x1
    //     0xf95804: stur            x1, [fp, #-8]
    // 0xf95808: CheckStackOverflow
    //     0xf95808: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xf9580c: cmp             SP, x16
    //     0xf95810: b.ls            #0xf9584c
    // 0xf95814: mov             x1, x0
    // 0xf95818: r0 = _loadQr()
    //     0xf95818: bl              #0xf95854  ; [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _ProfileStoryViewerState::_loadQr
    // 0xf9581c: ldur            x1, [fp, #-8]
    // 0xf95820: StoreField: r1->field_1f = r0
    //     0xf95820: stur            w0, [x1, #0x1f]
    //     0xf95824: ldurb           w16, [x1, #-1]
    //     0xf95828: ldurb           w17, [x0, #-1]
    //     0xf9582c: and             x16, x17, x16, lsr #2
    //     0xf95830: tst             x16, HEAP, lsr #32
    //     0xf95834: b.eq            #0xf9583c
    //     0xf95838: bl              #0x13ddf94  ; WriteBarrierWrappersStub
    // 0xf9583c: r0 = Null
    //     0xf9583c: mov             x0, NULL
    // 0xf95840: LeaveFrame
    //     0xf95840: mov             SP, fp
    //     0xf95844: ldp             fp, lr, [SP], #0x10
    // 0xf95848: ret
    //     0xf95848: ret             
    // 0xf9584c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xf9584c: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xf95850: b               #0xf95814
  }
  _ _loadQr(/* No info */) async {
    // ** addr: 0xf95854, size: 0xc8
    // 0xf95854: EnterFrame
    //     0xf95854: stp             fp, lr, [SP, #-0x10]!
    //     0xf95858: mov             fp, SP
    // 0xf9585c: AllocStack(0x38)
    //     0xf9585c: sub             SP, SP, #0x38
    // 0xf95860: SetupParameters(_ProfileStoryViewerState this /* r1 => r1, fp-0x10 */)
    //     0xf95860: stur            NULL, [fp, #-8]
    //     0xf95864: stur            x1, [fp, #-0x10]
    // 0xf95868: CheckStackOverflow
    //     0xf95868: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xf9586c: cmp             SP, x16
    //     0xf95870: b.ls            #0xf95914
    // 0xf95874: InitAsync() -> Future<String>
    //     0xf95874: ldr             x0, [PP, #0x8d0]  ; [pp+0x8d0] TypeArguments: <String>
    //     0xf95878: bl              #0x7f5e44  ; InitAsyncStub
    // 0xf9587c: r0 = LoadStaticField(0x16c8)
    //     0xf9587c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xf95880: ldr             x0, [x0, #0x2d90]
    // 0xf95884: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xf95888: cmp             w0, w16
    // 0xf9588c: b.ne            #0xf9589c
    // 0xf95890: r2 = _instance
    //     0xf95890: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a398] Field <PersonalQrService._instance@1776105602>: static late final (offset: 0x16c8)
    //     0xf95894: ldr             x2, [x2, #0x398]
    // 0xf95898: r0 = InitLateFinalStaticField()
    //     0xf95898: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xf9589c: mov             x1, x0
    // 0xf958a0: r0 = getUserInfo()
    //     0xf958a0: bl              #0xf9591c  ; [package:simaster_ugm/app/modules/attedence/data/services/personal_qr_service.dart] PersonalQrService::getUserInfo
    // 0xf958a4: mov             x1, x0
    // 0xf958a8: stur            x1, [fp, #-0x18]
    // 0xf958ac: r0 = Await()
    //     0xf958ac: bl              #0x7f5c00  ; AwaitStub
    // 0xf958b0: r1 = Function '<anonymous closure>':.
    //     0xf958b0: add             x1, PP, #0x9c, lsl #12  ; [pp+0x9cf40] AnonymousClosure: (0x122fc60), in [dart:mixin_deduplication] _MixinApplication371&Node&_ParentNode&_NonElementParentNode&_ElementAndDocument::getElementsByClassName (0x122fc68)
    //     0xf958b4: ldr             x1, [x1, #0xf40]
    // 0xf958b8: r2 = Null
    //     0xf958b8: mov             x2, NULL
    // 0xf958bc: stur            x0, [fp, #-0x10]
    // 0xf958c0: r0 = AllocateClosure()
    //     0xf958c0: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xf958c4: r1 = Function '<anonymous closure>':.
    //     0xf958c4: add             x1, PP, #0x9c, lsl #12  ; [pp+0x9cf48] AnonymousClosure: (0xf95b4c), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _ProfileStoryViewerState::_loadQr (0xf95854)
    //     0xf958c8: ldr             x1, [x1, #0xf48]
    // 0xf958cc: r2 = Null
    //     0xf958cc: mov             x2, NULL
    // 0xf958d0: stur            x0, [fp, #-0x18]
    // 0xf958d4: r0 = AllocateClosure()
    //     0xf958d4: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xf958d8: mov             x1, x0
    // 0xf958dc: ldur            x0, [fp, #-0x10]
    // 0xf958e0: r2 = LoadClassIdInstr(r0)
    //     0xf958e0: ldur            x2, [x0, #-1]
    //     0xf958e4: ubfx            x2, x2, #0xc, #0x14
    // 0xf958e8: r16 = <FutureOr<String>>
    //     0xf958e8: add             x16, PP, #0x9c, lsl #12  ; [pp+0x9cf50] TypeArguments: <FutureOr<String>>
    //     0xf958ec: ldr             x16, [x16, #0xf50]
    // 0xf958f0: stp             x0, x16, [SP, #0x10]
    // 0xf958f4: ldur            x16, [fp, #-0x18]
    // 0xf958f8: stp             x1, x16, [SP]
    // 0xf958fc: mov             x0, x2
    // 0xf95900: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0xf95900: ldr             x4, [PP, #0x728]  ; [pp+0x728] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0xf95904: r0 = GDT[cid_x0 + -0x1000]()
    //     0xf95904: sub             lr, x0, #1, lsl #12
    //     0xf95908: ldr             lr, [x21, lr, lsl #3]
    //     0xf9590c: blr             lr
    // 0xf95910: r0 = ReturnAsync()
    //     0xf95910: b               #0x82fdf0  ; ReturnAsyncStub
    // 0xf95914: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xf95914: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xf95918: b               #0xf95874
  }
  [closure] Future<String> <anonymous closure>(dynamic, Map<String, String>) async {
    // ** addr: 0xf95b4c, size: 0x164
    // 0xf95b4c: EnterFrame
    //     0xf95b4c: stp             fp, lr, [SP, #-0x10]!
    //     0xf95b50: mov             fp, SP
    // 0xf95b54: AllocStack(0x48)
    //     0xf95b54: sub             SP, SP, #0x48
    // 0xf95b58: SetupParameters(_ProfileStoryViewerState this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0xf95b58: stur            NULL, [fp, #-8]
    //     0xf95b5c: mov             x0, #0
    //     0xf95b60: add             x1, fp, w0, sxtw #2
    //     0xf95b64: ldr             x1, [x1, #0x18]
    //     0xf95b68: add             x2, fp, w0, sxtw #2
    //     0xf95b6c: ldr             x2, [x2, #0x10]
    //     0xf95b70: stur            x2, [fp, #-0x18]
    //     0xf95b74: ldur            w3, [x1, #0x17]
    //     0xf95b78: add             x3, x3, HEAP, lsl #32
    //     0xf95b7c: stur            x3, [fp, #-0x10]
    // 0xf95b80: CheckStackOverflow
    //     0xf95b80: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xf95b84: cmp             SP, x16
    //     0xf95b88: b.ls            #0xf95ca8
    // 0xf95b8c: InitAsync() -> Future<String>
    //     0xf95b8c: ldr             x0, [PP, #0x8d0]  ; [pp+0x8d0] TypeArguments: <String>
    //     0xf95b90: bl              #0x7f5e44  ; InitAsyncStub
    // 0xf95b94: r0 = LoadStaticField(0x16c8)
    //     0xf95b94: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xf95b98: ldr             x0, [x0, #0x2d90]
    // 0xf95b9c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xf95ba0: cmp             w0, w16
    // 0xf95ba4: b.ne            #0xf95bb4
    // 0xf95ba8: r2 = _instance
    //     0xf95ba8: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a398] Field <PersonalQrService._instance@1776105602>: static late final (offset: 0x16c8)
    //     0xf95bac: ldr             x2, [x2, #0x398]
    // 0xf95bb0: r0 = InitLateFinalStaticField()
    //     0xf95bb0: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xf95bb4: mov             x4, x0
    // 0xf95bb8: ldur            x3, [fp, #-0x18]
    // 0xf95bbc: stur            x4, [fp, #-0x20]
    // 0xf95bc0: r0 = LoadClassIdInstr(r3)
    //     0xf95bc0: ldur            x0, [x3, #-1]
    //     0xf95bc4: ubfx            x0, x0, #0xc, #0x14
    // 0xf95bc8: mov             x1, x3
    // 0xf95bcc: r2 = "username"
    //     0xf95bcc: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1b9c8] "username"
    //     0xf95bd0: ldr             x2, [x2, #0x9c8]
    // 0xf95bd4: r0 = GDT[cid_x0 + -0xd48]()
    //     0xf95bd4: sub             lr, x0, #0xd48
    //     0xf95bd8: ldr             lr, [x21, lr, lsl #3]
    //     0xf95bdc: blr             lr
    // 0xf95be0: cmp             w0, NULL
    // 0xf95be4: b.ne            #0xf95bf0
    // 0xf95be8: r3 = ""
    //     0xf95be8: ldr             x3, [PP, #0x900]  ; [pp+0x900] ""
    // 0xf95bec: b               #0xf95bf4
    // 0xf95bf0: mov             x3, x0
    // 0xf95bf4: ldur            x1, [fp, #-0x18]
    // 0xf95bf8: stur            x3, [fp, #-0x28]
    // 0xf95bfc: r0 = LoadClassIdInstr(r1)
    //     0xf95bfc: ldur            x0, [x1, #-1]
    //     0xf95c00: ubfx            x0, x0, #0xc, #0x14
    // 0xf95c04: r2 = "tipeNomor"
    //     0xf95c04: add             x2, PP, #0x22, lsl #12  ; [pp+0x22368] "tipeNomor"
    //     0xf95c08: ldr             x2, [x2, #0x368]
    // 0xf95c0c: r0 = GDT[cid_x0 + -0xd48]()
    //     0xf95c0c: sub             lr, x0, #0xd48
    //     0xf95c10: ldr             lr, [x21, lr, lsl #3]
    //     0xf95c14: blr             lr
    // 0xf95c18: cmp             w0, NULL
    // 0xf95c1c: b.ne            #0xf95c28
    // 0xf95c20: r3 = ""
    //     0xf95c20: ldr             x3, [PP, #0x900]  ; [pp+0x900] ""
    // 0xf95c24: b               #0xf95c2c
    // 0xf95c28: mov             x3, x0
    // 0xf95c2c: ldur            x1, [fp, #-0x20]
    // 0xf95c30: ldur            x2, [fp, #-0x28]
    // 0xf95c34: r0 = getUserQrCode()
    //     0xf95c34: bl              #0xf95cb0  ; [package:simaster_ugm/app/modules/attedence/data/services/personal_qr_service.dart] PersonalQrService::getUserQrCode
    // 0xf95c38: mov             x1, x0
    // 0xf95c3c: stur            x1, [fp, #-0x18]
    // 0xf95c40: r0 = Await()
    //     0xf95c40: bl              #0x7f5c00  ; AwaitStub
    // 0xf95c44: r1 = Function '<anonymous closure>':.
    //     0xf95c44: add             x1, PP, #0x9c, lsl #12  ; [pp+0x9cf58] AnonymousClosure: (0x122fc60), in [dart:mixin_deduplication] _MixinApplication371&Node&_ParentNode&_NonElementParentNode&_ElementAndDocument::getElementsByClassName (0x122fc68)
    //     0xf95c48: ldr             x1, [x1, #0xf58]
    // 0xf95c4c: r2 = Null
    //     0xf95c4c: mov             x2, NULL
    // 0xf95c50: stur            x0, [fp, #-0x10]
    // 0xf95c54: r0 = AllocateClosure()
    //     0xf95c54: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xf95c58: r1 = Function '<anonymous closure>':.
    //     0xf95c58: add             x1, PP, #0x9c, lsl #12  ; [pp+0x9cf60] AnonymousClosure: (0x13dae90), in [package:flutter/src/rendering/object.dart] _RenderObjectSemantics::_mergeSiblingGroup (0x891814)
    //     0xf95c5c: ldr             x1, [x1, #0xf60]
    // 0xf95c60: r2 = Null
    //     0xf95c60: mov             x2, NULL
    // 0xf95c64: stur            x0, [fp, #-0x18]
    // 0xf95c68: r0 = AllocateClosure()
    //     0xf95c68: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xf95c6c: mov             x1, x0
    // 0xf95c70: ldur            x0, [fp, #-0x10]
    // 0xf95c74: r2 = LoadClassIdInstr(r0)
    //     0xf95c74: ldur            x2, [x0, #-1]
    //     0xf95c78: ubfx            x2, x2, #0xc, #0x14
    // 0xf95c7c: r16 = <FutureOr<String>>
    //     0xf95c7c: add             x16, PP, #0x9c, lsl #12  ; [pp+0x9cf50] TypeArguments: <FutureOr<String>>
    //     0xf95c80: ldr             x16, [x16, #0xf50]
    // 0xf95c84: stp             x0, x16, [SP, #0x10]
    // 0xf95c88: ldur            x16, [fp, #-0x18]
    // 0xf95c8c: stp             x1, x16, [SP]
    // 0xf95c90: mov             x0, x2
    // 0xf95c94: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0xf95c94: ldr             x4, [PP, #0x728]  ; [pp+0x728] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0xf95c98: r0 = GDT[cid_x0 + -0x1000]()
    //     0xf95c98: sub             lr, x0, #1, lsl #12
    //     0xf95c9c: ldr             lr, [x21, lr, lsl #3]
    //     0xf95ca0: blr             lr
    // 0xf95ca4: r0 = ReturnAsync()
    //     0xf95ca4: b               #0x82fdf0  ; ReturnAsyncStub
    // 0xf95ca8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xf95ca8: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xf95cac: b               #0xf95b8c
  }
  _ _ProfileStoryViewerState(/* No info */) {
    // ** addr: 0xfa7608, size: 0x8c
    // 0xfa7608: EnterFrame
    //     0xfa7608: stp             fp, lr, [SP, #-0x10]!
    //     0xfa760c: mov             fp, SP
    // 0xfa7610: AllocStack(0x10)
    //     0xfa7610: sub             SP, SP, #0x10
    // 0xfa7614: ldr             x0, [THR, #0x90]  ; THR::object_sentinel
    // 0xfa7618: stur            x1, [fp, #-8]
    // 0xfa761c: CheckStackOverflow
    //     0xfa761c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xfa7620: cmp             SP, x16
    //     0xfa7624: b.ls            #0xfa768c
    // 0xfa7628: ArrayStore: r1[0] = rZR  ; List_8
    //     0xfa7628: stur            xzr, [x1, #0x17]
    // 0xfa762c: StoreField: r1->field_1f = r0
    //     0xfa762c: stur            w0, [x1, #0x1f]
    // 0xfa7630: r0 = PageController()
    //     0xfa7630: bl              #0xef6fd0  ; AllocatePageControllerStub -> PageController (size=0x54)
    // 0xfa7634: stur            x0, [fp, #-0x10]
    // 0xfa7638: StoreField: r0->field_3f = rZR
    //     0xfa7638: stur            xzr, [x0, #0x3f]
    // 0xfa763c: r1 = true
    //     0xfa763c: add             x1, NULL, #0x20  ; true
    // 0xfa7640: StoreField: r0->field_47 = r1
    //     0xfa7640: stur            w1, [x0, #0x47]
    // 0xfa7644: d0 = 1.000000
    //     0xfa7644: fmov            d0, #1.00000000
    // 0xfa7648: StoreField: r0->field_4b = d0
    //     0xfa7648: stur            d0, [x0, #0x4b]
    // 0xfa764c: mov             x1, x0
    // 0xfa7650: r4 = const [0, 0x1, 0, 0x1, null]
    //     0xfa7650: ldr             x4, [PP, #0xe8]  ; [pp+0xe8] List(5) [0, 0x1, 0, 0x1, Null]
    // 0xfa7654: r0 = ScrollController()
    //     0xfa7654: bl              #0x86d884  ; [package:flutter/src/widgets/scroll_controller.dart] ScrollController::ScrollController
    // 0xfa7658: ldur            x0, [fp, #-0x10]
    // 0xfa765c: ldur            x1, [fp, #-8]
    // 0xfa7660: StoreField: r1->field_13 = r0
    //     0xfa7660: stur            w0, [x1, #0x13]
    //     0xfa7664: ldurb           w16, [x1, #-1]
    //     0xfa7668: ldurb           w17, [x0, #-1]
    //     0xfa766c: and             x16, x17, x16, lsr #2
    //     0xfa7670: tst             x16, HEAP, lsr #32
    //     0xfa7674: b.eq            #0xfa767c
    //     0xfa7678: bl              #0x13ddf94  ; WriteBarrierWrappersStub
    // 0xfa767c: r0 = Null
    //     0xfa767c: mov             x0, NULL
    // 0xfa7680: LeaveFrame
    //     0xfa7680: mov             SP, fp
    //     0xfa7684: ldp             fp, lr, [SP], #0x10
    // 0xfa7688: ret
    //     0xfa7688: ret             
    // 0xfa768c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xfa768c: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xfa7690: b               #0xfa7628
  }
  _ dispose(/* No info */) {
    // ** addr: 0x10e7b48, size: 0x3c
    // 0x10e7b48: EnterFrame
    //     0x10e7b48: stp             fp, lr, [SP, #-0x10]!
    //     0x10e7b4c: mov             fp, SP
    // 0x10e7b50: CheckStackOverflow
    //     0x10e7b50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10e7b54: cmp             SP, x16
    //     0x10e7b58: b.ls            #0x10e7b7c
    // 0x10e7b5c: LoadField: r0 = r1->field_13
    //     0x10e7b5c: ldur            w0, [x1, #0x13]
    // 0x10e7b60: DecompressPointer r0
    //     0x10e7b60: add             x0, x0, HEAP, lsl #32
    // 0x10e7b64: mov             x1, x0
    // 0x10e7b68: r0 = dispose()
    //     0x10e7b68: bl              #0x10ef540  ; [package:flutter/src/widgets/scroll_controller.dart] ScrollController::dispose
    // 0x10e7b6c: r0 = Null
    //     0x10e7b6c: mov             x0, NULL
    // 0x10e7b70: LeaveFrame
    //     0x10e7b70: mov             SP, fp
    //     0x10e7b74: ldp             fp, lr, [SP], #0x10
    // 0x10e7b78: ret
    //     0x10e7b78: ret             
    // 0x10e7b7c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10e7b7c: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10e7b80: b               #0x10e7b5c
  }
}

// class id: 5390, size: 0x1c, field offset: 0x14
class _AvatarWithStoryState extends State<dynamic> {

  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x82f088, size: 0x4c
    // 0x82f088: ldr             x1, [SP]
    // 0x82f08c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x82f08c: ldur            w2, [x1, #0x17]
    // 0x82f090: DecompressPointer r2
    //     0x82f090: add             x2, x2, HEAP, lsl #32
    // 0x82f094: LoadField: r1 = r2->field_f
    //     0x82f094: ldur            w1, [x2, #0xf]
    // 0x82f098: DecompressPointer r1
    //     0x82f098: add             x1, x1, HEAP, lsl #32
    // 0x82f09c: LoadField: r3 = r2->field_13
    //     0x82f09c: ldur            w3, [x2, #0x13]
    // 0x82f0a0: DecompressPointer r3
    //     0x82f0a0: add             x3, x3, HEAP, lsl #32
    // 0x82f0a4: mov             x0, x3
    // 0x82f0a8: StoreField: r1->field_13 = r0
    //     0x82f0a8: stur            w0, [x1, #0x13]
    //     0x82f0ac: ldurb           w16, [x1, #-1]
    //     0x82f0b0: ldurb           w17, [x0, #-1]
    //     0x82f0b4: and             x16, x17, x16, lsr #2
    //     0x82f0b8: tst             x16, HEAP, lsr #32
    //     0x82f0bc: b.eq            #0x82f0cc
    //     0x82f0c0: str             lr, [SP, #-8]!
    //     0x82f0c4: bl              #0x13ddf94  ; WriteBarrierWrappersStub
    //     0x82f0c8: ldr             lr, [SP], #8
    // 0x82f0cc: mov             x0, x3
    // 0x82f0d0: ret
    //     0x82f0d0: ret             
  }
  _ _sync(/* No info */) {
    // ** addr: 0x82f0d4, size: 0x114
    // 0x82f0d4: EnterFrame
    //     0x82f0d4: stp             fp, lr, [SP, #-0x10]!
    //     0x82f0d8: mov             fp, SP
    // 0x82f0dc: AllocStack(0x28)
    //     0x82f0dc: sub             SP, SP, #0x28
    // 0x82f0e0: SetupParameters(_AvatarWithStoryState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x82f0e0: stur            x1, [fp, #-8]
    //     0x82f0e4: stur            x2, [fp, #-0x10]
    // 0x82f0e8: CheckStackOverflow
    //     0x82f0e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x82f0ec: cmp             SP, x16
    //     0x82f0f0: b.ls            #0x82f1e0
    // 0x82f0f4: r1 = 2
    //     0x82f0f4: mov             x1, #2
    // 0x82f0f8: r0 = AllocateContext()
    //     0x82f0f8: bl              #0x13de838  ; AllocateContextStub
    // 0x82f0fc: ldur            x1, [fp, #-8]
    // 0x82f100: stur            x0, [fp, #-0x18]
    // 0x82f104: StoreField: r0->field_f = r1
    //     0x82f104: stur            w1, [x0, #0xf]
    // 0x82f108: ldur            x16, [fp, #-0x10]
    // 0x82f10c: r30 = Instance_Alignment
    //     0x82f10c: add             lr, PP, #0x15, lsl #12  ; [pp+0x15b80] Obj!Alignment@129e751
    //     0x82f110: ldr             lr, [lr, #0xb80]
    // 0x82f114: stp             lr, x16, [SP]
    // 0x82f118: r0 = ==()
    //     0x82f118: bl              #0x1297efc  ; [package:flutter/src/painting/alignment.dart] AlignmentGeometry::==
    // 0x82f11c: stur            x0, [fp, #-0x10]
    // 0x82f120: tbnz            w0, #4, #0x82f154
    // 0x82f124: ldur            x2, [fp, #-8]
    // 0x82f128: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x82f128: ldur            w1, [x2, #0x17]
    // 0x82f12c: DecompressPointer r1
    //     0x82f12c: add             x1, x1, HEAP, lsl #32
    // 0x82f130: r0 = nextBool()
    //     0x82f130: bl              #0x82f1e8  ; [dart:math] _Random::nextBool
    // 0x82f134: tbnz            w0, #4, #0x82f144
    // 0x82f138: r0 = Instance_Alignment
    //     0x82f138: add             x0, PP, #0x16, lsl #12  ; [pp+0x16e00] Obj!Alignment@129e731
    //     0x82f13c: ldr             x0, [x0, #0xe00]
    // 0x82f140: b               #0x82f14c
    // 0x82f144: r0 = Instance_Alignment
    //     0x82f144: add             x0, PP, #0x28, lsl #12  ; [pp+0x28660] Obj!Alignment@129e711
    //     0x82f148: ldr             x0, [x0, #0x660]
    // 0x82f14c: mov             x3, x0
    // 0x82f150: b               #0x82f15c
    // 0x82f154: r3 = Instance_Alignment
    //     0x82f154: add             x3, PP, #0x1e, lsl #12  ; [pp+0x1e1b8] Obj!Alignment@129e6f1
    //     0x82f158: ldr             x3, [x3, #0x1b8]
    // 0x82f15c: ldur            x1, [fp, #-8]
    // 0x82f160: ldur            x2, [fp, #-0x18]
    // 0x82f164: mov             x0, x3
    // 0x82f168: StoreField: r2->field_13 = r0
    //     0x82f168: stur            w0, [x2, #0x13]
    //     0x82f16c: ldurb           w16, [x2, #-1]
    //     0x82f170: ldurb           w17, [x0, #-1]
    //     0x82f174: and             x16, x17, x16, lsr #2
    //     0x82f178: tst             x16, HEAP, lsr #32
    //     0x82f17c: b.eq            #0x82f184
    //     0x82f180: bl              #0x13ddfb4  ; WriteBarrierWrappersStub
    // 0x82f184: LoadField: r0 = r1->field_13
    //     0x82f184: ldur            w0, [x1, #0x13]
    // 0x82f188: DecompressPointer r0
    //     0x82f188: add             x0, x0, HEAP, lsl #32
    // 0x82f18c: stp             x3, x0, [SP]
    // 0x82f190: r0 = ==()
    //     0x82f190: bl              #0x1297efc  ; [package:flutter/src/painting/alignment.dart] AlignmentGeometry::==
    // 0x82f194: tbnz            w0, #4, #0x82f1a0
    // 0x82f198: ldur            x0, [fp, #-0x10]
    // 0x82f19c: tbnz            w0, #4, #0x82f1d0
    // 0x82f1a0: ldur            x0, [fp, #-8]
    // 0x82f1a4: LoadField: r1 = r0->field_f
    //     0x82f1a4: ldur            w1, [x0, #0xf]
    // 0x82f1a8: DecompressPointer r1
    //     0x82f1a8: add             x1, x1, HEAP, lsl #32
    // 0x82f1ac: cmp             w1, NULL
    // 0x82f1b0: b.eq            #0x82f1d0
    // 0x82f1b4: ldur            x2, [fp, #-0x18]
    // 0x82f1b8: r1 = Function '<anonymous closure>':.
    //     0x82f1b8: add             x1, PP, #0x87, lsl #12  ; [pp+0x87dc0] AnonymousClosure: (0x82f088), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::_sync (0x82f0d4)
    //     0x82f1bc: ldr             x1, [x1, #0xdc0]
    // 0x82f1c0: r0 = AllocateClosure()
    //     0x82f1c0: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x82f1c4: ldur            x1, [fp, #-8]
    // 0x82f1c8: mov             x2, x0
    // 0x82f1cc: r0 = setState()
    //     0x82f1cc: bl              #0x82938c  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x82f1d0: r0 = Null
    //     0x82f1d0: mov             x0, NULL
    // 0x82f1d4: LeaveFrame
    //     0x82f1d4: mov             SP, fp
    //     0x82f1d8: ldp             fp, lr, [SP], #0x10
    // 0x82f1dc: ret
    //     0x82f1dc: ret             
    // 0x82f1e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x82f1e0: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x82f1e4: b               #0x82f0f4
  }
  _ build(/* No info */) {
    // ** addr: 0xe99830, size: 0xa4
    // 0xe99830: EnterFrame
    //     0xe99830: stp             fp, lr, [SP, #-0x10]!
    //     0xe99834: mov             fp, SP
    // 0xe99838: AllocStack(0x18)
    //     0xe99838: sub             SP, SP, #0x18
    // 0xe9983c: SetupParameters(_AvatarWithStoryState this /* r1 => r1, fp-0x8 */)
    //     0xe9983c: stur            x1, [fp, #-8]
    // 0xe99840: CheckStackOverflow
    //     0xe99840: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe99844: cmp             SP, x16
    //     0xe99848: b.ls            #0xe998cc
    // 0xe9984c: r1 = 1
    //     0xe9984c: mov             x1, #1
    // 0xe99850: r0 = AllocateContext()
    //     0xe99850: bl              #0x13de838  ; AllocateContextStub
    // 0xe99854: mov             x1, x0
    // 0xe99858: ldur            x0, [fp, #-8]
    // 0xe9985c: stur            x1, [fp, #-0x10]
    // 0xe99860: StoreField: r1->field_f = r0
    //     0xe99860: stur            w0, [x1, #0xf]
    // 0xe99864: r0 = LoadStaticField(0x1810)
    //     0xe99864: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe99868: ldr             x0, [x0, #0x3020]
    // 0xe9986c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe99870: cmp             w0, w16
    // 0xe99874: b.ne            #0xe99884
    // 0xe99878: r2 = mascotAlignmentNotifier
    //     0xe99878: add             x2, PP, #0x87, lsl #12  ; [pp+0x87d10] Field <::.mascotAlignmentNotifier>: static late final (offset: 0x1810)
    //     0xe9987c: ldr             x2, [x2, #0xd10]
    // 0xe99880: r0 = InitLateFinalStaticField()
    //     0xe99880: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe99884: r1 = <Alignment>
    //     0xe99884: add             x1, PP, #0x16, lsl #12  ; [pp+0x16db8] TypeArguments: <Alignment>
    //     0xe99888: ldr             x1, [x1, #0xdb8]
    // 0xe9988c: stur            x0, [fp, #-8]
    // 0xe99890: r0 = ValueListenableBuilder()
    //     0xe99890: bl              #0xd77dec  ; AllocateValueListenableBuilderStub -> ValueListenableBuilder<X0> (size=0x1c)
    // 0xe99894: mov             x3, x0
    // 0xe99898: ldur            x0, [fp, #-8]
    // 0xe9989c: stur            x3, [fp, #-0x18]
    // 0xe998a0: StoreField: r3->field_f = r0
    //     0xe998a0: stur            w0, [x3, #0xf]
    // 0xe998a4: ldur            x2, [fp, #-0x10]
    // 0xe998a8: r1 = Function '<anonymous closure>':.
    //     0xe998a8: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d18] AnonymousClosure: (0xe998d4), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::build (0xe99830)
    //     0xe998ac: ldr             x1, [x1, #0xd18]
    // 0xe998b0: r0 = AllocateClosure()
    //     0xe998b0: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe998b4: mov             x1, x0
    // 0xe998b8: ldur            x0, [fp, #-0x18]
    // 0xe998bc: StoreField: r0->field_13 = r1
    //     0xe998bc: stur            w1, [x0, #0x13]
    // 0xe998c0: LeaveFrame
    //     0xe998c0: mov             SP, fp
    //     0xe998c4: ldp             fp, lr, [SP], #0x10
    // 0xe998c8: ret
    //     0xe998c8: ret             
    // 0xe998cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe998cc: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe998d0: b               #0xe9984c
  }
  [closure] SizedBox <anonymous closure>(dynamic, BuildContext, Alignment, Widget?) {
    // ** addr: 0xe998d4, size: 0x2c4
    // 0xe998d4: EnterFrame
    //     0xe998d4: stp             fp, lr, [SP, #-0x10]!
    //     0xe998d8: mov             fp, SP
    // 0xe998dc: AllocStack(0x58)
    //     0xe998dc: sub             SP, SP, #0x58
    // 0xe998e0: SetupParameters([dynamic _ /* r0 */])
    //     0xe998e0: ldr             x0, [fp, #0x28]
    //     0xe998e4: ldur            w1, [x0, #0x17]
    //     0xe998e8: add             x1, x1, HEAP, lsl #32
    //     0xe998ec: stur            x1, [fp, #-8]
    // 0xe998f0: CheckStackOverflow
    //     0xe998f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe998f4: cmp             SP, x16
    //     0xe998f8: b.ls            #0xe99b78
    // 0xe998fc: r1 = 4
    //     0xe998fc: mov             x1, #4
    // 0xe99900: r0 = AllocateContext()
    //     0xe99900: bl              #0x13de838  ; AllocateContextStub
    // 0xe99904: mov             x1, x0
    // 0xe99908: ldur            x0, [fp, #-8]
    // 0xe9990c: stur            x1, [fp, #-0x10]
    // 0xe99910: StoreField: r1->field_b = r0
    //     0xe99910: stur            w0, [x1, #0xb]
    // 0xe99914: ldr             x2, [fp, #0x20]
    // 0xe99918: StoreField: r1->field_f = r2
    //     0xe99918: stur            w2, [x1, #0xf]
    // 0xe9991c: ldr             x16, [fp, #0x18]
    // 0xe99920: r30 = Instance_Alignment
    //     0xe99920: add             lr, PP, #0x15, lsl #12  ; [pp+0x15b80] Obj!Alignment@129e751
    //     0xe99924: ldr             lr, [lr, #0xb80]
    // 0xe99928: stp             lr, x16, [SP]
    // 0xe9992c: r0 = ==()
    //     0xe9992c: bl              #0x1297efc  ; [package:flutter/src/painting/alignment.dart] AlignmentGeometry::==
    // 0xe99930: mov             x1, x0
    // 0xe99934: ldur            x0, [fp, #-0x10]
    // 0xe99938: StoreField: r0->field_13 = r1
    //     0xe99938: stur            w1, [x0, #0x13]
    // 0xe9993c: mov             x2, x0
    // 0xe99940: r1 = Function 'buildAvatar':.
    //     0xe99940: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d20] AnonymousClosure: (0xe9a598), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::build (0xe99830)
    //     0xe99944: ldr             x1, [x1, #0xd20]
    // 0xe99948: r0 = AllocateClosure()
    //     0xe99948: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe9994c: ldur            x2, [fp, #-0x10]
    // 0xe99950: ArrayStore: r2[0] = r0  ; List_4
    //     0xe99950: stur            w0, [x2, #0x17]
    //     0xe99954: ldurb           w16, [x2, #-1]
    //     0xe99958: ldurb           w17, [x0, #-1]
    //     0xe9995c: and             x16, x17, x16, lsr #2
    //     0xe99960: tst             x16, HEAP, lsr #32
    //     0xe99964: b.eq            #0xe9996c
    //     0xe99968: bl              #0x13ddfb4  ; WriteBarrierWrappersStub
    // 0xe9996c: r0 = LoadStaticField(0x13e8)
    //     0xe9996c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe99970: ldr             x0, [x0, #0x27d0]
    // 0xe99974: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe99978: cmp             w0, w16
    // 0xe9997c: b.ne            #0xe99988
    // 0xe99980: r2 = Get
    //     0xe99980: ldr             x2, [PP, #0x79d0]  ; [pp+0x79d0] Field <::.Get>: static late final (offset: 0x13e8)
    // 0xe99984: r0 = InitLateFinalStaticField()
    //     0xe99984: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe99988: r16 = <UserController>
    //     0xe99988: add             x16, PP, #0x14, lsl #12  ; [pp+0x14938] TypeArguments: <UserController>
    //     0xe9998c: ldr             x16, [x16, #0x938]
    // 0xe99990: str             x16, [SP]
    // 0xe99994: r4 = const [0x1, 0, 0, 0, null]
    //     0xe99994: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0, 0, 0, Null]
    // 0xe99998: r0 = Inst.find()
    //     0xe99998: bl              #0xd7c248  ; [package:get/get_instance/src/extension_instance.dart] ::Inst.find
    // 0xe9999c: stur            x0, [fp, #-0x18]
    // 0xe999a0: r16 = <ProfileController>
    //     0xe999a0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14900] TypeArguments: <ProfileController>
    //     0xe999a4: ldr             x16, [x16, #0x900]
    // 0xe999a8: str             x16, [SP]
    // 0xe999ac: r4 = const [0x1, 0, 0, 0, null]
    //     0xe999ac: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0, 0, 0, Null]
    // 0xe999b0: r0 = Inst.find()
    //     0xe999b0: bl              #0xd7c248  ; [package:get/get_instance/src/extension_instance.dart] ::Inst.find
    // 0xe999b4: ldur            x2, [fp, #-0x10]
    // 0xe999b8: StoreField: r2->field_1b = r0
    //     0xe999b8: stur            w0, [x2, #0x1b]
    //     0xe999bc: ldurb           w16, [x2, #-1]
    //     0xe999c0: ldurb           w17, [x0, #-1]
    //     0xe999c4: and             x16, x17, x16, lsr #2
    //     0xe999c8: tst             x16, HEAP, lsr #32
    //     0xe999cc: b.eq            #0xe999d4
    //     0xe999d0: bl              #0x13ddfb4  ; WriteBarrierWrappersStub
    // 0xe999d4: r0 = LoadStaticField(0x1674)
    //     0xe999d4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe999d8: ldr             x0, [x0, #0x2ce8]
    // 0xe999dc: r1 = LoadStaticField(0x1680)
    //     0xe999dc: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0xe999e0: ldr             x1, [x1, #0x2d00]
    // 0xe999e4: tbnz            w1, #4, #0xe99a04
    // 0xe999e8: d1 = 0.500000
    //     0xe999e8: fmov            d1, #0.50000000
    // 0xe999ec: d0 = 0.800000
    //     0xe999ec: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0xe999f0: ldr             d0, [x17, #0xa58]
    // 0xe999f4: LoadField: d2 = r0->field_7
    //     0xe999f4: ldur            d2, [x0, #7]
    // 0xe999f8: fmul            d3, d2, d0
    // 0xe999fc: fmul            d0, d3, d1
    // 0xe99a00: b               #0xe99a14
    // 0xe99a04: d1 = 0.500000
    //     0xe99a04: fmov            d1, #0.50000000
    // 0xe99a08: LoadField: d0 = r0->field_7
    //     0xe99a08: ldur            d0, [x0, #7]
    // 0xe99a0c: fmul            d2, d0, d1
    // 0xe99a10: mov             v0.16b, v2.16b
    // 0xe99a14: ldur            x0, [fp, #-8]
    // 0xe99a18: stur            d0, [fp, #-0x38]
    // 0xe99a1c: LoadField: r1 = r0->field_f
    //     0xe99a1c: ldur            w1, [x0, #0xf]
    // 0xe99a20: DecompressPointer r1
    //     0xe99a20: add             x1, x1, HEAP, lsl #32
    // 0xe99a24: LoadField: r0 = r1->field_13
    //     0xe99a24: ldur            w0, [x1, #0x13]
    // 0xe99a28: DecompressPointer r0
    //     0xe99a28: add             x0, x0, HEAP, lsl #32
    // 0xe99a2c: stur            x0, [fp, #-8]
    // 0xe99a30: r1 = LoadStaticField(0x16a8)
    //     0xe99a30: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0xe99a34: ldr             x1, [x1, #0x2d50]
    // 0xe99a38: LoadField: d1 = r1->field_7
    //     0xe99a38: ldur            d1, [x1, #7]
    // 0xe99a3c: stur            d1, [fp, #-0x30]
    // 0xe99a40: r0 = EdgeInsets()
    //     0xe99a40: bl              #0x858568  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0xe99a44: ldur            d0, [fp, #-0x30]
    // 0xe99a48: stur            x0, [fp, #-0x20]
    // 0xe99a4c: StoreField: r0->field_7 = d0
    //     0xe99a4c: stur            d0, [x0, #7]
    // 0xe99a50: StoreField: r0->field_f = rZR
    //     0xe99a50: stur            xzr, [x0, #0xf]
    // 0xe99a54: ArrayStore: r0[0] = d0  ; List_8
    //     0xe99a54: stur            d0, [x0, #0x17]
    // 0xe99a58: StoreField: r0->field_1f = rZR
    //     0xe99a58: stur            xzr, [x0, #0x1f]
    // 0xe99a5c: ldur            x2, [fp, #-0x10]
    // 0xe99a60: r1 = Function '<anonymous closure>':.
    //     0xe99a60: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d28] AnonymousClosure: (0xe9a35c), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::build (0xe99830)
    //     0xe99a64: ldr             x1, [x1, #0xd28]
    // 0xe99a68: r0 = AllocateClosure()
    //     0xe99a68: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe99a6c: r1 = Function '<anonymous closure>':.
    //     0xe99a6c: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d30] AnonymousClosure: (0xe9a314), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::build (0xe99830)
    //     0xe99a70: ldr             x1, [x1, #0xd30]
    // 0xe99a74: r2 = Null
    //     0xe99a74: mov             x2, NULL
    // 0xe99a78: stur            x0, [fp, #-0x28]
    // 0xe99a7c: r0 = AllocateClosure()
    //     0xe99a7c: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe99a80: r16 = <UserModel>
    //     0xe99a80: add             x16, PP, #0x18, lsl #12  ; [pp+0x183d0] TypeArguments: <UserModel>
    //     0xe99a84: ldr             x16, [x16, #0x3d0]
    // 0xe99a88: ldur            lr, [fp, #-0x18]
    // 0xe99a8c: stp             lr, x16, [SP, #0x10]
    // 0xe99a90: ldur            x16, [fp, #-0x28]
    // 0xe99a94: stp             x0, x16, [SP]
    // 0xe99a98: r4 = const [0x1, 0x3, 0x3, 0x2, onError, 0x2, null]
    //     0xe99a98: ldr             x4, [PP, #0x538]  ; [pp+0x538] List(7) [0x1, 0x3, 0x3, 0x2, "onError", 0x2, Null]
    // 0xe99a9c: r0 = StateExt.obx()
    //     0xe99a9c: bl              #0xe710a4  ; [package:get/get_state_manager/src/rx_flutter/rx_notifier.dart] ::StateExt.obx
    // 0xe99aa0: stur            x0, [fp, #-0x18]
    // 0xe99aa4: r0 = GestureDetector()
    //     0xe99aa4: bl              #0x918e18  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0xe99aa8: ldur            x2, [fp, #-0x10]
    // 0xe99aac: r1 = Function '<anonymous closure>':.
    //     0xe99aac: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d38] AnonymousClosure: (0xe99b98), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::build (0xe99830)
    //     0xe99ab0: ldr             x1, [x1, #0xd38]
    // 0xe99ab4: stur            x0, [fp, #-0x10]
    // 0xe99ab8: r0 = AllocateClosure()
    //     0xe99ab8: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe99abc: ldur            x16, [fp, #-0x18]
    // 0xe99ac0: stp             x16, x0, [SP]
    // 0xe99ac4: ldur            x1, [fp, #-0x10]
    // 0xe99ac8: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0xe99ac8: add             x4, PP, #0x16, lsl #12  ; [pp+0x16e90] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0xe99acc: ldr             x4, [x4, #0xe90]
    // 0xe99ad0: r0 = GestureDetector()
    //     0xe99ad0: bl              #0x9182dc  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0xe99ad4: r0 = Padding()
    //     0xe99ad4: bl              #0x8a5b28  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0xe99ad8: mov             x1, x0
    // 0xe99adc: ldur            x0, [fp, #-0x20]
    // 0xe99ae0: stur            x1, [fp, #-0x18]
    // 0xe99ae4: StoreField: r1->field_f = r0
    //     0xe99ae4: stur            w0, [x1, #0xf]
    // 0xe99ae8: ldur            x0, [fp, #-0x10]
    // 0xe99aec: StoreField: r1->field_b = r0
    //     0xe99aec: stur            w0, [x1, #0xb]
    // 0xe99af0: r0 = AnimatedAlign()
    //     0xe99af0: bl              #0xe98f1c  ; AllocateAnimatedAlignStub -> AnimatedAlign (size=0x28)
    // 0xe99af4: mov             x1, x0
    // 0xe99af8: ldur            x0, [fp, #-8]
    // 0xe99afc: stur            x1, [fp, #-0x10]
    // 0xe99b00: ArrayStore: r1[0] = r0  ; List_4
    //     0xe99b00: stur            w0, [x1, #0x17]
    // 0xe99b04: ldur            x0, [fp, #-0x18]
    // 0xe99b08: StoreField: r1->field_1b = r0
    //     0xe99b08: stur            w0, [x1, #0x1b]
    // 0xe99b0c: r0 = Instance_Cubic
    //     0xe99b0c: add             x0, PP, #0x7b, lsl #12  ; [pp+0x7b760] Obj!Cubic@129f6c1
    //     0xe99b10: ldr             x0, [x0, #0x760]
    // 0xe99b14: StoreField: r1->field_b = r0
    //     0xe99b14: stur            w0, [x1, #0xb]
    // 0xe99b18: r0 = Instance_Duration
    //     0xe99b18: add             x0, PP, #0x7b, lsl #12  ; [pp+0x7b768] Obj!Duration@12c8bd1
    //     0xe99b1c: ldr             x0, [x0, #0x768]
    // 0xe99b20: StoreField: r1->field_f = r0
    //     0xe99b20: stur            w0, [x1, #0xf]
    // 0xe99b24: ldur            d0, [fp, #-0x38]
    // 0xe99b28: r0 = inline_Allocate_Double()
    //     0xe99b28: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0xe99b2c: add             x0, x0, #0x10
    //     0xe99b30: cmp             x2, x0
    //     0xe99b34: b.ls            #0xe99b80
    //     0xe99b38: str             x0, [THR, #0x60]  ; THR::top
    //     0xe99b3c: sub             x0, x0, #0xf
    //     0xe99b40: mov             x2, #0xe19c
    //     0xe99b44: movk            x2, #3, lsl #16
    //     0xe99b48: stur            x2, [x0, #-1]
    // 0xe99b4c: dmb             ishst
    // 0xe99b50: StoreField: r0->field_7 = d0
    //     0xe99b50: stur            d0, [x0, #7]
    // 0xe99b54: stur            x0, [fp, #-8]
    // 0xe99b58: r0 = SizedBox()
    //     0xe99b58: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0xe99b5c: ldur            x1, [fp, #-8]
    // 0xe99b60: StoreField: r0->field_13 = r1
    //     0xe99b60: stur            w1, [x0, #0x13]
    // 0xe99b64: ldur            x1, [fp, #-0x10]
    // 0xe99b68: StoreField: r0->field_b = r1
    //     0xe99b68: stur            w1, [x0, #0xb]
    // 0xe99b6c: LeaveFrame
    //     0xe99b6c: mov             SP, fp
    //     0xe99b70: ldp             fp, lr, [SP], #0x10
    // 0xe99b74: ret
    //     0xe99b74: ret             
    // 0xe99b78: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe99b78: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe99b7c: b               #0xe998fc
    // 0xe99b80: SaveReg d0
    //     0xe99b80: str             q0, [SP, #-0x10]!
    // 0xe99b84: SaveReg r1
    //     0xe99b84: str             x1, [SP, #-8]!
    // 0xe99b88: r0 = AllocateDouble()
    //     0xe99b88: bl              #0x13df878  ; AllocateDoubleStub
    // 0xe99b8c: RestoreReg r1
    //     0xe99b8c: ldr             x1, [SP], #8
    // 0xe99b90: RestoreReg d0
    //     0xe99b90: ldr             q0, [SP], #0x10
    // 0xe99b94: b               #0xe99b50
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0xe99b98, size: 0xb8
    // 0xe99b98: EnterFrame
    //     0xe99b98: stp             fp, lr, [SP, #-0x10]!
    //     0xe99b9c: mov             fp, SP
    // 0xe99ba0: AllocStack(0x28)
    //     0xe99ba0: sub             SP, SP, #0x28
    // 0xe99ba4: SetupParameters([dynamic _ /* r0 */])
    //     0xe99ba4: ldr             x0, [fp, #0x10]
    //     0xe99ba8: ldur            w1, [x0, #0x17]
    //     0xe99bac: add             x1, x1, HEAP, lsl #32
    //     0xe99bb0: stur            x1, [fp, #-8]
    // 0xe99bb4: CheckStackOverflow
    //     0xe99bb4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe99bb8: cmp             SP, x16
    //     0xe99bbc: b.ls            #0xe99c48
    // 0xe99bc0: LoadField: r0 = r1->field_13
    //     0xe99bc0: ldur            w0, [x1, #0x13]
    // 0xe99bc4: DecompressPointer r0
    //     0xe99bc4: add             x0, x0, HEAP, lsl #32
    // 0xe99bc8: tbnz            w0, #4, #0xe99c28
    // 0xe99bcc: r0 = LoadStaticField(0x13e8)
    //     0xe99bcc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe99bd0: ldr             x0, [x0, #0x27d0]
    // 0xe99bd4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe99bd8: cmp             w0, w16
    // 0xe99bdc: b.ne            #0xe99be8
    // 0xe99be0: r2 = Get
    //     0xe99be0: ldr             x2, [PP, #0x79d0]  ; [pp+0x79d0] Field <::.Get>: static late final (offset: 0x13e8)
    // 0xe99be4: r0 = InitLateFinalStaticField()
    //     0xe99be4: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe99be8: ldur            x0, [fp, #-8]
    // 0xe99bec: LoadField: r1 = r0->field_1b
    //     0xe99bec: ldur            w1, [x0, #0x1b]
    // 0xe99bf0: DecompressPointer r1
    //     0xe99bf0: add             x1, x1, HEAP, lsl #32
    // 0xe99bf4: stur            x1, [fp, #-0x10]
    // 0xe99bf8: r0 = _ProfileStoryViewer()
    //     0xe99bf8: bl              #0xe9a2e4  ; Allocate_ProfileStoryViewerStub -> _ProfileStoryViewer (size=0x10)
    // 0xe99bfc: mov             x1, x0
    // 0xe99c00: ldur            x0, [fp, #-0x10]
    // 0xe99c04: StoreField: r1->field_b = r0
    //     0xe99c04: stur            w0, [x1, #0xb]
    // 0xe99c08: stp             x1, NULL, [SP, #8]
    // 0xe99c0c: r16 = Instance_Color
    //     0xe99c0c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12948] Obj!Color@12a15c1
    //     0xe99c10: ldr             x16, [x16, #0x948]
    // 0xe99c14: str             x16, [SP]
    // 0xe99c18: r4 = const [0x1, 0x2, 0x2, 0x1, barrierColor, 0x1, null]
    //     0xe99c18: add             x4, PP, #0x87, lsl #12  ; [pp+0x87d40] List(7) [0x1, 0x2, 0x2, 0x1, "barrierColor", 0x1, Null]
    //     0xe99c1c: ldr             x4, [x4, #0xd40]
    // 0xe99c20: r0 = ExtensionDialog.dialog()
    //     0xe99c20: bl              #0xe6dd60  ; [package:get/get_navigation/src/extension_navigation.dart] ::ExtensionDialog.dialog
    // 0xe99c24: b               #0xe99c38
    // 0xe99c28: mov             x0, x1
    // 0xe99c2c: LoadField: r1 = r0->field_1b
    //     0xe99c2c: ldur            w1, [x0, #0x1b]
    // 0xe99c30: DecompressPointer r1
    //     0xe99c30: add             x1, x1, HEAP, lsl #32
    // 0xe99c34: r0 = onProfilePhotoTap()
    //     0xe99c34: bl              #0xe99c50  ; [package:simaster_ugm/app/modules/profile/controllers/profile_controller.dart] ProfileController::onProfilePhotoTap
    // 0xe99c38: r0 = Null
    //     0xe99c38: mov             x0, NULL
    // 0xe99c3c: LeaveFrame
    //     0xe99c3c: mov             SP, fp
    //     0xe99c40: ldp             fp, lr, [SP], #0x10
    // 0xe99c44: ret
    //     0xe99c44: ret             
    // 0xe99c48: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe99c48: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe99c4c: b               #0xe99bc0
  }
  [closure] Text <anonymous closure>(dynamic, String?) {
    // ** addr: 0xe9a314, size: 0x48
    // 0xe9a314: EnterFrame
    //     0xe9a314: stp             fp, lr, [SP, #-0x10]!
    //     0xe9a318: mov             fp, SP
    // 0xe9a31c: AllocStack(0x10)
    //     0xe9a31c: sub             SP, SP, #0x10
    // 0xe9a320: CheckStackOverflow
    //     0xe9a320: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe9a324: cmp             SP, x16
    //     0xe9a328: b.ls            #0xe9a354
    // 0xe9a32c: ldr             x16, [fp, #0x10]
    // 0xe9a330: str             x16, [SP]
    // 0xe9a334: r0 = _interpolateSingle()
    //     0xe9a334: bl              #0x7e237c  ; [dart:core] _StringBase::_interpolateSingle
    // 0xe9a338: stur            x0, [fp, #-8]
    // 0xe9a33c: r0 = Text()
    //     0xe9a33c: bl              #0x8a70a4  ; AllocateTextStub -> Text (size=0x50)
    // 0xe9a340: ldur            x1, [fp, #-8]
    // 0xe9a344: StoreField: r0->field_b = r1
    //     0xe9a344: stur            w1, [x0, #0xb]
    // 0xe9a348: LeaveFrame
    //     0xe9a348: mov             SP, fp
    //     0xe9a34c: ldp             fp, lr, [SP], #0x10
    // 0xe9a350: ret
    //     0xe9a350: ret             
    // 0xe9a354: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe9a354: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9a358: b               #0xe9a32c
  }
  [closure] CachedNetworkImage <anonymous closure>(dynamic, UserModel?) {
    // ** addr: 0xe9a35c, size: 0xe4
    // 0xe9a35c: EnterFrame
    //     0xe9a35c: stp             fp, lr, [SP, #-0x10]!
    //     0xe9a360: mov             fp, SP
    // 0xe9a364: AllocStack(0x40)
    //     0xe9a364: sub             SP, SP, #0x40
    // 0xe9a368: SetupParameters([dynamic _ /* r0 */])
    //     0xe9a368: ldr             x0, [fp, #0x18]
    //     0xe9a36c: ldur            w1, [x0, #0x17]
    //     0xe9a370: add             x1, x1, HEAP, lsl #32
    //     0xe9a374: stur            x1, [fp, #-8]
    // 0xe9a378: CheckStackOverflow
    //     0xe9a378: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe9a37c: cmp             SP, x16
    //     0xe9a380: b.ls            #0xe9a434
    // 0xe9a384: r1 = 1
    //     0xe9a384: mov             x1, #1
    // 0xe9a388: r0 = AllocateContext()
    //     0xe9a388: bl              #0x13de838  ; AllocateContextStub
    // 0xe9a38c: mov             x3, x0
    // 0xe9a390: ldur            x0, [fp, #-8]
    // 0xe9a394: stur            x3, [fp, #-0x10]
    // 0xe9a398: StoreField: r3->field_b = r0
    //     0xe9a398: stur            w0, [x3, #0xb]
    // 0xe9a39c: ldr             x0, [fp, #0x10]
    // 0xe9a3a0: StoreField: r3->field_f = r0
    //     0xe9a3a0: stur            w0, [x3, #0xf]
    // 0xe9a3a4: cmp             w0, NULL
    // 0xe9a3a8: b.eq            #0xe9a43c
    // 0xe9a3ac: LoadField: r4 = r0->field_3f
    //     0xe9a3ac: ldur            w4, [x0, #0x3f]
    // 0xe9a3b0: DecompressPointer r4
    //     0xe9a3b0: add             x4, x4, HEAP, lsl #32
    // 0xe9a3b4: mov             x2, x3
    // 0xe9a3b8: stur            x4, [fp, #-8]
    // 0xe9a3bc: r1 = Function '<anonymous closure>':.
    //     0xe9a3bc: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d58] AnonymousClosure: (0xe9a538), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::build (0xe99830)
    //     0xe9a3c0: ldr             x1, [x1, #0xd58]
    // 0xe9a3c4: r0 = AllocateClosure()
    //     0xe9a3c4: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe9a3c8: r1 = Function '<anonymous closure>':.
    //     0xe9a3c8: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d60] AnonymousClosure: (0xe9a52c), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::build (0xe99830)
    //     0xe9a3cc: ldr             x1, [x1, #0xd60]
    // 0xe9a3d0: r2 = Null
    //     0xe9a3d0: mov             x2, NULL
    // 0xe9a3d4: stur            x0, [fp, #-0x18]
    // 0xe9a3d8: r0 = AllocateClosure()
    //     0xe9a3d8: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe9a3dc: ldur            x2, [fp, #-0x10]
    // 0xe9a3e0: r1 = Function '<anonymous closure>':.
    //     0xe9a3e0: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d68] AnonymousClosure: (0xe9a440), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::build (0xe99830)
    //     0xe9a3e4: ldr             x1, [x1, #0xd68]
    // 0xe9a3e8: stur            x0, [fp, #-0x10]
    // 0xe9a3ec: r0 = AllocateClosure()
    //     0xe9a3ec: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe9a3f0: stur            x0, [fp, #-0x20]
    // 0xe9a3f4: r0 = CachedNetworkImage()
    //     0xe9a3f4: bl              #0xe84778  ; AllocateCachedNetworkImageStub -> CachedNetworkImage (size=0x68)
    // 0xe9a3f8: stur            x0, [fp, #-0x28]
    // 0xe9a3fc: ldur            x16, [fp, #-0x18]
    // 0xe9a400: ldur            lr, [fp, #-0x10]
    // 0xe9a404: stp             lr, x16, [SP, #8]
    // 0xe9a408: ldur            x16, [fp, #-0x20]
    // 0xe9a40c: str             x16, [SP]
    // 0xe9a410: mov             x1, x0
    // 0xe9a414: ldur            x2, [fp, #-8]
    // 0xe9a418: r4 = const [0, 0x5, 0x3, 0x2, errorWidget, 0x4, imageBuilder, 0x2, placeholder, 0x3, null]
    //     0xe9a418: add             x4, PP, #0x87, lsl #12  ; [pp+0x87d70] List(11) [0, 0x5, 0x3, 0x2, "errorWidget", 0x4, "imageBuilder", 0x2, "placeholder", 0x3, Null]
    //     0xe9a41c: ldr             x4, [x4, #0xd70]
    // 0xe9a420: r0 = CachedNetworkImage()
    //     0xe9a420: bl              #0xe84270  ; [package:cached_network_image/src/cached_image_widget.dart] CachedNetworkImage::CachedNetworkImage
    // 0xe9a424: ldur            x0, [fp, #-0x28]
    // 0xe9a428: LeaveFrame
    //     0xe9a428: mov             SP, fp
    //     0xe9a42c: ldp             fp, lr, [SP], #0x10
    // 0xe9a430: ret
    //     0xe9a430: ret             
    // 0xe9a434: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe9a434: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9a438: b               #0xe9a384
    // 0xe9a43c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0xe9a43c: bl              #0x13e00c4  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] CachedNetworkImage <anonymous closure>(dynamic, BuildContext, String, Object) {
    // ** addr: 0xe9a440, size: 0xec
    // 0xe9a440: EnterFrame
    //     0xe9a440: stp             fp, lr, [SP, #-0x10]!
    //     0xe9a444: mov             fp, SP
    // 0xe9a448: AllocStack(0x38)
    //     0xe9a448: sub             SP, SP, #0x38
    // 0xe9a44c: SetupParameters([dynamic _ /* r0 */])
    //     0xe9a44c: ldr             x0, [fp, #0x28]
    //     0xe9a450: ldur            w3, [x0, #0x17]
    //     0xe9a454: add             x3, x3, HEAP, lsl #32
    //     0xe9a458: stur            x3, [fp, #-8]
    // 0xe9a45c: CheckStackOverflow
    //     0xe9a45c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe9a460: cmp             SP, x16
    //     0xe9a464: b.ls            #0xe9a524
    // 0xe9a468: r1 = Null
    //     0xe9a468: mov             x1, NULL
    // 0xe9a46c: r2 = 6
    //     0xe9a46c: mov             x2, #6
    // 0xe9a470: r0 = AllocateArray()
    //     0xe9a470: bl              #0x13df928  ; AllocateArrayStub
    // 0xe9a474: r16 = "https://ui-avatars.com/api/\?name="
    //     0xe9a474: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e938] "https://ui-avatars.com/api/\?name="
    //     0xe9a478: ldr             x16, [x16, #0x938]
    // 0xe9a47c: StoreField: r0->field_f = r16
    //     0xe9a47c: stur            w16, [x0, #0xf]
    // 0xe9a480: ldur            x2, [fp, #-8]
    // 0xe9a484: LoadField: r1 = r2->field_f
    //     0xe9a484: ldur            w1, [x2, #0xf]
    // 0xe9a488: DecompressPointer r1
    //     0xe9a488: add             x1, x1, HEAP, lsl #32
    // 0xe9a48c: LoadField: r3 = r1->field_33
    //     0xe9a48c: ldur            w3, [x1, #0x33]
    // 0xe9a490: DecompressPointer r3
    //     0xe9a490: add             x3, x3, HEAP, lsl #32
    // 0xe9a494: StoreField: r0->field_13 = r3
    //     0xe9a494: stur            w3, [x0, #0x13]
    // 0xe9a498: r16 = "&background=0D8ABC&color=fff"
    //     0xe9a498: add             x16, PP, #0x87, lsl #12  ; [pp+0x87d78] "&background=0D8ABC&color=fff"
    //     0xe9a49c: ldr             x16, [x16, #0xd78]
    // 0xe9a4a0: ArrayStore: r0[0] = r16  ; List_4
    //     0xe9a4a0: stur            w16, [x0, #0x17]
    // 0xe9a4a4: str             x0, [SP]
    // 0xe9a4a8: r0 = _interpolate()
    //     0xe9a4a8: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xe9a4ac: stur            x0, [fp, #-0x10]
    // 0xe9a4b0: r0 = CachedNetworkImage()
    //     0xe9a4b0: bl              #0xe84778  ; AllocateCachedNetworkImageStub -> CachedNetworkImage (size=0x68)
    // 0xe9a4b4: ldur            x2, [fp, #-8]
    // 0xe9a4b8: r1 = Function '<anonymous closure>':.
    //     0xe9a4b8: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d80] AnonymousClosure: (0xe9a538), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::build (0xe99830)
    //     0xe9a4bc: ldr             x1, [x1, #0xd80]
    // 0xe9a4c0: stur            x0, [fp, #-8]
    // 0xe9a4c4: r0 = AllocateClosure()
    //     0xe9a4c4: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe9a4c8: r1 = Function '<anonymous closure>':.
    //     0xe9a4c8: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d88] AnonymousClosure: (0xe9a52c), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::build (0xe99830)
    //     0xe9a4cc: ldr             x1, [x1, #0xd88]
    // 0xe9a4d0: r2 = Null
    //     0xe9a4d0: mov             x2, NULL
    // 0xe9a4d4: stur            x0, [fp, #-0x18]
    // 0xe9a4d8: r0 = AllocateClosure()
    //     0xe9a4d8: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe9a4dc: r1 = Function '<anonymous closure>':.
    //     0xe9a4dc: add             x1, PP, #0x87, lsl #12  ; [pp+0x87d90] AnonymousClosure: (0xe8c3c4), in [package:simaster_ugm/app/modules/home/views/home_view.dart] HomeView::_appBarHeader (0xe8c5ec)
    //     0xe9a4e0: ldr             x1, [x1, #0xd90]
    // 0xe9a4e4: r2 = Null
    //     0xe9a4e4: mov             x2, NULL
    // 0xe9a4e8: stur            x0, [fp, #-0x20]
    // 0xe9a4ec: r0 = AllocateClosure()
    //     0xe9a4ec: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe9a4f0: ldur            x16, [fp, #-0x18]
    // 0xe9a4f4: ldur            lr, [fp, #-0x20]
    // 0xe9a4f8: stp             lr, x16, [SP, #8]
    // 0xe9a4fc: str             x0, [SP]
    // 0xe9a500: ldur            x1, [fp, #-8]
    // 0xe9a504: ldur            x2, [fp, #-0x10]
    // 0xe9a508: r4 = const [0, 0x5, 0x3, 0x2, errorWidget, 0x4, imageBuilder, 0x2, placeholder, 0x3, null]
    //     0xe9a508: add             x4, PP, #0x87, lsl #12  ; [pp+0x87d70] List(11) [0, 0x5, 0x3, 0x2, "errorWidget", 0x4, "imageBuilder", 0x2, "placeholder", 0x3, Null]
    //     0xe9a50c: ldr             x4, [x4, #0xd70]
    // 0xe9a510: r0 = CachedNetworkImage()
    //     0xe9a510: bl              #0xe84270  ; [package:cached_network_image/src/cached_image_widget.dart] CachedNetworkImage::CachedNetworkImage
    // 0xe9a514: ldur            x0, [fp, #-8]
    // 0xe9a518: LeaveFrame
    //     0xe9a518: mov             SP, fp
    //     0xe9a51c: ldp             fp, lr, [SP], #0x10
    // 0xe9a520: ret
    //     0xe9a520: ret             
    // 0xe9a524: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe9a524: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9a528: b               #0xe9a468
  }
  [closure] CircularProgressIndicator <anonymous closure>(dynamic, BuildContext, String) {
    // ** addr: 0xe9a52c, size: 0xc
    // 0xe9a52c: r0 = Instance_CircularProgressIndicator
    //     0xe9a52c: add             x0, PP, #0x87, lsl #12  ; [pp+0x87d98] Obj!CircularProgressIndicator@12b6e01
    //     0xe9a530: ldr             x0, [x0, #0xd98]
    // 0xe9a534: ret
    //     0xe9a534: ret             
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, ImageProvider<Object>) {
    // ** addr: 0xe9a538, size: 0x60
    // 0xe9a538: EnterFrame
    //     0xe9a538: stp             fp, lr, [SP, #-0x10]!
    //     0xe9a53c: mov             fp, SP
    // 0xe9a540: AllocStack(0x10)
    //     0xe9a540: sub             SP, SP, #0x10
    // 0xe9a544: SetupParameters([dynamic _ /* r0 */])
    //     0xe9a544: ldr             x0, [fp, #0x20]
    //     0xe9a548: ldur            w1, [x0, #0x17]
    //     0xe9a54c: add             x1, x1, HEAP, lsl #32
    // 0xe9a550: CheckStackOverflow
    //     0xe9a550: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe9a554: cmp             SP, x16
    //     0xe9a558: b.ls            #0xe9a590
    // 0xe9a55c: LoadField: r0 = r1->field_b
    //     0xe9a55c: ldur            w0, [x1, #0xb]
    // 0xe9a560: DecompressPointer r0
    //     0xe9a560: add             x0, x0, HEAP, lsl #32
    // 0xe9a564: ArrayLoad: r1 = r0[0]  ; List_4
    //     0xe9a564: ldur            w1, [x0, #0x17]
    // 0xe9a568: DecompressPointer r1
    //     0xe9a568: add             x1, x1, HEAP, lsl #32
    // 0xe9a56c: ldr             x16, [fp, #0x10]
    // 0xe9a570: stp             x16, x1, [SP]
    // 0xe9a574: mov             x0, x1
    // 0xe9a578: ClosureCall
    //     0xe9a578: ldr             x4, [PP, #0x148]  ; [pp+0x148] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0xe9a57c: ldur            x2, [x0, #0x1f]
    //     0xe9a580: blr             x2
    // 0xe9a584: LeaveFrame
    //     0xe9a584: mov             SP, fp
    //     0xe9a588: ldp             fp, lr, [SP], #0x10
    // 0xe9a58c: ret
    //     0xe9a58c: ret             
    // 0xe9a590: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe9a590: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9a594: b               #0xe9a55c
  }
  [closure] Widget buildAvatar(dynamic, ImageProvider<Object>) {
    // ** addr: 0xe9a598, size: 0x330
    // 0xe9a598: EnterFrame
    //     0xe9a598: stp             fp, lr, [SP, #-0x10]!
    //     0xe9a59c: mov             fp, SP
    // 0xe9a5a0: AllocStack(0x50)
    //     0xe9a5a0: sub             SP, SP, #0x50
    // 0xe9a5a4: SetupParameters([dynamic _ /* r0 */])
    //     0xe9a5a4: ldr             x0, [fp, #0x18]
    //     0xe9a5a8: ldur            w1, [x0, #0x17]
    //     0xe9a5ac: add             x1, x1, HEAP, lsl #32
    //     0xe9a5b0: stur            x1, [fp, #-8]
    // 0xe9a5b4: CheckStackOverflow
    //     0xe9a5b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe9a5b8: cmp             SP, x16
    //     0xe9a5bc: b.ls            #0xe9a880
    // 0xe9a5c0: r0 = LoadStaticField(0x1674)
    //     0xe9a5c0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe9a5c4: ldr             x0, [x0, #0x2ce8]
    // 0xe9a5c8: r2 = LoadStaticField(0x1680)
    //     0xe9a5c8: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0xe9a5cc: ldr             x2, [x2, #0x2d00]
    // 0xe9a5d0: tbnz            w2, #4, #0xe9a5f4
    // 0xe9a5d4: d1 = 0.222222
    //     0xe9a5d4: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c2e8] IMM: double(0.2222222222222222) from 0x3fcc71c71c71c71c
    //     0xe9a5d8: ldr             d1, [x17, #0x2e8]
    // 0xe9a5dc: d0 = 0.800000
    //     0xe9a5dc: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0xe9a5e0: ldr             d0, [x17, #0xa58]
    // 0xe9a5e4: LoadField: d2 = r0->field_7
    //     0xe9a5e4: ldur            d2, [x0, #7]
    // 0xe9a5e8: fmul            d3, d2, d0
    // 0xe9a5ec: fmul            d2, d3, d1
    // 0xe9a5f0: b               #0xe9a610
    // 0xe9a5f4: d1 = 0.222222
    //     0xe9a5f4: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c2e8] IMM: double(0.2222222222222222) from 0x3fcc71c71c71c71c
    //     0xe9a5f8: ldr             d1, [x17, #0x2e8]
    // 0xe9a5fc: d0 = 0.800000
    //     0xe9a5fc: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0xe9a600: ldr             d0, [x17, #0xa58]
    // 0xe9a604: LoadField: d2 = r0->field_7
    //     0xe9a604: ldur            d2, [x0, #7]
    // 0xe9a608: fmul            d3, d2, d1
    // 0xe9a60c: mov             v2.16b, v3.16b
    // 0xe9a610: stur            d2, [fp, #-0x38]
    // 0xe9a614: tbnz            w2, #4, #0xe9a628
    // 0xe9a618: LoadField: d3 = r0->field_7
    //     0xe9a618: ldur            d3, [x0, #7]
    // 0xe9a61c: fmul            d4, d3, d0
    // 0xe9a620: fmul            d0, d4, d1
    // 0xe9a624: b               #0xe9a634
    // 0xe9a628: LoadField: d0 = r0->field_7
    //     0xe9a628: ldur            d0, [x0, #7]
    // 0xe9a62c: fmul            d3, d0, d1
    // 0xe9a630: mov             v0.16b, v3.16b
    // 0xe9a634: ldr             x0, [fp, #0x10]
    // 0xe9a638: stur            d0, [fp, #-0x30]
    // 0xe9a63c: r0 = DecorationImage()
    //     0xe9a63c: bl              #0xe3940c  ; AllocateDecorationImageStub -> DecorationImage (size=0x44)
    // 0xe9a640: mov             x1, x0
    // 0xe9a644: ldr             x0, [fp, #0x10]
    // 0xe9a648: stur            x1, [fp, #-0x10]
    // 0xe9a64c: StoreField: r1->field_7 = r0
    //     0xe9a64c: stur            w0, [x1, #7]
    // 0xe9a650: r0 = Instance_BoxFit
    //     0xe9a650: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e928] Obj!BoxFit@12c4901
    //     0xe9a654: ldr             x0, [x0, #0x928]
    // 0xe9a658: StoreField: r1->field_13 = r0
    //     0xe9a658: stur            w0, [x1, #0x13]
    // 0xe9a65c: r0 = Instance_Alignment
    //     0xe9a65c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15b80] Obj!Alignment@129e751
    //     0xe9a660: ldr             x0, [x0, #0xb80]
    // 0xe9a664: ArrayStore: r1[0] = r0  ; List_4
    //     0xe9a664: stur            w0, [x1, #0x17]
    // 0xe9a668: r0 = Instance_ImageRepeat
    //     0xe9a668: add             x0, PP, #0x16, lsl #12  ; [pp+0x16fb8] Obj!ImageRepeat@12c4821
    //     0xe9a66c: ldr             x0, [x0, #0xfb8]
    // 0xe9a670: StoreField: r1->field_1f = r0
    //     0xe9a670: stur            w0, [x1, #0x1f]
    // 0xe9a674: r0 = false
    //     0xe9a674: add             x0, NULL, #0x30  ; false
    // 0xe9a678: StoreField: r1->field_23 = r0
    //     0xe9a678: stur            w0, [x1, #0x23]
    // 0xe9a67c: d0 = 1.000000
    //     0xe9a67c: fmov            d0, #1.00000000
    // 0xe9a680: StoreField: r1->field_27 = d0
    //     0xe9a680: stur            d0, [x1, #0x27]
    // 0xe9a684: StoreField: r1->field_2f = d0
    //     0xe9a684: stur            d0, [x1, #0x2f]
    // 0xe9a688: r2 = Instance_FilterQuality
    //     0xe9a688: add             x2, PP, #0x16, lsl #12  ; [pp+0x16fc0] Obj!FilterQuality@12c8241
    //     0xe9a68c: ldr             x2, [x2, #0xfc0]
    // 0xe9a690: StoreField: r1->field_37 = r2
    //     0xe9a690: stur            w2, [x1, #0x37]
    // 0xe9a694: StoreField: r1->field_3b = r0
    //     0xe9a694: stur            w0, [x1, #0x3b]
    // 0xe9a698: StoreField: r1->field_3f = r0
    //     0xe9a698: stur            w0, [x1, #0x3f]
    // 0xe9a69c: r0 = BoxDecoration()
    //     0xe9a69c: bl              #0x8a721c  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0xe9a6a0: mov             x1, x0
    // 0xe9a6a4: ldur            x0, [fp, #-0x10]
    // 0xe9a6a8: stur            x1, [fp, #-0x20]
    // 0xe9a6ac: StoreField: r1->field_b = r0
    //     0xe9a6ac: stur            w0, [x1, #0xb]
    // 0xe9a6b0: r0 = Instance_BoxShape
    //     0xe9a6b0: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1abf0] Obj!BoxShape@12c4941
    //     0xe9a6b4: ldr             x0, [x0, #0xbf0]
    // 0xe9a6b8: StoreField: r1->field_23 = r0
    //     0xe9a6b8: stur            w0, [x1, #0x23]
    // 0xe9a6bc: ldur            d0, [fp, #-0x38]
    // 0xe9a6c0: r2 = inline_Allocate_Double()
    //     0xe9a6c0: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0xe9a6c4: add             x2, x2, #0x10
    //     0xe9a6c8: cmp             x3, x2
    //     0xe9a6cc: b.ls            #0xe9a888
    //     0xe9a6d0: str             x2, [THR, #0x60]  ; THR::top
    //     0xe9a6d4: sub             x2, x2, #0xf
    //     0xe9a6d8: mov             x3, #0xe19c
    //     0xe9a6dc: movk            x3, #3, lsl #16
    //     0xe9a6e0: stur            x3, [x2, #-1]
    // 0xe9a6e4: dmb             ishst
    // 0xe9a6e8: StoreField: r2->field_7 = d0
    //     0xe9a6e8: stur            d0, [x2, #7]
    // 0xe9a6ec: ldur            d0, [fp, #-0x30]
    // 0xe9a6f0: stur            x2, [fp, #-0x18]
    // 0xe9a6f4: r3 = inline_Allocate_Double()
    //     0xe9a6f4: ldp             x3, x4, [THR, #0x60]  ; THR::top
    //     0xe9a6f8: add             x3, x3, #0x10
    //     0xe9a6fc: cmp             x4, x3
    //     0xe9a700: b.ls            #0xe9a8a4
    //     0xe9a704: str             x3, [THR, #0x60]  ; THR::top
    //     0xe9a708: sub             x3, x3, #0xf
    //     0xe9a70c: mov             x4, #0xe19c
    //     0xe9a710: movk            x4, #3, lsl #16
    //     0xe9a714: stur            x4, [x3, #-1]
    // 0xe9a718: dmb             ishst
    // 0xe9a71c: StoreField: r3->field_7 = d0
    //     0xe9a71c: stur            d0, [x3, #7]
    // 0xe9a720: stur            x3, [fp, #-0x10]
    // 0xe9a724: r0 = Container()
    //     0xe9a724: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0xe9a728: stur            x0, [fp, #-0x28]
    // 0xe9a72c: ldur            x16, [fp, #-0x18]
    // 0xe9a730: ldur            lr, [fp, #-0x10]
    // 0xe9a734: stp             lr, x16, [SP, #8]
    // 0xe9a738: ldur            x16, [fp, #-0x20]
    // 0xe9a73c: str             x16, [SP]
    // 0xe9a740: mov             x1, x0
    // 0xe9a744: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0xe9a744: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1ccb8] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0xe9a748: ldr             x4, [x4, #0xcb8]
    // 0xe9a74c: r0 = Container()
    //     0xe9a74c: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0xe9a750: ldur            x0, [fp, #-8]
    // 0xe9a754: LoadField: r1 = r0->field_13
    //     0xe9a754: ldur            w1, [x0, #0x13]
    // 0xe9a758: DecompressPointer r1
    //     0xe9a758: add             x1, x1, HEAP, lsl #32
    // 0xe9a75c: tbz             w1, #4, #0xe9a7cc
    // 0xe9a760: LoadField: r1 = r0->field_f
    //     0xe9a760: ldur            w1, [x0, #0xf]
    // 0xe9a764: DecompressPointer r1
    //     0xe9a764: add             x1, x1, HEAP, lsl #32
    // 0xe9a768: r0 = colors()
    //     0xe9a768: bl              #0xe7232c  ; [package:simaster_ugm/theme/theme.dart] ::colors
    // 0xe9a76c: LoadField: r1 = r0->field_33
    //     0xe9a76c: ldur            w1, [x0, #0x33]
    // 0xe9a770: DecompressPointer r1
    //     0xe9a770: add             x1, x1, HEAP, lsl #32
    // 0xe9a774: stur            x1, [fp, #-0x10]
    // 0xe9a778: r0 = BoxDecoration()
    //     0xe9a778: bl              #0x8a721c  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0xe9a77c: mov             x1, x0
    // 0xe9a780: ldur            x0, [fp, #-0x10]
    // 0xe9a784: stur            x1, [fp, #-0x18]
    // 0xe9a788: StoreField: r1->field_7 = r0
    //     0xe9a788: stur            w0, [x1, #7]
    // 0xe9a78c: r2 = Instance_BoxShape
    //     0xe9a78c: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1abf0] Obj!BoxShape@12c4941
    //     0xe9a790: ldr             x2, [x2, #0xbf0]
    // 0xe9a794: StoreField: r1->field_23 = r2
    //     0xe9a794: stur            w2, [x1, #0x23]
    // 0xe9a798: r0 = Container()
    //     0xe9a798: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0xe9a79c: stur            x0, [fp, #-0x10]
    // 0xe9a7a0: ldur            x16, [fp, #-0x18]
    // 0xe9a7a4: ldur            lr, [fp, #-0x28]
    // 0xe9a7a8: stp             lr, x16, [SP]
    // 0xe9a7ac: mov             x1, x0
    // 0xe9a7b0: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, decoration, 0x1, null]
    //     0xe9a7b0: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1eab8] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "decoration", 0x1, Null]
    //     0xe9a7b4: ldr             x4, [x4, #0xab8]
    // 0xe9a7b8: r0 = Container()
    //     0xe9a7b8: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0xe9a7bc: ldur            x0, [fp, #-0x10]
    // 0xe9a7c0: LeaveFrame
    //     0xe9a7c0: mov             SP, fp
    //     0xe9a7c4: ldp             fp, lr, [SP], #0x10
    // 0xe9a7c8: ret
    //     0xe9a7c8: ret             
    // 0xe9a7cc: r2 = Instance_BoxShape
    //     0xe9a7cc: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1abf0] Obj!BoxShape@12c4941
    //     0xe9a7d0: ldr             x2, [x2, #0xbf0]
    // 0xe9a7d4: LoadField: r1 = r0->field_f
    //     0xe9a7d4: ldur            w1, [x0, #0xf]
    // 0xe9a7d8: DecompressPointer r1
    //     0xe9a7d8: add             x1, x1, HEAP, lsl #32
    // 0xe9a7dc: r0 = colorsMetronic()
    //     0xe9a7dc: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0xe9a7e0: LoadField: r1 = r0->field_f3
    //     0xe9a7e0: ldur            w1, [x0, #0xf3]
    // 0xe9a7e4: DecompressPointer r1
    //     0xe9a7e4: add             x1, x1, HEAP, lsl #32
    // 0xe9a7e8: stur            x1, [fp, #-8]
    // 0xe9a7ec: r0 = BoxDecoration()
    //     0xe9a7ec: bl              #0x8a721c  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0xe9a7f0: mov             x1, x0
    // 0xe9a7f4: ldur            x0, [fp, #-8]
    // 0xe9a7f8: stur            x1, [fp, #-0x10]
    // 0xe9a7fc: StoreField: r1->field_7 = r0
    //     0xe9a7fc: stur            w0, [x1, #7]
    // 0xe9a800: r0 = Instance_BoxShape
    //     0xe9a800: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1abf0] Obj!BoxShape@12c4941
    //     0xe9a804: ldr             x0, [x0, #0xbf0]
    // 0xe9a808: StoreField: r1->field_23 = r0
    //     0xe9a808: stur            w0, [x1, #0x23]
    // 0xe9a80c: r0 = Container()
    //     0xe9a80c: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0xe9a810: stur            x0, [fp, #-8]
    // 0xe9a814: r16 = Instance_EdgeInsets
    //     0xe9a814: add             x16, PP, #0x87, lsl #12  ; [pp+0x87da0] Obj!EdgeInsets@129d771
    //     0xe9a818: ldr             x16, [x16, #0xda0]
    // 0xe9a81c: ldur            lr, [fp, #-0x10]
    // 0xe9a820: stp             lr, x16, [SP, #8]
    // 0xe9a824: ldur            x16, [fp, #-0x28]
    // 0xe9a828: str             x16, [SP]
    // 0xe9a82c: mov             x1, x0
    // 0xe9a830: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0xe9a830: add             x4, PP, #0x17, lsl #12  ; [pp+0x17208] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0xe9a834: ldr             x4, [x4, #0x208]
    // 0xe9a838: r0 = Container()
    //     0xe9a838: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0xe9a83c: r0 = Container()
    //     0xe9a83c: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0xe9a840: stur            x0, [fp, #-0x10]
    // 0xe9a844: r16 = Instance_EdgeInsets
    //     0xe9a844: add             x16, PP, #0x87, lsl #12  ; [pp+0x87da8] Obj!EdgeInsets@129d741
    //     0xe9a848: ldr             x16, [x16, #0xda8]
    // 0xe9a84c: r30 = Instance_BoxDecoration
    //     0xe9a84c: add             lr, PP, #0x87, lsl #12  ; [pp+0x87db0] Obj!BoxDecoration@12b3491
    //     0xe9a850: ldr             lr, [lr, #0xdb0]
    // 0xe9a854: stp             lr, x16, [SP, #8]
    // 0xe9a858: ldur            x16, [fp, #-8]
    // 0xe9a85c: str             x16, [SP]
    // 0xe9a860: mov             x1, x0
    // 0xe9a864: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0xe9a864: add             x4, PP, #0x17, lsl #12  ; [pp+0x17208] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0xe9a868: ldr             x4, [x4, #0x208]
    // 0xe9a86c: r0 = Container()
    //     0xe9a86c: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0xe9a870: ldur            x0, [fp, #-0x10]
    // 0xe9a874: LeaveFrame
    //     0xe9a874: mov             SP, fp
    //     0xe9a878: ldp             fp, lr, [SP], #0x10
    // 0xe9a87c: ret
    //     0xe9a87c: ret             
    // 0xe9a880: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe9a880: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe9a884: b               #0xe9a5c0
    // 0xe9a888: SaveReg d0
    //     0xe9a888: str             q0, [SP, #-0x10]!
    // 0xe9a88c: stp             x0, x1, [SP, #-0x10]!
    // 0xe9a890: r0 = AllocateDouble()
    //     0xe9a890: bl              #0x13df878  ; AllocateDoubleStub
    // 0xe9a894: mov             x2, x0
    // 0xe9a898: ldp             x0, x1, [SP], #0x10
    // 0xe9a89c: RestoreReg d0
    //     0xe9a89c: ldr             q0, [SP], #0x10
    // 0xe9a8a0: b               #0xe9a6e8
    // 0xe9a8a4: SaveReg d0
    //     0xe9a8a4: str             q0, [SP, #-0x10]!
    // 0xe9a8a8: stp             x1, x2, [SP, #-0x10]!
    // 0xe9a8ac: SaveReg r0
    //     0xe9a8ac: str             x0, [SP, #-8]!
    // 0xe9a8b0: r0 = AllocateDouble()
    //     0xe9a8b0: bl              #0x13df878  ; AllocateDoubleStub
    // 0xe9a8b4: mov             x3, x0
    // 0xe9a8b8: RestoreReg r0
    //     0xe9a8b8: ldr             x0, [SP], #8
    // 0xe9a8bc: ldp             x1, x2, [SP], #0x10
    // 0xe9a8c0: RestoreReg d0
    //     0xe9a8c0: ldr             q0, [SP], #0x10
    // 0xe9a8c4: b               #0xe9a71c
  }
  _ initState(/* No info */) {
    // ** addr: 0xf956d4, size: 0x84
    // 0xf956d4: EnterFrame
    //     0xf956d4: stp             fp, lr, [SP, #-0x10]!
    //     0xf956d8: mov             fp, SP
    // 0xf956dc: AllocStack(0x10)
    //     0xf956dc: sub             SP, SP, #0x10
    // 0xf956e0: SetupParameters(_AvatarWithStoryState this /* r1 => r1, fp-0x8 */)
    //     0xf956e0: stur            x1, [fp, #-8]
    // 0xf956e4: CheckStackOverflow
    //     0xf956e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xf956e8: cmp             SP, x16
    //     0xf956ec: b.ls            #0xf95750
    // 0xf956f0: r0 = LoadStaticField(0x1810)
    //     0xf956f0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xf956f4: ldr             x0, [x0, #0x3020]
    // 0xf956f8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xf956fc: cmp             w0, w16
    // 0xf95700: b.ne            #0xf95710
    // 0xf95704: r2 = mascotAlignmentNotifier
    //     0xf95704: add             x2, PP, #0x87, lsl #12  ; [pp+0x87d10] Field <::.mascotAlignmentNotifier>: static late final (offset: 0x1810)
    //     0xf95708: ldr             x2, [x2, #0xd10]
    // 0xf9570c: r0 = InitLateFinalStaticField()
    //     0xf9570c: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xf95710: stur            x0, [fp, #-0x10]
    // 0xf95714: LoadField: r2 = r0->field_27
    //     0xf95714: ldur            w2, [x0, #0x27]
    // 0xf95718: DecompressPointer r2
    //     0xf95718: add             x2, x2, HEAP, lsl #32
    // 0xf9571c: ldur            x1, [fp, #-8]
    // 0xf95720: r0 = _sync()
    //     0xf95720: bl              #0x82f0d4  ; [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::_sync
    // 0xf95724: ldur            x2, [fp, #-8]
    // 0xf95728: r1 = Function '_onMascotChanged@1979106386':.
    //     0xf95728: add             x1, PP, #0x87, lsl #12  ; [pp+0x87db8] AnonymousClosure: (0xf95758), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::_onMascotChanged (0xf95790)
    //     0xf9572c: ldr             x1, [x1, #0xdb8]
    // 0xf95730: r0 = AllocateClosure()
    //     0xf95730: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xf95734: ldur            x1, [fp, #-0x10]
    // 0xf95738: mov             x2, x0
    // 0xf9573c: r0 = addListener()
    //     0xf9573c: bl              #0xd038e0  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::addListener
    // 0xf95740: r0 = Null
    //     0xf95740: mov             x0, NULL
    // 0xf95744: LeaveFrame
    //     0xf95744: mov             SP, fp
    //     0xf95748: ldp             fp, lr, [SP], #0x10
    // 0xf9574c: ret
    //     0xf9574c: ret             
    // 0xf95750: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xf95750: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xf95754: b               #0xf956f0
  }
  [closure] void _onMascotChanged(dynamic) {
    // ** addr: 0xf95758, size: 0x38
    // 0xf95758: EnterFrame
    //     0xf95758: stp             fp, lr, [SP, #-0x10]!
    //     0xf9575c: mov             fp, SP
    // 0xf95760: ldr             x0, [fp, #0x10]
    // 0xf95764: ArrayLoad: r1 = r0[0]  ; List_4
    //     0xf95764: ldur            w1, [x0, #0x17]
    // 0xf95768: DecompressPointer r1
    //     0xf95768: add             x1, x1, HEAP, lsl #32
    // 0xf9576c: CheckStackOverflow
    //     0xf9576c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xf95770: cmp             SP, x16
    //     0xf95774: b.ls            #0xf95788
    // 0xf95778: r0 = _onMascotChanged()
    //     0xf95778: bl              #0xf95790  ; [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::_onMascotChanged
    // 0xf9577c: LeaveFrame
    //     0xf9577c: mov             SP, fp
    //     0xf95780: ldp             fp, lr, [SP], #0x10
    // 0xf95784: ret
    //     0xf95784: ret             
    // 0xf95788: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xf95788: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xf9578c: b               #0xf95778
  }
  _ _onMascotChanged(/* No info */) {
    // ** addr: 0xf95790, size: 0x64
    // 0xf95790: EnterFrame
    //     0xf95790: stp             fp, lr, [SP, #-0x10]!
    //     0xf95794: mov             fp, SP
    // 0xf95798: AllocStack(0x8)
    //     0xf95798: sub             SP, SP, #8
    // 0xf9579c: SetupParameters(_AvatarWithStoryState this /* r1 => r1, fp-0x8 */)
    //     0xf9579c: stur            x1, [fp, #-8]
    // 0xf957a0: CheckStackOverflow
    //     0xf957a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xf957a4: cmp             SP, x16
    //     0xf957a8: b.ls            #0xf957ec
    // 0xf957ac: r0 = LoadStaticField(0x1810)
    //     0xf957ac: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xf957b0: ldr             x0, [x0, #0x3020]
    // 0xf957b4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xf957b8: cmp             w0, w16
    // 0xf957bc: b.ne            #0xf957cc
    // 0xf957c0: r2 = mascotAlignmentNotifier
    //     0xf957c0: add             x2, PP, #0x87, lsl #12  ; [pp+0x87d10] Field <::.mascotAlignmentNotifier>: static late final (offset: 0x1810)
    //     0xf957c4: ldr             x2, [x2, #0xd10]
    // 0xf957c8: r0 = InitLateFinalStaticField()
    //     0xf957c8: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xf957cc: LoadField: r2 = r0->field_27
    //     0xf957cc: ldur            w2, [x0, #0x27]
    // 0xf957d0: DecompressPointer r2
    //     0xf957d0: add             x2, x2, HEAP, lsl #32
    // 0xf957d4: ldur            x1, [fp, #-8]
    // 0xf957d8: r0 = _sync()
    //     0xf957d8: bl              #0x82f0d4  ; [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::_sync
    // 0xf957dc: r0 = Null
    //     0xf957dc: mov             x0, NULL
    // 0xf957e0: LeaveFrame
    //     0xf957e0: mov             SP, fp
    //     0xf957e4: ldp             fp, lr, [SP], #0x10
    // 0xf957e8: ret
    //     0xf957e8: ret             
    // 0xf957ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xf957ec: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xf957f0: b               #0xf957ac
  }
  _ dispose(/* No info */) {
    // ** addr: 0x10e7ad0, size: 0x78
    // 0x10e7ad0: EnterFrame
    //     0x10e7ad0: stp             fp, lr, [SP, #-0x10]!
    //     0x10e7ad4: mov             fp, SP
    // 0x10e7ad8: AllocStack(0x8)
    //     0x10e7ad8: sub             SP, SP, #8
    // 0x10e7adc: SetupParameters(_AvatarWithStoryState this /* r1 => r2, fp-0x8 */)
    //     0x10e7adc: mov             x2, x1
    //     0x10e7ae0: stur            x1, [fp, #-8]
    // 0x10e7ae4: CheckStackOverflow
    //     0x10e7ae4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10e7ae8: cmp             SP, x16
    //     0x10e7aec: b.ls            #0x10e7b40
    // 0x10e7af0: r0 = LoadStaticField(0x1810)
    //     0x10e7af0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10e7af4: ldr             x0, [x0, #0x3020]
    // 0x10e7af8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x10e7afc: cmp             w0, w16
    // 0x10e7b00: b.ne            #0x10e7b10
    // 0x10e7b04: r2 = mascotAlignmentNotifier
    //     0x10e7b04: add             x2, PP, #0x87, lsl #12  ; [pp+0x87d10] Field <::.mascotAlignmentNotifier>: static late final (offset: 0x1810)
    //     0x10e7b08: ldr             x2, [x2, #0xd10]
    // 0x10e7b0c: r0 = InitLateFinalStaticField()
    //     0x10e7b0c: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x10e7b10: ldur            x2, [fp, #-8]
    // 0x10e7b14: r1 = Function '_onMascotChanged@1979106386':.
    //     0x10e7b14: add             x1, PP, #0x87, lsl #12  ; [pp+0x87db8] AnonymousClosure: (0xf95758), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AvatarWithStoryState::_onMascotChanged (0xf95790)
    //     0x10e7b18: ldr             x1, [x1, #0xdb8]
    // 0x10e7b1c: stur            x0, [fp, #-8]
    // 0x10e7b20: r0 = AllocateClosure()
    //     0x10e7b20: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x10e7b24: ldur            x1, [fp, #-8]
    // 0x10e7b28: mov             x2, x0
    // 0x10e7b2c: r0 = removeListener()
    //     0x10e7b2c: bl              #0xcff968  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::removeListener
    // 0x10e7b30: r0 = Null
    //     0x10e7b30: mov             x0, NULL
    // 0x10e7b34: LeaveFrame
    //     0x10e7b34: mov             SP, fp
    //     0x10e7b38: ldp             fp, lr, [SP], #0x10
    // 0x10e7b3c: ret
    //     0x10e7b3c: ret             
    // 0x10e7b40: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10e7b40: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10e7b44: b               #0x10e7af0
  }
}

// class id: 5391, size: 0x34, field offset: 0x14
class _MascotSwitcherState extends State<dynamic> {

  _ build(/* No info */) {
    // ** addr: 0xe98ac8, size: 0x430
    // 0xe98ac8: EnterFrame
    //     0xe98ac8: stp             fp, lr, [SP, #-0x10]!
    //     0xe98acc: mov             fp, SP
    // 0xe98ad0: AllocStack(0x60)
    //     0xe98ad0: sub             SP, SP, #0x60
    // 0xe98ad4: SetupParameters(_MascotSwitcherState this /* r1 => r0, fp-0x8 */)
    //     0xe98ad4: mov             x0, x1
    //     0xe98ad8: stur            x1, [fp, #-8]
    // 0xe98adc: CheckStackOverflow
    //     0xe98adc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe98ae0: cmp             SP, x16
    //     0xe98ae4: b.ls            #0xe98ecc
    // 0xe98ae8: LoadField: r1 = r0->field_13
    //     0xe98ae8: ldur            w1, [x0, #0x13]
    // 0xe98aec: DecompressPointer r1
    //     0xe98aec: add             x1, x1, HEAP, lsl #32
    // 0xe98af0: r16 = Instance_Alignment
    //     0xe98af0: add             x16, PP, #0x19, lsl #12  ; [pp+0x19f88] Obj!Alignment@129e811
    //     0xe98af4: ldr             x16, [x16, #0xf88]
    // 0xe98af8: stp             x16, x1, [SP]
    // 0xe98afc: r0 = ==()
    //     0xe98afc: bl              #0x1297efc  ; [package:flutter/src/painting/alignment.dart] AlignmentGeometry::==
    // 0xe98b00: ldur            x2, [fp, #-8]
    // 0xe98b04: stur            x0, [fp, #-0x10]
    // 0xe98b08: LoadField: r1 = r2->field_13
    //     0xe98b08: ldur            w1, [x2, #0x13]
    // 0xe98b0c: DecompressPointer r1
    //     0xe98b0c: add             x1, x1, HEAP, lsl #32
    // 0xe98b10: r16 = Instance_Alignment
    //     0xe98b10: add             x16, PP, #0x87, lsl #12  ; [pp+0x87dc8] Obj!Alignment@129e7f1
    //     0xe98b14: ldr             x16, [x16, #0xdc8]
    // 0xe98b18: stp             x16, x1, [SP]
    // 0xe98b1c: r0 = ==()
    //     0xe98b1c: bl              #0x1297efc  ; [package:flutter/src/painting/alignment.dart] AlignmentGeometry::==
    // 0xe98b20: ldur            x2, [fp, #-8]
    // 0xe98b24: LoadField: r1 = r2->field_13
    //     0xe98b24: ldur            w1, [x2, #0x13]
    // 0xe98b28: DecompressPointer r1
    //     0xe98b28: add             x1, x1, HEAP, lsl #32
    // 0xe98b2c: ldur            x3, [fp, #-0x10]
    // 0xe98b30: stur            x1, [fp, #-0x18]
    // 0xe98b34: tbnz            w3, #4, #0xe98b48
    // 0xe98b38: r4 = LoadStaticField(0x16ac)
    //     0xe98b38: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0xe98b3c: ldr             x4, [x4, #0x2d58]
    // 0xe98b40: LoadField: d0 = r4->field_7
    //     0xe98b40: ldur            d0, [x4, #7]
    // 0xe98b44: b               #0xe98b4c
    // 0xe98b48: d0 = 0.000000
    //     0xe98b48: eor             v0.16b, v0.16b, v0.16b
    // 0xe98b4c: stur            d0, [fp, #-0x48]
    // 0xe98b50: tbz             w3, #4, #0xe98b64
    // 0xe98b54: r3 = LoadStaticField(0x16ac)
    //     0xe98b54: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0xe98b58: ldr             x3, [x3, #0x2d58]
    // 0xe98b5c: LoadField: d1 = r3->field_7
    //     0xe98b5c: ldur            d1, [x3, #7]
    // 0xe98b60: b               #0xe98b68
    // 0xe98b64: d1 = 0.000000
    //     0xe98b64: eor             v1.16b, v1.16b, v1.16b
    // 0xe98b68: stur            d1, [fp, #-0x40]
    // 0xe98b6c: tbnz            w0, #4, #0xe98b80
    // 0xe98b70: r0 = LoadStaticField(0x16a0)
    //     0xe98b70: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe98b74: ldr             x0, [x0, #0x2d40]
    // 0xe98b78: LoadField: d2 = r0->field_7
    //     0xe98b78: ldur            d2, [x0, #7]
    // 0xe98b7c: b               #0xe98b84
    // 0xe98b80: d2 = 0.000000
    //     0xe98b80: eor             v2.16b, v2.16b, v2.16b
    // 0xe98b84: stur            d2, [fp, #-0x38]
    // 0xe98b88: r0 = EdgeInsets()
    //     0xe98b88: bl              #0x858568  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0xe98b8c: ldur            d0, [fp, #-0x48]
    // 0xe98b90: stur            x0, [fp, #-0x10]
    // 0xe98b94: StoreField: r0->field_7 = d0
    //     0xe98b94: stur            d0, [x0, #7]
    // 0xe98b98: ldur            d0, [fp, #-0x38]
    // 0xe98b9c: StoreField: r0->field_f = d0
    //     0xe98b9c: stur            d0, [x0, #0xf]
    // 0xe98ba0: ldur            d0, [fp, #-0x40]
    // 0xe98ba4: ArrayStore: r0[0] = d0  ; List_8
    //     0xe98ba4: stur            d0, [x0, #0x17]
    // 0xe98ba8: StoreField: r0->field_1f = rZR
    //     0xe98ba8: stur            xzr, [x0, #0x1f]
    // 0xe98bac: r16 = 0.280000
    //     0xe98bac: add             x16, PP, #0x87, lsl #12  ; [pp+0x87dd0] 0.28
    //     0xe98bb0: ldr             x16, [x16, #0xdd0]
    // 0xe98bb4: str             x16, [SP]
    // 0xe98bb8: r1 = Instance_Color
    //     0xe98bb8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12948] Obj!Color@12a15c1
    //     0xe98bbc: ldr             x1, [x1, #0x948]
    // 0xe98bc0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0xe98bc0: add             x4, PP, #0x28, lsl #12  ; [pp+0x28640] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0xe98bc4: ldr             x4, [x4, #0x640]
    // 0xe98bc8: r0 = withValues()
    //     0xe98bc8: bl              #0x12d8818  ; [dart:ui] Color::withValues
    // 0xe98bcc: stur            x0, [fp, #-0x20]
    // 0xe98bd0: r16 = 0.280000
    //     0xe98bd0: add             x16, PP, #0x87, lsl #12  ; [pp+0x87dd0] 0.28
    //     0xe98bd4: ldr             x16, [x16, #0xdd0]
    // 0xe98bd8: str             x16, [SP]
    // 0xe98bdc: r1 = Instance_Color
    //     0xe98bdc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12948] Obj!Color@12a15c1
    //     0xe98be0: ldr             x1, [x1, #0x948]
    // 0xe98be4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0xe98be4: add             x4, PP, #0x28, lsl #12  ; [pp+0x28640] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0xe98be8: ldr             x4, [x4, #0x640]
    // 0xe98bec: r0 = withValues()
    //     0xe98bec: bl              #0x12d8818  ; [dart:ui] Color::withValues
    // 0xe98bf0: stur            x0, [fp, #-0x28]
    // 0xe98bf4: r0 = BoxShadow()
    //     0xe98bf4: bl              #0x919648  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0xe98bf8: d0 = 1.000000
    //     0xe98bf8: fmov            d0, #1.00000000
    // 0xe98bfc: stur            x0, [fp, #-0x30]
    // 0xe98c00: ArrayStore: r0[0] = d0  ; List_8
    //     0xe98c00: stur            d0, [x0, #0x17]
    // 0xe98c04: r1 = Instance_BlurStyle
    //     0xe98c04: add             x1, PP, #0x16, lsl #12  ; [pp+0x16ce0] Obj!BlurStyle@12c7fe1
    //     0xe98c08: ldr             x1, [x1, #0xce0]
    // 0xe98c0c: StoreField: r0->field_1f = r1
    //     0xe98c0c: stur            w1, [x0, #0x1f]
    // 0xe98c10: ldur            x1, [fp, #-0x28]
    // 0xe98c14: StoreField: r0->field_7 = r1
    //     0xe98c14: stur            w1, [x0, #7]
    // 0xe98c18: r1 = Instance_Offset
    //     0xe98c18: ldr             x1, [PP, #0x2c98]  ; [pp+0x2c98] Obj!Offset@12a7a91
    // 0xe98c1c: StoreField: r0->field_b = r1
    //     0xe98c1c: stur            w1, [x0, #0xb]
    // 0xe98c20: d0 = 12.000000
    //     0xe98c20: fmov            d0, #12.00000000
    // 0xe98c24: StoreField: r0->field_f = d0
    //     0xe98c24: stur            d0, [x0, #0xf]
    // 0xe98c28: r1 = Null
    //     0xe98c28: mov             x1, NULL
    // 0xe98c2c: r2 = 2
    //     0xe98c2c: mov             x2, #2
    // 0xe98c30: r0 = AllocateArray()
    //     0xe98c30: bl              #0x13df928  ; AllocateArrayStub
    // 0xe98c34: mov             x2, x0
    // 0xe98c38: ldur            x0, [fp, #-0x30]
    // 0xe98c3c: stur            x2, [fp, #-0x28]
    // 0xe98c40: StoreField: r2->field_f = r0
    //     0xe98c40: stur            w0, [x2, #0xf]
    // 0xe98c44: r1 = <BoxShadow>
    //     0xe98c44: add             x1, PP, #0x16, lsl #12  ; [pp+0x16cf0] TypeArguments: <BoxShadow>
    //     0xe98c48: ldr             x1, [x1, #0xcf0]
    // 0xe98c4c: r0 = AllocateGrowableArray()
    //     0xe98c4c: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0xe98c50: mov             x1, x0
    // 0xe98c54: ldur            x0, [fp, #-0x28]
    // 0xe98c58: stur            x1, [fp, #-0x30]
    // 0xe98c5c: StoreField: r1->field_f = r0
    //     0xe98c5c: stur            w0, [x1, #0xf]
    // 0xe98c60: r0 = 2
    //     0xe98c60: mov             x0, #2
    // 0xe98c64: StoreField: r1->field_b = r0
    //     0xe98c64: stur            w0, [x1, #0xb]
    // 0xe98c68: r0 = BoxDecoration()
    //     0xe98c68: bl              #0x8a721c  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0xe98c6c: mov             x1, x0
    // 0xe98c70: ldur            x0, [fp, #-0x20]
    // 0xe98c74: stur            x1, [fp, #-0x28]
    // 0xe98c78: StoreField: r1->field_7 = r0
    //     0xe98c78: stur            w0, [x1, #7]
    // 0xe98c7c: r0 = Instance_BorderRadius
    //     0xe98c7c: add             x0, PP, #0x87, lsl #12  ; [pp+0x87dd8] Obj!BorderRadius@129e431
    //     0xe98c80: ldr             x0, [x0, #0xdd8]
    // 0xe98c84: StoreField: r1->field_13 = r0
    //     0xe98c84: stur            w0, [x1, #0x13]
    // 0xe98c88: ldur            x0, [fp, #-0x30]
    // 0xe98c8c: ArrayStore: r1[0] = r0  ; List_4
    //     0xe98c8c: stur            w0, [x1, #0x17]
    // 0xe98c90: r0 = Instance_BoxShape
    //     0xe98c90: add             x0, PP, #0x17, lsl #12  ; [pp+0x171f8] Obj!BoxShape@12c4921
    //     0xe98c94: ldr             x0, [x0, #0x1f8]
    // 0xe98c98: StoreField: r1->field_23 = r0
    //     0xe98c98: stur            w0, [x1, #0x23]
    // 0xe98c9c: r0 = Container()
    //     0xe98c9c: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0xe98ca0: stur            x0, [fp, #-0x20]
    // 0xe98ca4: r16 = 99.000000
    //     0xe98ca4: add             x16, PP, #0x87, lsl #12  ; [pp+0x87de0] 99
    //     0xe98ca8: ldr             x16, [x16, #0xde0]
    // 0xe98cac: r30 = 14.000000
    //     0xe98cac: add             lr, PP, #0x16, lsl #12  ; [pp+0x16d30] 14
    //     0xe98cb0: ldr             lr, [lr, #0xd30]
    // 0xe98cb4: stp             lr, x16, [SP, #8]
    // 0xe98cb8: ldur            x16, [fp, #-0x28]
    // 0xe98cbc: str             x16, [SP]
    // 0xe98cc0: mov             x1, x0
    // 0xe98cc4: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0xe98cc4: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1ccb8] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0xe98cc8: ldr             x4, [x4, #0xcb8]
    // 0xe98ccc: r0 = Container()
    //     0xe98ccc: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0xe98cd0: r1 = <StackParentData>
    //     0xe98cd0: add             x1, PP, #0x15, lsl #12  ; [pp+0x15858] TypeArguments: <StackParentData>
    //     0xe98cd4: ldr             x1, [x1, #0x858]
    // 0xe98cd8: r0 = Positioned()
    //     0xe98cd8: bl              #0x8a54a4  ; AllocatePositionedStub -> Positioned (size=0x2c)
    // 0xe98cdc: mov             x1, x0
    // 0xe98ce0: r0 = 2.000000
    //     0xe98ce0: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1b1e0] 2
    //     0xe98ce4: ldr             x0, [x0, #0x1e0]
    // 0xe98ce8: stur            x1, [fp, #-0x28]
    // 0xe98cec: StoreField: r1->field_1f = r0
    //     0xe98cec: stur            w0, [x1, #0x1f]
    // 0xe98cf0: ldur            x0, [fp, #-0x20]
    // 0xe98cf4: StoreField: r1->field_b = r0
    //     0xe98cf4: stur            w0, [x1, #0xb]
    // 0xe98cf8: r0 = LoadStaticField(0x1674)
    //     0xe98cf8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe98cfc: ldr             x0, [x0, #0x2ce8]
    // 0xe98d00: r2 = LoadStaticField(0x1680)
    //     0xe98d00: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0xe98d04: ldr             x2, [x2, #0x2d00]
    // 0xe98d08: tbnz            w2, #4, #0xe98d2c
    // 0xe98d0c: d1 = 0.361111
    //     0xe98d0c: add             x17, PP, #0x22, lsl #12  ; [pp+0x224f0] IMM: double(0.3611111111111111) from 0x3fd71c71c71c71c7
    //     0xe98d10: ldr             d1, [x17, #0x4f0]
    // 0xe98d14: d0 = 0.800000
    //     0xe98d14: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0xe98d18: ldr             d0, [x17, #0xa58]
    // 0xe98d1c: LoadField: d2 = r0->field_7
    //     0xe98d1c: ldur            d2, [x0, #7]
    // 0xe98d20: fmul            d3, d2, d0
    // 0xe98d24: fmul            d0, d3, d1
    // 0xe98d28: b               #0xe98d40
    // 0xe98d2c: d1 = 0.361111
    //     0xe98d2c: add             x17, PP, #0x22, lsl #12  ; [pp+0x224f0] IMM: double(0.3611111111111111) from 0x3fd71c71c71c71c7
    //     0xe98d30: ldr             d1, [x17, #0x4f0]
    // 0xe98d34: LoadField: d0 = r0->field_7
    //     0xe98d34: ldur            d0, [x0, #7]
    // 0xe98d38: fmul            d2, d0, d1
    // 0xe98d3c: mov             v0.16b, v2.16b
    // 0xe98d40: ldur            x2, [fp, #-0x18]
    // 0xe98d44: ldur            x0, [fp, #-0x10]
    // 0xe98d48: r3 = inline_Allocate_Double()
    //     0xe98d48: ldp             x3, x4, [THR, #0x60]  ; THR::top
    //     0xe98d4c: add             x3, x3, #0x10
    //     0xe98d50: cmp             x4, x3
    //     0xe98d54: b.ls            #0xe98ed4
    //     0xe98d58: str             x3, [THR, #0x60]  ; THR::top
    //     0xe98d5c: sub             x3, x3, #0xf
    //     0xe98d60: mov             x4, #0xe19c
    //     0xe98d64: movk            x4, #3, lsl #16
    //     0xe98d68: stur            x4, [x3, #-1]
    // 0xe98d6c: dmb             ishst
    // 0xe98d70: StoreField: r3->field_7 = d0
    //     0xe98d70: stur            d0, [x3, #7]
    // 0xe98d74: stur            x3, [fp, #-0x20]
    // 0xe98d78: r0 = Image()
    //     0xe98d78: bl              #0x91abc8  ; AllocateImageStub -> Image (size=0x58)
    // 0xe98d7c: stur            x0, [fp, #-0x30]
    // 0xe98d80: ldur            x16, [fp, #-0x20]
    // 0xe98d84: r30 = Instance_BoxFit
    //     0xe98d84: add             lr, PP, #0x1e, lsl #12  ; [pp+0x1e928] Obj!BoxFit@12c4901
    //     0xe98d88: ldr             lr, [lr, #0x928]
    // 0xe98d8c: stp             lr, x16, [SP]
    // 0xe98d90: mov             x1, x0
    // 0xe98d94: r2 = "assets/images/mascot/maskot_greeting.png"
    //     0xe98d94: add             x2, PP, #0x87, lsl #12  ; [pp+0x87de8] "assets/images/mascot/maskot_greeting.png"
    //     0xe98d98: ldr             x2, [x2, #0xde8]
    // 0xe98d9c: r4 = const [0, 0x4, 0x2, 0x2, fit, 0x3, width, 0x2, null]
    //     0xe98d9c: add             x4, PP, #0x87, lsl #12  ; [pp+0x87df0] List(9) [0, 0x4, 0x2, 0x2, "fit", 0x3, "width", 0x2, Null]
    //     0xe98da0: ldr             x4, [x4, #0xdf0]
    // 0xe98da4: r0 = Image.asset()
    //     0xe98da4: bl              #0x919980  ; [package:flutter/src/widgets/image.dart] Image::Image.asset
    // 0xe98da8: r1 = Null
    //     0xe98da8: mov             x1, NULL
    // 0xe98dac: r2 = 4
    //     0xe98dac: mov             x2, #4
    // 0xe98db0: r0 = AllocateArray()
    //     0xe98db0: bl              #0x13df928  ; AllocateArrayStub
    // 0xe98db4: mov             x2, x0
    // 0xe98db8: ldur            x0, [fp, #-0x28]
    // 0xe98dbc: stur            x2, [fp, #-0x20]
    // 0xe98dc0: StoreField: r2->field_f = r0
    //     0xe98dc0: stur            w0, [x2, #0xf]
    // 0xe98dc4: ldur            x0, [fp, #-0x30]
    // 0xe98dc8: StoreField: r2->field_13 = r0
    //     0xe98dc8: stur            w0, [x2, #0x13]
    // 0xe98dcc: r1 = <Widget>
    //     0xe98dcc: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0xe98dd0: r0 = AllocateGrowableArray()
    //     0xe98dd0: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0xe98dd4: mov             x1, x0
    // 0xe98dd8: ldur            x0, [fp, #-0x20]
    // 0xe98ddc: stur            x1, [fp, #-0x28]
    // 0xe98de0: StoreField: r1->field_f = r0
    //     0xe98de0: stur            w0, [x1, #0xf]
    // 0xe98de4: r0 = 4
    //     0xe98de4: mov             x0, #4
    // 0xe98de8: StoreField: r1->field_b = r0
    //     0xe98de8: stur            w0, [x1, #0xb]
    // 0xe98dec: r0 = Stack()
    //     0xe98dec: bl              #0xd1a854  ; AllocateStackStub -> Stack (size=0x20)
    // 0xe98df0: mov             x1, x0
    // 0xe98df4: r0 = Instance_Alignment
    //     0xe98df4: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1b8] Obj!Alignment@129e6f1
    //     0xe98df8: ldr             x0, [x0, #0x1b8]
    // 0xe98dfc: stur            x1, [fp, #-0x20]
    // 0xe98e00: StoreField: r1->field_f = r0
    //     0xe98e00: stur            w0, [x1, #0xf]
    // 0xe98e04: r0 = Instance_StackFit
    //     0xe98e04: add             x0, PP, #0x15, lsl #12  ; [pp+0x158e0] Obj!StackFit@12c4221
    //     0xe98e08: ldr             x0, [x0, #0x8e0]
    // 0xe98e0c: ArrayStore: r1[0] = r0  ; List_4
    //     0xe98e0c: stur            w0, [x1, #0x17]
    // 0xe98e10: r0 = Instance_Clip
    //     0xe98e10: add             x0, PP, #0x15, lsl #12  ; [pp+0x15850] Obj!Clip@12c80e1
    //     0xe98e14: ldr             x0, [x0, #0x850]
    // 0xe98e18: StoreField: r1->field_1b = r0
    //     0xe98e18: stur            w0, [x1, #0x1b]
    // 0xe98e1c: ldur            x0, [fp, #-0x28]
    // 0xe98e20: StoreField: r1->field_b = r0
    //     0xe98e20: stur            w0, [x1, #0xb]
    // 0xe98e24: r0 = AnimatedPadding()
    //     0xe98e24: bl              #0xde3a90  ; AllocateAnimatedPaddingStub -> AnimatedPadding (size=0x20)
    // 0xe98e28: mov             x1, x0
    // 0xe98e2c: ldur            x0, [fp, #-0x10]
    // 0xe98e30: stur            x1, [fp, #-0x28]
    // 0xe98e34: ArrayStore: r1[0] = r0  ; List_4
    //     0xe98e34: stur            w0, [x1, #0x17]
    // 0xe98e38: ldur            x0, [fp, #-0x20]
    // 0xe98e3c: StoreField: r1->field_1b = r0
    //     0xe98e3c: stur            w0, [x1, #0x1b]
    // 0xe98e40: r0 = Instance_Cubic
    //     0xe98e40: add             x0, PP, #0x7b, lsl #12  ; [pp+0x7b760] Obj!Cubic@129f6c1
    //     0xe98e44: ldr             x0, [x0, #0x760]
    // 0xe98e48: StoreField: r1->field_b = r0
    //     0xe98e48: stur            w0, [x1, #0xb]
    // 0xe98e4c: r2 = Instance_Duration
    //     0xe98e4c: add             x2, PP, #0x7b, lsl #12  ; [pp+0x7b768] Obj!Duration@12c8bd1
    //     0xe98e50: ldr             x2, [x2, #0x768]
    // 0xe98e54: StoreField: r1->field_f = r2
    //     0xe98e54: stur            w2, [x1, #0xf]
    // 0xe98e58: r0 = AnimatedAlign()
    //     0xe98e58: bl              #0xe98f1c  ; AllocateAnimatedAlignStub -> AnimatedAlign (size=0x28)
    // 0xe98e5c: mov             x1, x0
    // 0xe98e60: ldur            x0, [fp, #-0x18]
    // 0xe98e64: stur            x1, [fp, #-0x10]
    // 0xe98e68: ArrayStore: r1[0] = r0  ; List_4
    //     0xe98e68: stur            w0, [x1, #0x17]
    // 0xe98e6c: ldur            x0, [fp, #-0x28]
    // 0xe98e70: StoreField: r1->field_1b = r0
    //     0xe98e70: stur            w0, [x1, #0x1b]
    // 0xe98e74: r0 = Instance_Cubic
    //     0xe98e74: add             x0, PP, #0x7b, lsl #12  ; [pp+0x7b760] Obj!Cubic@129f6c1
    //     0xe98e78: ldr             x0, [x0, #0x760]
    // 0xe98e7c: StoreField: r1->field_b = r0
    //     0xe98e7c: stur            w0, [x1, #0xb]
    // 0xe98e80: r0 = Instance_Duration
    //     0xe98e80: add             x0, PP, #0x7b, lsl #12  ; [pp+0x7b768] Obj!Duration@12c8bd1
    //     0xe98e84: ldr             x0, [x0, #0x768]
    // 0xe98e88: StoreField: r1->field_f = r0
    //     0xe98e88: stur            w0, [x1, #0xf]
    // 0xe98e8c: r0 = GestureDetector()
    //     0xe98e8c: bl              #0x918e18  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0xe98e90: ldur            x2, [fp, #-8]
    // 0xe98e94: r1 = Function '_onTap@1979106386':.
    //     0xe98e94: add             x1, PP, #0x87, lsl #12  ; [pp+0x87df8] AnonymousClosure: (0xe98f28), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _MascotSwitcherState::_onTap (0xe98f60)
    //     0xe98e98: ldr             x1, [x1, #0xdf8]
    // 0xe98e9c: stur            x0, [fp, #-8]
    // 0xe98ea0: r0 = AllocateClosure()
    //     0xe98ea0: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe98ea4: ldur            x16, [fp, #-0x10]
    // 0xe98ea8: stp             x16, x0, [SP]
    // 0xe98eac: ldur            x1, [fp, #-8]
    // 0xe98eb0: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0xe98eb0: add             x4, PP, #0x16, lsl #12  ; [pp+0x16e90] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0xe98eb4: ldr             x4, [x4, #0xe90]
    // 0xe98eb8: r0 = GestureDetector()
    //     0xe98eb8: bl              #0x9182dc  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0xe98ebc: ldur            x0, [fp, #-8]
    // 0xe98ec0: LeaveFrame
    //     0xe98ec0: mov             SP, fp
    //     0xe98ec4: ldp             fp, lr, [SP], #0x10
    // 0xe98ec8: ret
    //     0xe98ec8: ret             
    // 0xe98ecc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe98ecc: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe98ed0: b               #0xe98ae8
    // 0xe98ed4: SaveReg d0
    //     0xe98ed4: str             q0, [SP, #-0x10]!
    // 0xe98ed8: stp             x1, x2, [SP, #-0x10]!
    // 0xe98edc: SaveReg r0
    //     0xe98edc: str             x0, [SP, #-8]!
    // 0xe98ee0: r0 = AllocateDouble()
    //     0xe98ee0: bl              #0x13df878  ; AllocateDoubleStub
    // 0xe98ee4: mov             x3, x0
    // 0xe98ee8: RestoreReg r0
    //     0xe98ee8: ldr             x0, [SP], #8
    // 0xe98eec: ldp             x1, x2, [SP], #0x10
    // 0xe98ef0: RestoreReg d0
    //     0xe98ef0: ldr             q0, [SP], #0x10
    // 0xe98ef4: b               #0xe98d70
  }
  [closure] void _onTap(dynamic) {
    // ** addr: 0xe98f28, size: 0x38
    // 0xe98f28: EnterFrame
    //     0xe98f28: stp             fp, lr, [SP, #-0x10]!
    //     0xe98f2c: mov             fp, SP
    // 0xe98f30: ldr             x0, [fp, #0x10]
    // 0xe98f34: ArrayLoad: r1 = r0[0]  ; List_4
    //     0xe98f34: ldur            w1, [x0, #0x17]
    // 0xe98f38: DecompressPointer r1
    //     0xe98f38: add             x1, x1, HEAP, lsl #32
    // 0xe98f3c: CheckStackOverflow
    //     0xe98f3c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe98f40: cmp             SP, x16
    //     0xe98f44: b.ls            #0xe98f58
    // 0xe98f48: r0 = _onTap()
    //     0xe98f48: bl              #0xe98f60  ; [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _MascotSwitcherState::_onTap
    // 0xe98f4c: LeaveFrame
    //     0xe98f4c: mov             SP, fp
    //     0xe98f50: ldp             fp, lr, [SP], #0x10
    // 0xe98f54: ret
    //     0xe98f54: ret             
    // 0xe98f58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe98f58: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe98f5c: b               #0xe98f48
  }
  _ _onTap(/* No info */) {
    // ** addr: 0xe98f60, size: 0x10c
    // 0xe98f60: EnterFrame
    //     0xe98f60: stp             fp, lr, [SP, #-0x10]!
    //     0xe98f64: mov             fp, SP
    // 0xe98f68: AllocStack(0x10)
    //     0xe98f68: sub             SP, SP, #0x10
    // 0xe98f6c: SetupParameters(_MascotSwitcherState this /* r1 => r1, fp-0x8 */)
    //     0xe98f6c: stur            x1, [fp, #-8]
    // 0xe98f70: CheckStackOverflow
    //     0xe98f70: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe98f74: cmp             SP, x16
    //     0xe98f78: b.ls            #0xe99064
    // 0xe98f7c: r1 = 1
    //     0xe98f7c: mov             x1, #1
    // 0xe98f80: r0 = AllocateContext()
    //     0xe98f80: bl              #0x13de838  ; AllocateContextStub
    // 0xe98f84: mov             x2, x0
    // 0xe98f88: ldur            x0, [fp, #-8]
    // 0xe98f8c: stur            x2, [fp, #-0x10]
    // 0xe98f90: StoreField: r2->field_f = r0
    //     0xe98f90: stur            w0, [x2, #0xf]
    // 0xe98f94: r1 = true
    //     0xe98f94: add             x1, NULL, #0x20  ; true
    // 0xe98f98: StoreField: r0->field_27 = r1
    //     0xe98f98: stur            w1, [x0, #0x27]
    // 0xe98f9c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0xe98f9c: ldur            x1, [x0, #0x17]
    // 0xe98fa0: add             x3, x1, #1
    // 0xe98fa4: ArrayStore: r0[0] = r3  ; List_8
    //     0xe98fa4: stur            x3, [x0, #0x17]
    // 0xe98fa8: LoadField: r1 = r0->field_2f
    //     0xe98fa8: ldur            w1, [x0, #0x2f]
    // 0xe98fac: DecompressPointer r1
    //     0xe98fac: add             x1, x1, HEAP, lsl #32
    // 0xe98fb0: cmp             w1, NULL
    // 0xe98fb4: b.eq            #0xe98fc0
    // 0xe98fb8: r0 = cancel()
    //     0xe98fb8: bl              #0x7f29dc  ; [dart:isolate] _Timer::cancel
    // 0xe98fbc: ldur            x0, [fp, #-8]
    // 0xe98fc0: ldur            x2, [fp, #-0x10]
    // 0xe98fc4: r1 = Function '<anonymous closure>':.
    //     0xe98fc4: add             x1, PP, #0x87, lsl #12  ; [pp+0x87e00] AnonymousClosure: (0xe99810), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _MascotSwitcherState::_onTap (0xe98f60)
    //     0xe98fc8: ldr             x1, [x1, #0xe00]
    // 0xe98fcc: r0 = AllocateClosure()
    //     0xe98fcc: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe98fd0: mov             x3, x0
    // 0xe98fd4: r1 = Null
    //     0xe98fd4: mov             x1, NULL
    // 0xe98fd8: r2 = Instance_Duration
    //     0xe98fd8: add             x2, PP, #0x87, lsl #12  ; [pp+0x87e08] Obj!Duration@12c8bc1
    //     0xe98fdc: ldr             x2, [x2, #0xe08]
    // 0xe98fe0: r0 = Timer()
    //     0xe98fe0: bl              #0x7eed74  ; [dart:async] Timer::Timer
    // 0xe98fe4: ldur            x2, [fp, #-8]
    // 0xe98fe8: StoreField: r2->field_2f = r0
    //     0xe98fe8: stur            w0, [x2, #0x2f]
    //     0xe98fec: ldurb           w16, [x2, #-1]
    //     0xe98ff0: ldurb           w17, [x0, #-1]
    //     0xe98ff4: and             x16, x17, x16, lsr #2
    //     0xe98ff8: tst             x16, HEAP, lsr #32
    //     0xe98ffc: b.eq            #0xe99004
    //     0xe99000: bl              #0x13ddfb4  ; WriteBarrierWrappersStub
    // 0xe99004: ArrayLoad: r0 = r2[0]  ; List_8
    //     0xe99004: ldur            x0, [x2, #0x17]
    // 0xe99008: LoadField: r1 = r2->field_1f
    //     0xe99008: ldur            x1, [x2, #0x1f]
    // 0xe9900c: cmp             x0, x1
    // 0xe99010: b.lt            #0xe99054
    // 0xe99014: ArrayStore: r2[0] = rZR  ; List_8
    //     0xe99014: stur            xzr, [x2, #0x17]
    // 0xe99018: r1 = Null
    //     0xe99018: mov             x1, NULL
    // 0xe9901c: r0 = Random()
    //     0xe9901c: bl              #0x912154  ; [dart:math] Random::Random
    // 0xe99020: mov             x1, x0
    // 0xe99024: r2 = 3
    //     0xe99024: mov             x2, #3
    // 0xe99028: r0 = nextInt()
    //     0xe99028: bl              #0x82f250  ; [dart:math] _Random::nextInt
    // 0xe9902c: add             x1, x0, #2
    // 0xe99030: ldur            x0, [fp, #-8]
    // 0xe99034: StoreField: r0->field_1f = r1
    //     0xe99034: stur            x1, [x0, #0x1f]
    // 0xe99038: LoadField: r1 = r0->field_2f
    //     0xe99038: ldur            w1, [x0, #0x2f]
    // 0xe9903c: DecompressPointer r1
    //     0xe9903c: add             x1, x1, HEAP, lsl #32
    // 0xe99040: cmp             w1, NULL
    // 0xe99044: b.eq            #0xe9904c
    // 0xe99048: r0 = cancel()
    //     0xe99048: bl              #0x7f29dc  ; [dart:isolate] _Timer::cancel
    // 0xe9904c: ldur            x1, [fp, #-8]
    // 0xe99050: r0 = _randomize()
    //     0xe99050: bl              #0xe9906c  ; [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _MascotSwitcherState::_randomize
    // 0xe99054: r0 = Null
    //     0xe99054: mov             x0, NULL
    // 0xe99058: LeaveFrame
    //     0xe99058: mov             SP, fp
    //     0xe9905c: ldp             fp, lr, [SP], #0x10
    // 0xe99060: ret
    //     0xe99060: ret             
    // 0xe99064: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe99064: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe99068: b               #0xe98f7c
  }
  _ _randomize(/* No info */) async {
    // ** addr: 0xe9906c, size: 0x4ac
    // 0xe9906c: EnterFrame
    //     0xe9906c: stp             fp, lr, [SP, #-0x10]!
    //     0xe99070: mov             fp, SP
    // 0xe99074: AllocStack(0x40)
    //     0xe99074: sub             SP, SP, #0x40
    // 0xe99078: SetupParameters(_MascotSwitcherState this /* r1 => r1, fp-0x10 */)
    //     0xe99078: stur            NULL, [fp, #-8]
    //     0xe9907c: stur            x1, [fp, #-0x10]
    // 0xe99080: CheckStackOverflow
    //     0xe99080: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe99084: cmp             SP, x16
    //     0xe99088: b.ls            #0xe994a8
    // 0xe9908c: r1 = 2
    //     0xe9908c: mov             x1, #2
    // 0xe99090: r0 = AllocateContext()
    //     0xe99090: bl              #0x13de838  ; AllocateContextStub
    // 0xe99094: mov             x2, x0
    // 0xe99098: ldur            x1, [fp, #-0x10]
    // 0xe9909c: stur            x2, [fp, #-0x18]
    // 0xe990a0: StoreField: r2->field_f = r1
    //     0xe990a0: stur            w1, [x2, #0xf]
    // 0xe990a4: InitAsync() -> Future<void?>
    //     0xe990a4: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0xe990a8: bl              #0x7f5e44  ; InitAsyncStub
    // 0xe990ac: ldur            x0, [fp, #-0x10]
    // 0xe990b0: LoadField: r2 = r0->field_13
    //     0xe990b0: ldur            w2, [x0, #0x13]
    // 0xe990b4: DecompressPointer r2
    //     0xe990b4: add             x2, x2, HEAP, lsl #32
    // 0xe990b8: r1 = const [Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment']
    //     0xe990b8: add             x1, PP, #0x87, lsl #12  ; [pp+0x87e10] List<Alignment>(5)
    //     0xe990bc: ldr             x1, [x1, #0xe10]
    // 0xe990c0: r4 = const [0, 0x2, 0, 0x2, null]
    //     0xe990c0: ldr             x4, [PP, #0xc0]  ; [pp+0xc0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0xe990c4: r0 = indexOf()
    //     0xe990c4: bl              #0x9f1368  ; [dart:collection] ListBase::indexOf
    // 0xe990c8: r1 = <int>
    //     0xe990c8: ldr             x1, [PP, #0x50]  ; [pp+0x50] TypeArguments: <int>
    // 0xe990cc: r2 = 5
    //     0xe990cc: mov             x2, #5
    // 0xe990d0: stur            x0, [fp, #-0x20]
    // 0xe990d4: r0 = _GrowableList()
    //     0xe990d4: bl              #0x7d9940  ; [dart:core] _GrowableList::_GrowableList
    // 0xe990d8: stur            x0, [fp, #-0x28]
    // 0xe990dc: LoadField: r1 = r0->field_b
    //     0xe990dc: ldur            w1, [x0, #0xb]
    // 0xe990e0: r2 = LoadInt32Instr(r1)
    //     0xe990e0: sbfx            x2, x1, #1, #0x1f
    // 0xe990e4: LoadField: r1 = r0->field_f
    //     0xe990e4: ldur            w1, [x0, #0xf]
    // 0xe990e8: DecompressPointer r1
    //     0xe990e8: add             x1, x1, HEAP, lsl #32
    // 0xe990ec: r3 = 0
    //     0xe990ec: mov             x3, #0
    // 0xe990f0: CheckStackOverflow
    //     0xe990f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe990f4: cmp             SP, x16
    //     0xe990f8: b.ls            #0xe994b0
    // 0xe990fc: cmp             x3, x2
    // 0xe99100: b.ge            #0xe9911c
    // 0xe99104: lsl             x4, x3, #1
    // 0xe99108: ArrayStore: r1[r3] = r4  ; Unknown_4
    //     0xe99108: add             x5, x1, x3, lsl #2
    //     0xe9910c: stur            w4, [x5, #0xf]
    // 0xe99110: add             x4, x3, #1
    // 0xe99114: mov             x3, x4
    // 0xe99118: b               #0xe990f0
    // 0xe9911c: ldur            x3, [fp, #-0x10]
    // 0xe99120: ldur            x4, [fp, #-0x18]
    // 0xe99124: mov             x1, x0
    // 0xe99128: ldur            x2, [fp, #-0x20]
    // 0xe9912c: r0 = remove()
    //     0xe9912c: bl              #0xa10a64  ; [dart:core] _GrowableList::remove
    // 0xe99130: r1 = Null
    //     0xe99130: mov             x1, NULL
    // 0xe99134: r0 = Random()
    //     0xe99134: bl              #0x912154  ; [dart:math] Random::Random
    // 0xe99138: mov             x1, x0
    // 0xe9913c: ldur            x0, [fp, #-0x28]
    // 0xe99140: LoadField: r2 = r0->field_b
    //     0xe99140: ldur            w2, [x0, #0xb]
    // 0xe99144: r3 = LoadInt32Instr(r2)
    //     0xe99144: sbfx            x3, x2, #1, #0x1f
    // 0xe99148: mov             x2, x3
    // 0xe9914c: r0 = nextInt()
    //     0xe9914c: bl              #0x82f250  ; [dart:math] _Random::nextInt
    // 0xe99150: mov             x3, x0
    // 0xe99154: ldur            x2, [fp, #-0x28]
    // 0xe99158: LoadField: r0 = r2->field_b
    //     0xe99158: ldur            w0, [x2, #0xb]
    // 0xe9915c: r1 = LoadInt32Instr(r0)
    //     0xe9915c: sbfx            x1, x0, #1, #0x1f
    // 0xe99160: mov             x0, x1
    // 0xe99164: mov             x1, x3
    // 0xe99168: cmp             x1, x0
    // 0xe9916c: b.hs            #0xe994b8
    // 0xe99170: LoadField: r0 = r2->field_f
    //     0xe99170: ldur            w0, [x2, #0xf]
    // 0xe99174: DecompressPointer r0
    //     0xe99174: add             x0, x0, HEAP, lsl #32
    // 0xe99178: ArrayLoad: r4 = r0[r3]  ; Unknown_4
    //     0xe99178: add             x16, x0, x3, lsl #2
    //     0xe9917c: ldur            w4, [x16, #0xf]
    // 0xe99180: DecompressPointer r4
    //     0xe99180: add             x4, x4, HEAP, lsl #32
    // 0xe99184: mov             x0, x4
    // 0xe99188: ldur            x3, [fp, #-0x18]
    // 0xe9918c: stur            x4, [fp, #-0x20]
    // 0xe99190: StoreField: r3->field_13 = r0
    //     0xe99190: stur            w0, [x3, #0x13]
    //     0xe99194: tbz             w0, #0, #0xe991b0
    //     0xe99198: ldurb           w16, [x3, #-1]
    //     0xe9919c: ldurb           w17, [x0, #-1]
    //     0xe991a0: and             x16, x17, x16, lsr #2
    //     0xe991a4: tst             x16, HEAP, lsr #32
    //     0xe991a8: b.eq            #0xe991b0
    //     0xe991ac: bl              #0x13ddfd4  ; WriteBarrierWrappersStub
    // 0xe991b0: mov             x2, x3
    // 0xe991b4: r1 = Function '<anonymous closure>':.
    //     0xe991b4: add             x1, PP, #0x87, lsl #12  ; [pp+0x87e18] AnonymousClosure: (0xe99598), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _MascotSwitcherState::_randomize (0xe9906c)
    //     0xe991b8: ldr             x1, [x1, #0xe18]
    // 0xe991bc: r0 = AllocateClosure()
    //     0xe991bc: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe991c0: ldur            x1, [fp, #-0x10]
    // 0xe991c4: mov             x2, x0
    // 0xe991c8: r0 = setState()
    //     0xe991c8: bl              #0x82938c  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0xe991cc: r0 = LoadStaticField(0x1810)
    //     0xe991cc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe991d0: ldr             x0, [x0, #0x3020]
    // 0xe991d4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe991d8: cmp             w0, w16
    // 0xe991dc: b.ne            #0xe991ec
    // 0xe991e0: r2 = mascotAlignmentNotifier
    //     0xe991e0: add             x2, PP, #0x87, lsl #12  ; [pp+0x87d10] Field <::.mascotAlignmentNotifier>: static late final (offset: 0x1810)
    //     0xe991e4: ldr             x2, [x2, #0xd10]
    // 0xe991e8: r0 = InitLateFinalStaticField()
    //     0xe991e8: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe991ec: mov             x2, x0
    // 0xe991f0: ldur            x0, [fp, #-0x20]
    // 0xe991f4: r3 = LoadInt32Instr(r0)
    //     0xe991f4: sbfx            x3, x0, #1, #0x1f
    //     0xe991f8: tbz             w0, #0, #0xe99200
    //     0xe991fc: ldur            x3, [x0, #7]
    // 0xe99200: mov             x1, x3
    // 0xe99204: r0 = 5
    //     0xe99204: mov             x0, #5
    // 0xe99208: cmp             x1, x0
    // 0xe9920c: b.hs            #0xe994bc
    // 0xe99210: r0 = const [Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment']
    //     0xe99210: add             x0, PP, #0x87, lsl #12  ; [pp+0x87e10] List<Alignment>(5)
    //     0xe99214: ldr             x0, [x0, #0xe10]
    // 0xe99218: ArrayLoad: r1 = r0[r3]  ; Unknown_4
    //     0xe99218: add             x16, x0, x3, lsl #2
    //     0xe9921c: ldur            w1, [x16, #0xf]
    // 0xe99220: DecompressPointer r1
    //     0xe99220: add             x1, x1, HEAP, lsl #32
    // 0xe99224: mov             x16, x1
    // 0xe99228: mov             x1, x2
    // 0xe9922c: mov             x2, x16
    // 0xe99230: r0 = value=()
    //     0xe99230: bl              #0xb68ce8  ; [package:flutter/src/foundation/change_notifier.dart] ValueNotifier::value=
    // 0xe99234: r0 = LoadStaticField(0x1814)
    //     0xe99234: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe99238: ldr             x0, [x0, #0x3028]
    // 0xe9923c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe99240: cmp             w0, w16
    // 0xe99244: b.ne            #0xe99254
    // 0xe99248: r2 = waveOffset1Notifier
    //     0xe99248: add             x2, PP, #0x7b, lsl #12  ; [pp+0x7b778] Field <::.waveOffset1Notifier>: static late final (offset: 0x1814)
    //     0xe9924c: ldr             x2, [x2, #0x778]
    // 0xe99250: r0 = InitLateFinalStaticField()
    //     0xe99250: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe99254: r1 = Null
    //     0xe99254: mov             x1, NULL
    // 0xe99258: stur            x0, [fp, #-0x20]
    // 0xe9925c: r0 = Random()
    //     0xe9925c: bl              #0x912154  ; [dart:math] Random::Random
    // 0xe99260: mov             x1, x0
    // 0xe99264: r0 = nextDouble()
    //     0xe99264: bl              #0xd2486c  ; [dart:math] _Random::nextDouble
    // 0xe99268: mov             v1.16b, v0.16b
    // 0xe9926c: d0 = 24.000000
    //     0xe9926c: fmov            d0, #24.00000000
    // 0xe99270: fmul            d2, d1, d0
    // 0xe99274: r2 = inline_Allocate_Double()
    //     0xe99274: ldp             x2, x0, [THR, #0x60]  ; THR::top
    //     0xe99278: add             x2, x2, #0x10
    //     0xe9927c: cmp             x0, x2
    //     0xe99280: b.ls            #0xe994c0
    //     0xe99284: str             x2, [THR, #0x60]  ; THR::top
    //     0xe99288: sub             x2, x2, #0xf
    //     0xe9928c: mov             x0, #0xe19c
    //     0xe99290: movk            x0, #3, lsl #16
    //     0xe99294: stur            x0, [x2, #-1]
    // 0xe99298: dmb             ishst
    // 0xe9929c: StoreField: r2->field_7 = d2
    //     0xe9929c: stur            d2, [x2, #7]
    // 0xe992a0: ldur            x1, [fp, #-0x20]
    // 0xe992a4: r0 = value=()
    //     0xe992a4: bl              #0xb68ce8  ; [package:flutter/src/foundation/change_notifier.dart] ValueNotifier::value=
    // 0xe992a8: r0 = LoadStaticField(0x1818)
    //     0xe992a8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe992ac: ldr             x0, [x0, #0x3030]
    // 0xe992b0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe992b4: cmp             w0, w16
    // 0xe992b8: b.ne            #0xe992c8
    // 0xe992bc: r2 = waveOffset2Notifier
    //     0xe992bc: add             x2, PP, #0x7b, lsl #12  ; [pp+0x7b750] Field <::.waveOffset2Notifier>: static late final (offset: 0x1818)
    //     0xe992c0: ldr             x2, [x2, #0x750]
    // 0xe992c4: r0 = InitLateFinalStaticField()
    //     0xe992c4: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe992c8: r1 = Null
    //     0xe992c8: mov             x1, NULL
    // 0xe992cc: stur            x0, [fp, #-0x20]
    // 0xe992d0: r0 = Random()
    //     0xe992d0: bl              #0x912154  ; [dart:math] Random::Random
    // 0xe992d4: mov             x1, x0
    // 0xe992d8: r0 = nextDouble()
    //     0xe992d8: bl              #0xd2486c  ; [dart:math] _Random::nextDouble
    // 0xe992dc: mov             v1.16b, v0.16b
    // 0xe992e0: d0 = 24.000000
    //     0xe992e0: fmov            d0, #24.00000000
    // 0xe992e4: fmul            d2, d1, d0
    // 0xe992e8: r2 = inline_Allocate_Double()
    //     0xe992e8: ldp             x2, x0, [THR, #0x60]  ; THR::top
    //     0xe992ec: add             x2, x2, #0x10
    //     0xe992f0: cmp             x0, x2
    //     0xe992f4: b.ls            #0xe994d4
    //     0xe992f8: str             x2, [THR, #0x60]  ; THR::top
    //     0xe992fc: sub             x2, x2, #0xf
    //     0xe99300: mov             x0, #0xe19c
    //     0xe99304: movk            x0, #3, lsl #16
    //     0xe99308: stur            x0, [x2, #-1]
    // 0xe9930c: dmb             ishst
    // 0xe99310: StoreField: r2->field_7 = d2
    //     0xe99310: stur            d2, [x2, #7]
    // 0xe99314: ldur            x1, [fp, #-0x20]
    // 0xe99318: r0 = value=()
    //     0xe99318: bl              #0xb68ce8  ; [package:flutter/src/foundation/change_notifier.dart] ValueNotifier::value=
    // 0xe9931c: r0 = LoadStaticField(0x181c)
    //     0xe9931c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe99320: ldr             x0, [x0, #0x3038]
    // 0xe99324: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe99328: cmp             w0, w16
    // 0xe9932c: b.ne            #0xe9933c
    // 0xe99330: r2 = waveBottom1Notifier
    //     0xe99330: add             x2, PP, #0x7b, lsl #12  ; [pp+0x7b730] Field <::.waveBottom1Notifier>: static late final (offset: 0x181c)
    //     0xe99334: ldr             x2, [x2, #0x730]
    // 0xe99338: r0 = InitLateFinalStaticField()
    //     0xe99338: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe9933c: r1 = Null
    //     0xe9933c: mov             x1, NULL
    // 0xe99340: stur            x0, [fp, #-0x20]
    // 0xe99344: r0 = Random()
    //     0xe99344: bl              #0x912154  ; [dart:math] Random::Random
    // 0xe99348: mov             x1, x0
    // 0xe9934c: r0 = nextDouble()
    //     0xe9934c: bl              #0xd2486c  ; [dart:math] _Random::nextDouble
    // 0xe99350: mov             v1.16b, v0.16b
    // 0xe99354: d0 = 8.000000
    //     0xe99354: fmov            d0, #8.00000000
    // 0xe99358: fmul            d2, d1, d0
    // 0xe9935c: d1 = 28.000000
    //     0xe9935c: fmov            d1, #28.00000000
    // 0xe99360: fadd            d3, d2, d1
    // 0xe99364: r2 = inline_Allocate_Double()
    //     0xe99364: ldp             x2, x0, [THR, #0x60]  ; THR::top
    //     0xe99368: add             x2, x2, #0x10
    //     0xe9936c: cmp             x0, x2
    //     0xe99370: b.ls            #0xe994e8
    //     0xe99374: str             x2, [THR, #0x60]  ; THR::top
    //     0xe99378: sub             x2, x2, #0xf
    //     0xe9937c: mov             x0, #0xe19c
    //     0xe99380: movk            x0, #3, lsl #16
    //     0xe99384: stur            x0, [x2, #-1]
    // 0xe99388: dmb             ishst
    // 0xe9938c: StoreField: r2->field_7 = d3
    //     0xe9938c: stur            d3, [x2, #7]
    // 0xe99390: ldur            x1, [fp, #-0x20]
    // 0xe99394: r0 = value=()
    //     0xe99394: bl              #0xb68ce8  ; [package:flutter/src/foundation/change_notifier.dart] ValueNotifier::value=
    // 0xe99398: r0 = LoadStaticField(0x1820)
    //     0xe99398: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xe9939c: ldr             x0, [x0, #0x3040]
    // 0xe993a0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xe993a4: cmp             w0, w16
    // 0xe993a8: b.ne            #0xe993b8
    // 0xe993ac: r2 = waveBottom2Notifier
    //     0xe993ac: add             x2, PP, #0x7b, lsl #12  ; [pp+0x7b740] Field <::.waveBottom2Notifier>: static late final (offset: 0x1820)
    //     0xe993b0: ldr             x2, [x2, #0x740]
    // 0xe993b4: r0 = InitLateFinalStaticField()
    //     0xe993b4: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xe993b8: r1 = Null
    //     0xe993b8: mov             x1, NULL
    // 0xe993bc: stur            x0, [fp, #-0x20]
    // 0xe993c0: r0 = Random()
    //     0xe993c0: bl              #0x912154  ; [dart:math] Random::Random
    // 0xe993c4: mov             x1, x0
    // 0xe993c8: r0 = nextDouble()
    //     0xe993c8: bl              #0xd2486c  ; [dart:math] _Random::nextDouble
    // 0xe993cc: mov             v1.16b, v0.16b
    // 0xe993d0: d0 = 8.000000
    //     0xe993d0: fmov            d0, #8.00000000
    // 0xe993d4: fmul            d2, d1, d0
    // 0xe993d8: d0 = 28.000000
    //     0xe993d8: fmov            d0, #28.00000000
    // 0xe993dc: fadd            d1, d2, d0
    // 0xe993e0: r2 = inline_Allocate_Double()
    //     0xe993e0: ldp             x2, x0, [THR, #0x60]  ; THR::top
    //     0xe993e4: add             x2, x2, #0x10
    //     0xe993e8: cmp             x0, x2
    //     0xe993ec: b.ls            #0xe99504
    //     0xe993f0: str             x2, [THR, #0x60]  ; THR::top
    //     0xe993f4: sub             x2, x2, #0xf
    //     0xe993f8: mov             x0, #0xe19c
    //     0xe993fc: movk            x0, #3, lsl #16
    //     0xe99400: stur            x0, [x2, #-1]
    // 0xe99404: dmb             ishst
    // 0xe99408: StoreField: r2->field_7 = d1
    //     0xe99408: stur            d1, [x2, #7]
    // 0xe9940c: ldur            x1, [fp, #-0x20]
    // 0xe99410: r0 = value=()
    //     0xe99410: bl              #0xb68ce8  ; [package:flutter/src/foundation/change_notifier.dart] ValueNotifier::value=
    // 0xe99414: ldur            x0, [fp, #-0x10]
    // 0xe99418: LoadField: r3 = r0->field_2b
    //     0xe99418: ldur            w3, [x0, #0x2b]
    // 0xe9941c: DecompressPointer r3
    //     0xe9941c: add             x3, x3, HEAP, lsl #32
    // 0xe99420: ldur            x2, [fp, #-0x18]
    // 0xe99424: stur            x3, [fp, #-0x20]
    // 0xe99428: r1 = Function '<anonymous closure>':.
    //     0xe99428: add             x1, PP, #0x87, lsl #12  ; [pp+0x87e20] AnonymousClosure: (0xe99518), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _MascotSwitcherState::_randomize (0xe9906c)
    //     0xe9942c: ldr             x1, [x1, #0xe20]
    // 0xe99430: r0 = AllocateClosure()
    //     0xe99430: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe99434: r16 = <void?>
    //     0xe99434: ldr             x16, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    // 0xe99438: ldur            lr, [fp, #-0x20]
    // 0xe9943c: stp             lr, x16, [SP, #8]
    // 0xe99440: str             x0, [SP]
    // 0xe99444: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0xe99444: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0xe99448: r0 = then()
    //     0xe99448: bl              #0x1293070  ; [dart:async] _Future::then
    // 0xe9944c: r1 = Function '<anonymous closure>':.
    //     0xe9944c: add             x1, PP, #0x87, lsl #12  ; [pp+0x87e28] Function: [dart:ui] Shader::Shader._ (0x13cf838)
    //     0xe99450: ldr             x1, [x1, #0xe28]
    // 0xe99454: r2 = Null
    //     0xe99454: mov             x2, NULL
    // 0xe99458: stur            x0, [fp, #-0x20]
    // 0xe9945c: r0 = AllocateClosure()
    //     0xe9945c: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xe99460: ldur            x1, [fp, #-0x20]
    // 0xe99464: mov             x2, x0
    // 0xe99468: r4 = const [0, 0x2, 0, 0x2, null]
    //     0xe99468: ldr             x4, [PP, #0xc0]  ; [pp+0xc0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0xe9946c: r0 = catchError()
    //     0xe9946c: bl              #0x1291b1c  ; [dart:async] _Future::catchError
    // 0xe99470: mov             x2, x0
    // 0xe99474: ldur            x1, [fp, #-0x10]
    // 0xe99478: stur            x2, [fp, #-0x20]
    // 0xe9947c: StoreField: r1->field_2b = r0
    //     0xe9947c: stur            w0, [x1, #0x2b]
    //     0xe99480: ldurb           w16, [x1, #-1]
    //     0xe99484: ldurb           w17, [x0, #-1]
    //     0xe99488: and             x16, x17, x16, lsr #2
    //     0xe9948c: tst             x16, HEAP, lsr #32
    //     0xe99490: b.eq            #0xe99498
    //     0xe99494: bl              #0x13ddf94  ; WriteBarrierWrappersStub
    // 0xe99498: mov             x0, x2
    // 0xe9949c: r0 = Await()
    //     0xe9949c: bl              #0x7f5c00  ; AwaitStub
    // 0xe994a0: r0 = Null
    //     0xe994a0: mov             x0, NULL
    // 0xe994a4: r0 = ReturnAsyncNotFuture()
    //     0xe994a4: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0xe994a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe994a8: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe994ac: b               #0xe9908c
    // 0xe994b0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe994b0: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe994b4: b               #0xe990fc
    // 0xe994b8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0xe994b8: bl              #0x13dff64  ; RangeErrorSharedWithoutFPURegsStub
    // 0xe994bc: r0 = RangeErrorSharedWithoutFPURegs()
    //     0xe994bc: bl              #0x13dff64  ; RangeErrorSharedWithoutFPURegsStub
    // 0xe994c0: stp             q0, q2, [SP, #-0x20]!
    // 0xe994c4: r0 = AllocateDouble()
    //     0xe994c4: bl              #0x13df878  ; AllocateDoubleStub
    // 0xe994c8: mov             x2, x0
    // 0xe994cc: ldp             q0, q2, [SP], #0x20
    // 0xe994d0: b               #0xe9929c
    // 0xe994d4: SaveReg d2
    //     0xe994d4: str             q2, [SP, #-0x10]!
    // 0xe994d8: r0 = AllocateDouble()
    //     0xe994d8: bl              #0x13df878  ; AllocateDoubleStub
    // 0xe994dc: mov             x2, x0
    // 0xe994e0: RestoreReg d2
    //     0xe994e0: ldr             q2, [SP], #0x10
    // 0xe994e4: b               #0xe99310
    // 0xe994e8: stp             q1, q3, [SP, #-0x20]!
    // 0xe994ec: SaveReg d0
    //     0xe994ec: str             q0, [SP, #-0x10]!
    // 0xe994f0: r0 = AllocateDouble()
    //     0xe994f0: bl              #0x13df878  ; AllocateDoubleStub
    // 0xe994f4: mov             x2, x0
    // 0xe994f8: RestoreReg d0
    //     0xe994f8: ldr             q0, [SP], #0x10
    // 0xe994fc: ldp             q1, q3, [SP], #0x20
    // 0xe99500: b               #0xe9938c
    // 0xe99504: SaveReg d1
    //     0xe99504: str             q1, [SP, #-0x10]!
    // 0xe99508: r0 = AllocateDouble()
    //     0xe99508: bl              #0x13df878  ; AllocateDoubleStub
    // 0xe9950c: mov             x2, x0
    // 0xe99510: RestoreReg d1
    //     0xe99510: ldr             q1, [SP], #0x10
    // 0xe99514: b               #0xe99408
  }
  [closure] Future<void> <anonymous closure>(dynamic, void) {
    // ** addr: 0xe99518, size: 0x80
    // 0xe99518: EnterFrame
    //     0xe99518: stp             fp, lr, [SP, #-0x10]!
    //     0xe9951c: mov             fp, SP
    // 0xe99520: r2 = const [centerRight, topRight, topLeft, center, centerLeft]
    //     0xe99520: add             x2, PP, #0x87, lsl #12  ; [pp+0x87e30] List<String>(5)
    //     0xe99524: ldr             x2, [x2, #0xe30]
    // 0xe99528: ldr             x0, [fp, #0x18]
    // 0xe9952c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0xe9952c: ldur            w1, [x0, #0x17]
    // 0xe99530: DecompressPointer r1
    //     0xe99530: add             x1, x1, HEAP, lsl #32
    // 0xe99534: CheckStackOverflow
    //     0xe99534: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xe99538: cmp             SP, x16
    //     0xe9953c: b.ls            #0xe9958c
    // 0xe99540: LoadField: r0 = r1->field_13
    //     0xe99540: ldur            w0, [x1, #0x13]
    // 0xe99544: DecompressPointer r0
    //     0xe99544: add             x0, x0, HEAP, lsl #32
    // 0xe99548: r3 = LoadInt32Instr(r0)
    //     0xe99548: sbfx            x3, x0, #1, #0x1f
    //     0xe9954c: tbz             w0, #0, #0xe99554
    //     0xe99550: ldur            x3, [x0, #7]
    // 0xe99554: mov             x1, x3
    // 0xe99558: r0 = 5
    //     0xe99558: mov             x0, #5
    // 0xe9955c: cmp             x1, x0
    // 0xe99560: b.hs            #0xe99594
    // 0xe99564: ArrayLoad: r0 = r2[r3]  ; Unknown_4
    //     0xe99564: add             x16, x2, x3, lsl #2
    //     0xe99568: ldur            w0, [x16, #0xf]
    // 0xe9956c: DecompressPointer r0
    //     0xe9956c: add             x0, x0, HEAP, lsl #32
    // 0xe99570: mov             x2, x0
    // 0xe99574: r1 = "mascot_alignment"
    //     0xe99574: add             x1, PP, #0x87, lsl #12  ; [pp+0x87e38] "mascot_alignment"
    //     0xe99578: ldr             x1, [x1, #0xe38]
    // 0xe9957c: r0 = saveData()
    //     0xe9957c: bl              #0x920b74  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::saveData
    // 0xe99580: LeaveFrame
    //     0xe99580: mov             SP, fp
    //     0xe99584: ldp             fp, lr, [SP], #0x10
    // 0xe99588: ret
    //     0xe99588: ret             
    // 0xe9958c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xe9958c: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xe99590: b               #0xe99540
    // 0xe99594: r0 = RangeErrorSharedWithoutFPURegs()
    //     0xe99594: bl              #0x13dff64  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0xe99598, size: 0x88
    // 0xe99598: r2 = const [Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment']
    //     0xe99598: add             x2, PP, #0x87, lsl #12  ; [pp+0x87e10] List<Alignment>(5)
    //     0xe9959c: ldr             x2, [x2, #0xe10]
    // 0xe995a0: ldr             x3, [SP]
    // 0xe995a4: ArrayLoad: r4 = r3[0]  ; List_4
    //     0xe995a4: ldur            w4, [x3, #0x17]
    // 0xe995a8: DecompressPointer r4
    //     0xe995a8: add             x4, x4, HEAP, lsl #32
    // 0xe995ac: LoadField: r3 = r4->field_f
    //     0xe995ac: ldur            w3, [x4, #0xf]
    // 0xe995b0: DecompressPointer r3
    //     0xe995b0: add             x3, x3, HEAP, lsl #32
    // 0xe995b4: LoadField: r5 = r4->field_13
    //     0xe995b4: ldur            w5, [x4, #0x13]
    // 0xe995b8: DecompressPointer r5
    //     0xe995b8: add             x5, x5, HEAP, lsl #32
    // 0xe995bc: r4 = LoadInt32Instr(r5)
    //     0xe995bc: sbfx            x4, x5, #1, #0x1f
    //     0xe995c0: tbz             w5, #0, #0xe995c8
    //     0xe995c4: ldur            x4, [x5, #7]
    // 0xe995c8: mov             x1, x4
    // 0xe995cc: r0 = 5
    //     0xe995cc: mov             x0, #5
    // 0xe995d0: cmp             x1, x0
    // 0xe995d4: b.hs            #0xe99614
    // 0xe995d8: ArrayLoad: r1 = r2[r4]  ; Unknown_4
    //     0xe995d8: add             x16, x2, x4, lsl #2
    //     0xe995dc: ldur            w1, [x16, #0xf]
    // 0xe995e0: DecompressPointer r1
    //     0xe995e0: add             x1, x1, HEAP, lsl #32
    // 0xe995e4: mov             x0, x1
    // 0xe995e8: StoreField: r3->field_13 = r0
    //     0xe995e8: stur            w0, [x3, #0x13]
    //     0xe995ec: ldurb           w16, [x3, #-1]
    //     0xe995f0: ldurb           w17, [x0, #-1]
    //     0xe995f4: and             x16, x17, x16, lsr #2
    //     0xe995f8: tst             x16, HEAP, lsr #32
    //     0xe995fc: b.eq            #0xe9960c
    //     0xe99600: str             lr, [SP, #-8]!
    //     0xe99604: bl              #0x13ddfd4  ; WriteBarrierWrappersStub
    //     0xe99608: ldr             lr, [SP], #8
    // 0xe9960c: mov             x0, x1
    // 0xe99610: ret
    //     0xe99610: ret             
    // 0xe99614: EnterFrame
    //     0xe99614: stp             fp, lr, [SP, #-0x10]!
    //     0xe99618: mov             fp, SP
    // 0xe9961c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0xe9961c: bl              #0x13dff64  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0xe99810, size: 0x20
    // 0xe99810: ldr             x1, [SP]
    // 0xe99814: ArrayLoad: r2 = r1[0]  ; List_4
    //     0xe99814: ldur            w2, [x1, #0x17]
    // 0xe99818: DecompressPointer r2
    //     0xe99818: add             x2, x2, HEAP, lsl #32
    // 0xe9981c: LoadField: r1 = r2->field_f
    //     0xe9981c: ldur            w1, [x2, #0xf]
    // 0xe99820: DecompressPointer r1
    //     0xe99820: add             x1, x1, HEAP, lsl #32
    // 0xe99824: ArrayStore: r1[0] = rZR  ; List_8
    //     0xe99824: stur            xzr, [x1, #0x17]
    // 0xe99828: r0 = 0
    //     0xe99828: mov             x0, #0
    // 0xe9982c: ret
    //     0xe9982c: ret             
  }
  _ initState(/* No info */) {
    // ** addr: 0xf954f4, size: 0x30
    // 0xf954f4: EnterFrame
    //     0xf954f4: stp             fp, lr, [SP, #-0x10]!
    //     0xf954f8: mov             fp, SP
    // 0xf954fc: CheckStackOverflow
    //     0xf954fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xf95500: cmp             SP, x16
    //     0xf95504: b.ls            #0xf9551c
    // 0xf95508: r0 = _load()
    //     0xf95508: bl              #0xf95524  ; [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _MascotSwitcherState::_load
    // 0xf9550c: r0 = Null
    //     0xf9550c: mov             x0, NULL
    // 0xf95510: LeaveFrame
    //     0xf95510: mov             SP, fp
    //     0xf95514: ldp             fp, lr, [SP], #0x10
    // 0xf95518: ret
    //     0xf95518: ret             
    // 0xf9551c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xf9551c: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xf95520: b               #0xf95508
  }
  _ _load(/* No info */) async {
    // ** addr: 0xf95524, size: 0x1b0
    // 0xf95524: EnterFrame
    //     0xf95524: stp             fp, lr, [SP, #-0x10]!
    //     0xf95528: mov             fp, SP
    // 0xf9552c: AllocStack(0x28)
    //     0xf9552c: sub             SP, SP, #0x28
    // 0xf95530: SetupParameters(_MascotSwitcherState this /* r1 => r1, fp-0x10 */)
    //     0xf95530: stur            NULL, [fp, #-8]
    //     0xf95534: stur            x1, [fp, #-0x10]
    // 0xf95538: CheckStackOverflow
    //     0xf95538: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xf9553c: cmp             SP, x16
    //     0xf95540: b.ls            #0xf956c8
    // 0xf95544: r1 = 2
    //     0xf95544: mov             x1, #2
    // 0xf95548: r0 = AllocateContext()
    //     0xf95548: bl              #0x13de838  ; AllocateContextStub
    // 0xf9554c: mov             x2, x0
    // 0xf95550: ldur            x1, [fp, #-0x10]
    // 0xf95554: stur            x2, [fp, #-0x18]
    // 0xf95558: StoreField: r2->field_f = r1
    //     0xf95558: stur            w1, [x2, #0xf]
    // 0xf9555c: InitAsync() -> Future<void?>
    //     0xf9555c: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0xf95560: bl              #0x7f5e44  ; InitAsyncStub
    // 0xf95564: r1 = "mascot_alignment"
    //     0xf95564: add             x1, PP, #0x87, lsl #12  ; [pp+0x87e38] "mascot_alignment"
    //     0xf95568: ldr             x1, [x1, #0xe38]
    // 0xf9556c: r0 = getData()
    //     0xf9556c: bl              #0xd52ef0  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::getData
    // 0xf95570: mov             x1, x0
    // 0xf95574: stur            x1, [fp, #-0x20]
    // 0xf95578: r0 = Await()
    //     0xf95578: bl              #0x7f5c00  ; AwaitStub
    // 0xf9557c: mov             x3, x0
    // 0xf95580: r2 = Null
    //     0xf95580: mov             x2, NULL
    // 0xf95584: r1 = Null
    //     0xf95584: mov             x1, NULL
    // 0xf95588: stur            x3, [fp, #-0x20]
    // 0xf9558c: r4 = 60
    //     0xf9558c: mov             x4, #0x3c
    // 0xf95590: branchIfSmi(r0, 0xf9559c)
    //     0xf95590: tbz             w0, #0, #0xf9559c
    // 0xf95594: r4 = LoadClassIdInstr(r0)
    //     0xf95594: ldur            x4, [x0, #-1]
    //     0xf95598: ubfx            x4, x4, #0xc, #0x14
    // 0xf9559c: sub             x4, x4, #0x5e
    // 0xf955a0: cmp             x4, #1
    // 0xf955a4: b.ls            #0xf955b8
    // 0xf955a8: r8 = String?
    //     0xf955a8: ldr             x8, [PP, #0x100]  ; [pp+0x100] Type: String?
    // 0xf955ac: r3 = Null
    //     0xf955ac: add             x3, PP, #0x87, lsl #12  ; [pp+0x87e48] Null
    //     0xf955b0: ldr             x3, [x3, #0xe48]
    // 0xf955b4: r0 = String?()
    //     0xf955b4: bl              #0x7db310  ; IsType_String?_Stub
    // 0xf955b8: ldur            x2, [fp, #-0x20]
    // 0xf955bc: cmp             w2, NULL
    // 0xf955c0: b.eq            #0xf955d4
    // 0xf955c4: ldur            x0, [fp, #-0x10]
    // 0xf955c8: LoadField: r1 = r0->field_27
    //     0xf955c8: ldur            w1, [x0, #0x27]
    // 0xf955cc: DecompressPointer r1
    //     0xf955cc: add             x1, x1, HEAP, lsl #32
    // 0xf955d0: tbnz            w1, #4, #0xf955dc
    // 0xf955d4: r0 = Null
    //     0xf955d4: mov             x0, NULL
    // 0xf955d8: r0 = ReturnAsyncNotFuture()
    //     0xf955d8: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0xf955dc: ldur            x3, [fp, #-0x18]
    // 0xf955e0: r1 = const [centerRight, topRight, topLeft, center, centerLeft]
    //     0xf955e0: add             x1, PP, #0x87, lsl #12  ; [pp+0x87e30] List<String>(5)
    //     0xf955e4: ldr             x1, [x1, #0xe30]
    // 0xf955e8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0xf955e8: ldr             x4, [PP, #0xc0]  ; [pp+0xc0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0xf955ec: r0 = indexOf()
    //     0xf955ec: bl              #0x9f1368  ; [dart:collection] ListBase::indexOf
    // 0xf955f0: mov             x1, x0
    // 0xf955f4: ldur            x2, [fp, #-0x18]
    // 0xf955f8: StoreField: r2->field_13 = r0
    //     0xf955f8: stur            w0, [x2, #0x13]
    //     0xf955fc: tbz             w0, #0, #0xf95618
    //     0xf95600: ldurb           w16, [x2, #-1]
    //     0xf95604: ldurb           w17, [x0, #-1]
    //     0xf95608: and             x16, x17, x16, lsr #2
    //     0xf9560c: tst             x16, HEAP, lsr #32
    //     0xf95610: b.eq            #0xf95618
    //     0xf95614: bl              #0x13ddfb4  ; WriteBarrierWrappersStub
    // 0xf95618: r0 = LoadInt32Instr(r1)
    //     0xf95618: sbfx            x0, x1, #1, #0x1f
    //     0xf9561c: tbz             w1, #0, #0xf95624
    //     0xf95620: ldur            x0, [x1, #7]
    // 0xf95624: stur            x0, [fp, #-0x28]
    // 0xf95628: cmn             x0, #1
    // 0xf9562c: b.eq            #0xf956c0
    // 0xf95630: ldur            x3, [fp, #-0x10]
    // 0xf95634: LoadField: r1 = r3->field_f
    //     0xf95634: ldur            w1, [x3, #0xf]
    // 0xf95638: DecompressPointer r1
    //     0xf95638: add             x1, x1, HEAP, lsl #32
    // 0xf9563c: cmp             w1, NULL
    // 0xf95640: b.eq            #0xf956c0
    // 0xf95644: LoadField: r1 = r3->field_27
    //     0xf95644: ldur            w1, [x3, #0x27]
    // 0xf95648: DecompressPointer r1
    //     0xf95648: add             x1, x1, HEAP, lsl #32
    // 0xf9564c: tbz             w1, #4, #0xf956c0
    // 0xf95650: r1 = Function '<anonymous closure>':.
    //     0xf95650: add             x1, PP, #0x87, lsl #12  ; [pp+0x87e58] AnonymousClosure: (0xe99598), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _MascotSwitcherState::_randomize (0xe9906c)
    //     0xf95654: ldr             x1, [x1, #0xe58]
    // 0xf95658: r0 = AllocateClosure()
    //     0xf95658: bl              #0x13dec0c  ; AllocateClosureStub
    // 0xf9565c: ldur            x1, [fp, #-0x10]
    // 0xf95660: mov             x2, x0
    // 0xf95664: r0 = setState()
    //     0xf95664: bl              #0x82938c  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0xf95668: r0 = LoadStaticField(0x1810)
    //     0xf95668: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xf9566c: ldr             x0, [x0, #0x3020]
    // 0xf95670: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xf95674: cmp             w0, w16
    // 0xf95678: b.ne            #0xf95688
    // 0xf9567c: r2 = mascotAlignmentNotifier
    //     0xf9567c: add             x2, PP, #0x87, lsl #12  ; [pp+0x87d10] Field <::.mascotAlignmentNotifier>: static late final (offset: 0x1810)
    //     0xf95680: ldr             x2, [x2, #0xd10]
    // 0xf95684: r0 = InitLateFinalStaticField()
    //     0xf95684: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xf95688: ldur            x1, [fp, #-0x28]
    // 0xf9568c: mov             x2, x0
    // 0xf95690: r0 = 5
    //     0xf95690: mov             x0, #5
    // 0xf95694: cmp             x1, x0
    // 0xf95698: b.hs            #0xf956d0
    // 0xf9569c: ldur            x0, [fp, #-0x28]
    // 0xf956a0: r1 = const [Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment', Instance of 'Alignment']
    //     0xf956a0: add             x1, PP, #0x87, lsl #12  ; [pp+0x87e10] List<Alignment>(5)
    //     0xf956a4: ldr             x1, [x1, #0xe10]
    // 0xf956a8: ArrayLoad: r3 = r1[r0]  ; Unknown_4
    //     0xf956a8: add             x16, x1, x0, lsl #2
    //     0xf956ac: ldur            w3, [x16, #0xf]
    // 0xf956b0: DecompressPointer r3
    //     0xf956b0: add             x3, x3, HEAP, lsl #32
    // 0xf956b4: mov             x1, x2
    // 0xf956b8: mov             x2, x3
    // 0xf956bc: r0 = value=()
    //     0xf956bc: bl              #0xb68ce8  ; [package:flutter/src/foundation/change_notifier.dart] ValueNotifier::value=
    // 0xf956c0: r0 = Null
    //     0xf956c0: mov             x0, NULL
    // 0xf956c4: r0 = ReturnAsyncNotFuture()
    //     0xf956c4: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0xf956c8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xf956c8: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xf956cc: b               #0xf95544
    // 0xf956d0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0xf956d0: bl              #0x13dff64  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _MascotSwitcherState(/* No info */) {
    // ** addr: 0xfa7458, size: 0xd8
    // 0xfa7458: EnterFrame
    //     0xfa7458: stp             fp, lr, [SP, #-0x10]!
    //     0xfa745c: mov             fp, SP
    // 0xfa7460: AllocStack(0x10)
    //     0xfa7460: sub             SP, SP, #0x10
    // 0xfa7464: r2 = Instance_Alignment
    //     0xfa7464: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e8f8] Obj!Alignment@129e831
    //     0xfa7468: ldr             x2, [x2, #0x8f8]
    // 0xfa746c: r0 = false
    //     0xfa746c: add             x0, NULL, #0x30  ; false
    // 0xfa7470: mov             x3, x1
    // 0xfa7474: stur            x1, [fp, #-8]
    // 0xfa7478: CheckStackOverflow
    //     0xfa7478: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xfa747c: cmp             SP, x16
    //     0xfa7480: b.ls            #0xfa7528
    // 0xfa7484: StoreField: r3->field_13 = r2
    //     0xfa7484: stur            w2, [x3, #0x13]
    // 0xfa7488: ArrayStore: r3[0] = rZR  ; List_8
    //     0xfa7488: stur            xzr, [x3, #0x17]
    // 0xfa748c: StoreField: r3->field_27 = r0
    //     0xfa748c: stur            w0, [x3, #0x27]
    // 0xfa7490: r1 = Null
    //     0xfa7490: mov             x1, NULL
    // 0xfa7494: r0 = Random()
    //     0xfa7494: bl              #0x912154  ; [dart:math] Random::Random
    // 0xfa7498: mov             x1, x0
    // 0xfa749c: r2 = 3
    //     0xfa749c: mov             x2, #3
    // 0xfa74a0: r0 = nextInt()
    //     0xfa74a0: bl              #0x82f250  ; [dart:math] _Random::nextInt
    // 0xfa74a4: add             x1, x0, #2
    // 0xfa74a8: ldur            x0, [fp, #-8]
    // 0xfa74ac: StoreField: r0->field_1f = r1
    //     0xfa74ac: stur            x1, [x0, #0x1f]
    // 0xfa74b0: r1 = <void?>
    //     0xfa74b0: ldr             x1, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    // 0xfa74b4: r0 = _Future()
    //     0xfa74b4: bl              #0x7f5dd4  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0xfa74b8: stur            x0, [fp, #-0x10]
    // 0xfa74bc: StoreField: r0->field_b = rZR
    //     0xfa74bc: stur            xzr, [x0, #0xb]
    // 0xfa74c0: r0 = LoadStaticField(0x364)
    //     0xfa74c0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xfa74c4: ldr             x0, [x0, #0x6c8]
    // 0xfa74c8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xfa74cc: cmp             w0, w16
    // 0xfa74d0: b.ne            #0xfa74dc
    // 0xfa74d4: r2 = _current
    //     0xfa74d4: ldr             x2, [PP, #0x2c0]  ; [pp+0x2c0] Field <Zone._current@5048458>: static late (offset: 0x364)
    // 0xfa74d8: r0 = InitLateStaticField()
    //     0xfa74d8: bl              #0x13dda54  ; InitLateStaticFieldStub
    // 0xfa74dc: mov             x1, x0
    // 0xfa74e0: ldur            x0, [fp, #-0x10]
    // 0xfa74e4: StoreField: r0->field_13 = r1
    //     0xfa74e4: stur            w1, [x0, #0x13]
    // 0xfa74e8: mov             x1, x0
    // 0xfa74ec: r2 = Null
    //     0xfa74ec: mov             x2, NULL
    // 0xfa74f0: r0 = _asyncComplete()
    //     0xfa74f0: bl              #0x7eee44  ; [dart:async] _Future::_asyncComplete
    // 0xfa74f4: ldur            x0, [fp, #-0x10]
    // 0xfa74f8: ldur            x1, [fp, #-8]
    // 0xfa74fc: StoreField: r1->field_2b = r0
    //     0xfa74fc: stur            w0, [x1, #0x2b]
    //     0xfa7500: ldurb           w16, [x1, #-1]
    //     0xfa7504: ldurb           w17, [x0, #-1]
    //     0xfa7508: and             x16, x17, x16, lsr #2
    //     0xfa750c: tst             x16, HEAP, lsr #32
    //     0xfa7510: b.eq            #0xfa7518
    //     0xfa7514: bl              #0x13ddf94  ; WriteBarrierWrappersStub
    // 0xfa7518: r0 = Null
    //     0xfa7518: mov             x0, NULL
    // 0xfa751c: LeaveFrame
    //     0xfa751c: mov             SP, fp
    //     0xfa7520: ldp             fp, lr, [SP], #0x10
    // 0xfa7524: ret
    //     0xfa7524: ret             
    // 0xfa7528: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xfa7528: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xfa752c: b               #0xfa7484
  }
  _ dispose(/* No info */) {
    // ** addr: 0x10e7a8c, size: 0x44
    // 0x10e7a8c: EnterFrame
    //     0x10e7a8c: stp             fp, lr, [SP, #-0x10]!
    //     0x10e7a90: mov             fp, SP
    // 0x10e7a94: CheckStackOverflow
    //     0x10e7a94: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10e7a98: cmp             SP, x16
    //     0x10e7a9c: b.ls            #0x10e7ac8
    // 0x10e7aa0: LoadField: r0 = r1->field_2f
    //     0x10e7aa0: ldur            w0, [x1, #0x2f]
    // 0x10e7aa4: DecompressPointer r0
    //     0x10e7aa4: add             x0, x0, HEAP, lsl #32
    // 0x10e7aa8: cmp             w0, NULL
    // 0x10e7aac: b.eq            #0x10e7ab8
    // 0x10e7ab0: mov             x1, x0
    // 0x10e7ab4: r0 = cancel()
    //     0x10e7ab4: bl              #0x7f29dc  ; [dart:isolate] _Timer::cancel
    // 0x10e7ab8: r0 = Null
    //     0x10e7ab8: mov             x0, NULL
    // 0x10e7abc: LeaveFrame
    //     0x10e7abc: mov             SP, fp
    //     0x10e7ac0: ldp             fp, lr, [SP], #0x10
    // 0x10e7ac4: ret
    //     0x10e7ac4: ret             
    // 0x10e7ac8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10e7ac8: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10e7acc: b               #0x10e7aa0
  }
}

// class id: 5935, size: 0x14, field offset: 0xc
//   const constructor, 
class _StoryPage extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x10a9e70, size: 0x128
    // 0x10a9e70: EnterFrame
    //     0x10a9e70: stp             fp, lr, [SP, #-0x10]!
    //     0x10a9e74: mov             fp, SP
    // 0x10a9e78: AllocStack(0x18)
    //     0x10a9e78: sub             SP, SP, #0x18
    // 0x10a9e7c: SetupParameters(_StoryPage this /* r1 => r1, fp-0x10 */)
    //     0x10a9e7c: stur            x1, [fp, #-0x10]
    // 0x10a9e80: LoadField: r0 = r1->field_b
    //     0x10a9e80: ldur            w0, [x1, #0xb]
    // 0x10a9e84: DecompressPointer r0
    //     0x10a9e84: add             x0, x0, HEAP, lsl #32
    // 0x10a9e88: stur            x0, [fp, #-8]
    // 0x10a9e8c: r0 = Text()
    //     0x10a9e8c: bl              #0x8a70a4  ; AllocateTextStub -> Text (size=0x50)
    // 0x10a9e90: mov             x2, x0
    // 0x10a9e94: ldur            x0, [fp, #-8]
    // 0x10a9e98: stur            x2, [fp, #-0x18]
    // 0x10a9e9c: StoreField: r2->field_b = r0
    //     0x10a9e9c: stur            w0, [x2, #0xb]
    // 0x10a9ea0: r0 = Instance_TextStyle
    //     0x10a9ea0: add             x0, PP, #0xae, lsl #12  ; [pp+0xaeb98] Obj!TextStyle@12b1491
    //     0x10a9ea4: ldr             x0, [x0, #0xb98]
    // 0x10a9ea8: StoreField: r2->field_13 = r0
    //     0x10a9ea8: stur            w0, [x2, #0x13]
    // 0x10a9eac: ldur            x0, [fp, #-0x10]
    // 0x10a9eb0: LoadField: r3 = r0->field_f
    //     0x10a9eb0: ldur            w3, [x0, #0xf]
    // 0x10a9eb4: DecompressPointer r3
    //     0x10a9eb4: add             x3, x3, HEAP, lsl #32
    // 0x10a9eb8: stur            x3, [fp, #-8]
    // 0x10a9ebc: r1 = <FlexParentData>
    //     0x10a9ebc: add             x1, PP, #0x15, lsl #12  ; [pp+0x15878] TypeArguments: <FlexParentData>
    //     0x10a9ec0: ldr             x1, [x1, #0x878]
    // 0x10a9ec4: r0 = Expanded()
    //     0x10a9ec4: bl              #0x8a5b10  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x10a9ec8: mov             x3, x0
    // 0x10a9ecc: r0 = 1
    //     0x10a9ecc: mov             x0, #1
    // 0x10a9ed0: stur            x3, [fp, #-0x10]
    // 0x10a9ed4: StoreField: r3->field_13 = r0
    //     0x10a9ed4: stur            x0, [x3, #0x13]
    // 0x10a9ed8: r0 = Instance_FlexFit
    //     0x10a9ed8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15880] Obj!FlexFit@12c4641
    //     0x10a9edc: ldr             x0, [x0, #0x880]
    // 0x10a9ee0: StoreField: r3->field_1b = r0
    //     0x10a9ee0: stur            w0, [x3, #0x1b]
    // 0x10a9ee4: ldur            x0, [fp, #-8]
    // 0x10a9ee8: StoreField: r3->field_b = r0
    //     0x10a9ee8: stur            w0, [x3, #0xb]
    // 0x10a9eec: r1 = Null
    //     0x10a9eec: mov             x1, NULL
    // 0x10a9ef0: r2 = 6
    //     0x10a9ef0: mov             x2, #6
    // 0x10a9ef4: r0 = AllocateArray()
    //     0x10a9ef4: bl              #0x13df928  ; AllocateArrayStub
    // 0x10a9ef8: stur            x0, [fp, #-8]
    // 0x10a9efc: r16 = Instance_SizedBox
    //     0x10a9efc: add             x16, PP, #0xae, lsl #12  ; [pp+0xaeba0] Obj!SizedBox@12b74e1
    //     0x10a9f00: ldr             x16, [x16, #0xba0]
    // 0x10a9f04: StoreField: r0->field_f = r16
    //     0x10a9f04: stur            w16, [x0, #0xf]
    // 0x10a9f08: ldur            x1, [fp, #-0x18]
    // 0x10a9f0c: StoreField: r0->field_13 = r1
    //     0x10a9f0c: stur            w1, [x0, #0x13]
    // 0x10a9f10: ldur            x1, [fp, #-0x10]
    // 0x10a9f14: ArrayStore: r0[0] = r1  ; List_4
    //     0x10a9f14: stur            w1, [x0, #0x17]
    // 0x10a9f18: r1 = <Widget>
    //     0x10a9f18: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x10a9f1c: r0 = AllocateGrowableArray()
    //     0x10a9f1c: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x10a9f20: mov             x1, x0
    // 0x10a9f24: ldur            x0, [fp, #-8]
    // 0x10a9f28: stur            x1, [fp, #-0x10]
    // 0x10a9f2c: StoreField: r1->field_f = r0
    //     0x10a9f2c: stur            w0, [x1, #0xf]
    // 0x10a9f30: r0 = 6
    //     0x10a9f30: mov             x0, #6
    // 0x10a9f34: StoreField: r1->field_b = r0
    //     0x10a9f34: stur            w0, [x1, #0xb]
    // 0x10a9f38: r0 = Column()
    //     0x10a9f38: bl              #0x8a5b1c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x10a9f3c: r1 = Instance_Axis
    //     0x10a9f3c: ldr             x1, [PP, #0x49c0]  ; [pp+0x49c0] Obj!Axis@12c4a81
    // 0x10a9f40: StoreField: r0->field_f = r1
    //     0x10a9f40: stur            w1, [x0, #0xf]
    // 0x10a9f44: r1 = Instance_MainAxisAlignment
    //     0x10a9f44: add             x1, PP, #0x15, lsl #12  ; [pp+0x15820] Obj!MainAxisAlignment@12c4541
    //     0x10a9f48: ldr             x1, [x1, #0x820]
    // 0x10a9f4c: StoreField: r0->field_13 = r1
    //     0x10a9f4c: stur            w1, [x0, #0x13]
    // 0x10a9f50: r1 = Instance_MainAxisSize
    //     0x10a9f50: add             x1, PP, #0x15, lsl #12  ; [pp+0x15828] Obj!MainAxisSize@12c4621
    //     0x10a9f54: ldr             x1, [x1, #0x828]
    // 0x10a9f58: ArrayStore: r0[0] = r1  ; List_4
    //     0x10a9f58: stur            w1, [x0, #0x17]
    // 0x10a9f5c: r1 = Instance_CrossAxisAlignment
    //     0x10a9f5c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15888] Obj!CrossAxisAlignment@12c44a1
    //     0x10a9f60: ldr             x1, [x1, #0x888]
    // 0x10a9f64: StoreField: r0->field_1b = r1
    //     0x10a9f64: stur            w1, [x0, #0x1b]
    // 0x10a9f68: r1 = Instance_VerticalDirection
    //     0x10a9f68: add             x1, PP, #0x15, lsl #12  ; [pp+0x15838] Obj!VerticalDirection@12c4a21
    //     0x10a9f6c: ldr             x1, [x1, #0x838]
    // 0x10a9f70: StoreField: r0->field_23 = r1
    //     0x10a9f70: stur            w1, [x0, #0x23]
    // 0x10a9f74: r1 = Instance_Clip
    //     0x10a9f74: add             x1, PP, #0x15, lsl #12  ; [pp+0x15840] Obj!Clip@12c80c1
    //     0x10a9f78: ldr             x1, [x1, #0x840]
    // 0x10a9f7c: StoreField: r0->field_2b = r1
    //     0x10a9f7c: stur            w1, [x0, #0x2b]
    // 0x10a9f80: StoreField: r0->field_2f = rZR
    //     0x10a9f80: stur            xzr, [x0, #0x2f]
    // 0x10a9f84: ldur            x1, [fp, #-0x10]
    // 0x10a9f88: StoreField: r0->field_b = r1
    //     0x10a9f88: stur            w1, [x0, #0xb]
    // 0x10a9f8c: LeaveFrame
    //     0x10a9f8c: mov             SP, fp
    //     0x10a9f90: ldp             fp, lr, [SP], #0x10
    // 0x10a9f94: ret
    //     0x10a9f94: ret             
  }
}

// class id: 5936, size: 0x18, field offset: 0xc
//   const constructor, 
class _StoryProfile extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x10a9c98, size: 0x1d8
    // 0x10a9c98: EnterFrame
    //     0x10a9c98: stp             fp, lr, [SP, #-0x10]!
    //     0x10a9c9c: mov             fp, SP
    // 0x10a9ca0: AllocStack(0x38)
    //     0x10a9ca0: sub             SP, SP, #0x38
    // 0x10a9ca4: SetupParameters(_StoryProfile this /* r1 => r1, fp-0x10 */)
    //     0x10a9ca4: stur            x1, [fp, #-0x10]
    // 0x10a9ca8: CheckStackOverflow
    //     0x10a9ca8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10a9cac: cmp             SP, x16
    //     0x10a9cb0: b.ls            #0x10a9e68
    // 0x10a9cb4: LoadField: r2 = r1->field_13
    //     0x10a9cb4: ldur            w2, [x1, #0x13]
    // 0x10a9cb8: DecompressPointer r2
    //     0x10a9cb8: add             x2, x2, HEAP, lsl #32
    // 0x10a9cbc: stur            x2, [fp, #-8]
    // 0x10a9cc0: r0 = CachedNetworkImage()
    //     0x10a9cc0: bl              #0xe84778  ; AllocateCachedNetworkImageStub -> CachedNetworkImage (size=0x68)
    // 0x10a9cc4: stur            x0, [fp, #-0x18]
    // 0x10a9cc8: r16 = 190.000000
    //     0x10a9cc8: add             x16, PP, #0xa6, lsl #12  ; [pp+0xa6250] 190
    //     0x10a9ccc: ldr             x16, [x16, #0x250]
    // 0x10a9cd0: r30 = 190.000000
    //     0x10a9cd0: add             lr, PP, #0xa6, lsl #12  ; [pp+0xa6250] 190
    //     0x10a9cd4: ldr             lr, [lr, #0x250]
    // 0x10a9cd8: stp             lr, x16, [SP, #8]
    // 0x10a9cdc: r16 = Instance_BoxFit
    //     0x10a9cdc: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e928] Obj!BoxFit@12c4901
    //     0x10a9ce0: ldr             x16, [x16, #0x928]
    // 0x10a9ce4: str             x16, [SP]
    // 0x10a9ce8: mov             x1, x0
    // 0x10a9cec: ldur            x2, [fp, #-8]
    // 0x10a9cf0: r4 = const [0, 0x5, 0x3, 0x2, fit, 0x4, height, 0x3, width, 0x2, null]
    //     0x10a9cf0: add             x4, PP, #0x7b, lsl #12  ; [pp+0x7b1c8] List(11) [0, 0x5, 0x3, 0x2, "fit", 0x4, "height", 0x3, "width", 0x2, Null]
    //     0x10a9cf4: ldr             x4, [x4, #0x1c8]
    // 0x10a9cf8: r0 = CachedNetworkImage()
    //     0x10a9cf8: bl              #0xe84270  ; [package:cached_network_image/src/cached_image_widget.dart] CachedNetworkImage::CachedNetworkImage
    // 0x10a9cfc: r0 = ClipOval()
    //     0x10a9cfc: bl              #0xe84264  ; AllocateClipOvalStub -> ClipOval (size=0x18)
    // 0x10a9d00: mov             x1, x0
    // 0x10a9d04: r0 = Instance_Clip
    //     0x10a9d04: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e6f0] Obj!Clip@12c8101
    //     0x10a9d08: ldr             x0, [x0, #0x6f0]
    // 0x10a9d0c: stur            x1, [fp, #-0x20]
    // 0x10a9d10: StoreField: r1->field_13 = r0
    //     0x10a9d10: stur            w0, [x1, #0x13]
    // 0x10a9d14: ldur            x0, [fp, #-0x18]
    // 0x10a9d18: StoreField: r1->field_b = r0
    //     0x10a9d18: stur            w0, [x1, #0xb]
    // 0x10a9d1c: ldur            x0, [fp, #-0x10]
    // 0x10a9d20: LoadField: r2 = r0->field_b
    //     0x10a9d20: ldur            w2, [x0, #0xb]
    // 0x10a9d24: DecompressPointer r2
    //     0x10a9d24: add             x2, x2, HEAP, lsl #32
    // 0x10a9d28: stur            x2, [fp, #-8]
    // 0x10a9d2c: r0 = Text()
    //     0x10a9d2c: bl              #0x8a70a4  ; AllocateTextStub -> Text (size=0x50)
    // 0x10a9d30: mov             x1, x0
    // 0x10a9d34: ldur            x0, [fp, #-8]
    // 0x10a9d38: stur            x1, [fp, #-0x18]
    // 0x10a9d3c: StoreField: r1->field_b = r0
    //     0x10a9d3c: stur            w0, [x1, #0xb]
    // 0x10a9d40: r0 = Instance_TextStyle
    //     0x10a9d40: add             x0, PP, #0xa6, lsl #12  ; [pp+0xa6258] Obj!TextStyle@12b16c1
    //     0x10a9d44: ldr             x0, [x0, #0x258]
    // 0x10a9d48: StoreField: r1->field_13 = r0
    //     0x10a9d48: stur            w0, [x1, #0x13]
    // 0x10a9d4c: r0 = Instance_TextAlign
    //     0x10a9d4c: ldr             x0, [PP, #0x4c68]  ; [pp+0x4c68] Obj!TextAlign@12c7561
    // 0x10a9d50: StoreField: r1->field_1b = r0
    //     0x10a9d50: stur            w0, [x1, #0x1b]
    // 0x10a9d54: ldur            x0, [fp, #-0x10]
    // 0x10a9d58: LoadField: r2 = r0->field_f
    //     0x10a9d58: ldur            w2, [x0, #0xf]
    // 0x10a9d5c: DecompressPointer r2
    //     0x10a9d5c: add             x2, x2, HEAP, lsl #32
    // 0x10a9d60: stur            x2, [fp, #-8]
    // 0x10a9d64: r0 = Text()
    //     0x10a9d64: bl              #0x8a70a4  ; AllocateTextStub -> Text (size=0x50)
    // 0x10a9d68: mov             x3, x0
    // 0x10a9d6c: ldur            x0, [fp, #-8]
    // 0x10a9d70: stur            x3, [fp, #-0x10]
    // 0x10a9d74: StoreField: r3->field_b = r0
    //     0x10a9d74: stur            w0, [x3, #0xb]
    // 0x10a9d78: r0 = Instance_TextStyle
    //     0x10a9d78: add             x0, PP, #0xa6, lsl #12  ; [pp+0xa6260] Obj!TextStyle@12b1651
    //     0x10a9d7c: ldr             x0, [x0, #0x260]
    // 0x10a9d80: StoreField: r3->field_13 = r0
    //     0x10a9d80: stur            w0, [x3, #0x13]
    // 0x10a9d84: r1 = Null
    //     0x10a9d84: mov             x1, NULL
    // 0x10a9d88: r2 = 10
    //     0x10a9d88: mov             x2, #0xa
    // 0x10a9d8c: r0 = AllocateArray()
    //     0x10a9d8c: bl              #0x13df928  ; AllocateArrayStub
    // 0x10a9d90: mov             x2, x0
    // 0x10a9d94: ldur            x0, [fp, #-0x20]
    // 0x10a9d98: stur            x2, [fp, #-8]
    // 0x10a9d9c: StoreField: r2->field_f = r0
    //     0x10a9d9c: stur            w0, [x2, #0xf]
    // 0x10a9da0: r16 = Instance_SizedBox
    //     0x10a9da0: add             x16, PP, #0xa6, lsl #12  ; [pp+0xa6268] Obj!SizedBox@12b74c1
    //     0x10a9da4: ldr             x16, [x16, #0x268]
    // 0x10a9da8: StoreField: r2->field_13 = r16
    //     0x10a9da8: stur            w16, [x2, #0x13]
    // 0x10a9dac: ldur            x0, [fp, #-0x18]
    // 0x10a9db0: ArrayStore: r2[0] = r0  ; List_4
    //     0x10a9db0: stur            w0, [x2, #0x17]
    // 0x10a9db4: r16 = Instance_SizedBox
    //     0x10a9db4: add             x16, PP, #0x21, lsl #12  ; [pp+0x21f78] Obj!SizedBox@12b71a1
    //     0x10a9db8: ldr             x16, [x16, #0xf78]
    // 0x10a9dbc: StoreField: r2->field_1b = r16
    //     0x10a9dbc: stur            w16, [x2, #0x1b]
    // 0x10a9dc0: ldur            x0, [fp, #-0x10]
    // 0x10a9dc4: StoreField: r2->field_1f = r0
    //     0x10a9dc4: stur            w0, [x2, #0x1f]
    // 0x10a9dc8: r1 = <Widget>
    //     0x10a9dc8: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x10a9dcc: r0 = AllocateGrowableArray()
    //     0x10a9dcc: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x10a9dd0: mov             x1, x0
    // 0x10a9dd4: ldur            x0, [fp, #-8]
    // 0x10a9dd8: stur            x1, [fp, #-0x10]
    // 0x10a9ddc: StoreField: r1->field_f = r0
    //     0x10a9ddc: stur            w0, [x1, #0xf]
    // 0x10a9de0: r0 = 10
    //     0x10a9de0: mov             x0, #0xa
    // 0x10a9de4: StoreField: r1->field_b = r0
    //     0x10a9de4: stur            w0, [x1, #0xb]
    // 0x10a9de8: r0 = Column()
    //     0x10a9de8: bl              #0x8a5b1c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x10a9dec: mov             x1, x0
    // 0x10a9df0: r0 = Instance_Axis
    //     0x10a9df0: ldr             x0, [PP, #0x49c0]  ; [pp+0x49c0] Obj!Axis@12c4a81
    // 0x10a9df4: stur            x1, [fp, #-8]
    // 0x10a9df8: StoreField: r1->field_f = r0
    //     0x10a9df8: stur            w0, [x1, #0xf]
    // 0x10a9dfc: r0 = Instance_MainAxisAlignment
    //     0x10a9dfc: add             x0, PP, #0x18, lsl #12  ; [pp+0x180f0] Obj!MainAxisAlignment@12c4581
    //     0x10a9e00: ldr             x0, [x0, #0xf0]
    // 0x10a9e04: StoreField: r1->field_13 = r0
    //     0x10a9e04: stur            w0, [x1, #0x13]
    // 0x10a9e08: r0 = Instance_MainAxisSize
    //     0x10a9e08: add             x0, PP, #0x15, lsl #12  ; [pp+0x15828] Obj!MainAxisSize@12c4621
    //     0x10a9e0c: ldr             x0, [x0, #0x828]
    // 0x10a9e10: ArrayStore: r1[0] = r0  ; List_4
    //     0x10a9e10: stur            w0, [x1, #0x17]
    // 0x10a9e14: r0 = Instance_CrossAxisAlignment
    //     0x10a9e14: add             x0, PP, #0x15, lsl #12  ; [pp+0x15888] Obj!CrossAxisAlignment@12c44a1
    //     0x10a9e18: ldr             x0, [x0, #0x888]
    // 0x10a9e1c: StoreField: r1->field_1b = r0
    //     0x10a9e1c: stur            w0, [x1, #0x1b]
    // 0x10a9e20: r0 = Instance_VerticalDirection
    //     0x10a9e20: add             x0, PP, #0x15, lsl #12  ; [pp+0x15838] Obj!VerticalDirection@12c4a21
    //     0x10a9e24: ldr             x0, [x0, #0x838]
    // 0x10a9e28: StoreField: r1->field_23 = r0
    //     0x10a9e28: stur            w0, [x1, #0x23]
    // 0x10a9e2c: r0 = Instance_Clip
    //     0x10a9e2c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15840] Obj!Clip@12c80c1
    //     0x10a9e30: ldr             x0, [x0, #0x840]
    // 0x10a9e34: StoreField: r1->field_2b = r0
    //     0x10a9e34: stur            w0, [x1, #0x2b]
    // 0x10a9e38: StoreField: r1->field_2f = rZR
    //     0x10a9e38: stur            xzr, [x1, #0x2f]
    // 0x10a9e3c: ldur            x0, [fp, #-0x10]
    // 0x10a9e40: StoreField: r1->field_b = r0
    //     0x10a9e40: stur            w0, [x1, #0xb]
    // 0x10a9e44: r0 = _StoryPage()
    //     0x10a9e44: bl              #0x10a9a80  ; Allocate_StoryPageStub -> _StoryPage (size=0x14)
    // 0x10a9e48: r1 = "SIMASTER vNext Student"
    //     0x10a9e48: add             x1, PP, #0xa6, lsl #12  ; [pp+0xa6270] "SIMASTER vNext Student"
    //     0x10a9e4c: ldr             x1, [x1, #0x270]
    // 0x10a9e50: StoreField: r0->field_b = r1
    //     0x10a9e50: stur            w1, [x0, #0xb]
    // 0x10a9e54: ldur            x1, [fp, #-8]
    // 0x10a9e58: StoreField: r0->field_f = r1
    //     0x10a9e58: stur            w1, [x0, #0xf]
    // 0x10a9e5c: LeaveFrame
    //     0x10a9e5c: mov             SP, fp
    //     0x10a9e60: ldp             fp, lr, [SP], #0x10
    // 0x10a9e64: ret
    //     0x10a9e64: ret             
    // 0x10a9e68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10a9e68: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10a9e6c: b               #0x10a9cb4
  }
}

// class id: 5937, size: 0x10, field offset: 0xc
//   const constructor, 
class _StoryQr extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x10a9a10, size: 0x70
    // 0x10a9a10: EnterFrame
    //     0x10a9a10: stp             fp, lr, [SP, #-0x10]!
    //     0x10a9a14: mov             fp, SP
    // 0x10a9a18: AllocStack(0x10)
    //     0x10a9a18: sub             SP, SP, #0x10
    // 0x10a9a1c: LoadField: r0 = r1->field_b
    //     0x10a9a1c: ldur            w0, [x1, #0xb]
    // 0x10a9a20: DecompressPointer r0
    //     0x10a9a20: add             x0, x0, HEAP, lsl #32
    // 0x10a9a24: stur            x0, [fp, #-8]
    // 0x10a9a28: r1 = <String>
    //     0x10a9a28: ldr             x1, [PP, #0x8d0]  ; [pp+0x8d0] TypeArguments: <String>
    // 0x10a9a2c: r0 = FutureBuilder()
    //     0x10a9a2c: bl              #0xd73bd0  ; AllocateFutureBuilderStub -> FutureBuilder<X0> (size=0x1c)
    // 0x10a9a30: mov             x3, x0
    // 0x10a9a34: ldur            x0, [fp, #-8]
    // 0x10a9a38: stur            x3, [fp, #-0x10]
    // 0x10a9a3c: StoreField: r3->field_f = r0
    //     0x10a9a3c: stur            w0, [x3, #0xf]
    // 0x10a9a40: r1 = Function '<anonymous closure>':.
    //     0x10a9a40: add             x1, PP, #0xa6, lsl #12  ; [pp+0xa6278] AnonymousClosure: (0x10a9a8c), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _StoryQr::build (0x10a9a10)
    //     0x10a9a44: ldr             x1, [x1, #0x278]
    // 0x10a9a48: r2 = Null
    //     0x10a9a48: mov             x2, NULL
    // 0x10a9a4c: r0 = AllocateClosure()
    //     0x10a9a4c: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x10a9a50: mov             x1, x0
    // 0x10a9a54: ldur            x0, [fp, #-0x10]
    // 0x10a9a58: StoreField: r0->field_13 = r1
    //     0x10a9a58: stur            w1, [x0, #0x13]
    // 0x10a9a5c: r0 = _StoryPage()
    //     0x10a9a5c: bl              #0x10a9a80  ; Allocate_StoryPageStub -> _StoryPage (size=0x14)
    // 0x10a9a60: r1 = "Your QR"
    //     0x10a9a60: add             x1, PP, #0xa6, lsl #12  ; [pp+0xa6280] "Your QR"
    //     0x10a9a64: ldr             x1, [x1, #0x280]
    // 0x10a9a68: StoreField: r0->field_b = r1
    //     0x10a9a68: stur            w1, [x0, #0xb]
    // 0x10a9a6c: ldur            x1, [fp, #-0x10]
    // 0x10a9a70: StoreField: r0->field_f = r1
    //     0x10a9a70: stur            w1, [x0, #0xf]
    // 0x10a9a74: LeaveFrame
    //     0x10a9a74: mov             SP, fp
    //     0x10a9a78: ldp             fp, lr, [SP], #0x10
    // 0x10a9a7c: ret
    //     0x10a9a7c: ret             
  }
  [closure] Align <anonymous closure>(dynamic, BuildContext, AsyncSnapshot<String>) {
    // ** addr: 0x10a9a8c, size: 0x20c
    // 0x10a9a8c: EnterFrame
    //     0x10a9a8c: stp             fp, lr, [SP, #-0x10]!
    //     0x10a9a90: mov             fp, SP
    // 0x10a9a94: AllocStack(0x58)
    //     0x10a9a94: sub             SP, SP, #0x58
    // 0x10a9a98: CheckStackOverflow
    //     0x10a9a98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10a9a9c: cmp             SP, x16
    //     0x10a9aa0: b.ls            #0x10a9c68
    // 0x10a9aa4: ldr             x1, [fp, #0x18]
    // 0x10a9aa8: r0 = sizeOf()
    //     0x10a9aa8: bl              #0x865078  ; [package:flutter/src/widgets/media_query.dart] MediaQuery::sizeOf
    // 0x10a9aac: LoadField: d0 = r0->field_7
    //     0x10a9aac: ldur            d0, [x0, #7]
    // 0x10a9ab0: d1 = 64.000000
    //     0x10a9ab0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a68] IMM: double(64) from 0x4050000000000000
    //     0x10a9ab4: ldr             d1, [x17, #0xa68]
    // 0x10a9ab8: fsub            d2, d0, d1
    // 0x10a9abc: r1 = inline_Allocate_Double()
    //     0x10a9abc: ldp             x1, x0, [THR, #0x60]  ; THR::top
    //     0x10a9ac0: add             x1, x1, #0x10
    //     0x10a9ac4: cmp             x0, x1
    //     0x10a9ac8: b.ls            #0x10a9c70
    //     0x10a9acc: str             x1, [THR, #0x60]  ; THR::top
    //     0x10a9ad0: sub             x1, x1, #0xf
    //     0x10a9ad4: mov             x0, #0xe19c
    //     0x10a9ad8: movk            x0, #3, lsl #16
    //     0x10a9adc: stur            x0, [x1, #-1]
    // 0x10a9ae0: dmb             ishst
    // 0x10a9ae4: StoreField: r1->field_7 = d2
    //     0x10a9ae4: stur            d2, [x1, #7]
    // 0x10a9ae8: r2 = 0.000000
    //     0x10a9ae8: ldr             x2, [PP, #0x4c28]  ; [pp+0x4c28] 0
    // 0x10a9aec: r3 = 292.000000
    //     0x10a9aec: add             x3, PP, #0xa6, lsl #12  ; [pp+0xa6288] 292
    //     0x10a9af0: ldr             x3, [x3, #0x288]
    // 0x10a9af4: r0 = clamp()
    //     0x10a9af4: bl              #0x13db384  ; [dart:core] _Double::clamp
    // 0x10a9af8: ldr             x1, [fp, #0x18]
    // 0x10a9afc: stur            x0, [fp, #-8]
    // 0x10a9b00: r0 = sizeOf()
    //     0x10a9b00: bl              #0x865078  ; [package:flutter/src/widgets/media_query.dart] MediaQuery::sizeOf
    // 0x10a9b04: LoadField: d0 = r0->field_7
    //     0x10a9b04: ldur            d0, [x0, #7]
    // 0x10a9b08: d1 = 64.000000
    //     0x10a9b08: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a68] IMM: double(64) from 0x4050000000000000
    //     0x10a9b0c: ldr             d1, [x17, #0xa68]
    // 0x10a9b10: fsub            d2, d0, d1
    // 0x10a9b14: r1 = inline_Allocate_Double()
    //     0x10a9b14: ldp             x1, x0, [THR, #0x60]  ; THR::top
    //     0x10a9b18: add             x1, x1, #0x10
    //     0x10a9b1c: cmp             x0, x1
    //     0x10a9b20: b.ls            #0x10a9c84
    //     0x10a9b24: str             x1, [THR, #0x60]  ; THR::top
    //     0x10a9b28: sub             x1, x1, #0xf
    //     0x10a9b2c: mov             x0, #0xe19c
    //     0x10a9b30: movk            x0, #3, lsl #16
    //     0x10a9b34: stur            x0, [x1, #-1]
    // 0x10a9b38: dmb             ishst
    // 0x10a9b3c: StoreField: r1->field_7 = d2
    //     0x10a9b3c: stur            d2, [x1, #7]
    // 0x10a9b40: r2 = 0.000000
    //     0x10a9b40: ldr             x2, [PP, #0x4c28]  ; [pp+0x4c28] 0
    // 0x10a9b44: r3 = 292.000000
    //     0x10a9b44: add             x3, PP, #0xa6, lsl #12  ; [pp+0xa6288] 292
    //     0x10a9b48: ldr             x3, [x3, #0x288]
    // 0x10a9b4c: r0 = clamp()
    //     0x10a9b4c: bl              #0x13db384  ; [dart:core] _Double::clamp
    // 0x10a9b50: stur            x0, [fp, #-0x10]
    // 0x10a9b54: r0 = Radius()
    //     0x10a9b54: bl              #0x8a73d4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x10a9b58: d0 = 28.000000
    //     0x10a9b58: fmov            d0, #28.00000000
    // 0x10a9b5c: stur            x0, [fp, #-0x18]
    // 0x10a9b60: StoreField: r0->field_7 = d0
    //     0x10a9b60: stur            d0, [x0, #7]
    // 0x10a9b64: StoreField: r0->field_f = d0
    //     0x10a9b64: stur            d0, [x0, #0xf]
    // 0x10a9b68: r0 = BorderRadius()
    //     0x10a9b68: bl              #0x8a73c8  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x10a9b6c: mov             x1, x0
    // 0x10a9b70: ldur            x0, [fp, #-0x18]
    // 0x10a9b74: stur            x1, [fp, #-0x20]
    // 0x10a9b78: StoreField: r1->field_7 = r0
    //     0x10a9b78: stur            w0, [x1, #7]
    // 0x10a9b7c: StoreField: r1->field_b = r0
    //     0x10a9b7c: stur            w0, [x1, #0xb]
    // 0x10a9b80: StoreField: r1->field_f = r0
    //     0x10a9b80: stur            w0, [x1, #0xf]
    // 0x10a9b84: StoreField: r1->field_13 = r0
    //     0x10a9b84: stur            w0, [x1, #0x13]
    // 0x10a9b88: r0 = BoxDecoration()
    //     0x10a9b88: bl              #0x8a721c  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x10a9b8c: mov             x1, x0
    // 0x10a9b90: r0 = Instance_Color
    //     0x10a9b90: add             x0, PP, #0x12, lsl #12  ; [pp+0x12c38] Obj!Color@12a2701
    //     0x10a9b94: ldr             x0, [x0, #0xc38]
    // 0x10a9b98: stur            x1, [fp, #-0x28]
    // 0x10a9b9c: StoreField: r1->field_7 = r0
    //     0x10a9b9c: stur            w0, [x1, #7]
    // 0x10a9ba0: ldur            x0, [fp, #-0x20]
    // 0x10a9ba4: StoreField: r1->field_13 = r0
    //     0x10a9ba4: stur            w0, [x1, #0x13]
    // 0x10a9ba8: r0 = Instance_BoxShape
    //     0x10a9ba8: add             x0, PP, #0x17, lsl #12  ; [pp+0x171f8] Obj!BoxShape@12c4921
    //     0x10a9bac: ldr             x0, [x0, #0x1f8]
    // 0x10a9bb0: StoreField: r1->field_23 = r0
    //     0x10a9bb0: stur            w0, [x1, #0x23]
    // 0x10a9bb4: ldr             x0, [fp, #0x10]
    // 0x10a9bb8: LoadField: r2 = r0->field_f
    //     0x10a9bb8: ldur            w2, [x0, #0xf]
    // 0x10a9bbc: DecompressPointer r2
    //     0x10a9bbc: add             x2, x2, HEAP, lsl #32
    // 0x10a9bc0: stur            x2, [fp, #-0x18]
    // 0x10a9bc4: cmp             w2, NULL
    // 0x10a9bc8: b.eq            #0x10a9bf4
    // 0x10a9bcc: LoadField: r0 = r2->field_7
    //     0x10a9bcc: ldur            w0, [x2, #7]
    // 0x10a9bd0: cbz             w0, #0x10a9bf4
    // 0x10a9bd4: r0 = QrImageView()
    //     0x10a9bd4: bl              #0xfd8538  ; AllocateQrImageViewStub -> QrImageView (size=0x54)
    // 0x10a9bd8: mov             x1, x0
    // 0x10a9bdc: ldur            x2, [fp, #-0x18]
    // 0x10a9be0: stur            x0, [fp, #-0x18]
    // 0x10a9be4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x10a9be4: ldr             x4, [PP, #0xc0]  ; [pp+0xc0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x10a9be8: r0 = QrImageView()
    //     0x10a9be8: bl              #0xfd8350  ; [package:qr_flutter/src/qr_image_view.dart] QrImageView::QrImageView
    // 0x10a9bec: ldur            x0, [fp, #-0x18]
    // 0x10a9bf0: b               #0x10a9bfc
    // 0x10a9bf4: r0 = Instance_Center
    //     0x10a9bf4: add             x0, PP, #0x15, lsl #12  ; [pp+0x157b8] Obj!Center@12b75a1
    //     0x10a9bf8: ldr             x0, [x0, #0x7b8]
    // 0x10a9bfc: stur            x0, [fp, #-0x18]
    // 0x10a9c00: r0 = Container()
    //     0x10a9c00: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0x10a9c04: stur            x0, [fp, #-0x20]
    // 0x10a9c08: ldur            x16, [fp, #-8]
    // 0x10a9c0c: ldur            lr, [fp, #-0x10]
    // 0x10a9c10: stp             lr, x16, [SP, #0x20]
    // 0x10a9c14: r16 = Instance_EdgeInsets
    //     0x10a9c14: add             x16, PP, #0xa6, lsl #12  ; [pp+0xa6290] Obj!EdgeInsets@129df81
    //     0x10a9c18: ldr             x16, [x16, #0x290]
    // 0x10a9c1c: r30 = Instance_EdgeInsets
    //     0x10a9c1c: add             lr, PP, #0x15, lsl #12  ; [pp+0x158e8] Obj!EdgeInsets@129ccc1
    //     0x10a9c20: ldr             lr, [lr, #0x8e8]
    // 0x10a9c24: stp             lr, x16, [SP, #0x10]
    // 0x10a9c28: ldur            x16, [fp, #-0x28]
    // 0x10a9c2c: ldur            lr, [fp, #-0x18]
    // 0x10a9c30: stp             lr, x16, [SP]
    // 0x10a9c34: mov             x1, x0
    // 0x10a9c38: r4 = const [0, 0x7, 0x6, 0x1, child, 0x6, decoration, 0x5, height, 0x2, margin, 0x3, padding, 0x4, width, 0x1, null]
    //     0x10a9c38: add             x4, PP, #0xa6, lsl #12  ; [pp+0xa6298] List(17) [0, 0x7, 0x6, 0x1, "child", 0x6, "decoration", 0x5, "height", 0x2, "margin", 0x3, "padding", 0x4, "width", 0x1, Null]
    //     0x10a9c3c: ldr             x4, [x4, #0x298]
    // 0x10a9c40: r0 = Container()
    //     0x10a9c40: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x10a9c44: r0 = Align()
    //     0x10a9c44: bl              #0xb281f8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x10a9c48: r1 = Instance_Alignment
    //     0x10a9c48: add             x1, PP, #0x19, lsl #12  ; [pp+0x197a8] Obj!Alignment@129e7d1
    //     0x10a9c4c: ldr             x1, [x1, #0x7a8]
    // 0x10a9c50: StoreField: r0->field_f = r1
    //     0x10a9c50: stur            w1, [x0, #0xf]
    // 0x10a9c54: ldur            x1, [fp, #-0x20]
    // 0x10a9c58: StoreField: r0->field_b = r1
    //     0x10a9c58: stur            w1, [x0, #0xb]
    // 0x10a9c5c: LeaveFrame
    //     0x10a9c5c: mov             SP, fp
    //     0x10a9c60: ldp             fp, lr, [SP], #0x10
    // 0x10a9c64: ret
    //     0x10a9c64: ret             
    // 0x10a9c68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10a9c68: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10a9c6c: b               #0x10a9aa4
    // 0x10a9c70: stp             q1, q2, [SP, #-0x20]!
    // 0x10a9c74: r0 = AllocateDouble()
    //     0x10a9c74: bl              #0x13df878  ; AllocateDoubleStub
    // 0x10a9c78: mov             x1, x0
    // 0x10a9c7c: ldp             q1, q2, [SP], #0x20
    // 0x10a9c80: b               #0x10a9ae4
    // 0x10a9c84: SaveReg d2
    //     0x10a9c84: str             q2, [SP, #-0x10]!
    // 0x10a9c88: r0 = AllocateDouble()
    //     0x10a9c88: bl              #0x13df878  ; AllocateDoubleStub
    // 0x10a9c8c: mov             x1, x0
    // 0x10a9c90: RestoreReg d2
    //     0x10a9c90: ldr             q2, [SP], #0x10
    // 0x10a9c94: b               #0x10a9b3c
  }
}

// class id: 5938, size: 0xc, field offset: 0xc
//   const constructor, 
class _AnimatedWaveBackground extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x10a95a4, size: 0x150
    // 0x10a95a4: EnterFrame
    //     0x10a95a4: stp             fp, lr, [SP, #-0x10]!
    //     0x10a95a8: mov             fp, SP
    // 0x10a95ac: AllocStack(0x18)
    //     0x10a95ac: sub             SP, SP, #0x18
    // 0x10a95b0: CheckStackOverflow
    //     0x10a95b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10a95b4: cmp             SP, x16
    //     0x10a95b8: b.ls            #0x10a96ec
    // 0x10a95bc: r0 = LoadStaticField(0x181c)
    //     0x10a95bc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10a95c0: ldr             x0, [x0, #0x3038]
    // 0x10a95c4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x10a95c8: cmp             w0, w16
    // 0x10a95cc: b.ne            #0x10a95dc
    // 0x10a95d0: r2 = waveBottom1Notifier
    //     0x10a95d0: add             x2, PP, #0x7b, lsl #12  ; [pp+0x7b730] Field <::.waveBottom1Notifier>: static late final (offset: 0x181c)
    //     0x10a95d4: ldr             x2, [x2, #0x730]
    // 0x10a95d8: r0 = InitLateFinalStaticField()
    //     0x10a95d8: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x10a95dc: r1 = <double>
    //     0x10a95dc: ldr             x1, [PP, #0x4440]  ; [pp+0x4440] TypeArguments: <double>
    // 0x10a95e0: stur            x0, [fp, #-8]
    // 0x10a95e4: r0 = ValueListenableBuilder()
    //     0x10a95e4: bl              #0xd77dec  ; AllocateValueListenableBuilderStub -> ValueListenableBuilder<X0> (size=0x1c)
    // 0x10a95e8: mov             x3, x0
    // 0x10a95ec: ldur            x0, [fp, #-8]
    // 0x10a95f0: stur            x3, [fp, #-0x10]
    // 0x10a95f4: StoreField: r3->field_f = r0
    //     0x10a95f4: stur            w0, [x3, #0xf]
    // 0x10a95f8: r1 = Function '<anonymous closure>':.
    //     0x10a95f8: add             x1, PP, #0x7b, lsl #12  ; [pp+0x7b738] AnonymousClosure: (0x10a9888), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AnimatedWaveBackground::build (0x10a95a4)
    //     0x10a95fc: ldr             x1, [x1, #0x738]
    // 0x10a9600: r2 = Null
    //     0x10a9600: mov             x2, NULL
    // 0x10a9604: r0 = AllocateClosure()
    //     0x10a9604: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x10a9608: mov             x1, x0
    // 0x10a960c: ldur            x0, [fp, #-0x10]
    // 0x10a9610: StoreField: r0->field_13 = r1
    //     0x10a9610: stur            w1, [x0, #0x13]
    // 0x10a9614: r0 = LoadStaticField(0x1820)
    //     0x10a9614: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10a9618: ldr             x0, [x0, #0x3040]
    // 0x10a961c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x10a9620: cmp             w0, w16
    // 0x10a9624: b.ne            #0x10a9634
    // 0x10a9628: r2 = waveBottom2Notifier
    //     0x10a9628: add             x2, PP, #0x7b, lsl #12  ; [pp+0x7b740] Field <::.waveBottom2Notifier>: static late final (offset: 0x1820)
    //     0x10a962c: ldr             x2, [x2, #0x740]
    // 0x10a9630: r0 = InitLateFinalStaticField()
    //     0x10a9630: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x10a9634: r1 = <double>
    //     0x10a9634: ldr             x1, [PP, #0x4440]  ; [pp+0x4440] TypeArguments: <double>
    // 0x10a9638: stur            x0, [fp, #-8]
    // 0x10a963c: r0 = ValueListenableBuilder()
    //     0x10a963c: bl              #0xd77dec  ; AllocateValueListenableBuilderStub -> ValueListenableBuilder<X0> (size=0x1c)
    // 0x10a9640: mov             x3, x0
    // 0x10a9644: ldur            x0, [fp, #-8]
    // 0x10a9648: stur            x3, [fp, #-0x18]
    // 0x10a964c: StoreField: r3->field_f = r0
    //     0x10a964c: stur            w0, [x3, #0xf]
    // 0x10a9650: r1 = Function '<anonymous closure>':.
    //     0x10a9650: add             x1, PP, #0x7b, lsl #12  ; [pp+0x7b748] AnonymousClosure: (0x10a96f4), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AnimatedWaveBackground::build (0x10a95a4)
    //     0x10a9654: ldr             x1, [x1, #0x748]
    // 0x10a9658: r2 = Null
    //     0x10a9658: mov             x2, NULL
    // 0x10a965c: r0 = AllocateClosure()
    //     0x10a965c: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x10a9660: mov             x1, x0
    // 0x10a9664: ldur            x0, [fp, #-0x18]
    // 0x10a9668: StoreField: r0->field_13 = r1
    //     0x10a9668: stur            w1, [x0, #0x13]
    // 0x10a966c: r1 = Null
    //     0x10a966c: mov             x1, NULL
    // 0x10a9670: r2 = 4
    //     0x10a9670: mov             x2, #4
    // 0x10a9674: r0 = AllocateArray()
    //     0x10a9674: bl              #0x13df928  ; AllocateArrayStub
    // 0x10a9678: mov             x2, x0
    // 0x10a967c: ldur            x0, [fp, #-0x10]
    // 0x10a9680: stur            x2, [fp, #-8]
    // 0x10a9684: StoreField: r2->field_f = r0
    //     0x10a9684: stur            w0, [x2, #0xf]
    // 0x10a9688: ldur            x0, [fp, #-0x18]
    // 0x10a968c: StoreField: r2->field_13 = r0
    //     0x10a968c: stur            w0, [x2, #0x13]
    // 0x10a9690: r1 = <Widget>
    //     0x10a9690: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x10a9694: r0 = AllocateGrowableArray()
    //     0x10a9694: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x10a9698: mov             x1, x0
    // 0x10a969c: ldur            x0, [fp, #-8]
    // 0x10a96a0: stur            x1, [fp, #-0x10]
    // 0x10a96a4: StoreField: r1->field_f = r0
    //     0x10a96a4: stur            w0, [x1, #0xf]
    // 0x10a96a8: r0 = 4
    //     0x10a96a8: mov             x0, #4
    // 0x10a96ac: StoreField: r1->field_b = r0
    //     0x10a96ac: stur            w0, [x1, #0xb]
    // 0x10a96b0: r0 = Stack()
    //     0x10a96b0: bl              #0xd1a854  ; AllocateStackStub -> Stack (size=0x20)
    // 0x10a96b4: r1 = Instance_AlignmentDirectional
    //     0x10a96b4: add             x1, PP, #0x15, lsl #12  ; [pp+0x158d8] Obj!AlignmentDirectional@129e611
    //     0x10a96b8: ldr             x1, [x1, #0x8d8]
    // 0x10a96bc: StoreField: r0->field_f = r1
    //     0x10a96bc: stur            w1, [x0, #0xf]
    // 0x10a96c0: r1 = Instance_StackFit
    //     0x10a96c0: add             x1, PP, #0x15, lsl #12  ; [pp+0x158e0] Obj!StackFit@12c4221
    //     0x10a96c4: ldr             x1, [x1, #0x8e0]
    // 0x10a96c8: ArrayStore: r0[0] = r1  ; List_4
    //     0x10a96c8: stur            w1, [x0, #0x17]
    // 0x10a96cc: r1 = Instance_Clip
    //     0x10a96cc: add             x1, PP, #0x15, lsl #12  ; [pp+0x15850] Obj!Clip@12c80e1
    //     0x10a96d0: ldr             x1, [x1, #0x850]
    // 0x10a96d4: StoreField: r0->field_1b = r1
    //     0x10a96d4: stur            w1, [x0, #0x1b]
    // 0x10a96d8: ldur            x1, [fp, #-0x10]
    // 0x10a96dc: StoreField: r0->field_b = r1
    //     0x10a96dc: stur            w1, [x0, #0xb]
    // 0x10a96e0: LeaveFrame
    //     0x10a96e0: mov             SP, fp
    //     0x10a96e4: ldp             fp, lr, [SP], #0x10
    // 0x10a96e8: ret
    //     0x10a96e8: ret             
    // 0x10a96ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10a96ec: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10a96f0: b               #0x10a95bc
  }
  [closure] AnimatedPositioned <anonymous closure>(dynamic, BuildContext, double, Widget?) {
    // ** addr: 0x10a96f4, size: 0xbc
    // 0x10a96f4: EnterFrame
    //     0x10a96f4: stp             fp, lr, [SP, #-0x10]!
    //     0x10a96f8: mov             fp, SP
    // 0x10a96fc: AllocStack(0x10)
    //     0x10a96fc: sub             SP, SP, #0x10
    // 0x10a9700: CheckStackOverflow
    //     0x10a9700: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10a9704: cmp             SP, x16
    //     0x10a9708: b.ls            #0x10a97a8
    // 0x10a970c: r0 = LoadStaticField(0x1818)
    //     0x10a970c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10a9710: ldr             x0, [x0, #0x3030]
    // 0x10a9714: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x10a9718: cmp             w0, w16
    // 0x10a971c: b.ne            #0x10a972c
    // 0x10a9720: r2 = waveOffset2Notifier
    //     0x10a9720: add             x2, PP, #0x7b, lsl #12  ; [pp+0x7b750] Field <::.waveOffset2Notifier>: static late final (offset: 0x1818)
    //     0x10a9724: ldr             x2, [x2, #0x750]
    // 0x10a9728: r0 = InitLateFinalStaticField()
    //     0x10a9728: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x10a972c: r1 = <double>
    //     0x10a972c: ldr             x1, [PP, #0x4440]  ; [pp+0x4440] TypeArguments: <double>
    // 0x10a9730: stur            x0, [fp, #-8]
    // 0x10a9734: r0 = ValueListenableBuilder()
    //     0x10a9734: bl              #0xd77dec  ; AllocateValueListenableBuilderStub -> ValueListenableBuilder<X0> (size=0x1c)
    // 0x10a9738: mov             x3, x0
    // 0x10a973c: ldur            x0, [fp, #-8]
    // 0x10a9740: stur            x3, [fp, #-0x10]
    // 0x10a9744: StoreField: r3->field_f = r0
    //     0x10a9744: stur            w0, [x3, #0xf]
    // 0x10a9748: r1 = Function '<anonymous closure>':.
    //     0x10a9748: add             x1, PP, #0x7b, lsl #12  ; [pp+0x7b758] AnonymousClosure: (0x10a97b0), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AnimatedWaveBackground::build (0x10a95a4)
    //     0x10a974c: ldr             x1, [x1, #0x758]
    // 0x10a9750: r2 = Null
    //     0x10a9750: mov             x2, NULL
    // 0x10a9754: r0 = AllocateClosure()
    //     0x10a9754: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x10a9758: mov             x1, x0
    // 0x10a975c: ldur            x0, [fp, #-0x10]
    // 0x10a9760: StoreField: r0->field_13 = r1
    //     0x10a9760: stur            w1, [x0, #0x13]
    // 0x10a9764: r0 = AnimatedPositioned()
    //     0x10a9764: bl              #0xdf7e34  ; AllocateAnimatedPositionedStub -> AnimatedPositioned (size=0x38)
    // 0x10a9768: ldur            x1, [fp, #-0x10]
    // 0x10a976c: ArrayStore: r0[0] = r1  ; List_4
    //     0x10a976c: stur            w1, [x0, #0x17]
    // 0x10a9770: StoreField: r0->field_1b = rZR
    //     0x10a9770: stur            xzr, [x0, #0x1b]
    // 0x10a9774: r1 = 0.000000
    //     0x10a9774: ldr             x1, [PP, #0x4c28]  ; [pp+0x4c28] 0
    // 0x10a9778: StoreField: r0->field_27 = r1
    //     0x10a9778: stur            w1, [x0, #0x27]
    // 0x10a977c: ldr             x1, [fp, #0x18]
    // 0x10a9780: StoreField: r0->field_2b = r1
    //     0x10a9780: stur            w1, [x0, #0x2b]
    // 0x10a9784: r1 = Instance_Cubic
    //     0x10a9784: add             x1, PP, #0x7b, lsl #12  ; [pp+0x7b760] Obj!Cubic@129f6c1
    //     0x10a9788: ldr             x1, [x1, #0x760]
    // 0x10a978c: StoreField: r0->field_b = r1
    //     0x10a978c: stur            w1, [x0, #0xb]
    // 0x10a9790: r1 = Instance_Duration
    //     0x10a9790: add             x1, PP, #0x7b, lsl #12  ; [pp+0x7b768] Obj!Duration@12c8bd1
    //     0x10a9794: ldr             x1, [x1, #0x768]
    // 0x10a9798: StoreField: r0->field_f = r1
    //     0x10a9798: stur            w1, [x0, #0xf]
    // 0x10a979c: LeaveFrame
    //     0x10a979c: mov             SP, fp
    //     0x10a97a0: ldp             fp, lr, [SP], #0x10
    // 0x10a97a4: ret
    //     0x10a97a4: ret             
    // 0x10a97a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10a97a8: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10a97ac: b               #0x10a970c
  }
  [closure] CustomPaint <anonymous closure>(dynamic, BuildContext, double, Widget?) {
    // ** addr: 0x10a97b0, size: 0xcc
    // 0x10a97b0: EnterFrame
    //     0x10a97b0: stp             fp, lr, [SP, #-0x10]!
    //     0x10a97b4: mov             fp, SP
    // 0x10a97b8: AllocStack(0x20)
    //     0x10a97b8: sub             SP, SP, #0x20
    // 0x10a97bc: r0 = LoadStaticField(0x1674)
    //     0x10a97bc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10a97c0: ldr             x0, [x0, #0x2ce8]
    // 0x10a97c4: r1 = LoadStaticField(0x1680)
    //     0x10a97c4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x10a97c8: ldr             x1, [x1, #0x2d00]
    // 0x10a97cc: tbnz            w1, #4, #0x10a97f0
    // 0x10a97d0: d1 = 0.100000
    //     0x10a97d0: add             x17, PP, #0x13, lsl #12  ; [pp+0x131e0] IMM: double(0.1) from 0x3fb999999999999a
    //     0x10a97d4: ldr             d1, [x17, #0x1e0]
    // 0x10a97d8: d0 = 0.800000
    //     0x10a97d8: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10a97dc: ldr             d0, [x17, #0xa58]
    // 0x10a97e0: LoadField: d2 = r0->field_7
    //     0x10a97e0: ldur            d2, [x0, #7]
    // 0x10a97e4: fmul            d3, d2, d0
    // 0x10a97e8: fmul            d0, d3, d1
    // 0x10a97ec: b               #0x10a9804
    // 0x10a97f0: d1 = 0.100000
    //     0x10a97f0: add             x17, PP, #0x13, lsl #12  ; [pp+0x131e0] IMM: double(0.1) from 0x3fb999999999999a
    //     0x10a97f4: ldr             d1, [x17, #0x1e0]
    // 0x10a97f8: LoadField: d0 = r0->field_7
    //     0x10a97f8: ldur            d0, [x0, #7]
    // 0x10a97fc: fmul            d2, d0, d1
    // 0x10a9800: mov             v0.16b, v2.16b
    // 0x10a9804: ldr             x1, [fp, #0x18]
    // 0x10a9808: stur            d0, [fp, #-0x20]
    // 0x10a980c: LoadField: d1 = r0->field_7
    //     0x10a980c: ldur            d1, [x0, #7]
    // 0x10a9810: stur            d1, [fp, #-0x18]
    // 0x10a9814: r0 = Size()
    //     0x10a9814: bl              #0x81d0c8  ; AllocateSizeStub -> Size (size=0x18)
    // 0x10a9818: ldur            d0, [fp, #-0x18]
    // 0x10a981c: stur            x0, [fp, #-8]
    // 0x10a9820: StoreField: r0->field_7 = d0
    //     0x10a9820: stur            d0, [x0, #7]
    // 0x10a9824: ldur            d0, [fp, #-0x20]
    // 0x10a9828: StoreField: r0->field_f = d0
    //     0x10a9828: stur            d0, [x0, #0xf]
    // 0x10a982c: r0 = _WavePainter()
    //     0x10a982c: bl              #0x10a987c  ; Allocate_WavePainterStub -> _WavePainter (size=0x18)
    // 0x10a9830: mov             x1, x0
    // 0x10a9834: r0 = Instance_Color
    //     0x10a9834: add             x0, PP, #0x7b, lsl #12  ; [pp+0x7b770] Obj!Color@12a6ba1
    //     0x10a9838: ldr             x0, [x0, #0x770]
    // 0x10a983c: stur            x1, [fp, #-0x10]
    // 0x10a9840: StoreField: r1->field_b = r0
    //     0x10a9840: stur            w0, [x1, #0xb]
    // 0x10a9844: ldr             x0, [fp, #0x18]
    // 0x10a9848: LoadField: d0 = r0->field_7
    //     0x10a9848: ldur            d0, [x0, #7]
    // 0x10a984c: StoreField: r1->field_f = d0
    //     0x10a984c: stur            d0, [x1, #0xf]
    // 0x10a9850: r0 = CustomPaint()
    //     0x10a9850: bl              #0xd0a594  ; AllocateCustomPaintStub -> CustomPaint (size=0x24)
    // 0x10a9854: ldur            x1, [fp, #-0x10]
    // 0x10a9858: StoreField: r0->field_f = r1
    //     0x10a9858: stur            w1, [x0, #0xf]
    // 0x10a985c: ldur            x1, [fp, #-8]
    // 0x10a9860: ArrayStore: r0[0] = r1  ; List_4
    //     0x10a9860: stur            w1, [x0, #0x17]
    // 0x10a9864: r1 = false
    //     0x10a9864: add             x1, NULL, #0x30  ; false
    // 0x10a9868: StoreField: r0->field_1b = r1
    //     0x10a9868: stur            w1, [x0, #0x1b]
    // 0x10a986c: StoreField: r0->field_1f = r1
    //     0x10a986c: stur            w1, [x0, #0x1f]
    // 0x10a9870: LeaveFrame
    //     0x10a9870: mov             SP, fp
    //     0x10a9874: ldp             fp, lr, [SP], #0x10
    // 0x10a9878: ret
    //     0x10a9878: ret             
  }
  [closure] AnimatedPositioned <anonymous closure>(dynamic, BuildContext, double, Widget?) {
    // ** addr: 0x10a9888, size: 0xbc
    // 0x10a9888: EnterFrame
    //     0x10a9888: stp             fp, lr, [SP, #-0x10]!
    //     0x10a988c: mov             fp, SP
    // 0x10a9890: AllocStack(0x10)
    //     0x10a9890: sub             SP, SP, #0x10
    // 0x10a9894: CheckStackOverflow
    //     0x10a9894: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10a9898: cmp             SP, x16
    //     0x10a989c: b.ls            #0x10a993c
    // 0x10a98a0: r0 = LoadStaticField(0x1814)
    //     0x10a98a0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10a98a4: ldr             x0, [x0, #0x3028]
    // 0x10a98a8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x10a98ac: cmp             w0, w16
    // 0x10a98b0: b.ne            #0x10a98c0
    // 0x10a98b4: r2 = waveOffset1Notifier
    //     0x10a98b4: add             x2, PP, #0x7b, lsl #12  ; [pp+0x7b778] Field <::.waveOffset1Notifier>: static late final (offset: 0x1814)
    //     0x10a98b8: ldr             x2, [x2, #0x778]
    // 0x10a98bc: r0 = InitLateFinalStaticField()
    //     0x10a98bc: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x10a98c0: r1 = <double>
    //     0x10a98c0: ldr             x1, [PP, #0x4440]  ; [pp+0x4440] TypeArguments: <double>
    // 0x10a98c4: stur            x0, [fp, #-8]
    // 0x10a98c8: r0 = ValueListenableBuilder()
    //     0x10a98c8: bl              #0xd77dec  ; AllocateValueListenableBuilderStub -> ValueListenableBuilder<X0> (size=0x1c)
    // 0x10a98cc: mov             x3, x0
    // 0x10a98d0: ldur            x0, [fp, #-8]
    // 0x10a98d4: stur            x3, [fp, #-0x10]
    // 0x10a98d8: StoreField: r3->field_f = r0
    //     0x10a98d8: stur            w0, [x3, #0xf]
    // 0x10a98dc: r1 = Function '<anonymous closure>':.
    //     0x10a98dc: add             x1, PP, #0x7b, lsl #12  ; [pp+0x7b780] AnonymousClosure: (0x10a9944), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _AnimatedWaveBackground::build (0x10a95a4)
    //     0x10a98e0: ldr             x1, [x1, #0x780]
    // 0x10a98e4: r2 = Null
    //     0x10a98e4: mov             x2, NULL
    // 0x10a98e8: r0 = AllocateClosure()
    //     0x10a98e8: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x10a98ec: mov             x1, x0
    // 0x10a98f0: ldur            x0, [fp, #-0x10]
    // 0x10a98f4: StoreField: r0->field_13 = r1
    //     0x10a98f4: stur            w1, [x0, #0x13]
    // 0x10a98f8: r0 = AnimatedPositioned()
    //     0x10a98f8: bl              #0xdf7e34  ; AllocateAnimatedPositionedStub -> AnimatedPositioned (size=0x38)
    // 0x10a98fc: ldur            x1, [fp, #-0x10]
    // 0x10a9900: ArrayStore: r0[0] = r1  ; List_4
    //     0x10a9900: stur            w1, [x0, #0x17]
    // 0x10a9904: StoreField: r0->field_1b = rZR
    //     0x10a9904: stur            xzr, [x0, #0x1b]
    // 0x10a9908: r1 = 0.000000
    //     0x10a9908: ldr             x1, [PP, #0x4c28]  ; [pp+0x4c28] 0
    // 0x10a990c: StoreField: r0->field_27 = r1
    //     0x10a990c: stur            w1, [x0, #0x27]
    // 0x10a9910: ldr             x1, [fp, #0x18]
    // 0x10a9914: StoreField: r0->field_2b = r1
    //     0x10a9914: stur            w1, [x0, #0x2b]
    // 0x10a9918: r1 = Instance_Cubic
    //     0x10a9918: add             x1, PP, #0x7b, lsl #12  ; [pp+0x7b760] Obj!Cubic@129f6c1
    //     0x10a991c: ldr             x1, [x1, #0x760]
    // 0x10a9920: StoreField: r0->field_b = r1
    //     0x10a9920: stur            w1, [x0, #0xb]
    // 0x10a9924: r1 = Instance_Duration
    //     0x10a9924: add             x1, PP, #0x7b, lsl #12  ; [pp+0x7b768] Obj!Duration@12c8bd1
    //     0x10a9928: ldr             x1, [x1, #0x768]
    // 0x10a992c: StoreField: r0->field_f = r1
    //     0x10a992c: stur            w1, [x0, #0xf]
    // 0x10a9930: LeaveFrame
    //     0x10a9930: mov             SP, fp
    //     0x10a9934: ldp             fp, lr, [SP], #0x10
    // 0x10a9938: ret
    //     0x10a9938: ret             
    // 0x10a993c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10a993c: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10a9940: b               #0x10a98a0
  }
  [closure] CustomPaint <anonymous closure>(dynamic, BuildContext, double, Widget?) {
    // ** addr: 0x10a9944, size: 0xcc
    // 0x10a9944: EnterFrame
    //     0x10a9944: stp             fp, lr, [SP, #-0x10]!
    //     0x10a9948: mov             fp, SP
    // 0x10a994c: AllocStack(0x20)
    //     0x10a994c: sub             SP, SP, #0x20
    // 0x10a9950: r0 = LoadStaticField(0x1674)
    //     0x10a9950: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10a9954: ldr             x0, [x0, #0x2ce8]
    // 0x10a9958: r1 = LoadStaticField(0x1680)
    //     0x10a9958: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x10a995c: ldr             x1, [x1, #0x2d00]
    // 0x10a9960: tbnz            w1, #4, #0x10a9984
    // 0x10a9964: d1 = 0.133333
    //     0x10a9964: add             x17, PP, #0x28, lsl #12  ; [pp+0x28338] IMM: double(0.13333333333333333) from 0x3fc1111111111111
    //     0x10a9968: ldr             d1, [x17, #0x338]
    // 0x10a996c: d0 = 0.800000
    //     0x10a996c: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10a9970: ldr             d0, [x17, #0xa58]
    // 0x10a9974: LoadField: d2 = r0->field_7
    //     0x10a9974: ldur            d2, [x0, #7]
    // 0x10a9978: fmul            d3, d2, d0
    // 0x10a997c: fmul            d0, d3, d1
    // 0x10a9980: b               #0x10a9998
    // 0x10a9984: d1 = 0.133333
    //     0x10a9984: add             x17, PP, #0x28, lsl #12  ; [pp+0x28338] IMM: double(0.13333333333333333) from 0x3fc1111111111111
    //     0x10a9988: ldr             d1, [x17, #0x338]
    // 0x10a998c: LoadField: d0 = r0->field_7
    //     0x10a998c: ldur            d0, [x0, #7]
    // 0x10a9990: fmul            d2, d0, d1
    // 0x10a9994: mov             v0.16b, v2.16b
    // 0x10a9998: ldr             x1, [fp, #0x18]
    // 0x10a999c: stur            d0, [fp, #-0x20]
    // 0x10a99a0: LoadField: d1 = r0->field_7
    //     0x10a99a0: ldur            d1, [x0, #7]
    // 0x10a99a4: stur            d1, [fp, #-0x18]
    // 0x10a99a8: r0 = Size()
    //     0x10a99a8: bl              #0x81d0c8  ; AllocateSizeStub -> Size (size=0x18)
    // 0x10a99ac: ldur            d0, [fp, #-0x18]
    // 0x10a99b0: stur            x0, [fp, #-8]
    // 0x10a99b4: StoreField: r0->field_7 = d0
    //     0x10a99b4: stur            d0, [x0, #7]
    // 0x10a99b8: ldur            d0, [fp, #-0x20]
    // 0x10a99bc: StoreField: r0->field_f = d0
    //     0x10a99bc: stur            d0, [x0, #0xf]
    // 0x10a99c0: r0 = _WavePainter()
    //     0x10a99c0: bl              #0x10a987c  ; Allocate_WavePainterStub -> _WavePainter (size=0x18)
    // 0x10a99c4: mov             x1, x0
    // 0x10a99c8: r0 = Instance_Color
    //     0x10a99c8: add             x0, PP, #0x7b, lsl #12  ; [pp+0x7b788] Obj!Color@12a6bd1
    //     0x10a99cc: ldr             x0, [x0, #0x788]
    // 0x10a99d0: stur            x1, [fp, #-0x10]
    // 0x10a99d4: StoreField: r1->field_b = r0
    //     0x10a99d4: stur            w0, [x1, #0xb]
    // 0x10a99d8: ldr             x0, [fp, #0x18]
    // 0x10a99dc: LoadField: d0 = r0->field_7
    //     0x10a99dc: ldur            d0, [x0, #7]
    // 0x10a99e0: StoreField: r1->field_f = d0
    //     0x10a99e0: stur            d0, [x1, #0xf]
    // 0x10a99e4: r0 = CustomPaint()
    //     0x10a99e4: bl              #0xd0a594  ; AllocateCustomPaintStub -> CustomPaint (size=0x24)
    // 0x10a99e8: ldur            x1, [fp, #-0x10]
    // 0x10a99ec: StoreField: r0->field_f = r1
    //     0x10a99ec: stur            w1, [x0, #0xf]
    // 0x10a99f0: ldur            x1, [fp, #-8]
    // 0x10a99f4: ArrayStore: r0[0] = r1  ; List_4
    //     0x10a99f4: stur            w1, [x0, #0x17]
    // 0x10a99f8: r1 = false
    //     0x10a99f8: add             x1, NULL, #0x30  ; false
    // 0x10a99fc: StoreField: r0->field_1b = r1
    //     0x10a99fc: stur            w1, [x0, #0x1b]
    // 0x10a9a00: StoreField: r0->field_1f = r1
    //     0x10a9a00: stur            w1, [x0, #0x1f]
    // 0x10a9a04: LeaveFrame
    //     0x10a9a04: mov             SP, fp
    //     0x10a9a08: ldp             fp, lr, [SP], #0x10
    // 0x10a9a0c: ret
    //     0x10a9a0c: ret             
  }
}

// class id: 6035, size: 0x14, field offset: 0x14
class ProfileView extends GetView<dynamic> {

  _ ProfileView(/* No info */) {
    // ** addr: 0xd7d56c, size: 0x9c
    // 0xd7d56c: EnterFrame
    //     0xd7d56c: stp             fp, lr, [SP, #-0x10]!
    //     0xd7d570: mov             fp, SP
    // 0xd7d574: AllocStack(0x18)
    //     0xd7d574: sub             SP, SP, #0x18
    // 0xd7d578: CheckStackOverflow
    //     0xd7d578: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xd7d57c: cmp             SP, x16
    //     0xd7d580: b.ls            #0xd7d600
    // 0xd7d584: r0 = LoadStaticField(0x13e8)
    //     0xd7d584: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xd7d588: ldr             x0, [x0, #0x27d0]
    // 0xd7d58c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xd7d590: cmp             w0, w16
    // 0xd7d594: b.ne            #0xd7d5a0
    // 0xd7d598: r2 = Get
    //     0xd7d598: ldr             x2, [PP, #0x79d0]  ; [pp+0x79d0] Field <::.Get>: static late final (offset: 0x13e8)
    // 0xd7d59c: r0 = InitLateFinalStaticField()
    //     0xd7d59c: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xd7d5a0: r0 = ProfileController()
    //     0xd7d5a0: bl              #0xd7de9c  ; AllocateProfileControllerStub -> ProfileController (size=0x3c)
    // 0xd7d5a4: mov             x1, x0
    // 0xd7d5a8: stur            x0, [fp, #-8]
    // 0xd7d5ac: r0 = ProfileController()
    //     0xd7d5ac: bl              #0xd7d6a8  ; [package:simaster_ugm/app/modules/profile/controllers/profile_controller.dart] ProfileController::ProfileController
    // 0xd7d5b0: r16 = <ProfileController>
    //     0xd7d5b0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14900] TypeArguments: <ProfileController>
    //     0xd7d5b4: ldr             x16, [x16, #0x900]
    // 0xd7d5b8: ldur            lr, [fp, #-8]
    // 0xd7d5bc: stp             lr, x16, [SP]
    // 0xd7d5c0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0xd7d5c0: ldr             x4, [PP, #0xf68]  ; [pp+0xf68] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0xd7d5c4: r0 = Inst.put()
    //     0xd7d5c4: bl              #0x91e5e4  ; [package:get/get_instance/src/extension_instance.dart] ::Inst.put
    // 0xd7d5c8: r16 = <UserController>
    //     0xd7d5c8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14938] TypeArguments: <UserController>
    //     0xd7d5cc: ldr             x16, [x16, #0x938]
    // 0xd7d5d0: str             x16, [SP]
    // 0xd7d5d4: r4 = const [0x1, 0, 0, 0, null]
    //     0xd7d5d4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0, 0, 0, Null]
    // 0xd7d5d8: r0 = Inst.find()
    //     0xd7d5d8: bl              #0xd7c248  ; [package:get/get_instance/src/extension_instance.dart] ::Inst.find
    // 0xd7d5dc: r16 = "TestSession"
    //     0xd7d5dc: add             x16, PP, #0x14, lsl #12  ; [pp+0x14940] "TestSession"
    //     0xd7d5e0: ldr             x16, [x16, #0x940]
    // 0xd7d5e4: stp             x16, NULL, [SP]
    // 0xd7d5e8: r4 = const [0, 0x2, 0x2, 0x2, null]
    //     0xd7d5e8: ldr             x4, [PP, #0x148]  ; [pp+0x148] List(5) [0, 0x2, 0x2, 0x2, Null]
    // 0xd7d5ec: r0 = String.fromEnvironment()
    //     0xd7d5ec: bl              #0xd7d608  ; [dart:core] String::String.fromEnvironment
    // 0xd7d5f0: r0 = Null
    //     0xd7d5f0: mov             x0, NULL
    // 0xd7d5f4: LeaveFrame
    //     0xd7d5f4: mov             SP, fp
    //     0xd7d5f8: ldp             fp, lr, [SP], #0x10
    // 0xd7d5fc: ret
    //     0xd7d5fc: ret             
    // 0xd7d600: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xd7d600: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xd7d604: b               #0xd7d584
  }
  _ build(/* No info */) {
    // ** addr: 0x103f404, size: 0x1058
    // 0x103f404: EnterFrame
    //     0x103f404: stp             fp, lr, [SP, #-0x10]!
    //     0x103f408: mov             fp, SP
    // 0x103f40c: AllocStack(0xa8)
    //     0x103f40c: sub             SP, SP, #0xa8
    // 0x103f410: SetupParameters(ProfileView this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x103f410: stur            x1, [fp, #-8]
    //     0x103f414: stur            x2, [fp, #-0x10]
    // 0x103f418: CheckStackOverflow
    //     0x103f418: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x103f41c: cmp             SP, x16
    //     0x103f420: b.ls            #0x10403a4
    // 0x103f424: r1 = 5
    //     0x103f424: mov             x1, #5
    // 0x103f428: r0 = AllocateContext()
    //     0x103f428: bl              #0x13de838  ; AllocateContextStub
    // 0x103f42c: ldur            x1, [fp, #-8]
    // 0x103f430: stur            x0, [fp, #-0x18]
    // 0x103f434: StoreField: r0->field_f = r1
    //     0x103f434: stur            w1, [x0, #0xf]
    // 0x103f438: ldur            x2, [fp, #-0x10]
    // 0x103f43c: StoreField: r0->field_13 = r2
    //     0x103f43c: stur            w2, [x0, #0x13]
    // 0x103f440: r0 = LoadStaticField(0x13e8)
    //     0x103f440: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x103f444: ldr             x0, [x0, #0x27d0]
    // 0x103f448: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x103f44c: cmp             w0, w16
    // 0x103f450: b.ne            #0x103f45c
    // 0x103f454: r2 = Get
    //     0x103f454: ldr             x2, [PP, #0x79d0]  ; [pp+0x79d0] Field <::.Get>: static late final (offset: 0x13e8)
    // 0x103f458: r0 = InitLateFinalStaticField()
    //     0x103f458: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x103f45c: r1 = false
    //     0x103f45c: add             x1, NULL, #0x30  ; false
    // 0x103f460: r0 = BoolExtension.obs()
    //     0x103f460: bl              #0x91f5a0  ; [package:get/get_rx/src/rx_types/rx_types.dart] ::BoolExtension.obs
    // 0x103f464: stur            x0, [fp, #-0x10]
    // 0x103f468: r0 = LoadingController()
    //     0x103f468: bl              #0x91f594  ; AllocateLoadingControllerStub -> LoadingController (size=0x20)
    // 0x103f46c: mov             x3, x0
    // 0x103f470: ldur            x0, [fp, #-0x10]
    // 0x103f474: stur            x3, [fp, #-0x20]
    // 0x103f478: StoreField: r3->field_1b = r0
    //     0x103f478: stur            w0, [x3, #0x1b]
    // 0x103f47c: r1 = <((dynamic this) => void?)?>
    //     0x103f47c: ldr             x1, [PP, #0x1e50]  ; [pp+0x1e50] TypeArguments: <((dynamic this) => void?)?>
    // 0x103f480: r2 = 0
    //     0x103f480: mov             x2, #0
    // 0x103f484: r0 = _GrowableList()
    //     0x103f484: bl              #0x7d9940  ; [dart:core] _GrowableList::_GrowableList
    // 0x103f488: ldur            x2, [fp, #-0x20]
    // 0x103f48c: ArrayStore: r2[0] = r0  ; List_4
    //     0x103f48c: stur            w0, [x2, #0x17]
    //     0x103f490: ldurb           w16, [x2, #-1]
    //     0x103f494: ldurb           w17, [x0, #-1]
    //     0x103f498: and             x16, x17, x16, lsr #2
    //     0x103f49c: tst             x16, HEAP, lsr #32
    //     0x103f4a0: b.eq            #0x103f4a8
    //     0x103f4a4: bl              #0x13ddfb4  ; WriteBarrierWrappersStub
    // 0x103f4a8: mov             x1, x2
    // 0x103f4ac: r0 = GetLifeCycle()
    //     0x103f4ac: bl              #0x8be9a4  ; [package:get/get_instance/src/lifecycle.dart] GetLifeCycle::GetLifeCycle
    // 0x103f4b0: r16 = <LoadingController>
    //     0x103f4b0: add             x16, PP, #0x17, lsl #12  ; [pp+0x175b0] TypeArguments: <LoadingController>
    //     0x103f4b4: ldr             x16, [x16, #0x5b0]
    // 0x103f4b8: ldur            lr, [fp, #-0x20]
    // 0x103f4bc: stp             lr, x16, [SP]
    // 0x103f4c0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x103f4c0: ldr             x4, [PP, #0xf68]  ; [pp+0xf68] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x103f4c4: r0 = Inst.put()
    //     0x103f4c4: bl              #0x91e5e4  ; [package:get/get_instance/src/extension_instance.dart] ::Inst.put
    // 0x103f4c8: ldur            x2, [fp, #-0x18]
    // 0x103f4cc: ArrayStore: r2[0] = r0  ; List_4
    //     0x103f4cc: stur            w0, [x2, #0x17]
    //     0x103f4d0: ldurb           w16, [x2, #-1]
    //     0x103f4d4: ldurb           w17, [x0, #-1]
    //     0x103f4d8: and             x16, x17, x16, lsr #2
    //     0x103f4dc: tst             x16, HEAP, lsr #32
    //     0x103f4e0: b.eq            #0x103f4e8
    //     0x103f4e4: bl              #0x13ddfb4  ; WriteBarrierWrappersStub
    // 0x103f4e8: LoadField: r1 = r2->field_13
    //     0x103f4e8: ldur            w1, [x2, #0x13]
    // 0x103f4ec: DecompressPointer r1
    //     0x103f4ec: add             x1, x1, HEAP, lsl #32
    // 0x103f4f0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x103f4f0: ldr             x4, [PP, #0xe8]  ; [pp+0xe8] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x103f4f4: r0 = _of()
    //     0x103f4f4: bl              #0x8651cc  ; [package:flutter/src/widgets/media_query.dart] MediaQuery::_of
    // 0x103f4f8: LoadField: r1 = r0->field_7
    //     0x103f4f8: ldur            w1, [x0, #7]
    // 0x103f4fc: DecompressPointer r1
    //     0x103f4fc: add             x1, x1, HEAP, lsl #32
    // 0x103f500: LoadField: d0 = r1->field_7
    //     0x103f500: ldur            d0, [x1, #7]
    // 0x103f504: LoadField: d1 = r1->field_f
    //     0x103f504: ldur            d1, [x1, #0xf]
    // 0x103f508: fcmp            d0, d1
    // 0x103f50c: b.le            #0x103f51c
    // 0x103f510: r0 = Instance_Orientation
    //     0x103f510: add             x0, PP, #0x14, lsl #12  ; [pp+0x143c0] Obj!Orientation@12c2ee1
    //     0x103f514: ldr             x0, [x0, #0x3c0]
    // 0x103f518: b               #0x103f524
    // 0x103f51c: r0 = Instance_Orientation
    //     0x103f51c: add             x0, PP, #0x14, lsl #12  ; [pp+0x143c8] Obj!Orientation@12c2ec1
    //     0x103f520: ldr             x0, [x0, #0x3c8]
    // 0x103f524: ldur            x2, [fp, #-0x18]
    // 0x103f528: r16 = Instance_Orientation
    //     0x103f528: add             x16, PP, #0x14, lsl #12  ; [pp+0x143c0] Obj!Orientation@12c2ee1
    //     0x103f52c: ldr             x16, [x16, #0x3c0]
    // 0x103f530: cmp             w0, w16
    // 0x103f534: r16 = true
    //     0x103f534: add             x16, NULL, #0x20  ; true
    // 0x103f538: r17 = false
    //     0x103f538: add             x17, NULL, #0x30  ; false
    // 0x103f53c: csel            x1, x16, x17, eq
    // 0x103f540: StoreField: r2->field_1b = r1
    //     0x103f540: stur            w1, [x2, #0x1b]
    // 0x103f544: LoadField: r1 = r2->field_13
    //     0x103f544: ldur            w1, [x2, #0x13]
    // 0x103f548: DecompressPointer r1
    //     0x103f548: add             x1, x1, HEAP, lsl #32
    // 0x103f54c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x103f54c: ldr             x4, [PP, #0xe8]  ; [pp+0xe8] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x103f550: r0 = _of()
    //     0x103f550: bl              #0x8651cc  ; [package:flutter/src/widgets/media_query.dart] MediaQuery::_of
    // 0x103f554: LoadField: r1 = r0->field_7
    //     0x103f554: ldur            w1, [x0, #7]
    // 0x103f558: DecompressPointer r1
    //     0x103f558: add             x1, x1, HEAP, lsl #32
    // 0x103f55c: r0 = shortestSide()
    //     0x103f55c: bl              #0xb78b04  ; [dart:ui] Size::shortestSide
    // 0x103f560: mov             v1.16b, v0.16b
    // 0x103f564: d0 = 600.000000
    //     0x103f564: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a50] IMM: double(600) from 0x4082c00000000000
    //     0x103f568: ldr             d0, [x17, #0xa50]
    // 0x103f56c: fcmp            d1, d0
    // 0x103f570: r16 = true
    //     0x103f570: add             x16, NULL, #0x20  ; true
    // 0x103f574: r17 = false
    //     0x103f574: add             x17, NULL, #0x30  ; false
    // 0x103f578: csel            x0, x16, x17, gt
    // 0x103f57c: ldur            x2, [fp, #-0x18]
    // 0x103f580: stur            x0, [fp, #-0x10]
    // 0x103f584: StoreField: r2->field_1f = r0
    //     0x103f584: stur            w0, [x2, #0x1f]
    // 0x103f588: LoadField: r1 = r2->field_13
    //     0x103f588: ldur            w1, [x2, #0x13]
    // 0x103f58c: DecompressPointer r1
    //     0x103f58c: add             x1, x1, HEAP, lsl #32
    // 0x103f590: r0 = colorsMetronic()
    //     0x103f590: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x103f594: LoadField: r2 = r0->field_13
    //     0x103f594: ldur            w2, [x0, #0x13]
    // 0x103f598: DecompressPointer r2
    //     0x103f598: add             x2, x2, HEAP, lsl #32
    // 0x103f59c: ldur            x0, [fp, #-0x18]
    // 0x103f5a0: stur            x2, [fp, #-0x20]
    // 0x103f5a4: LoadField: r1 = r0->field_13
    //     0x103f5a4: ldur            w1, [x0, #0x13]
    // 0x103f5a8: DecompressPointer r1
    //     0x103f5a8: add             x1, x1, HEAP, lsl #32
    // 0x103f5ac: r0 = colorsMetronic()
    //     0x103f5ac: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x103f5b0: LoadField: r2 = r0->field_f3
    //     0x103f5b0: ldur            w2, [x0, #0xf3]
    // 0x103f5b4: DecompressPointer r2
    //     0x103f5b4: add             x2, x2, HEAP, lsl #32
    // 0x103f5b8: ldur            x0, [fp, #-0x18]
    // 0x103f5bc: stur            x2, [fp, #-0x28]
    // 0x103f5c0: LoadField: r1 = r0->field_13
    //     0x103f5c0: ldur            w1, [x0, #0x13]
    // 0x103f5c4: DecompressPointer r1
    //     0x103f5c4: add             x1, x1, HEAP, lsl #32
    // 0x103f5c8: r0 = colorsMetronic()
    //     0x103f5c8: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x103f5cc: LoadField: r3 = r0->field_13
    //     0x103f5cc: ldur            w3, [x0, #0x13]
    // 0x103f5d0: DecompressPointer r3
    //     0x103f5d0: add             x3, x3, HEAP, lsl #32
    // 0x103f5d4: stur            x3, [fp, #-0x38]
    // 0x103f5d8: r0 = LoadStaticField(0x1674)
    //     0x103f5d8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x103f5dc: ldr             x0, [x0, #0x2ce8]
    // 0x103f5e0: stur            x0, [fp, #-0x30]
    // 0x103f5e4: r1 = LoadStaticField(0x1680)
    //     0x103f5e4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x103f5e8: ldr             x1, [x1, #0x2d00]
    // 0x103f5ec: tbnz            w1, #4, #0x103f610
    // 0x103f5f0: d1 = 0.500000
    //     0x103f5f0: fmov            d1, #0.50000000
    // 0x103f5f4: d0 = 0.800000
    //     0x103f5f4: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103f5f8: ldr             d0, [x17, #0xa58]
    // 0x103f5fc: LoadField: d2 = r0->field_7
    //     0x103f5fc: ldur            d2, [x0, #7]
    // 0x103f600: fmul            d3, d2, d0
    // 0x103f604: fmul            d2, d3, d1
    // 0x103f608: mov             v1.16b, v2.16b
    // 0x103f60c: b               #0x103f628
    // 0x103f610: d1 = 0.500000
    //     0x103f610: fmov            d1, #0.50000000
    // 0x103f614: d0 = 0.800000
    //     0x103f614: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103f618: ldr             d0, [x17, #0xa58]
    // 0x103f61c: LoadField: d2 = r0->field_7
    //     0x103f61c: ldur            d2, [x0, #7]
    // 0x103f620: fmul            d3, d2, d1
    // 0x103f624: mov             v1.16b, v3.16b
    // 0x103f628: r4 = 4
    //     0x103f628: mov             x4, #4
    // 0x103f62c: mov             x2, x4
    // 0x103f630: stur            d1, [fp, #-0x80]
    // 0x103f634: r1 = Null
    //     0x103f634: mov             x1, NULL
    // 0x103f638: r0 = AllocateArray()
    //     0x103f638: bl              #0x13df928  ; AllocateArrayStub
    // 0x103f63c: stur            x0, [fp, #-0x40]
    // 0x103f640: r16 = Instance__AnimatedWaveBackground
    //     0x103f640: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e180] Obj!_AnimatedWaveBackground@12b4c71
    //     0x103f644: ldr             x16, [x16, #0x180]
    // 0x103f648: StoreField: r0->field_f = r16
    //     0x103f648: stur            w16, [x0, #0xf]
    // 0x103f64c: r16 = Instance__MascotSwitcher
    //     0x103f64c: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e188] Obj!_MascotSwitcher@12b6b41
    //     0x103f650: ldr             x16, [x16, #0x188]
    // 0x103f654: StoreField: r0->field_13 = r16
    //     0x103f654: stur            w16, [x0, #0x13]
    // 0x103f658: r1 = <Widget>
    //     0x103f658: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x103f65c: r0 = AllocateGrowableArray()
    //     0x103f65c: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x103f660: mov             x1, x0
    // 0x103f664: ldur            x0, [fp, #-0x40]
    // 0x103f668: stur            x1, [fp, #-0x48]
    // 0x103f66c: StoreField: r1->field_f = r0
    //     0x103f66c: stur            w0, [x1, #0xf]
    // 0x103f670: r2 = 4
    //     0x103f670: mov             x2, #4
    // 0x103f674: StoreField: r1->field_b = r2
    //     0x103f674: stur            w2, [x1, #0xb]
    // 0x103f678: r0 = Stack()
    //     0x103f678: bl              #0xd1a854  ; AllocateStackStub -> Stack (size=0x20)
    // 0x103f67c: mov             x1, x0
    // 0x103f680: r0 = Instance_AlignmentDirectional
    //     0x103f680: add             x0, PP, #0x15, lsl #12  ; [pp+0x158d8] Obj!AlignmentDirectional@129e611
    //     0x103f684: ldr             x0, [x0, #0x8d8]
    // 0x103f688: stur            x1, [fp, #-0x50]
    // 0x103f68c: StoreField: r1->field_f = r0
    //     0x103f68c: stur            w0, [x1, #0xf]
    // 0x103f690: r0 = Instance_StackFit
    //     0x103f690: add             x0, PP, #0x15, lsl #12  ; [pp+0x158e0] Obj!StackFit@12c4221
    //     0x103f694: ldr             x0, [x0, #0x8e0]
    // 0x103f698: ArrayStore: r1[0] = r0  ; List_4
    //     0x103f698: stur            w0, [x1, #0x17]
    // 0x103f69c: r2 = Instance_Clip
    //     0x103f69c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15840] Obj!Clip@12c80c1
    //     0x103f6a0: ldr             x2, [x2, #0x840]
    // 0x103f6a4: StoreField: r1->field_1b = r2
    //     0x103f6a4: stur            w2, [x1, #0x1b]
    // 0x103f6a8: ldur            x3, [fp, #-0x48]
    // 0x103f6ac: StoreField: r1->field_b = r3
    //     0x103f6ac: stur            w3, [x1, #0xb]
    // 0x103f6b0: ldur            d0, [fp, #-0x80]
    // 0x103f6b4: r3 = inline_Allocate_Double()
    //     0x103f6b4: ldp             x3, x4, [THR, #0x60]  ; THR::top
    //     0x103f6b8: add             x3, x3, #0x10
    //     0x103f6bc: cmp             x4, x3
    //     0x103f6c0: b.ls            #0x10403ac
    //     0x103f6c4: str             x3, [THR, #0x60]  ; THR::top
    //     0x103f6c8: sub             x3, x3, #0xf
    //     0x103f6cc: mov             x4, #0xe19c
    //     0x103f6d0: movk            x4, #3, lsl #16
    //     0x103f6d4: stur            x4, [x3, #-1]
    // 0x103f6d8: dmb             ishst
    // 0x103f6dc: StoreField: r3->field_7 = d0
    //     0x103f6dc: stur            d0, [x3, #7]
    // 0x103f6e0: stur            x3, [fp, #-0x40]
    // 0x103f6e4: r0 = Container()
    //     0x103f6e4: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0x103f6e8: stur            x0, [fp, #-0x48]
    // 0x103f6ec: ldur            x16, [fp, #-0x38]
    // 0x103f6f0: ldur            lr, [fp, #-0x30]
    // 0x103f6f4: stp             lr, x16, [SP, #0x10]
    // 0x103f6f8: ldur            x16, [fp, #-0x40]
    // 0x103f6fc: ldur            lr, [fp, #-0x50]
    // 0x103f700: stp             lr, x16, [SP]
    // 0x103f704: mov             x1, x0
    // 0x103f708: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, color, 0x1, height, 0x3, width, 0x2, null]
    //     0x103f708: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e190] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "color", 0x1, "height", 0x3, "width", 0x2, Null]
    //     0x103f70c: ldr             x4, [x4, #0x190]
    // 0x103f710: r0 = Container()
    //     0x103f710: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x103f714: r0 = LoadStaticField(0x1674)
    //     0x103f714: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x103f718: ldr             x0, [x0, #0x2ce8]
    // 0x103f71c: r1 = LoadStaticField(0x1680)
    //     0x103f71c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x103f720: ldr             x1, [x1, #0x2d00]
    // 0x103f724: tbnz            w1, #4, #0x103f74c
    // 0x103f728: d1 = 0.083333
    //     0x103f728: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e198] IMM: double(0.08333333333333333) from 0x3fb5555555555555
    //     0x103f72c: ldr             d1, [x17, #0x198]
    // 0x103f730: d0 = 0.800000
    //     0x103f730: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103f734: ldr             d0, [x17, #0xa58]
    // 0x103f738: LoadField: d2 = r0->field_7
    //     0x103f738: ldur            d2, [x0, #7]
    // 0x103f73c: fmul            d3, d2, d0
    // 0x103f740: fmul            d2, d3, d1
    // 0x103f744: mov             v1.16b, v2.16b
    // 0x103f748: b               #0x103f768
    // 0x103f74c: d1 = 0.083333
    //     0x103f74c: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e198] IMM: double(0.08333333333333333) from 0x3fb5555555555555
    //     0x103f750: ldr             d1, [x17, #0x198]
    // 0x103f754: d0 = 0.800000
    //     0x103f754: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103f758: ldr             d0, [x17, #0xa58]
    // 0x103f75c: LoadField: d2 = r0->field_7
    //     0x103f75c: ldur            d2, [x0, #7]
    // 0x103f760: fmul            d3, d2, d1
    // 0x103f764: mov             v1.16b, v3.16b
    // 0x103f768: ldur            x2, [fp, #-0x18]
    // 0x103f76c: ldur            x0, [fp, #-0x48]
    // 0x103f770: stur            d1, [fp, #-0x80]
    // 0x103f774: LoadField: r1 = r2->field_13
    //     0x103f774: ldur            w1, [x2, #0x13]
    // 0x103f778: DecompressPointer r1
    //     0x103f778: add             x1, x1, HEAP, lsl #32
    // 0x103f77c: r0 = colorsMetronic()
    //     0x103f77c: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x103f780: LoadField: r1 = r0->field_f3
    //     0x103f780: ldur            w1, [x0, #0xf3]
    // 0x103f784: DecompressPointer r1
    //     0x103f784: add             x1, x1, HEAP, lsl #32
    // 0x103f788: stur            x1, [fp, #-0x30]
    // 0x103f78c: r0 = LoadStaticField(0x176c)
    //     0x103f78c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x103f790: ldr             x0, [x0, #0x2ed8]
    // 0x103f794: LoadField: d0 = r0->field_7
    //     0x103f794: ldur            d0, [x0, #7]
    // 0x103f798: stur            d0, [fp, #-0x88]
    // 0x103f79c: r0 = Radius()
    //     0x103f79c: bl              #0x8a73d4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x103f7a0: ldur            d0, [fp, #-0x88]
    // 0x103f7a4: stur            x0, [fp, #-0x38]
    // 0x103f7a8: StoreField: r0->field_7 = d0
    //     0x103f7a8: stur            d0, [x0, #7]
    // 0x103f7ac: StoreField: r0->field_f = d0
    //     0x103f7ac: stur            d0, [x0, #0xf]
    // 0x103f7b0: r0 = Radius()
    //     0x103f7b0: bl              #0x8a73d4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x103f7b4: ldur            d0, [fp, #-0x88]
    // 0x103f7b8: stur            x0, [fp, #-0x40]
    // 0x103f7bc: StoreField: r0->field_7 = d0
    //     0x103f7bc: stur            d0, [x0, #7]
    // 0x103f7c0: StoreField: r0->field_f = d0
    //     0x103f7c0: stur            d0, [x0, #0xf]
    // 0x103f7c4: r0 = BorderRadius()
    //     0x103f7c4: bl              #0x8a73c8  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x103f7c8: mov             x1, x0
    // 0x103f7cc: ldur            x0, [fp, #-0x38]
    // 0x103f7d0: stur            x1, [fp, #-0x50]
    // 0x103f7d4: StoreField: r1->field_7 = r0
    //     0x103f7d4: stur            w0, [x1, #7]
    // 0x103f7d8: ldur            x0, [fp, #-0x40]
    // 0x103f7dc: StoreField: r1->field_b = r0
    //     0x103f7dc: stur            w0, [x1, #0xb]
    // 0x103f7e0: r0 = Instance_Radius
    //     0x103f7e0: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1a0] Obj!Radius@12a71a1
    //     0x103f7e4: ldr             x0, [x0, #0x1a0]
    // 0x103f7e8: StoreField: r1->field_f = r0
    //     0x103f7e8: stur            w0, [x1, #0xf]
    // 0x103f7ec: StoreField: r1->field_13 = r0
    //     0x103f7ec: stur            w0, [x1, #0x13]
    // 0x103f7f0: r0 = BoxDecoration()
    //     0x103f7f0: bl              #0x8a721c  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x103f7f4: mov             x1, x0
    // 0x103f7f8: ldur            x0, [fp, #-0x30]
    // 0x103f7fc: stur            x1, [fp, #-0x38]
    // 0x103f800: StoreField: r1->field_7 = r0
    //     0x103f800: stur            w0, [x1, #7]
    // 0x103f804: ldur            x0, [fp, #-0x50]
    // 0x103f808: StoreField: r1->field_13 = r0
    //     0x103f808: stur            w0, [x1, #0x13]
    // 0x103f80c: r0 = Instance_BoxShape
    //     0x103f80c: add             x0, PP, #0x17, lsl #12  ; [pp+0x171f8] Obj!BoxShape@12c4921
    //     0x103f810: ldr             x0, [x0, #0x1f8]
    // 0x103f814: StoreField: r1->field_23 = r0
    //     0x103f814: stur            w0, [x1, #0x23]
    // 0x103f818: ldur            d0, [fp, #-0x80]
    // 0x103f81c: r2 = inline_Allocate_Double()
    //     0x103f81c: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x103f820: add             x2, x2, #0x10
    //     0x103f824: cmp             x3, x2
    //     0x103f828: b.ls            #0x10403d0
    //     0x103f82c: str             x2, [THR, #0x60]  ; THR::top
    //     0x103f830: sub             x2, x2, #0xf
    //     0x103f834: mov             x3, #0xe19c
    //     0x103f838: movk            x3, #3, lsl #16
    //     0x103f83c: stur            x3, [x2, #-1]
    // 0x103f840: dmb             ishst
    // 0x103f844: StoreField: r2->field_7 = d0
    //     0x103f844: stur            d0, [x2, #7]
    // 0x103f848: stur            x2, [fp, #-0x30]
    // 0x103f84c: r0 = Container()
    //     0x103f84c: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0x103f850: stur            x0, [fp, #-0x40]
    // 0x103f854: ldur            x16, [fp, #-0x30]
    // 0x103f858: r30 = inf
    //     0x103f858: add             lr, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x103f85c: ldr             lr, [lr, #0x8a8]
    // 0x103f860: stp             lr, x16, [SP, #8]
    // 0x103f864: ldur            x16, [fp, #-0x38]
    // 0x103f868: str             x16, [SP]
    // 0x103f86c: mov             x1, x0
    // 0x103f870: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x1, width, 0x2, null]
    //     0x103f870: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e1a8] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x1, "width", 0x2, Null]
    //     0x103f874: ldr             x4, [x4, #0x1a8]
    // 0x103f878: r0 = Container()
    //     0x103f878: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x103f87c: r1 = Null
    //     0x103f87c: mov             x1, NULL
    // 0x103f880: r2 = 6
    //     0x103f880: mov             x2, #6
    // 0x103f884: r0 = AllocateArray()
    //     0x103f884: bl              #0x13df928  ; AllocateArrayStub
    // 0x103f888: mov             x2, x0
    // 0x103f88c: ldur            x0, [fp, #-0x48]
    // 0x103f890: stur            x2, [fp, #-0x30]
    // 0x103f894: StoreField: r2->field_f = r0
    //     0x103f894: stur            w0, [x2, #0xf]
    // 0x103f898: ldur            x0, [fp, #-0x40]
    // 0x103f89c: StoreField: r2->field_13 = r0
    //     0x103f89c: stur            w0, [x2, #0x13]
    // 0x103f8a0: r16 = Instance__AvatarWithStory
    //     0x103f8a0: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e1b0] Obj!_AvatarWithStory@12b6b31
    //     0x103f8a4: ldr             x16, [x16, #0x1b0]
    // 0x103f8a8: ArrayStore: r2[0] = r16  ; List_4
    //     0x103f8a8: stur            w16, [x2, #0x17]
    // 0x103f8ac: r1 = <Widget>
    //     0x103f8ac: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x103f8b0: r0 = AllocateGrowableArray()
    //     0x103f8b0: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x103f8b4: mov             x1, x0
    // 0x103f8b8: ldur            x0, [fp, #-0x30]
    // 0x103f8bc: stur            x1, [fp, #-0x38]
    // 0x103f8c0: StoreField: r1->field_f = r0
    //     0x103f8c0: stur            w0, [x1, #0xf]
    // 0x103f8c4: r0 = 6
    //     0x103f8c4: mov             x0, #6
    // 0x103f8c8: StoreField: r1->field_b = r0
    //     0x103f8c8: stur            w0, [x1, #0xb]
    // 0x103f8cc: r0 = Stack()
    //     0x103f8cc: bl              #0xd1a854  ; AllocateStackStub -> Stack (size=0x20)
    // 0x103f8d0: mov             x1, x0
    // 0x103f8d4: r0 = Instance_Alignment
    //     0x103f8d4: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1b8] Obj!Alignment@129e6f1
    //     0x103f8d8: ldr             x0, [x0, #0x1b8]
    // 0x103f8dc: stur            x1, [fp, #-0x30]
    // 0x103f8e0: StoreField: r1->field_f = r0
    //     0x103f8e0: stur            w0, [x1, #0xf]
    // 0x103f8e4: r0 = Instance_StackFit
    //     0x103f8e4: add             x0, PP, #0x15, lsl #12  ; [pp+0x158e0] Obj!StackFit@12c4221
    //     0x103f8e8: ldr             x0, [x0, #0x8e0]
    // 0x103f8ec: ArrayStore: r1[0] = r0  ; List_4
    //     0x103f8ec: stur            w0, [x1, #0x17]
    // 0x103f8f0: r0 = Instance_Clip
    //     0x103f8f0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15850] Obj!Clip@12c80e1
    //     0x103f8f4: ldr             x0, [x0, #0x850]
    // 0x103f8f8: StoreField: r1->field_1b = r0
    //     0x103f8f8: stur            w0, [x1, #0x1b]
    // 0x103f8fc: ldur            x0, [fp, #-0x38]
    // 0x103f900: StoreField: r1->field_b = r0
    //     0x103f900: stur            w0, [x1, #0xb]
    // 0x103f904: r0 = Container()
    //     0x103f904: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0x103f908: stur            x0, [fp, #-0x38]
    // 0x103f90c: ldur            x16, [fp, #-0x28]
    // 0x103f910: ldur            lr, [fp, #-0x30]
    // 0x103f914: stp             lr, x16, [SP]
    // 0x103f918: mov             x1, x0
    // 0x103f91c: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, color, 0x1, null]
    //     0x103f91c: add             x4, PP, #0x15, lsl #12  ; [pp+0x158b0] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "color", 0x1, Null]
    //     0x103f920: ldr             x4, [x4, #0x8b0]
    // 0x103f924: r0 = Container()
    //     0x103f924: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x103f928: r0 = LoadStaticField(0x16a8)
    //     0x103f928: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x103f92c: ldr             x0, [x0, #0x2d50]
    // 0x103f930: LoadField: d0 = r0->field_7
    //     0x103f930: ldur            d0, [x0, #7]
    // 0x103f934: d1 = 2.000000
    //     0x103f934: fmov            d1, #2.00000000
    // 0x103f938: fadd            d2, d0, d1
    // 0x103f93c: stur            d2, [fp, #-0x80]
    // 0x103f940: r0 = EdgeInsets()
    //     0x103f940: bl              #0x858568  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x103f944: ldur            d0, [fp, #-0x80]
    // 0x103f948: stur            x0, [fp, #-0x28]
    // 0x103f94c: StoreField: r0->field_7 = d0
    //     0x103f94c: stur            d0, [x0, #7]
    // 0x103f950: StoreField: r0->field_f = rZR
    //     0x103f950: stur            xzr, [x0, #0xf]
    // 0x103f954: ArrayStore: r0[0] = d0  ; List_8
    //     0x103f954: stur            d0, [x0, #0x17]
    // 0x103f958: StoreField: r0->field_1f = d0
    //     0x103f958: stur            d0, [x0, #0x1f]
    // 0x103f95c: ldur            x2, [fp, #-0x18]
    // 0x103f960: LoadField: r1 = r2->field_13
    //     0x103f960: ldur            w1, [x2, #0x13]
    // 0x103f964: DecompressPointer r1
    //     0x103f964: add             x1, x1, HEAP, lsl #32
    // 0x103f968: r0 = colorsMetronic()
    //     0x103f968: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x103f96c: LoadField: r1 = r0->field_f3
    //     0x103f96c: ldur            w1, [x0, #0xf3]
    // 0x103f970: DecompressPointer r1
    //     0x103f970: add             x1, x1, HEAP, lsl #32
    // 0x103f974: stur            x1, [fp, #-0x30]
    // 0x103f978: r0 = BoxDecoration()
    //     0x103f978: bl              #0x8a721c  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x103f97c: mov             x2, x0
    // 0x103f980: ldur            x0, [fp, #-0x30]
    // 0x103f984: stur            x2, [fp, #-0x40]
    // 0x103f988: StoreField: r2->field_7 = r0
    //     0x103f988: stur            w0, [x2, #7]
    // 0x103f98c: r0 = Instance_BoxShape
    //     0x103f98c: add             x0, PP, #0x17, lsl #12  ; [pp+0x171f8] Obj!BoxShape@12c4921
    //     0x103f990: ldr             x0, [x0, #0x1f8]
    // 0x103f994: StoreField: r2->field_23 = r0
    //     0x103f994: stur            w0, [x2, #0x23]
    // 0x103f998: ldur            x1, [fp, #-8]
    // 0x103f99c: r0 = controller()
    //     0x103f99c: bl              #0xe67524  ; [package:get/get_state_manager/src/simple/get_view.dart] GetView::controller
    // 0x103f9a0: ldur            x2, [fp, #-0x18]
    // 0x103f9a4: r1 = Function '<anonymous closure>':.
    //     0x103f9a4: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e1c0] AnonymousClosure: (0x10423a8), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x103f9a8: ldr             x1, [x1, #0x1c0]
    // 0x103f9ac: stur            x0, [fp, #-0x30]
    // 0x103f9b0: r0 = AllocateClosure()
    //     0x103f9b0: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x103f9b4: r16 = <UserModel>
    //     0x103f9b4: add             x16, PP, #0x18, lsl #12  ; [pp+0x183d0] TypeArguments: <UserModel>
    //     0x103f9b8: ldr             x16, [x16, #0x3d0]
    // 0x103f9bc: ldur            lr, [fp, #-0x30]
    // 0x103f9c0: stp             lr, x16, [SP, #8]
    // 0x103f9c4: str             x0, [SP]
    // 0x103f9c8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x103f9c8: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x103f9cc: r0 = StateExt.obx()
    //     0x103f9cc: bl              #0xe710a4  ; [package:get/get_state_manager/src/rx_flutter/rx_notifier.dart] ::StateExt.obx
    // 0x103f9d0: stur            x0, [fp, #-0x48]
    // 0x103f9d4: r1 = LoadStaticField(0x16ec)
    //     0x103f9d4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x103f9d8: ldr             x1, [x1, #0x2dd8]
    // 0x103f9dc: r2 = LoadStaticField(0x1674)
    //     0x103f9dc: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x103f9e0: ldr             x2, [x2, #0x2ce8]
    // 0x103f9e4: r3 = LoadStaticField(0x1680)
    //     0x103f9e4: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x103f9e8: ldr             x3, [x3, #0x2d00]
    // 0x103f9ec: tbnz            w3, #4, #0x103fa18
    // 0x103f9f0: d0 = 0.800000
    //     0x103f9f0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103f9f4: ldr             d0, [x17, #0xa58]
    // 0x103f9f8: d1 = 360.000000
    //     0x103f9f8: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x103f9fc: ldr             d1, [x17, #0x180]
    // 0x103fa00: LoadField: d2 = r1->field_7
    //     0x103fa00: ldur            d2, [x1, #7]
    // 0x103fa04: fdiv            d3, d2, d1
    // 0x103fa08: LoadField: d2 = r2->field_7
    //     0x103fa08: ldur            d2, [x2, #7]
    // 0x103fa0c: fmul            d4, d2, d0
    // 0x103fa10: fmul            d2, d3, d4
    // 0x103fa14: b               #0x103fa3c
    // 0x103fa18: d0 = 0.800000
    //     0x103fa18: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103fa1c: ldr             d0, [x17, #0xa58]
    // 0x103fa20: d1 = 360.000000
    //     0x103fa20: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x103fa24: ldr             d1, [x17, #0x180]
    // 0x103fa28: LoadField: d2 = r1->field_7
    //     0x103fa28: ldur            d2, [x1, #7]
    // 0x103fa2c: fdiv            d3, d2, d1
    // 0x103fa30: LoadField: d2 = r2->field_7
    //     0x103fa30: ldur            d2, [x2, #7]
    // 0x103fa34: fmul            d4, d3, d2
    // 0x103fa38: mov             v2.16b, v4.16b
    // 0x103fa3c: ldur            x2, [fp, #-0x18]
    // 0x103fa40: r1 = inline_Allocate_Double()
    //     0x103fa40: ldp             x1, x3, [THR, #0x60]  ; THR::top
    //     0x103fa44: add             x1, x1, #0x10
    //     0x103fa48: cmp             x3, x1
    //     0x103fa4c: b.ls            #0x10403ec
    //     0x103fa50: str             x1, [THR, #0x60]  ; THR::top
    //     0x103fa54: sub             x1, x1, #0xf
    //     0x103fa58: mov             x3, #0xe19c
    //     0x103fa5c: movk            x3, #3, lsl #16
    //     0x103fa60: stur            x3, [x1, #-1]
    // 0x103fa64: dmb             ishst
    // 0x103fa68: StoreField: r1->field_7 = d2
    //     0x103fa68: stur            d2, [x1, #7]
    // 0x103fa6c: stur            x1, [fp, #-0x30]
    // 0x103fa70: r0 = SizedBox()
    //     0x103fa70: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x103fa74: mov             x2, x0
    // 0x103fa78: ldur            x0, [fp, #-0x30]
    // 0x103fa7c: stur            x2, [fp, #-0x50]
    // 0x103fa80: StoreField: r2->field_13 = r0
    //     0x103fa80: stur            w0, [x2, #0x13]
    // 0x103fa84: r1 = "profile"
    //     0x103fa84: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e1c8] "profile"
    //     0x103fa88: ldr             x1, [x1, #0x1c8]
    // 0x103fa8c: r0 = Trans.tr()
    //     0x103fa8c: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x103fa90: stur            x0, [fp, #-0x30]
    // 0x103fa94: r0 = LoadStaticField(0x1714)
    //     0x103fa94: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x103fa98: ldr             x0, [x0, #0x2e28]
    // 0x103fa9c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x103faa0: cmp             w0, w16
    // 0x103faa4: b.ne            #0x103fab4
    // 0x103faa8: r2 = textStyles
    //     0x103faa8: add             x2, PP, #0x15, lsl #12  ; [pp+0x157e8] Field <TypographyCollectionsMetronic.textStyles>: static late (offset: 0x1714)
    //     0x103faac: ldr             x2, [x2, #0x7e8]
    // 0x103fab0: r0 = InitLateStaticField()
    //     0x103fab0: bl              #0x13dda54  ; InitLateStaticFieldStub
    // 0x103fab4: mov             x1, x0
    // 0x103fab8: r0 = h2626600()
    //     0x103fab8: bl              #0xfdc5d4  ; [package:simaster_ugm/design_system/styles/typography_collections.dart] TextStyles::h2626600
    // 0x103fabc: ldur            x2, [fp, #-0x18]
    // 0x103fac0: stur            x0, [fp, #-0x58]
    // 0x103fac4: LoadField: r1 = r2->field_13
    //     0x103fac4: ldur            w1, [x2, #0x13]
    // 0x103fac8: DecompressPointer r1
    //     0x103fac8: add             x1, x1, HEAP, lsl #32
    // 0x103facc: r0 = colorsMetronic()
    //     0x103facc: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x103fad0: LoadField: r1 = r0->field_c7
    //     0x103fad0: ldur            w1, [x0, #0xc7]
    // 0x103fad4: DecompressPointer r1
    //     0x103fad4: add             x1, x1, HEAP, lsl #32
    // 0x103fad8: str             x1, [SP]
    // 0x103fadc: ldur            x1, [fp, #-0x58]
    // 0x103fae0: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x103fae0: add             x4, PP, #0x15, lsl #12  ; [pp+0x157f0] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x103fae4: ldr             x4, [x4, #0x7f0]
    // 0x103fae8: r0 = copyWith()
    //     0x103fae8: bl              #0x8a5ba4  ; [package:flutter/src/painting/text_style.dart] TextStyle::copyWith
    // 0x103faec: stur            x0, [fp, #-0x58]
    // 0x103faf0: r0 = Text()
    //     0x103faf0: bl              #0x8a70a4  ; AllocateTextStub -> Text (size=0x50)
    // 0x103faf4: mov             x1, x0
    // 0x103faf8: ldur            x0, [fp, #-0x30]
    // 0x103fafc: stur            x1, [fp, #-0x60]
    // 0x103fb00: StoreField: r1->field_b = r0
    //     0x103fb00: stur            w0, [x1, #0xb]
    // 0x103fb04: ldur            x0, [fp, #-0x58]
    // 0x103fb08: StoreField: r1->field_13 = r0
    //     0x103fb08: stur            w0, [x1, #0x13]
    // 0x103fb0c: r0 = LoadStaticField(0x16e8)
    //     0x103fb0c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x103fb10: ldr             x0, [x0, #0x2dd0]
    // 0x103fb14: r2 = LoadStaticField(0x1674)
    //     0x103fb14: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x103fb18: ldr             x2, [x2, #0x2ce8]
    // 0x103fb1c: r3 = LoadStaticField(0x1680)
    //     0x103fb1c: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x103fb20: ldr             x3, [x3, #0x2d00]
    // 0x103fb24: tbnz            w3, #4, #0x103fb50
    // 0x103fb28: d0 = 0.800000
    //     0x103fb28: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103fb2c: ldr             d0, [x17, #0xa58]
    // 0x103fb30: d1 = 360.000000
    //     0x103fb30: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x103fb34: ldr             d1, [x17, #0x180]
    // 0x103fb38: LoadField: d2 = r0->field_7
    //     0x103fb38: ldur            d2, [x0, #7]
    // 0x103fb3c: fdiv            d3, d2, d1
    // 0x103fb40: LoadField: d1 = r2->field_7
    //     0x103fb40: ldur            d1, [x2, #7]
    // 0x103fb44: fmul            d2, d1, d0
    // 0x103fb48: fmul            d1, d3, d2
    // 0x103fb4c: b               #0x103fb74
    // 0x103fb50: d0 = 0.800000
    //     0x103fb50: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103fb54: ldr             d0, [x17, #0xa58]
    // 0x103fb58: d1 = 360.000000
    //     0x103fb58: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x103fb5c: ldr             d1, [x17, #0x180]
    // 0x103fb60: LoadField: d2 = r0->field_7
    //     0x103fb60: ldur            d2, [x0, #7]
    // 0x103fb64: fdiv            d3, d2, d1
    // 0x103fb68: LoadField: d1 = r2->field_7
    //     0x103fb68: ldur            d1, [x2, #7]
    // 0x103fb6c: fmul            d2, d3, d1
    // 0x103fb70: mov             v1.16b, v2.16b
    // 0x103fb74: ldur            x2, [fp, #-0x18]
    // 0x103fb78: r0 = inline_Allocate_Double()
    //     0x103fb78: ldp             x0, x3, [THR, #0x60]  ; THR::top
    //     0x103fb7c: add             x0, x0, #0x10
    //     0x103fb80: cmp             x3, x0
    //     0x103fb84: b.ls            #0x1040410
    //     0x103fb88: str             x0, [THR, #0x60]  ; THR::top
    //     0x103fb8c: sub             x0, x0, #0xf
    //     0x103fb90: mov             x3, #0xe19c
    //     0x103fb94: movk            x3, #3, lsl #16
    //     0x103fb98: stur            x3, [x0, #-1]
    // 0x103fb9c: dmb             ishst
    // 0x103fba0: StoreField: r0->field_7 = d1
    //     0x103fba0: stur            d1, [x0, #7]
    // 0x103fba4: stur            x0, [fp, #-0x30]
    // 0x103fba8: r0 = SizedBox()
    //     0x103fba8: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x103fbac: mov             x1, x0
    // 0x103fbb0: ldur            x0, [fp, #-0x30]
    // 0x103fbb4: stur            x1, [fp, #-0x58]
    // 0x103fbb8: StoreField: r1->field_13 = r0
    //     0x103fbb8: stur            w0, [x1, #0x13]
    // 0x103fbbc: r0 = LoadStaticField(0x16a8)
    //     0x103fbbc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x103fbc0: ldr             x0, [x0, #0x2d50]
    // 0x103fbc4: LoadField: d0 = r0->field_7
    //     0x103fbc4: ldur            d0, [x0, #7]
    // 0x103fbc8: stur            d0, [fp, #-0x80]
    // 0x103fbcc: r0 = EdgeInsets()
    //     0x103fbcc: bl              #0x858568  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x103fbd0: ldur            d0, [fp, #-0x80]
    // 0x103fbd4: stur            x0, [fp, #-0x68]
    // 0x103fbd8: StoreField: r0->field_7 = d0
    //     0x103fbd8: stur            d0, [x0, #7]
    // 0x103fbdc: StoreField: r0->field_f = d0
    //     0x103fbdc: stur            d0, [x0, #0xf]
    // 0x103fbe0: ArrayStore: r0[0] = d0  ; List_8
    //     0x103fbe0: stur            d0, [x0, #0x17]
    // 0x103fbe4: StoreField: r0->field_1f = d0
    //     0x103fbe4: stur            d0, [x0, #0x1f]
    // 0x103fbe8: r1 = LoadStaticField(0x16e0)
    //     0x103fbe8: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x103fbec: ldr             x1, [x1, #0x2dc0]
    // 0x103fbf0: stur            x1, [fp, #-0x30]
    // 0x103fbf4: r0 = EdgeInsets()
    //     0x103fbf4: bl              #0x858568  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x103fbf8: stur            x0, [fp, #-0x70]
    // 0x103fbfc: StoreField: r0->field_7 = rZR
    //     0x103fbfc: stur            xzr, [x0, #7]
    // 0x103fc00: ldur            x1, [fp, #-0x30]
    // 0x103fc04: LoadField: d0 = r1->field_7
    //     0x103fc04: ldur            d0, [x1, #7]
    // 0x103fc08: StoreField: r0->field_f = d0
    //     0x103fc08: stur            d0, [x0, #0xf]
    // 0x103fc0c: ArrayStore: r0[0] = rZR  ; List_8
    //     0x103fc0c: stur            xzr, [x0, #0x17]
    // 0x103fc10: StoreField: r0->field_1f = rZR
    //     0x103fc10: stur            xzr, [x0, #0x1f]
    // 0x103fc14: ldur            x1, [fp, #-8]
    // 0x103fc18: r0 = controller()
    //     0x103fc18: bl              #0xe67524  ; [package:get/get_state_manager/src/simple/get_view.dart] GetView::controller
    // 0x103fc1c: r1 = Function '<anonymous closure>':.
    //     0x103fc1c: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e1d0] AnonymousClosure: (0x104204c), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x103fc20: ldr             x1, [x1, #0x1d0]
    // 0x103fc24: r2 = Null
    //     0x103fc24: mov             x2, NULL
    // 0x103fc28: stur            x0, [fp, #-8]
    // 0x103fc2c: r0 = AllocateClosure()
    //     0x103fc2c: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x103fc30: r16 = <UserModel>
    //     0x103fc30: add             x16, PP, #0x18, lsl #12  ; [pp+0x183d0] TypeArguments: <UserModel>
    //     0x103fc34: ldr             x16, [x16, #0x3d0]
    // 0x103fc38: ldur            lr, [fp, #-8]
    // 0x103fc3c: stp             lr, x16, [SP, #8]
    // 0x103fc40: str             x0, [SP]
    // 0x103fc44: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x103fc44: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x103fc48: r0 = StateExt.obx()
    //     0x103fc48: bl              #0xe710a4  ; [package:get/get_state_manager/src/rx_flutter/rx_notifier.dart] ::StateExt.obx
    // 0x103fc4c: stur            x0, [fp, #-8]
    // 0x103fc50: r0 = Container()
    //     0x103fc50: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0x103fc54: stur            x0, [fp, #-0x30]
    // 0x103fc58: ldur            x16, [fp, #-0x68]
    // 0x103fc5c: ldur            lr, [fp, #-0x70]
    // 0x103fc60: stp             lr, x16, [SP, #8]
    // 0x103fc64: ldur            x16, [fp, #-8]
    // 0x103fc68: str             x16, [SP]
    // 0x103fc6c: mov             x1, x0
    // 0x103fc70: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, margin, 0x2, padding, 0x1, null]
    //     0x103fc70: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c4d8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "margin", 0x2, "padding", 0x1, Null]
    //     0x103fc74: ldr             x4, [x4, #0x4d8]
    // 0x103fc78: r0 = Container()
    //     0x103fc78: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x103fc7c: ldur            x2, [fp, #-0x18]
    // 0x103fc80: LoadField: r0 = r2->field_1b
    //     0x103fc80: ldur            w0, [x2, #0x1b]
    // 0x103fc84: DecompressPointer r0
    //     0x103fc84: add             x0, x0, HEAP, lsl #32
    // 0x103fc88: tbnz            w0, #4, #0x103fce8
    // 0x103fc8c: r0 = LoadStaticField(0x1674)
    //     0x103fc8c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x103fc90: ldr             x0, [x0, #0x2ce8]
    // 0x103fc94: r1 = LoadStaticField(0x1680)
    //     0x103fc94: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x103fc98: ldr             x1, [x1, #0x2d00]
    // 0x103fc9c: tbnz            w1, #4, #0x103fcbc
    // 0x103fca0: d1 = 0.625000
    //     0x103fca0: fmov            d1, #0.62500000
    // 0x103fca4: d0 = 0.800000
    //     0x103fca4: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103fca8: ldr             d0, [x17, #0xa58]
    // 0x103fcac: LoadField: d2 = r0->field_7
    //     0x103fcac: ldur            d2, [x0, #7]
    // 0x103fcb0: fmul            d3, d2, d0
    // 0x103fcb4: fmul            d2, d3, d1
    // 0x103fcb8: b               #0x103fcd4
    // 0x103fcbc: d1 = 0.625000
    //     0x103fcbc: fmov            d1, #0.62500000
    // 0x103fcc0: d0 = 0.800000
    //     0x103fcc0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103fcc4: ldr             d0, [x17, #0xa58]
    // 0x103fcc8: LoadField: d2 = r0->field_7
    //     0x103fcc8: ldur            d2, [x0, #7]
    // 0x103fccc: fmul            d3, d2, d1
    // 0x103fcd0: mov             v2.16b, v3.16b
    // 0x103fcd4: mov             v3.16b, v2.16b
    // 0x103fcd8: ldur            x0, [fp, #-0x10]
    // 0x103fcdc: d2 = 0.144444
    //     0x103fcdc: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x103fce0: ldr             d2, [x17, #0x1d8]
    // 0x103fce4: b               #0x103fd78
    // 0x103fce8: ldur            x0, [fp, #-0x10]
    // 0x103fcec: d1 = 0.625000
    //     0x103fcec: fmov            d1, #0.62500000
    // 0x103fcf0: d0 = 0.800000
    //     0x103fcf0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103fcf4: ldr             d0, [x17, #0xa58]
    // 0x103fcf8: tbnz            w0, #4, #0x103fd40
    // 0x103fcfc: r1 = LoadStaticField(0x1674)
    //     0x103fcfc: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x103fd00: ldr             x1, [x1, #0x2ce8]
    // 0x103fd04: r3 = LoadStaticField(0x1680)
    //     0x103fd04: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x103fd08: ldr             x3, [x3, #0x2d00]
    // 0x103fd0c: tbnz            w3, #4, #0x103fd28
    // 0x103fd10: d2 = 0.144444
    //     0x103fd10: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x103fd14: ldr             d2, [x17, #0x1d8]
    // 0x103fd18: LoadField: d3 = r1->field_7
    //     0x103fd18: ldur            d3, [x1, #7]
    // 0x103fd1c: fmul            d4, d3, d0
    // 0x103fd20: fmul            d3, d4, d2
    // 0x103fd24: b               #0x103fd78
    // 0x103fd28: d2 = 0.144444
    //     0x103fd28: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x103fd2c: ldr             d2, [x17, #0x1d8]
    // 0x103fd30: LoadField: d3 = r1->field_7
    //     0x103fd30: ldur            d3, [x1, #7]
    // 0x103fd34: fmul            d4, d3, d2
    // 0x103fd38: mov             v3.16b, v4.16b
    // 0x103fd3c: b               #0x103fd78
    // 0x103fd40: d2 = 0.144444
    //     0x103fd40: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x103fd44: ldr             d2, [x17, #0x1d8]
    // 0x103fd48: r1 = LoadStaticField(0x1674)
    //     0x103fd48: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x103fd4c: ldr             x1, [x1, #0x2ce8]
    // 0x103fd50: r3 = LoadStaticField(0x1680)
    //     0x103fd50: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x103fd54: ldr             x3, [x3, #0x2d00]
    // 0x103fd58: tbnz            w3, #4, #0x103fd6c
    // 0x103fd5c: LoadField: d3 = r1->field_7
    //     0x103fd5c: ldur            d3, [x1, #7]
    // 0x103fd60: fmul            d4, d3, d0
    // 0x103fd64: fmul            d3, d4, d2
    // 0x103fd68: b               #0x103fd78
    // 0x103fd6c: LoadField: d3 = r1->field_7
    //     0x103fd6c: ldur            d3, [x1, #7]
    // 0x103fd70: fmul            d4, d3, d2
    // 0x103fd74: mov             v3.16b, v4.16b
    // 0x103fd78: stur            d3, [fp, #-0x80]
    // 0x103fd7c: r1 = "setting"
    //     0x103fd7c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18168] "setting"
    //     0x103fd80: ldr             x1, [x1, #0x168]
    // 0x103fd84: r0 = Trans.tr()
    //     0x103fd84: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x103fd88: stur            x0, [fp, #-8]
    // 0x103fd8c: r0 = ColorButtonMetronic()
    //     0x103fd8c: bl              #0xe754ec  ; AllocateColorButtonMetronicStub -> ColorButtonMetronic (size=0x3c)
    // 0x103fd90: mov             x3, x0
    // 0x103fd94: ldur            x0, [fp, #-8]
    // 0x103fd98: stur            x3, [fp, #-0x68]
    // 0x103fd9c: StoreField: r3->field_b = r0
    //     0x103fd9c: stur            w0, [x3, #0xb]
    // 0x103fda0: r0 = Instance_ButtonSize
    //     0x103fda0: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1e0] Obj!ButtonSize@12bdab1
    //     0x103fda4: ldr             x0, [x0, #0x1e0]
    // 0x103fda8: StoreField: r3->field_f = r0
    //     0x103fda8: stur            w0, [x3, #0xf]
    // 0x103fdac: r4 = Instance_ButtonIcon
    //     0x103fdac: add             x4, PP, #0x18, lsl #12  ; [pp+0x18270] Obj!ButtonIcon@12bda31
    //     0x103fdb0: ldr             x4, [x4, #0x270]
    // 0x103fdb4: StoreField: r3->field_13 = r4
    //     0x103fdb4: stur            w4, [x3, #0x13]
    // 0x103fdb8: r5 = Instance_ButtonState
    //     0x103fdb8: add             x5, PP, #0x18, lsl #12  ; [pp+0x18278] Obj!ButtonState@12bd9d1
    //     0x103fdbc: ldr             x5, [x5, #0x278]
    // 0x103fdc0: ArrayStore: r3[0] = r5  ; List_4
    //     0x103fdc0: stur            w5, [x3, #0x17]
    // 0x103fdc4: r1 = Instance_ButtonVariant
    //     0x103fdc4: add             x1, PP, #0x18, lsl #12  ; [pp+0x182a8] Obj!ButtonVariant@12bd971
    //     0x103fdc8: ldr             x1, [x1, #0x2a8]
    // 0x103fdcc: StoreField: r3->field_1b = r1
    //     0x103fdcc: stur            w1, [x3, #0x1b]
    // 0x103fdd0: r6 = Instance_ButtonColor
    //     0x103fdd0: add             x6, PP, #0x18, lsl #12  ; [pp+0x182b0] Obj!ButtonColor@12bd8b1
    //     0x103fdd4: ldr             x6, [x6, #0x2b0]
    // 0x103fdd8: StoreField: r3->field_1f = r6
    //     0x103fdd8: stur            w6, [x3, #0x1f]
    // 0x103fddc: r1 = Function '<anonymous closure>':.
    //     0x103fddc: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e1e8] AnonymousClosure: (0x1041ff0), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x103fde0: ldr             x1, [x1, #0x1e8]
    // 0x103fde4: r2 = Null
    //     0x103fde4: mov             x2, NULL
    // 0x103fde8: r0 = AllocateClosure()
    //     0x103fde8: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x103fdec: mov             x1, x0
    // 0x103fdf0: ldur            x0, [fp, #-0x68]
    // 0x103fdf4: StoreField: r0->field_23 = r1
    //     0x103fdf4: stur            w1, [x0, #0x23]
    // 0x103fdf8: r1 = Instance_IconData
    //     0x103fdf8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18298] Obj!IconData@128a891
    //     0x103fdfc: ldr             x1, [x1, #0x298]
    // 0x103fe00: StoreField: r0->field_27 = r1
    //     0x103fe00: stur            w1, [x0, #0x27]
    // 0x103fe04: r2 = false
    //     0x103fe04: add             x2, NULL, #0x30  ; false
    // 0x103fe08: StoreField: r0->field_2b = r2
    //     0x103fe08: stur            w2, [x0, #0x2b]
    // 0x103fe0c: StoreField: r0->field_2f = r2
    //     0x103fe0c: stur            w2, [x0, #0x2f]
    // 0x103fe10: StoreField: r0->field_37 = r2
    //     0x103fe10: stur            w2, [x0, #0x37]
    // 0x103fe14: r0 = SizedBox()
    //     0x103fe14: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x103fe18: mov             x1, x0
    // 0x103fe1c: r0 = inf
    //     0x103fe1c: add             x0, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x103fe20: ldr             x0, [x0, #0x8a8]
    // 0x103fe24: stur            x1, [fp, #-0x70]
    // 0x103fe28: StoreField: r1->field_f = r0
    //     0x103fe28: stur            w0, [x1, #0xf]
    // 0x103fe2c: ldur            d0, [fp, #-0x80]
    // 0x103fe30: r2 = inline_Allocate_Double()
    //     0x103fe30: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x103fe34: add             x2, x2, #0x10
    //     0x103fe38: cmp             x3, x2
    //     0x103fe3c: b.ls            #0x1040428
    //     0x103fe40: str             x2, [THR, #0x60]  ; THR::top
    //     0x103fe44: sub             x2, x2, #0xf
    //     0x103fe48: mov             x3, #0xe19c
    //     0x103fe4c: movk            x3, #3, lsl #16
    //     0x103fe50: stur            x3, [x2, #-1]
    // 0x103fe54: dmb             ishst
    // 0x103fe58: StoreField: r2->field_7 = d0
    //     0x103fe58: stur            d0, [x2, #7]
    // 0x103fe5c: StoreField: r1->field_13 = r2
    //     0x103fe5c: stur            w2, [x1, #0x13]
    // 0x103fe60: ldur            x2, [fp, #-0x68]
    // 0x103fe64: StoreField: r1->field_b = r2
    //     0x103fe64: stur            w2, [x1, #0xb]
    // 0x103fe68: r2 = LoadStaticField(0x16e8)
    //     0x103fe68: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x103fe6c: ldr             x2, [x2, #0x2dd0]
    // 0x103fe70: stur            x2, [fp, #-8]
    // 0x103fe74: r0 = SizedBox()
    //     0x103fe74: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x103fe78: mov             x2, x0
    // 0x103fe7c: ldur            x0, [fp, #-8]
    // 0x103fe80: stur            x2, [fp, #-0x68]
    // 0x103fe84: StoreField: r2->field_13 = r0
    //     0x103fe84: stur            w0, [x2, #0x13]
    // 0x103fe88: ldur            x0, [fp, #-0x18]
    // 0x103fe8c: LoadField: r1 = r0->field_1b
    //     0x103fe8c: ldur            w1, [x0, #0x1b]
    // 0x103fe90: DecompressPointer r1
    //     0x103fe90: add             x1, x1, HEAP, lsl #32
    // 0x103fe94: tbnz            w1, #4, #0x103fedc
    // 0x103fe98: r1 = LoadStaticField(0x1674)
    //     0x103fe98: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x103fe9c: ldr             x1, [x1, #0x2ce8]
    // 0x103fea0: r3 = LoadStaticField(0x1680)
    //     0x103fea0: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x103fea4: ldr             x3, [x3, #0x2d00]
    // 0x103fea8: tbnz            w3, #4, #0x103fec8
    // 0x103feac: d1 = 0.625000
    //     0x103feac: fmov            d1, #0.62500000
    // 0x103feb0: d0 = 0.800000
    //     0x103feb0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103feb4: ldr             d0, [x17, #0xa58]
    // 0x103feb8: LoadField: d2 = r1->field_7
    //     0x103feb8: ldur            d2, [x1, #7]
    // 0x103febc: fmul            d3, d2, d0
    // 0x103fec0: fmul            d0, d3, d1
    // 0x103fec4: b               #0x103ff68
    // 0x103fec8: d1 = 0.625000
    //     0x103fec8: fmov            d1, #0.62500000
    // 0x103fecc: LoadField: d0 = r1->field_7
    //     0x103fecc: ldur            d0, [x1, #7]
    // 0x103fed0: fmul            d2, d0, d1
    // 0x103fed4: mov             v0.16b, v2.16b
    // 0x103fed8: b               #0x103ff68
    // 0x103fedc: ldur            x1, [fp, #-0x10]
    // 0x103fee0: d0 = 0.800000
    //     0x103fee0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x103fee4: ldr             d0, [x17, #0xa58]
    // 0x103fee8: tbnz            w1, #4, #0x103ff30
    // 0x103feec: r1 = LoadStaticField(0x1674)
    //     0x103feec: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x103fef0: ldr             x1, [x1, #0x2ce8]
    // 0x103fef4: r3 = LoadStaticField(0x1680)
    //     0x103fef4: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x103fef8: ldr             x3, [x3, #0x2d00]
    // 0x103fefc: tbnz            w3, #4, #0x103ff18
    // 0x103ff00: d1 = 0.144444
    //     0x103ff00: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x103ff04: ldr             d1, [x17, #0x1d8]
    // 0x103ff08: LoadField: d2 = r1->field_7
    //     0x103ff08: ldur            d2, [x1, #7]
    // 0x103ff0c: fmul            d3, d2, d0
    // 0x103ff10: fmul            d0, d3, d1
    // 0x103ff14: b               #0x103ff68
    // 0x103ff18: d1 = 0.144444
    //     0x103ff18: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x103ff1c: ldr             d1, [x17, #0x1d8]
    // 0x103ff20: LoadField: d0 = r1->field_7
    //     0x103ff20: ldur            d0, [x1, #7]
    // 0x103ff24: fmul            d2, d0, d1
    // 0x103ff28: mov             v0.16b, v2.16b
    // 0x103ff2c: b               #0x103ff68
    // 0x103ff30: d1 = 0.144444
    //     0x103ff30: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x103ff34: ldr             d1, [x17, #0x1d8]
    // 0x103ff38: r1 = LoadStaticField(0x1674)
    //     0x103ff38: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x103ff3c: ldr             x1, [x1, #0x2ce8]
    // 0x103ff40: r3 = LoadStaticField(0x1680)
    //     0x103ff40: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x103ff44: ldr             x3, [x3, #0x2d00]
    // 0x103ff48: tbnz            w3, #4, #0x103ff5c
    // 0x103ff4c: LoadField: d2 = r1->field_7
    //     0x103ff4c: ldur            d2, [x1, #7]
    // 0x103ff50: fmul            d3, d2, d0
    // 0x103ff54: fmul            d0, d3, d1
    // 0x103ff58: b               #0x103ff68
    // 0x103ff5c: LoadField: d0 = r1->field_7
    //     0x103ff5c: ldur            d0, [x1, #7]
    // 0x103ff60: fmul            d2, d0, d1
    // 0x103ff64: mov             v0.16b, v2.16b
    // 0x103ff68: ldur            x10, [fp, #-0x20]
    // 0x103ff6c: ldur            x9, [fp, #-0x38]
    // 0x103ff70: ldur            x8, [fp, #-0x48]
    // 0x103ff74: ldur            x7, [fp, #-0x50]
    // 0x103ff78: ldur            x6, [fp, #-0x60]
    // 0x103ff7c: ldur            x5, [fp, #-0x58]
    // 0x103ff80: ldur            x4, [fp, #-0x30]
    // 0x103ff84: ldur            x3, [fp, #-0x70]
    // 0x103ff88: stur            d0, [fp, #-0x80]
    // 0x103ff8c: r1 = "logout"
    //     0x103ff8c: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e1f0] "logout"
    //     0x103ff90: ldr             x1, [x1, #0x1f0]
    // 0x103ff94: r0 = Trans.tr()
    //     0x103ff94: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x103ff98: stur            x0, [fp, #-8]
    // 0x103ff9c: r0 = ColorButtonMetronic()
    //     0x103ff9c: bl              #0xe754ec  ; AllocateColorButtonMetronicStub -> ColorButtonMetronic (size=0x3c)
    // 0x103ffa0: mov             x3, x0
    // 0x103ffa4: ldur            x0, [fp, #-8]
    // 0x103ffa8: stur            x3, [fp, #-0x10]
    // 0x103ffac: StoreField: r3->field_b = r0
    //     0x103ffac: stur            w0, [x3, #0xb]
    // 0x103ffb0: r0 = Instance_ButtonSize
    //     0x103ffb0: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1e0] Obj!ButtonSize@12bdab1
    //     0x103ffb4: ldr             x0, [x0, #0x1e0]
    // 0x103ffb8: StoreField: r3->field_f = r0
    //     0x103ffb8: stur            w0, [x3, #0xf]
    // 0x103ffbc: r0 = Instance_ButtonIcon
    //     0x103ffbc: add             x0, PP, #0x18, lsl #12  ; [pp+0x18270] Obj!ButtonIcon@12bda31
    //     0x103ffc0: ldr             x0, [x0, #0x270]
    // 0x103ffc4: StoreField: r3->field_13 = r0
    //     0x103ffc4: stur            w0, [x3, #0x13]
    // 0x103ffc8: r0 = Instance_ButtonState
    //     0x103ffc8: add             x0, PP, #0x18, lsl #12  ; [pp+0x18278] Obj!ButtonState@12bd9d1
    //     0x103ffcc: ldr             x0, [x0, #0x278]
    // 0x103ffd0: ArrayStore: r3[0] = r0  ; List_4
    //     0x103ffd0: stur            w0, [x3, #0x17]
    // 0x103ffd4: r0 = Instance_ButtonVariant
    //     0x103ffd4: add             x0, PP, #0x18, lsl #12  ; [pp+0x18280] Obj!ButtonVariant@12bd991
    //     0x103ffd8: ldr             x0, [x0, #0x280]
    // 0x103ffdc: StoreField: r3->field_1b = r0
    //     0x103ffdc: stur            w0, [x3, #0x1b]
    // 0x103ffe0: r0 = Instance_ButtonColor
    //     0x103ffe0: add             x0, PP, #0x18, lsl #12  ; [pp+0x182b0] Obj!ButtonColor@12bd8b1
    //     0x103ffe4: ldr             x0, [x0, #0x2b0]
    // 0x103ffe8: StoreField: r3->field_1f = r0
    //     0x103ffe8: stur            w0, [x3, #0x1f]
    // 0x103ffec: ldur            x2, [fp, #-0x18]
    // 0x103fff0: r1 = Function '<anonymous closure>':.
    //     0x103fff0: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e1f8] AnonymousClosure: (0x1041dcc), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x103fff4: ldr             x1, [x1, #0x1f8]
    // 0x103fff8: r0 = AllocateClosure()
    //     0x103fff8: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x103fffc: mov             x1, x0
    // 0x1040000: ldur            x0, [fp, #-0x10]
    // 0x1040004: StoreField: r0->field_23 = r1
    //     0x1040004: stur            w1, [x0, #0x23]
    // 0x1040008: r1 = Instance_IconData
    //     0x1040008: add             x1, PP, #0x18, lsl #12  ; [pp+0x18298] Obj!IconData@128a891
    //     0x104000c: ldr             x1, [x1, #0x298]
    // 0x1040010: StoreField: r0->field_27 = r1
    //     0x1040010: stur            w1, [x0, #0x27]
    // 0x1040014: r1 = true
    //     0x1040014: add             x1, NULL, #0x20  ; true
    // 0x1040018: StoreField: r0->field_2b = r1
    //     0x1040018: stur            w1, [x0, #0x2b]
    // 0x104001c: r2 = false
    //     0x104001c: add             x2, NULL, #0x30  ; false
    // 0x1040020: StoreField: r0->field_2f = r2
    //     0x1040020: stur            w2, [x0, #0x2f]
    // 0x1040024: StoreField: r0->field_37 = r2
    //     0x1040024: stur            w2, [x0, #0x37]
    // 0x1040028: r0 = SizedBox()
    //     0x1040028: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x104002c: mov             x1, x0
    // 0x1040030: r0 = inf
    //     0x1040030: add             x0, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x1040034: ldr             x0, [x0, #0x8a8]
    // 0x1040038: stur            x1, [fp, #-8]
    // 0x104003c: StoreField: r1->field_f = r0
    //     0x104003c: stur            w0, [x1, #0xf]
    // 0x1040040: ldur            d0, [fp, #-0x80]
    // 0x1040044: r0 = inline_Allocate_Double()
    //     0x1040044: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x1040048: add             x0, x0, #0x10
    //     0x104004c: cmp             x2, x0
    //     0x1040050: b.ls            #0x1040444
    //     0x1040054: str             x0, [THR, #0x60]  ; THR::top
    //     0x1040058: sub             x0, x0, #0xf
    //     0x104005c: mov             x2, #0xe19c
    //     0x1040060: movk            x2, #3, lsl #16
    //     0x1040064: stur            x2, [x0, #-1]
    // 0x1040068: dmb             ishst
    // 0x104006c: StoreField: r0->field_7 = d0
    //     0x104006c: stur            d0, [x0, #7]
    // 0x1040070: StoreField: r1->field_13 = r0
    //     0x1040070: stur            w0, [x1, #0x13]
    // 0x1040074: ldur            x0, [fp, #-0x10]
    // 0x1040078: StoreField: r1->field_b = r0
    //     0x1040078: stur            w0, [x1, #0xb]
    // 0x104007c: r0 = SizedBox()
    //     0x104007c: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1040080: mov             x1, x0
    // 0x1040084: r0 = 16.000000
    //     0x1040084: add             x0, PP, #0x13, lsl #12  ; [pp+0x13df8] 16
    //     0x1040088: ldr             x0, [x0, #0xdf8]
    // 0x104008c: stur            x1, [fp, #-0x10]
    // 0x1040090: StoreField: r1->field_13 = r0
    //     0x1040090: stur            w0, [x1, #0x13]
    // 0x1040094: r0 = Obx()
    //     0x1040094: bl              #0xd4c0ac  ; AllocateObxStub -> Obx (size=0x10)
    // 0x1040098: ldur            x2, [fp, #-0x18]
    // 0x104009c: r1 = Function '<anonymous closure>':.
    //     0x104009c: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e200] AnonymousClosure: (0x104045c), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x10400a0: ldr             x1, [x1, #0x200]
    // 0x10400a4: stur            x0, [fp, #-0x18]
    // 0x10400a8: r0 = AllocateClosure()
    //     0x10400a8: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x10400ac: mov             x1, x0
    // 0x10400b0: ldur            x0, [fp, #-0x18]
    // 0x10400b4: StoreField: r0->field_b = r1
    //     0x10400b4: stur            w1, [x0, #0xb]
    // 0x10400b8: r1 = Null
    //     0x10400b8: mov             x1, NULL
    // 0x10400bc: r2 = 10
    //     0x10400bc: mov             x2, #0xa
    // 0x10400c0: r0 = AllocateArray()
    //     0x10400c0: bl              #0x13df928  ; AllocateArrayStub
    // 0x10400c4: mov             x2, x0
    // 0x10400c8: ldur            x0, [fp, #-0x70]
    // 0x10400cc: stur            x2, [fp, #-0x78]
    // 0x10400d0: StoreField: r2->field_f = r0
    //     0x10400d0: stur            w0, [x2, #0xf]
    // 0x10400d4: ldur            x0, [fp, #-0x68]
    // 0x10400d8: StoreField: r2->field_13 = r0
    //     0x10400d8: stur            w0, [x2, #0x13]
    // 0x10400dc: ldur            x0, [fp, #-8]
    // 0x10400e0: ArrayStore: r2[0] = r0  ; List_4
    //     0x10400e0: stur            w0, [x2, #0x17]
    // 0x10400e4: ldur            x0, [fp, #-0x10]
    // 0x10400e8: StoreField: r2->field_1b = r0
    //     0x10400e8: stur            w0, [x2, #0x1b]
    // 0x10400ec: ldur            x0, [fp, #-0x18]
    // 0x10400f0: StoreField: r2->field_1f = r0
    //     0x10400f0: stur            w0, [x2, #0x1f]
    // 0x10400f4: r1 = <Widget>
    //     0x10400f4: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x10400f8: r0 = AllocateGrowableArray()
    //     0x10400f8: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x10400fc: mov             x1, x0
    // 0x1040100: ldur            x0, [fp, #-0x78]
    // 0x1040104: stur            x1, [fp, #-8]
    // 0x1040108: StoreField: r1->field_f = r0
    //     0x1040108: stur            w0, [x1, #0xf]
    // 0x104010c: r0 = 10
    //     0x104010c: mov             x0, #0xa
    // 0x1040110: StoreField: r1->field_b = r0
    //     0x1040110: stur            w0, [x1, #0xb]
    // 0x1040114: r0 = Column()
    //     0x1040114: bl              #0x8a5b1c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x1040118: mov             x3, x0
    // 0x104011c: r0 = Instance_Axis
    //     0x104011c: ldr             x0, [PP, #0x49c0]  ; [pp+0x49c0] Obj!Axis@12c4a81
    // 0x1040120: stur            x3, [fp, #-0x10]
    // 0x1040124: StoreField: r3->field_f = r0
    //     0x1040124: stur            w0, [x3, #0xf]
    // 0x1040128: r1 = Instance_MainAxisAlignment
    //     0x1040128: add             x1, PP, #0x17, lsl #12  ; [pp+0x177b0] Obj!MainAxisAlignment@12c45c1
    //     0x104012c: ldr             x1, [x1, #0x7b0]
    // 0x1040130: StoreField: r3->field_13 = r1
    //     0x1040130: stur            w1, [x3, #0x13]
    // 0x1040134: r4 = Instance_MainAxisSize
    //     0x1040134: add             x4, PP, #0x15, lsl #12  ; [pp+0x15828] Obj!MainAxisSize@12c4621
    //     0x1040138: ldr             x4, [x4, #0x828]
    // 0x104013c: ArrayStore: r3[0] = r4  ; List_4
    //     0x104013c: stur            w4, [x3, #0x17]
    // 0x1040140: r5 = Instance_CrossAxisAlignment
    //     0x1040140: add             x5, PP, #0x15, lsl #12  ; [pp+0x15888] Obj!CrossAxisAlignment@12c44a1
    //     0x1040144: ldr             x5, [x5, #0x888]
    // 0x1040148: StoreField: r3->field_1b = r5
    //     0x1040148: stur            w5, [x3, #0x1b]
    // 0x104014c: r6 = Instance_VerticalDirection
    //     0x104014c: add             x6, PP, #0x15, lsl #12  ; [pp+0x15838] Obj!VerticalDirection@12c4a21
    //     0x1040150: ldr             x6, [x6, #0x838]
    // 0x1040154: StoreField: r3->field_23 = r6
    //     0x1040154: stur            w6, [x3, #0x23]
    // 0x1040158: r7 = Instance_Clip
    //     0x1040158: add             x7, PP, #0x15, lsl #12  ; [pp+0x15840] Obj!Clip@12c80c1
    //     0x104015c: ldr             x7, [x7, #0x840]
    // 0x1040160: StoreField: r3->field_2b = r7
    //     0x1040160: stur            w7, [x3, #0x2b]
    // 0x1040164: StoreField: r3->field_2f = rZR
    //     0x1040164: stur            xzr, [x3, #0x2f]
    // 0x1040168: ldur            x1, [fp, #-8]
    // 0x104016c: StoreField: r3->field_b = r1
    //     0x104016c: stur            w1, [x3, #0xb]
    // 0x1040170: r1 = Null
    //     0x1040170: mov             x1, NULL
    // 0x1040174: r2 = 12
    //     0x1040174: mov             x2, #0xc
    // 0x1040178: r0 = AllocateArray()
    //     0x1040178: bl              #0x13df928  ; AllocateArrayStub
    // 0x104017c: mov             x2, x0
    // 0x1040180: ldur            x0, [fp, #-0x48]
    // 0x1040184: stur            x2, [fp, #-8]
    // 0x1040188: StoreField: r2->field_f = r0
    //     0x1040188: stur            w0, [x2, #0xf]
    // 0x104018c: ldur            x0, [fp, #-0x50]
    // 0x1040190: StoreField: r2->field_13 = r0
    //     0x1040190: stur            w0, [x2, #0x13]
    // 0x1040194: ldur            x0, [fp, #-0x60]
    // 0x1040198: ArrayStore: r2[0] = r0  ; List_4
    //     0x1040198: stur            w0, [x2, #0x17]
    // 0x104019c: ldur            x0, [fp, #-0x58]
    // 0x10401a0: StoreField: r2->field_1b = r0
    //     0x10401a0: stur            w0, [x2, #0x1b]
    // 0x10401a4: ldur            x0, [fp, #-0x30]
    // 0x10401a8: StoreField: r2->field_1f = r0
    //     0x10401a8: stur            w0, [x2, #0x1f]
    // 0x10401ac: ldur            x0, [fp, #-0x10]
    // 0x10401b0: StoreField: r2->field_23 = r0
    //     0x10401b0: stur            w0, [x2, #0x23]
    // 0x10401b4: r1 = <Widget>
    //     0x10401b4: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x10401b8: r0 = AllocateGrowableArray()
    //     0x10401b8: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x10401bc: mov             x1, x0
    // 0x10401c0: ldur            x0, [fp, #-8]
    // 0x10401c4: stur            x1, [fp, #-0x10]
    // 0x10401c8: StoreField: r1->field_f = r0
    //     0x10401c8: stur            w0, [x1, #0xf]
    // 0x10401cc: r0 = 12
    //     0x10401cc: mov             x0, #0xc
    // 0x10401d0: StoreField: r1->field_b = r0
    //     0x10401d0: stur            w0, [x1, #0xb]
    // 0x10401d4: r0 = ListView()
    //     0x10401d4: bl              #0xd8c860  ; AllocateListViewStub -> ListView (size=0x6c)
    // 0x10401d8: stur            x0, [fp, #-8]
    // 0x10401dc: r16 = true
    //     0x10401dc: add             x16, NULL, #0x20  ; true
    // 0x10401e0: str             x16, [SP]
    // 0x10401e4: mov             x1, x0
    // 0x10401e8: ldur            x2, [fp, #-0x10]
    // 0x10401ec: r4 = const [0, 0x3, 0x1, 0x2, shrinkWrap, 0x2, null]
    //     0x10401ec: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e208] List(7) [0, 0x3, 0x1, 0x2, "shrinkWrap", 0x2, Null]
    //     0x10401f0: ldr             x4, [x4, #0x208]
    // 0x10401f4: r0 = ListView()
    //     0x10401f4: bl              #0xdf60a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView
    // 0x10401f8: r0 = Container()
    //     0x10401f8: bl              #0x8a5af8  ; AllocateContainerStub -> Container (size=0x38)
    // 0x10401fc: stur            x0, [fp, #-0x10]
    // 0x1040200: r16 = inf
    //     0x1040200: add             x16, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x1040204: ldr             x16, [x16, #0x8a8]
    // 0x1040208: ldur            lr, [fp, #-0x28]
    // 0x104020c: stp             lr, x16, [SP, #0x10]
    // 0x1040210: ldur            x16, [fp, #-0x40]
    // 0x1040214: ldur            lr, [fp, #-8]
    // 0x1040218: stp             lr, x16, [SP]
    // 0x104021c: mov             x1, x0
    // 0x1040220: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x1040220: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e210] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x1040224: ldr             x4, [x4, #0x210]
    // 0x1040228: r0 = Container()
    //     0x1040228: bl              #0x8a54e0  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x104022c: r1 = <FlexParentData>
    //     0x104022c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15878] TypeArguments: <FlexParentData>
    //     0x1040230: ldr             x1, [x1, #0x878]
    // 0x1040234: r0 = Expanded()
    //     0x1040234: bl              #0x8a5b10  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x1040238: mov             x3, x0
    // 0x104023c: r0 = 1
    //     0x104023c: mov             x0, #1
    // 0x1040240: stur            x3, [fp, #-8]
    // 0x1040244: StoreField: r3->field_13 = r0
    //     0x1040244: stur            x0, [x3, #0x13]
    // 0x1040248: r0 = Instance_FlexFit
    //     0x1040248: add             x0, PP, #0x15, lsl #12  ; [pp+0x15880] Obj!FlexFit@12c4641
    //     0x104024c: ldr             x0, [x0, #0x880]
    // 0x1040250: StoreField: r3->field_1b = r0
    //     0x1040250: stur            w0, [x3, #0x1b]
    // 0x1040254: ldur            x0, [fp, #-0x10]
    // 0x1040258: StoreField: r3->field_b = r0
    //     0x1040258: stur            w0, [x3, #0xb]
    // 0x104025c: r1 = Null
    //     0x104025c: mov             x1, NULL
    // 0x1040260: r2 = 4
    //     0x1040260: mov             x2, #4
    // 0x1040264: r0 = AllocateArray()
    //     0x1040264: bl              #0x13df928  ; AllocateArrayStub
    // 0x1040268: mov             x2, x0
    // 0x104026c: ldur            x0, [fp, #-0x38]
    // 0x1040270: stur            x2, [fp, #-0x10]
    // 0x1040274: StoreField: r2->field_f = r0
    //     0x1040274: stur            w0, [x2, #0xf]
    // 0x1040278: ldur            x0, [fp, #-8]
    // 0x104027c: StoreField: r2->field_13 = r0
    //     0x104027c: stur            w0, [x2, #0x13]
    // 0x1040280: r1 = <Widget>
    //     0x1040280: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x1040284: r0 = AllocateGrowableArray()
    //     0x1040284: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x1040288: mov             x1, x0
    // 0x104028c: ldur            x0, [fp, #-0x10]
    // 0x1040290: stur            x1, [fp, #-8]
    // 0x1040294: StoreField: r1->field_f = r0
    //     0x1040294: stur            w0, [x1, #0xf]
    // 0x1040298: r0 = 4
    //     0x1040298: mov             x0, #4
    // 0x104029c: StoreField: r1->field_b = r0
    //     0x104029c: stur            w0, [x1, #0xb]
    // 0x10402a0: r0 = Column()
    //     0x10402a0: bl              #0x8a5b1c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x10402a4: mov             x1, x0
    // 0x10402a8: r0 = Instance_Axis
    //     0x10402a8: ldr             x0, [PP, #0x49c0]  ; [pp+0x49c0] Obj!Axis@12c4a81
    // 0x10402ac: stur            x1, [fp, #-0x10]
    // 0x10402b0: StoreField: r1->field_f = r0
    //     0x10402b0: stur            w0, [x1, #0xf]
    // 0x10402b4: r0 = Instance_MainAxisAlignment
    //     0x10402b4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15820] Obj!MainAxisAlignment@12c4541
    //     0x10402b8: ldr             x0, [x0, #0x820]
    // 0x10402bc: StoreField: r1->field_13 = r0
    //     0x10402bc: stur            w0, [x1, #0x13]
    // 0x10402c0: r0 = Instance_MainAxisSize
    //     0x10402c0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15828] Obj!MainAxisSize@12c4621
    //     0x10402c4: ldr             x0, [x0, #0x828]
    // 0x10402c8: ArrayStore: r1[0] = r0  ; List_4
    //     0x10402c8: stur            w0, [x1, #0x17]
    // 0x10402cc: r0 = Instance_CrossAxisAlignment
    //     0x10402cc: add             x0, PP, #0x15, lsl #12  ; [pp+0x15888] Obj!CrossAxisAlignment@12c44a1
    //     0x10402d0: ldr             x0, [x0, #0x888]
    // 0x10402d4: StoreField: r1->field_1b = r0
    //     0x10402d4: stur            w0, [x1, #0x1b]
    // 0x10402d8: r0 = Instance_VerticalDirection
    //     0x10402d8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15838] Obj!VerticalDirection@12c4a21
    //     0x10402dc: ldr             x0, [x0, #0x838]
    // 0x10402e0: StoreField: r1->field_23 = r0
    //     0x10402e0: stur            w0, [x1, #0x23]
    // 0x10402e4: r0 = Instance_Clip
    //     0x10402e4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15840] Obj!Clip@12c80c1
    //     0x10402e8: ldr             x0, [x0, #0x840]
    // 0x10402ec: StoreField: r1->field_2b = r0
    //     0x10402ec: stur            w0, [x1, #0x2b]
    // 0x10402f0: StoreField: r1->field_2f = rZR
    //     0x10402f0: stur            xzr, [x1, #0x2f]
    // 0x10402f4: ldur            x0, [fp, #-8]
    // 0x10402f8: StoreField: r1->field_b = r0
    //     0x10402f8: stur            w0, [x1, #0xb]
    // 0x10402fc: r0 = SafeArea()
    //     0x10402fc: bl              #0xd73100  ; AllocateSafeAreaStub -> SafeArea (size=0x28)
    // 0x1040300: mov             x1, x0
    // 0x1040304: r0 = true
    //     0x1040304: add             x0, NULL, #0x20  ; true
    // 0x1040308: stur            x1, [fp, #-8]
    // 0x104030c: StoreField: r1->field_b = r0
    //     0x104030c: stur            w0, [x1, #0xb]
    // 0x1040310: StoreField: r1->field_f = r0
    //     0x1040310: stur            w0, [x1, #0xf]
    // 0x1040314: StoreField: r1->field_13 = r0
    //     0x1040314: stur            w0, [x1, #0x13]
    // 0x1040318: ArrayStore: r1[0] = r0  ; List_4
    //     0x1040318: stur            w0, [x1, #0x17]
    // 0x104031c: r2 = Instance_EdgeInsets
    //     0x104031c: ldr             x2, [PP, #0x52b0]  ; [pp+0x52b0] Obj!EdgeInsets@129cbd1
    // 0x1040320: StoreField: r1->field_1b = r2
    //     0x1040320: stur            w2, [x1, #0x1b]
    // 0x1040324: r2 = false
    //     0x1040324: add             x2, NULL, #0x30  ; false
    // 0x1040328: StoreField: r1->field_1f = r2
    //     0x1040328: stur            w2, [x1, #0x1f]
    // 0x104032c: ldur            x3, [fp, #-0x10]
    // 0x1040330: StoreField: r1->field_23 = r3
    //     0x1040330: stur            w3, [x1, #0x23]
    // 0x1040334: r0 = SizedBox()
    //     0x1040334: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1040338: mov             x1, x0
    // 0x104033c: r0 = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.000000
    //     0x104033c: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1cca8] 1.7976931348623157e+308
    //     0x1040340: ldr             x0, [x0, #0xca8]
    // 0x1040344: stur            x1, [fp, #-0x10]
    // 0x1040348: StoreField: r1->field_f = r0
    //     0x1040348: stur            w0, [x1, #0xf]
    // 0x104034c: ldur            x0, [fp, #-8]
    // 0x1040350: StoreField: r1->field_b = r0
    //     0x1040350: stur            w0, [x1, #0xb]
    // 0x1040354: r0 = Scaffold()
    //     0x1040354: bl              #0xd4bcf0  ; AllocateScaffoldStub -> Scaffold (size=0x70)
    // 0x1040358: ldur            x1, [fp, #-0x10]
    // 0x104035c: StoreField: r0->field_1b = r1
    //     0x104035c: stur            w1, [x0, #0x1b]
    // 0x1040360: ldur            x1, [fp, #-0x20]
    // 0x1040364: StoreField: r0->field_4b = r1
    //     0x1040364: stur            w1, [x0, #0x4b]
    // 0x1040368: r1 = true
    //     0x1040368: add             x1, NULL, #0x20  ; true
    // 0x104036c: StoreField: r0->field_5b = r1
    //     0x104036c: stur            w1, [x0, #0x5b]
    // 0x1040370: r2 = Instance_DragStartBehavior
    //     0x1040370: ldr             x2, [PP, #0x5360]  ; [pp+0x5360] Obj!DragStartBehavior@12c5c61
    // 0x1040374: StoreField: r0->field_5f = r2
    //     0x1040374: stur            w2, [x0, #0x5f]
    // 0x1040378: r2 = false
    //     0x1040378: add             x2, NULL, #0x30  ; false
    // 0x104037c: StoreField: r0->field_b = r2
    //     0x104037c: stur            w2, [x0, #0xb]
    // 0x1040380: StoreField: r0->field_f = r1
    //     0x1040380: stur            w1, [x0, #0xf]
    // 0x1040384: StoreField: r0->field_13 = r2
    //     0x1040384: stur            w2, [x0, #0x13]
    // 0x1040388: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@89420462': static.
    //     0x1040388: add             x2, PP, #0x15, lsl #12  ; [pp+0x157b0] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@89420462': static. (0x7f2adac1d228)
    //     0x104038c: ldr             x2, [x2, #0x7b0]
    // 0x1040390: StoreField: r0->field_47 = r2
    //     0x1040390: stur            w2, [x0, #0x47]
    // 0x1040394: StoreField: r0->field_67 = r1
    //     0x1040394: stur            w1, [x0, #0x67]
    // 0x1040398: LeaveFrame
    //     0x1040398: mov             SP, fp
    //     0x104039c: ldp             fp, lr, [SP], #0x10
    // 0x10403a0: ret
    //     0x10403a0: ret             
    // 0x10403a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10403a4: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10403a8: b               #0x103f424
    // 0x10403ac: SaveReg d0
    //     0x10403ac: str             q0, [SP, #-0x10]!
    // 0x10403b0: stp             x1, x2, [SP, #-0x10]!
    // 0x10403b4: SaveReg r0
    //     0x10403b4: str             x0, [SP, #-8]!
    // 0x10403b8: r0 = AllocateDouble()
    //     0x10403b8: bl              #0x13df878  ; AllocateDoubleStub
    // 0x10403bc: mov             x3, x0
    // 0x10403c0: RestoreReg r0
    //     0x10403c0: ldr             x0, [SP], #8
    // 0x10403c4: ldp             x1, x2, [SP], #0x10
    // 0x10403c8: RestoreReg d0
    //     0x10403c8: ldr             q0, [SP], #0x10
    // 0x10403cc: b               #0x103f6dc
    // 0x10403d0: SaveReg d0
    //     0x10403d0: str             q0, [SP, #-0x10]!
    // 0x10403d4: stp             x0, x1, [SP, #-0x10]!
    // 0x10403d8: r0 = AllocateDouble()
    //     0x10403d8: bl              #0x13df878  ; AllocateDoubleStub
    // 0x10403dc: mov             x2, x0
    // 0x10403e0: ldp             x0, x1, [SP], #0x10
    // 0x10403e4: RestoreReg d0
    //     0x10403e4: ldr             q0, [SP], #0x10
    // 0x10403e8: b               #0x103f844
    // 0x10403ec: stp             q1, q2, [SP, #-0x20]!
    // 0x10403f0: SaveReg d0
    //     0x10403f0: str             q0, [SP, #-0x10]!
    // 0x10403f4: stp             x0, x2, [SP, #-0x10]!
    // 0x10403f8: r0 = AllocateDouble()
    //     0x10403f8: bl              #0x13df878  ; AllocateDoubleStub
    // 0x10403fc: mov             x1, x0
    // 0x1040400: ldp             x0, x2, [SP], #0x10
    // 0x1040404: RestoreReg d0
    //     0x1040404: ldr             q0, [SP], #0x10
    // 0x1040408: ldp             q1, q2, [SP], #0x20
    // 0x104040c: b               #0x103fa68
    // 0x1040410: stp             q0, q1, [SP, #-0x20]!
    // 0x1040414: stp             x1, x2, [SP, #-0x10]!
    // 0x1040418: r0 = AllocateDouble()
    //     0x1040418: bl              #0x13df878  ; AllocateDoubleStub
    // 0x104041c: ldp             x1, x2, [SP], #0x10
    // 0x1040420: ldp             q0, q1, [SP], #0x20
    // 0x1040424: b               #0x103fba0
    // 0x1040428: SaveReg d0
    //     0x1040428: str             q0, [SP, #-0x10]!
    // 0x104042c: stp             x0, x1, [SP, #-0x10]!
    // 0x1040430: r0 = AllocateDouble()
    //     0x1040430: bl              #0x13df878  ; AllocateDoubleStub
    // 0x1040434: mov             x2, x0
    // 0x1040438: ldp             x0, x1, [SP], #0x10
    // 0x104043c: RestoreReg d0
    //     0x104043c: ldr             q0, [SP], #0x10
    // 0x1040440: b               #0x103fe58
    // 0x1040444: SaveReg d0
    //     0x1040444: str             q0, [SP, #-0x10]!
    // 0x1040448: SaveReg r1
    //     0x1040448: str             x1, [SP, #-8]!
    // 0x104044c: r0 = AllocateDouble()
    //     0x104044c: bl              #0x13df878  ; AllocateDoubleStub
    // 0x1040450: RestoreReg r1
    //     0x1040450: ldr             x1, [SP], #8
    // 0x1040454: RestoreReg d0
    //     0x1040454: ldr             q0, [SP], #0x10
    // 0x1040458: b               #0x104006c
  }
  [closure] RenderObjectWidget <anonymous closure>(dynamic) {
    // ** addr: 0x104045c, size: 0x1248
    // 0x104045c: EnterFrame
    //     0x104045c: stp             fp, lr, [SP, #-0x10]!
    //     0x1040460: mov             fp, SP
    // 0x1040464: AllocStack(0x50)
    //     0x1040464: sub             SP, SP, #0x50
    // 0x1040468: SetupParameters([dynamic _ /* r0 */])
    //     0x1040468: ldr             x0, [fp, #0x10]
    //     0x104046c: ldur            w2, [x0, #0x17]
    //     0x1040470: add             x2, x2, HEAP, lsl #32
    //     0x1040474: stur            x2, [fp, #-8]
    // 0x1040478: CheckStackOverflow
    //     0x1040478: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x104047c: cmp             SP, x16
    //     0x1040480: b.ls            #0x10415c0
    // 0x1040484: LoadField: r1 = r2->field_f
    //     0x1040484: ldur            w1, [x2, #0xf]
    // 0x1040488: DecompressPointer r1
    //     0x1040488: add             x1, x1, HEAP, lsl #32
    // 0x104048c: r0 = controller()
    //     0x104048c: bl              #0xe67524  ; [package:get/get_state_manager/src/simple/get_view.dart] GetView::controller
    // 0x1040490: LoadField: r1 = r0->field_33
    //     0x1040490: ldur            w1, [x0, #0x33]
    // 0x1040494: DecompressPointer r1
    //     0x1040494: add             x1, x1, HEAP, lsl #32
    // 0x1040498: r0 = value()
    //     0x1040498: bl              #0x1106bc8  ; [dart:mixin_deduplication] _MixinApplication314&RxNotifier&RxObjectMixin::value
    // 0x104049c: tbnz            w0, #4, #0x10415a4
    // 0x10404a0: ldur            x0, [fp, #-8]
    // 0x10404a4: LoadField: r1 = r0->field_1b
    //     0x10404a4: ldur            w1, [x0, #0x1b]
    // 0x10404a8: DecompressPointer r1
    //     0x10404a8: add             x1, x1, HEAP, lsl #32
    // 0x10404ac: tbnz            w1, #4, #0x1040508
    // 0x10404b0: r1 = LoadStaticField(0x1674)
    //     0x10404b0: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x10404b4: ldr             x1, [x1, #0x2ce8]
    // 0x10404b8: r2 = LoadStaticField(0x1680)
    //     0x10404b8: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x10404bc: ldr             x2, [x2, #0x2d00]
    // 0x10404c0: tbnz            w2, #4, #0x10404e0
    // 0x10404c4: d1 = 0.625000
    //     0x10404c4: fmov            d1, #0.62500000
    // 0x10404c8: d0 = 0.800000
    //     0x10404c8: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10404cc: ldr             d0, [x17, #0xa58]
    // 0x10404d0: LoadField: d2 = r1->field_7
    //     0x10404d0: ldur            d2, [x1, #7]
    // 0x10404d4: fmul            d3, d2, d0
    // 0x10404d8: fmul            d2, d3, d1
    // 0x10404dc: b               #0x10404f8
    // 0x10404e0: d1 = 0.625000
    //     0x10404e0: fmov            d1, #0.62500000
    // 0x10404e4: d0 = 0.800000
    //     0x10404e4: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10404e8: ldr             d0, [x17, #0xa58]
    // 0x10404ec: LoadField: d2 = r1->field_7
    //     0x10404ec: ldur            d2, [x1, #7]
    // 0x10404f0: fmul            d3, d2, d1
    // 0x10404f4: mov             v2.16b, v3.16b
    // 0x10404f8: mov             v3.16b, v2.16b
    // 0x10404fc: d2 = 0.144444
    //     0x10404fc: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040500: ldr             d2, [x17, #0x1d8]
    // 0x1040504: b               #0x104059c
    // 0x1040508: d1 = 0.625000
    //     0x1040508: fmov            d1, #0.62500000
    // 0x104050c: d0 = 0.800000
    //     0x104050c: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040510: ldr             d0, [x17, #0xa58]
    // 0x1040514: LoadField: r1 = r0->field_1f
    //     0x1040514: ldur            w1, [x0, #0x1f]
    // 0x1040518: DecompressPointer r1
    //     0x1040518: add             x1, x1, HEAP, lsl #32
    // 0x104051c: tbnz            w1, #4, #0x1040564
    // 0x1040520: r1 = LoadStaticField(0x1674)
    //     0x1040520: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040524: ldr             x1, [x1, #0x2ce8]
    // 0x1040528: r2 = LoadStaticField(0x1680)
    //     0x1040528: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x104052c: ldr             x2, [x2, #0x2d00]
    // 0x1040530: tbnz            w2, #4, #0x104054c
    // 0x1040534: d2 = 0.144444
    //     0x1040534: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040538: ldr             d2, [x17, #0x1d8]
    // 0x104053c: LoadField: d3 = r1->field_7
    //     0x104053c: ldur            d3, [x1, #7]
    // 0x1040540: fmul            d4, d3, d0
    // 0x1040544: fmul            d3, d4, d2
    // 0x1040548: b               #0x104059c
    // 0x104054c: d2 = 0.144444
    //     0x104054c: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040550: ldr             d2, [x17, #0x1d8]
    // 0x1040554: LoadField: d3 = r1->field_7
    //     0x1040554: ldur            d3, [x1, #7]
    // 0x1040558: fmul            d4, d3, d2
    // 0x104055c: mov             v3.16b, v4.16b
    // 0x1040560: b               #0x104059c
    // 0x1040564: d2 = 0.144444
    //     0x1040564: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040568: ldr             d2, [x17, #0x1d8]
    // 0x104056c: r1 = LoadStaticField(0x1674)
    //     0x104056c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040570: ldr             x1, [x1, #0x2ce8]
    // 0x1040574: r2 = LoadStaticField(0x1680)
    //     0x1040574: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x1040578: ldr             x2, [x2, #0x2d00]
    // 0x104057c: tbnz            w2, #4, #0x1040590
    // 0x1040580: LoadField: d3 = r1->field_7
    //     0x1040580: ldur            d3, [x1, #7]
    // 0x1040584: fmul            d4, d3, d0
    // 0x1040588: fmul            d3, d4, d2
    // 0x104058c: b               #0x104059c
    // 0x1040590: LoadField: d3 = r1->field_7
    //     0x1040590: ldur            d3, [x1, #7]
    // 0x1040594: fmul            d4, d3, d2
    // 0x1040598: mov             v3.16b, v4.16b
    // 0x104059c: stur            d3, [fp, #-0x50]
    // 0x10405a0: LoadField: r1 = r0->field_13
    //     0x10405a0: ldur            w1, [x0, #0x13]
    // 0x10405a4: DecompressPointer r1
    //     0x10405a4: add             x1, x1, HEAP, lsl #32
    // 0x10405a8: r0 = colorsMetronic()
    //     0x10405a8: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x10405ac: LoadField: r1 = r0->field_c3
    //     0x10405ac: ldur            w1, [x0, #0xc3]
    // 0x10405b0: DecompressPointer r1
    //     0x10405b0: add             x1, x1, HEAP, lsl #32
    // 0x10405b4: stur            x1, [fp, #-0x10]
    // 0x10405b8: r0 = ColorButtonMetronic()
    //     0x10405b8: bl              #0xe754ec  ; AllocateColorButtonMetronicStub -> ColorButtonMetronic (size=0x3c)
    // 0x10405bc: mov             x3, x0
    // 0x10405c0: r0 = "Hapus Semua Auth Token"
    //     0x10405c0: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e218] "Hapus Semua Auth Token"
    //     0x10405c4: ldr             x0, [x0, #0x218]
    // 0x10405c8: stur            x3, [fp, #-0x18]
    // 0x10405cc: StoreField: r3->field_b = r0
    //     0x10405cc: stur            w0, [x3, #0xb]
    // 0x10405d0: r0 = Instance_ButtonSize
    //     0x10405d0: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1e0] Obj!ButtonSize@12bdab1
    //     0x10405d4: ldr             x0, [x0, #0x1e0]
    // 0x10405d8: StoreField: r3->field_f = r0
    //     0x10405d8: stur            w0, [x3, #0xf]
    // 0x10405dc: r4 = Instance_ButtonIcon
    //     0x10405dc: add             x4, PP, #0x18, lsl #12  ; [pp+0x18270] Obj!ButtonIcon@12bda31
    //     0x10405e0: ldr             x4, [x4, #0x270]
    // 0x10405e4: StoreField: r3->field_13 = r4
    //     0x10405e4: stur            w4, [x3, #0x13]
    // 0x10405e8: r5 = Instance_ButtonState
    //     0x10405e8: add             x5, PP, #0x18, lsl #12  ; [pp+0x18278] Obj!ButtonState@12bd9d1
    //     0x10405ec: ldr             x5, [x5, #0x278]
    // 0x10405f0: ArrayStore: r3[0] = r5  ; List_4
    //     0x10405f0: stur            w5, [x3, #0x17]
    // 0x10405f4: r6 = Instance_ButtonVariant
    //     0x10405f4: add             x6, PP, #0x18, lsl #12  ; [pp+0x18280] Obj!ButtonVariant@12bd991
    //     0x10405f8: ldr             x6, [x6, #0x280]
    // 0x10405fc: StoreField: r3->field_1b = r6
    //     0x10405fc: stur            w6, [x3, #0x1b]
    // 0x1040600: r7 = Instance_ButtonColor
    //     0x1040600: add             x7, PP, #0x18, lsl #12  ; [pp+0x182b0] Obj!ButtonColor@12bd8b1
    //     0x1040604: ldr             x7, [x7, #0x2b0]
    // 0x1040608: StoreField: r3->field_1f = r7
    //     0x1040608: stur            w7, [x3, #0x1f]
    // 0x104060c: r1 = Function '<anonymous closure>':.
    //     0x104060c: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e220] AnonymousClosure: (0x1041d60), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x1040610: ldr             x1, [x1, #0x220]
    // 0x1040614: r2 = Null
    //     0x1040614: mov             x2, NULL
    // 0x1040618: r0 = AllocateClosure()
    //     0x1040618: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x104061c: mov             x1, x0
    // 0x1040620: ldur            x0, [fp, #-0x18]
    // 0x1040624: StoreField: r0->field_23 = r1
    //     0x1040624: stur            w1, [x0, #0x23]
    // 0x1040628: r1 = Instance_IconData
    //     0x1040628: add             x1, PP, #0x18, lsl #12  ; [pp+0x18298] Obj!IconData@128a891
    //     0x104062c: ldr             x1, [x1, #0x298]
    // 0x1040630: StoreField: r0->field_27 = r1
    //     0x1040630: stur            w1, [x0, #0x27]
    // 0x1040634: r2 = true
    //     0x1040634: add             x2, NULL, #0x20  ; true
    // 0x1040638: StoreField: r0->field_2b = r2
    //     0x1040638: stur            w2, [x0, #0x2b]
    // 0x104063c: r3 = false
    //     0x104063c: add             x3, NULL, #0x30  ; false
    // 0x1040640: StoreField: r0->field_2f = r3
    //     0x1040640: stur            w3, [x0, #0x2f]
    // 0x1040644: ldur            x4, [fp, #-0x10]
    // 0x1040648: StoreField: r0->field_33 = r4
    //     0x1040648: stur            w4, [x0, #0x33]
    // 0x104064c: StoreField: r0->field_37 = r3
    //     0x104064c: stur            w3, [x0, #0x37]
    // 0x1040650: r0 = SizedBox()
    //     0x1040650: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1040654: mov             x2, x0
    // 0x1040658: r0 = inf
    //     0x1040658: add             x0, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x104065c: ldr             x0, [x0, #0x8a8]
    // 0x1040660: stur            x2, [fp, #-0x10]
    // 0x1040664: StoreField: r2->field_f = r0
    //     0x1040664: stur            w0, [x2, #0xf]
    // 0x1040668: ldur            d0, [fp, #-0x50]
    // 0x104066c: r1 = inline_Allocate_Double()
    //     0x104066c: ldp             x1, x3, [THR, #0x60]  ; THR::top
    //     0x1040670: add             x1, x1, #0x10
    //     0x1040674: cmp             x3, x1
    //     0x1040678: b.ls            #0x10415c8
    //     0x104067c: str             x1, [THR, #0x60]  ; THR::top
    //     0x1040680: sub             x1, x1, #0xf
    //     0x1040684: mov             x3, #0xe19c
    //     0x1040688: movk            x3, #3, lsl #16
    //     0x104068c: stur            x3, [x1, #-1]
    // 0x1040690: dmb             ishst
    // 0x1040694: StoreField: r1->field_7 = d0
    //     0x1040694: stur            d0, [x1, #7]
    // 0x1040698: StoreField: r2->field_13 = r1
    //     0x1040698: stur            w1, [x2, #0x13]
    // 0x104069c: ldur            x1, [fp, #-0x18]
    // 0x10406a0: StoreField: r2->field_b = r1
    //     0x10406a0: stur            w1, [x2, #0xb]
    // 0x10406a4: ldur            x3, [fp, #-8]
    // 0x10406a8: LoadField: r1 = r3->field_1b
    //     0x10406a8: ldur            w1, [x3, #0x1b]
    // 0x10406ac: DecompressPointer r1
    //     0x10406ac: add             x1, x1, HEAP, lsl #32
    // 0x10406b0: tbnz            w1, #4, #0x104070c
    // 0x10406b4: r1 = LoadStaticField(0x1674)
    //     0x10406b4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x10406b8: ldr             x1, [x1, #0x2ce8]
    // 0x10406bc: r4 = LoadStaticField(0x1680)
    //     0x10406bc: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x10406c0: ldr             x4, [x4, #0x2d00]
    // 0x10406c4: tbnz            w4, #4, #0x10406e4
    // 0x10406c8: d1 = 0.625000
    //     0x10406c8: fmov            d1, #0.62500000
    // 0x10406cc: d0 = 0.800000
    //     0x10406cc: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10406d0: ldr             d0, [x17, #0xa58]
    // 0x10406d4: LoadField: d2 = r1->field_7
    //     0x10406d4: ldur            d2, [x1, #7]
    // 0x10406d8: fmul            d3, d2, d0
    // 0x10406dc: fmul            d2, d3, d1
    // 0x10406e0: b               #0x10406fc
    // 0x10406e4: d1 = 0.625000
    //     0x10406e4: fmov            d1, #0.62500000
    // 0x10406e8: d0 = 0.800000
    //     0x10406e8: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10406ec: ldr             d0, [x17, #0xa58]
    // 0x10406f0: LoadField: d2 = r1->field_7
    //     0x10406f0: ldur            d2, [x1, #7]
    // 0x10406f4: fmul            d3, d2, d1
    // 0x10406f8: mov             v2.16b, v3.16b
    // 0x10406fc: mov             v3.16b, v2.16b
    // 0x1040700: d2 = 0.144444
    //     0x1040700: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040704: ldr             d2, [x17, #0x1d8]
    // 0x1040708: b               #0x10407a0
    // 0x104070c: d1 = 0.625000
    //     0x104070c: fmov            d1, #0.62500000
    // 0x1040710: d0 = 0.800000
    //     0x1040710: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040714: ldr             d0, [x17, #0xa58]
    // 0x1040718: LoadField: r1 = r3->field_1f
    //     0x1040718: ldur            w1, [x3, #0x1f]
    // 0x104071c: DecompressPointer r1
    //     0x104071c: add             x1, x1, HEAP, lsl #32
    // 0x1040720: tbnz            w1, #4, #0x1040768
    // 0x1040724: r1 = LoadStaticField(0x1674)
    //     0x1040724: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040728: ldr             x1, [x1, #0x2ce8]
    // 0x104072c: r4 = LoadStaticField(0x1680)
    //     0x104072c: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040730: ldr             x4, [x4, #0x2d00]
    // 0x1040734: tbnz            w4, #4, #0x1040750
    // 0x1040738: d2 = 0.144444
    //     0x1040738: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x104073c: ldr             d2, [x17, #0x1d8]
    // 0x1040740: LoadField: d3 = r1->field_7
    //     0x1040740: ldur            d3, [x1, #7]
    // 0x1040744: fmul            d4, d3, d0
    // 0x1040748: fmul            d3, d4, d2
    // 0x104074c: b               #0x10407a0
    // 0x1040750: d2 = 0.144444
    //     0x1040750: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040754: ldr             d2, [x17, #0x1d8]
    // 0x1040758: LoadField: d3 = r1->field_7
    //     0x1040758: ldur            d3, [x1, #7]
    // 0x104075c: fmul            d4, d3, d2
    // 0x1040760: mov             v3.16b, v4.16b
    // 0x1040764: b               #0x10407a0
    // 0x1040768: d2 = 0.144444
    //     0x1040768: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x104076c: ldr             d2, [x17, #0x1d8]
    // 0x1040770: r1 = LoadStaticField(0x1674)
    //     0x1040770: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040774: ldr             x1, [x1, #0x2ce8]
    // 0x1040778: r4 = LoadStaticField(0x1680)
    //     0x1040778: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x104077c: ldr             x4, [x4, #0x2d00]
    // 0x1040780: tbnz            w4, #4, #0x1040794
    // 0x1040784: LoadField: d3 = r1->field_7
    //     0x1040784: ldur            d3, [x1, #7]
    // 0x1040788: fmul            d4, d3, d0
    // 0x104078c: fmul            d3, d4, d2
    // 0x1040790: b               #0x10407a0
    // 0x1040794: LoadField: d3 = r1->field_7
    //     0x1040794: ldur            d3, [x1, #7]
    // 0x1040798: fmul            d4, d3, d2
    // 0x104079c: mov             v3.16b, v4.16b
    // 0x10407a0: stur            d3, [fp, #-0x50]
    // 0x10407a4: LoadField: r1 = r3->field_13
    //     0x10407a4: ldur            w1, [x3, #0x13]
    // 0x10407a8: DecompressPointer r1
    //     0x10407a8: add             x1, x1, HEAP, lsl #32
    // 0x10407ac: r0 = colorsMetronic()
    //     0x10407ac: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x10407b0: LoadField: r1 = r0->field_c3
    //     0x10407b0: ldur            w1, [x0, #0xc3]
    // 0x10407b4: DecompressPointer r1
    //     0x10407b4: add             x1, x1, HEAP, lsl #32
    // 0x10407b8: stur            x1, [fp, #-0x18]
    // 0x10407bc: r0 = ColorButtonMetronic()
    //     0x10407bc: bl              #0xe754ec  ; AllocateColorButtonMetronicStub -> ColorButtonMetronic (size=0x3c)
    // 0x10407c0: mov             x3, x0
    // 0x10407c4: r0 = "Expiredkan Access Token"
    //     0x10407c4: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e228] "Expiredkan Access Token"
    //     0x10407c8: ldr             x0, [x0, #0x228]
    // 0x10407cc: stur            x3, [fp, #-0x20]
    // 0x10407d0: StoreField: r3->field_b = r0
    //     0x10407d0: stur            w0, [x3, #0xb]
    // 0x10407d4: r0 = Instance_ButtonSize
    //     0x10407d4: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1e0] Obj!ButtonSize@12bdab1
    //     0x10407d8: ldr             x0, [x0, #0x1e0]
    // 0x10407dc: StoreField: r3->field_f = r0
    //     0x10407dc: stur            w0, [x3, #0xf]
    // 0x10407e0: r4 = Instance_ButtonIcon
    //     0x10407e0: add             x4, PP, #0x18, lsl #12  ; [pp+0x18270] Obj!ButtonIcon@12bda31
    //     0x10407e4: ldr             x4, [x4, #0x270]
    // 0x10407e8: StoreField: r3->field_13 = r4
    //     0x10407e8: stur            w4, [x3, #0x13]
    // 0x10407ec: r5 = Instance_ButtonState
    //     0x10407ec: add             x5, PP, #0x18, lsl #12  ; [pp+0x18278] Obj!ButtonState@12bd9d1
    //     0x10407f0: ldr             x5, [x5, #0x278]
    // 0x10407f4: ArrayStore: r3[0] = r5  ; List_4
    //     0x10407f4: stur            w5, [x3, #0x17]
    // 0x10407f8: r6 = Instance_ButtonVariant
    //     0x10407f8: add             x6, PP, #0x18, lsl #12  ; [pp+0x18280] Obj!ButtonVariant@12bd991
    //     0x10407fc: ldr             x6, [x6, #0x280]
    // 0x1040800: StoreField: r3->field_1b = r6
    //     0x1040800: stur            w6, [x3, #0x1b]
    // 0x1040804: r7 = Instance_ButtonColor
    //     0x1040804: add             x7, PP, #0x18, lsl #12  ; [pp+0x182b0] Obj!ButtonColor@12bd8b1
    //     0x1040808: ldr             x7, [x7, #0x2b0]
    // 0x104080c: StoreField: r3->field_1f = r7
    //     0x104080c: stur            w7, [x3, #0x1f]
    // 0x1040810: r1 = Function '<anonymous closure>':.
    //     0x1040810: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e230] AnonymousClosure: (0x1041ccc), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x1040814: ldr             x1, [x1, #0x230]
    // 0x1040818: r2 = Null
    //     0x1040818: mov             x2, NULL
    // 0x104081c: r0 = AllocateClosure()
    //     0x104081c: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x1040820: mov             x1, x0
    // 0x1040824: ldur            x0, [fp, #-0x20]
    // 0x1040828: StoreField: r0->field_23 = r1
    //     0x1040828: stur            w1, [x0, #0x23]
    // 0x104082c: r1 = Instance_IconData
    //     0x104082c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18298] Obj!IconData@128a891
    //     0x1040830: ldr             x1, [x1, #0x298]
    // 0x1040834: StoreField: r0->field_27 = r1
    //     0x1040834: stur            w1, [x0, #0x27]
    // 0x1040838: r2 = true
    //     0x1040838: add             x2, NULL, #0x20  ; true
    // 0x104083c: StoreField: r0->field_2b = r2
    //     0x104083c: stur            w2, [x0, #0x2b]
    // 0x1040840: r3 = false
    //     0x1040840: add             x3, NULL, #0x30  ; false
    // 0x1040844: StoreField: r0->field_2f = r3
    //     0x1040844: stur            w3, [x0, #0x2f]
    // 0x1040848: ldur            x4, [fp, #-0x18]
    // 0x104084c: StoreField: r0->field_33 = r4
    //     0x104084c: stur            w4, [x0, #0x33]
    // 0x1040850: StoreField: r0->field_37 = r3
    //     0x1040850: stur            w3, [x0, #0x37]
    // 0x1040854: r0 = SizedBox()
    //     0x1040854: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1040858: mov             x2, x0
    // 0x104085c: r0 = inf
    //     0x104085c: add             x0, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x1040860: ldr             x0, [x0, #0x8a8]
    // 0x1040864: stur            x2, [fp, #-0x18]
    // 0x1040868: StoreField: r2->field_f = r0
    //     0x1040868: stur            w0, [x2, #0xf]
    // 0x104086c: ldur            d0, [fp, #-0x50]
    // 0x1040870: r1 = inline_Allocate_Double()
    //     0x1040870: ldp             x1, x3, [THR, #0x60]  ; THR::top
    //     0x1040874: add             x1, x1, #0x10
    //     0x1040878: cmp             x3, x1
    //     0x104087c: b.ls            #0x10415e4
    //     0x1040880: str             x1, [THR, #0x60]  ; THR::top
    //     0x1040884: sub             x1, x1, #0xf
    //     0x1040888: mov             x3, #0xe19c
    //     0x104088c: movk            x3, #3, lsl #16
    //     0x1040890: stur            x3, [x1, #-1]
    // 0x1040894: dmb             ishst
    // 0x1040898: StoreField: r1->field_7 = d0
    //     0x1040898: stur            d0, [x1, #7]
    // 0x104089c: StoreField: r2->field_13 = r1
    //     0x104089c: stur            w1, [x2, #0x13]
    // 0x10408a0: ldur            x1, [fp, #-0x20]
    // 0x10408a4: StoreField: r2->field_b = r1
    //     0x10408a4: stur            w1, [x2, #0xb]
    // 0x10408a8: ldur            x3, [fp, #-8]
    // 0x10408ac: LoadField: r1 = r3->field_1b
    //     0x10408ac: ldur            w1, [x3, #0x1b]
    // 0x10408b0: DecompressPointer r1
    //     0x10408b0: add             x1, x1, HEAP, lsl #32
    // 0x10408b4: tbnz            w1, #4, #0x1040910
    // 0x10408b8: r1 = LoadStaticField(0x1674)
    //     0x10408b8: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x10408bc: ldr             x1, [x1, #0x2ce8]
    // 0x10408c0: r4 = LoadStaticField(0x1680)
    //     0x10408c0: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x10408c4: ldr             x4, [x4, #0x2d00]
    // 0x10408c8: tbnz            w4, #4, #0x10408e8
    // 0x10408cc: d1 = 0.625000
    //     0x10408cc: fmov            d1, #0.62500000
    // 0x10408d0: d0 = 0.800000
    //     0x10408d0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10408d4: ldr             d0, [x17, #0xa58]
    // 0x10408d8: LoadField: d2 = r1->field_7
    //     0x10408d8: ldur            d2, [x1, #7]
    // 0x10408dc: fmul            d3, d2, d0
    // 0x10408e0: fmul            d2, d3, d1
    // 0x10408e4: b               #0x1040900
    // 0x10408e8: d1 = 0.625000
    //     0x10408e8: fmov            d1, #0.62500000
    // 0x10408ec: d0 = 0.800000
    //     0x10408ec: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10408f0: ldr             d0, [x17, #0xa58]
    // 0x10408f4: LoadField: d2 = r1->field_7
    //     0x10408f4: ldur            d2, [x1, #7]
    // 0x10408f8: fmul            d3, d2, d1
    // 0x10408fc: mov             v2.16b, v3.16b
    // 0x1040900: mov             v3.16b, v2.16b
    // 0x1040904: d2 = 0.144444
    //     0x1040904: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040908: ldr             d2, [x17, #0x1d8]
    // 0x104090c: b               #0x10409a4
    // 0x1040910: d1 = 0.625000
    //     0x1040910: fmov            d1, #0.62500000
    // 0x1040914: d0 = 0.800000
    //     0x1040914: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040918: ldr             d0, [x17, #0xa58]
    // 0x104091c: LoadField: r1 = r3->field_1f
    //     0x104091c: ldur            w1, [x3, #0x1f]
    // 0x1040920: DecompressPointer r1
    //     0x1040920: add             x1, x1, HEAP, lsl #32
    // 0x1040924: tbnz            w1, #4, #0x104096c
    // 0x1040928: r1 = LoadStaticField(0x1674)
    //     0x1040928: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x104092c: ldr             x1, [x1, #0x2ce8]
    // 0x1040930: r4 = LoadStaticField(0x1680)
    //     0x1040930: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040934: ldr             x4, [x4, #0x2d00]
    // 0x1040938: tbnz            w4, #4, #0x1040954
    // 0x104093c: d2 = 0.144444
    //     0x104093c: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040940: ldr             d2, [x17, #0x1d8]
    // 0x1040944: LoadField: d3 = r1->field_7
    //     0x1040944: ldur            d3, [x1, #7]
    // 0x1040948: fmul            d4, d3, d0
    // 0x104094c: fmul            d3, d4, d2
    // 0x1040950: b               #0x10409a4
    // 0x1040954: d2 = 0.144444
    //     0x1040954: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040958: ldr             d2, [x17, #0x1d8]
    // 0x104095c: LoadField: d3 = r1->field_7
    //     0x104095c: ldur            d3, [x1, #7]
    // 0x1040960: fmul            d4, d3, d2
    // 0x1040964: mov             v3.16b, v4.16b
    // 0x1040968: b               #0x10409a4
    // 0x104096c: d2 = 0.144444
    //     0x104096c: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040970: ldr             d2, [x17, #0x1d8]
    // 0x1040974: r1 = LoadStaticField(0x1674)
    //     0x1040974: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040978: ldr             x1, [x1, #0x2ce8]
    // 0x104097c: r4 = LoadStaticField(0x1680)
    //     0x104097c: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040980: ldr             x4, [x4, #0x2d00]
    // 0x1040984: tbnz            w4, #4, #0x1040998
    // 0x1040988: LoadField: d3 = r1->field_7
    //     0x1040988: ldur            d3, [x1, #7]
    // 0x104098c: fmul            d4, d3, d0
    // 0x1040990: fmul            d3, d4, d2
    // 0x1040994: b               #0x10409a4
    // 0x1040998: LoadField: d3 = r1->field_7
    //     0x1040998: ldur            d3, [x1, #7]
    // 0x104099c: fmul            d4, d3, d2
    // 0x10409a0: mov             v3.16b, v4.16b
    // 0x10409a4: stur            d3, [fp, #-0x50]
    // 0x10409a8: LoadField: r1 = r3->field_13
    //     0x10409a8: ldur            w1, [x3, #0x13]
    // 0x10409ac: DecompressPointer r1
    //     0x10409ac: add             x1, x1, HEAP, lsl #32
    // 0x10409b0: r0 = colorsMetronic()
    //     0x10409b0: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x10409b4: LoadField: r1 = r0->field_c3
    //     0x10409b4: ldur            w1, [x0, #0xc3]
    // 0x10409b8: DecompressPointer r1
    //     0x10409b8: add             x1, x1, HEAP, lsl #32
    // 0x10409bc: stur            x1, [fp, #-0x20]
    // 0x10409c0: r0 = ColorButtonMetronic()
    //     0x10409c0: bl              #0xe754ec  ; AllocateColorButtonMetronicStub -> ColorButtonMetronic (size=0x3c)
    // 0x10409c4: mov             x3, x0
    // 0x10409c8: r0 = "RESET DATA MODAL BERITA"
    //     0x10409c8: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e238] "RESET DATA MODAL BERITA"
    //     0x10409cc: ldr             x0, [x0, #0x238]
    // 0x10409d0: stur            x3, [fp, #-0x28]
    // 0x10409d4: StoreField: r3->field_b = r0
    //     0x10409d4: stur            w0, [x3, #0xb]
    // 0x10409d8: r0 = Instance_ButtonSize
    //     0x10409d8: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1e0] Obj!ButtonSize@12bdab1
    //     0x10409dc: ldr             x0, [x0, #0x1e0]
    // 0x10409e0: StoreField: r3->field_f = r0
    //     0x10409e0: stur            w0, [x3, #0xf]
    // 0x10409e4: r4 = Instance_ButtonIcon
    //     0x10409e4: add             x4, PP, #0x18, lsl #12  ; [pp+0x18270] Obj!ButtonIcon@12bda31
    //     0x10409e8: ldr             x4, [x4, #0x270]
    // 0x10409ec: StoreField: r3->field_13 = r4
    //     0x10409ec: stur            w4, [x3, #0x13]
    // 0x10409f0: r5 = Instance_ButtonState
    //     0x10409f0: add             x5, PP, #0x18, lsl #12  ; [pp+0x18278] Obj!ButtonState@12bd9d1
    //     0x10409f4: ldr             x5, [x5, #0x278]
    // 0x10409f8: ArrayStore: r3[0] = r5  ; List_4
    //     0x10409f8: stur            w5, [x3, #0x17]
    // 0x10409fc: r6 = Instance_ButtonVariant
    //     0x10409fc: add             x6, PP, #0x18, lsl #12  ; [pp+0x18280] Obj!ButtonVariant@12bd991
    //     0x1040a00: ldr             x6, [x6, #0x280]
    // 0x1040a04: StoreField: r3->field_1b = r6
    //     0x1040a04: stur            w6, [x3, #0x1b]
    // 0x1040a08: r7 = Instance_ButtonColor
    //     0x1040a08: add             x7, PP, #0x18, lsl #12  ; [pp+0x182b0] Obj!ButtonColor@12bd8b1
    //     0x1040a0c: ldr             x7, [x7, #0x2b0]
    // 0x1040a10: StoreField: r3->field_1f = r7
    //     0x1040a10: stur            w7, [x3, #0x1f]
    // 0x1040a14: r1 = Function '<anonymous closure>':.
    //     0x1040a14: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e240] AnonymousClosure: (0x1041c28), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x1040a18: ldr             x1, [x1, #0x240]
    // 0x1040a1c: r2 = Null
    //     0x1040a1c: mov             x2, NULL
    // 0x1040a20: r0 = AllocateClosure()
    //     0x1040a20: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x1040a24: mov             x1, x0
    // 0x1040a28: ldur            x0, [fp, #-0x28]
    // 0x1040a2c: StoreField: r0->field_23 = r1
    //     0x1040a2c: stur            w1, [x0, #0x23]
    // 0x1040a30: r1 = Instance_IconData
    //     0x1040a30: add             x1, PP, #0x18, lsl #12  ; [pp+0x18298] Obj!IconData@128a891
    //     0x1040a34: ldr             x1, [x1, #0x298]
    // 0x1040a38: StoreField: r0->field_27 = r1
    //     0x1040a38: stur            w1, [x0, #0x27]
    // 0x1040a3c: r2 = true
    //     0x1040a3c: add             x2, NULL, #0x20  ; true
    // 0x1040a40: StoreField: r0->field_2b = r2
    //     0x1040a40: stur            w2, [x0, #0x2b]
    // 0x1040a44: r3 = false
    //     0x1040a44: add             x3, NULL, #0x30  ; false
    // 0x1040a48: StoreField: r0->field_2f = r3
    //     0x1040a48: stur            w3, [x0, #0x2f]
    // 0x1040a4c: ldur            x4, [fp, #-0x20]
    // 0x1040a50: StoreField: r0->field_33 = r4
    //     0x1040a50: stur            w4, [x0, #0x33]
    // 0x1040a54: StoreField: r0->field_37 = r3
    //     0x1040a54: stur            w3, [x0, #0x37]
    // 0x1040a58: r0 = SizedBox()
    //     0x1040a58: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1040a5c: mov             x2, x0
    // 0x1040a60: r0 = inf
    //     0x1040a60: add             x0, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x1040a64: ldr             x0, [x0, #0x8a8]
    // 0x1040a68: stur            x2, [fp, #-0x20]
    // 0x1040a6c: StoreField: r2->field_f = r0
    //     0x1040a6c: stur            w0, [x2, #0xf]
    // 0x1040a70: ldur            d0, [fp, #-0x50]
    // 0x1040a74: r1 = inline_Allocate_Double()
    //     0x1040a74: ldp             x1, x3, [THR, #0x60]  ; THR::top
    //     0x1040a78: add             x1, x1, #0x10
    //     0x1040a7c: cmp             x3, x1
    //     0x1040a80: b.ls            #0x1041600
    //     0x1040a84: str             x1, [THR, #0x60]  ; THR::top
    //     0x1040a88: sub             x1, x1, #0xf
    //     0x1040a8c: mov             x3, #0xe19c
    //     0x1040a90: movk            x3, #3, lsl #16
    //     0x1040a94: stur            x3, [x1, #-1]
    // 0x1040a98: dmb             ishst
    // 0x1040a9c: StoreField: r1->field_7 = d0
    //     0x1040a9c: stur            d0, [x1, #7]
    // 0x1040aa0: StoreField: r2->field_13 = r1
    //     0x1040aa0: stur            w1, [x2, #0x13]
    // 0x1040aa4: ldur            x1, [fp, #-0x28]
    // 0x1040aa8: StoreField: r2->field_b = r1
    //     0x1040aa8: stur            w1, [x2, #0xb]
    // 0x1040aac: ldur            x3, [fp, #-8]
    // 0x1040ab0: LoadField: r1 = r3->field_1b
    //     0x1040ab0: ldur            w1, [x3, #0x1b]
    // 0x1040ab4: DecompressPointer r1
    //     0x1040ab4: add             x1, x1, HEAP, lsl #32
    // 0x1040ab8: tbnz            w1, #4, #0x1040b14
    // 0x1040abc: r1 = LoadStaticField(0x1674)
    //     0x1040abc: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040ac0: ldr             x1, [x1, #0x2ce8]
    // 0x1040ac4: r4 = LoadStaticField(0x1680)
    //     0x1040ac4: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040ac8: ldr             x4, [x4, #0x2d00]
    // 0x1040acc: tbnz            w4, #4, #0x1040aec
    // 0x1040ad0: d1 = 0.625000
    //     0x1040ad0: fmov            d1, #0.62500000
    // 0x1040ad4: d0 = 0.800000
    //     0x1040ad4: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040ad8: ldr             d0, [x17, #0xa58]
    // 0x1040adc: LoadField: d2 = r1->field_7
    //     0x1040adc: ldur            d2, [x1, #7]
    // 0x1040ae0: fmul            d3, d2, d0
    // 0x1040ae4: fmul            d2, d3, d1
    // 0x1040ae8: b               #0x1040b04
    // 0x1040aec: d1 = 0.625000
    //     0x1040aec: fmov            d1, #0.62500000
    // 0x1040af0: d0 = 0.800000
    //     0x1040af0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040af4: ldr             d0, [x17, #0xa58]
    // 0x1040af8: LoadField: d2 = r1->field_7
    //     0x1040af8: ldur            d2, [x1, #7]
    // 0x1040afc: fmul            d3, d2, d1
    // 0x1040b00: mov             v2.16b, v3.16b
    // 0x1040b04: mov             v3.16b, v2.16b
    // 0x1040b08: d2 = 0.144444
    //     0x1040b08: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040b0c: ldr             d2, [x17, #0x1d8]
    // 0x1040b10: b               #0x1040ba8
    // 0x1040b14: d1 = 0.625000
    //     0x1040b14: fmov            d1, #0.62500000
    // 0x1040b18: d0 = 0.800000
    //     0x1040b18: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040b1c: ldr             d0, [x17, #0xa58]
    // 0x1040b20: LoadField: r1 = r3->field_1f
    //     0x1040b20: ldur            w1, [x3, #0x1f]
    // 0x1040b24: DecompressPointer r1
    //     0x1040b24: add             x1, x1, HEAP, lsl #32
    // 0x1040b28: tbnz            w1, #4, #0x1040b70
    // 0x1040b2c: r1 = LoadStaticField(0x1674)
    //     0x1040b2c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040b30: ldr             x1, [x1, #0x2ce8]
    // 0x1040b34: r4 = LoadStaticField(0x1680)
    //     0x1040b34: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040b38: ldr             x4, [x4, #0x2d00]
    // 0x1040b3c: tbnz            w4, #4, #0x1040b58
    // 0x1040b40: d2 = 0.144444
    //     0x1040b40: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040b44: ldr             d2, [x17, #0x1d8]
    // 0x1040b48: LoadField: d3 = r1->field_7
    //     0x1040b48: ldur            d3, [x1, #7]
    // 0x1040b4c: fmul            d4, d3, d0
    // 0x1040b50: fmul            d3, d4, d2
    // 0x1040b54: b               #0x1040ba8
    // 0x1040b58: d2 = 0.144444
    //     0x1040b58: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040b5c: ldr             d2, [x17, #0x1d8]
    // 0x1040b60: LoadField: d3 = r1->field_7
    //     0x1040b60: ldur            d3, [x1, #7]
    // 0x1040b64: fmul            d4, d3, d2
    // 0x1040b68: mov             v3.16b, v4.16b
    // 0x1040b6c: b               #0x1040ba8
    // 0x1040b70: d2 = 0.144444
    //     0x1040b70: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040b74: ldr             d2, [x17, #0x1d8]
    // 0x1040b78: r1 = LoadStaticField(0x1674)
    //     0x1040b78: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040b7c: ldr             x1, [x1, #0x2ce8]
    // 0x1040b80: r4 = LoadStaticField(0x1680)
    //     0x1040b80: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040b84: ldr             x4, [x4, #0x2d00]
    // 0x1040b88: tbnz            w4, #4, #0x1040b9c
    // 0x1040b8c: LoadField: d3 = r1->field_7
    //     0x1040b8c: ldur            d3, [x1, #7]
    // 0x1040b90: fmul            d4, d3, d0
    // 0x1040b94: fmul            d3, d4, d2
    // 0x1040b98: b               #0x1040ba8
    // 0x1040b9c: LoadField: d3 = r1->field_7
    //     0x1040b9c: ldur            d3, [x1, #7]
    // 0x1040ba0: fmul            d4, d3, d2
    // 0x1040ba4: mov             v3.16b, v4.16b
    // 0x1040ba8: stur            d3, [fp, #-0x50]
    // 0x1040bac: LoadField: r1 = r3->field_13
    //     0x1040bac: ldur            w1, [x3, #0x13]
    // 0x1040bb0: DecompressPointer r1
    //     0x1040bb0: add             x1, x1, HEAP, lsl #32
    // 0x1040bb4: r0 = colorsMetronic()
    //     0x1040bb4: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x1040bb8: LoadField: r1 = r0->field_c3
    //     0x1040bb8: ldur            w1, [x0, #0xc3]
    // 0x1040bbc: DecompressPointer r1
    //     0x1040bbc: add             x1, x1, HEAP, lsl #32
    // 0x1040bc0: stur            x1, [fp, #-0x28]
    // 0x1040bc4: r0 = ColorButtonMetronic()
    //     0x1040bc4: bl              #0xe754ec  ; AllocateColorButtonMetronicStub -> ColorButtonMetronic (size=0x3c)
    // 0x1040bc8: mov             x3, x0
    // 0x1040bcc: r0 = "Hapus Access Token"
    //     0x1040bcc: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e248] "Hapus Access Token"
    //     0x1040bd0: ldr             x0, [x0, #0x248]
    // 0x1040bd4: stur            x3, [fp, #-0x30]
    // 0x1040bd8: StoreField: r3->field_b = r0
    //     0x1040bd8: stur            w0, [x3, #0xb]
    // 0x1040bdc: r0 = Instance_ButtonSize
    //     0x1040bdc: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1e0] Obj!ButtonSize@12bdab1
    //     0x1040be0: ldr             x0, [x0, #0x1e0]
    // 0x1040be4: StoreField: r3->field_f = r0
    //     0x1040be4: stur            w0, [x3, #0xf]
    // 0x1040be8: r4 = Instance_ButtonIcon
    //     0x1040be8: add             x4, PP, #0x18, lsl #12  ; [pp+0x18270] Obj!ButtonIcon@12bda31
    //     0x1040bec: ldr             x4, [x4, #0x270]
    // 0x1040bf0: StoreField: r3->field_13 = r4
    //     0x1040bf0: stur            w4, [x3, #0x13]
    // 0x1040bf4: r5 = Instance_ButtonState
    //     0x1040bf4: add             x5, PP, #0x18, lsl #12  ; [pp+0x18278] Obj!ButtonState@12bd9d1
    //     0x1040bf8: ldr             x5, [x5, #0x278]
    // 0x1040bfc: ArrayStore: r3[0] = r5  ; List_4
    //     0x1040bfc: stur            w5, [x3, #0x17]
    // 0x1040c00: r6 = Instance_ButtonVariant
    //     0x1040c00: add             x6, PP, #0x18, lsl #12  ; [pp+0x18280] Obj!ButtonVariant@12bd991
    //     0x1040c04: ldr             x6, [x6, #0x280]
    // 0x1040c08: StoreField: r3->field_1b = r6
    //     0x1040c08: stur            w6, [x3, #0x1b]
    // 0x1040c0c: r7 = Instance_ButtonColor
    //     0x1040c0c: add             x7, PP, #0x18, lsl #12  ; [pp+0x182b0] Obj!ButtonColor@12bd8b1
    //     0x1040c10: ldr             x7, [x7, #0x2b0]
    // 0x1040c14: StoreField: r3->field_1f = r7
    //     0x1040c14: stur            w7, [x3, #0x1f]
    // 0x1040c18: r1 = Function '<anonymous closure>':.
    //     0x1040c18: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e250] AnonymousClosure: (0x1041b98), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x1040c1c: ldr             x1, [x1, #0x250]
    // 0x1040c20: r2 = Null
    //     0x1040c20: mov             x2, NULL
    // 0x1040c24: r0 = AllocateClosure()
    //     0x1040c24: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x1040c28: mov             x1, x0
    // 0x1040c2c: ldur            x0, [fp, #-0x30]
    // 0x1040c30: StoreField: r0->field_23 = r1
    //     0x1040c30: stur            w1, [x0, #0x23]
    // 0x1040c34: r1 = Instance_IconData
    //     0x1040c34: add             x1, PP, #0x18, lsl #12  ; [pp+0x18298] Obj!IconData@128a891
    //     0x1040c38: ldr             x1, [x1, #0x298]
    // 0x1040c3c: StoreField: r0->field_27 = r1
    //     0x1040c3c: stur            w1, [x0, #0x27]
    // 0x1040c40: r2 = true
    //     0x1040c40: add             x2, NULL, #0x20  ; true
    // 0x1040c44: StoreField: r0->field_2b = r2
    //     0x1040c44: stur            w2, [x0, #0x2b]
    // 0x1040c48: r3 = false
    //     0x1040c48: add             x3, NULL, #0x30  ; false
    // 0x1040c4c: StoreField: r0->field_2f = r3
    //     0x1040c4c: stur            w3, [x0, #0x2f]
    // 0x1040c50: ldur            x4, [fp, #-0x28]
    // 0x1040c54: StoreField: r0->field_33 = r4
    //     0x1040c54: stur            w4, [x0, #0x33]
    // 0x1040c58: StoreField: r0->field_37 = r3
    //     0x1040c58: stur            w3, [x0, #0x37]
    // 0x1040c5c: r0 = SizedBox()
    //     0x1040c5c: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1040c60: mov             x2, x0
    // 0x1040c64: r0 = inf
    //     0x1040c64: add             x0, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x1040c68: ldr             x0, [x0, #0x8a8]
    // 0x1040c6c: stur            x2, [fp, #-0x28]
    // 0x1040c70: StoreField: r2->field_f = r0
    //     0x1040c70: stur            w0, [x2, #0xf]
    // 0x1040c74: ldur            d0, [fp, #-0x50]
    // 0x1040c78: r1 = inline_Allocate_Double()
    //     0x1040c78: ldp             x1, x3, [THR, #0x60]  ; THR::top
    //     0x1040c7c: add             x1, x1, #0x10
    //     0x1040c80: cmp             x3, x1
    //     0x1040c84: b.ls            #0x104161c
    //     0x1040c88: str             x1, [THR, #0x60]  ; THR::top
    //     0x1040c8c: sub             x1, x1, #0xf
    //     0x1040c90: mov             x3, #0xe19c
    //     0x1040c94: movk            x3, #3, lsl #16
    //     0x1040c98: stur            x3, [x1, #-1]
    // 0x1040c9c: dmb             ishst
    // 0x1040ca0: StoreField: r1->field_7 = d0
    //     0x1040ca0: stur            d0, [x1, #7]
    // 0x1040ca4: StoreField: r2->field_13 = r1
    //     0x1040ca4: stur            w1, [x2, #0x13]
    // 0x1040ca8: ldur            x1, [fp, #-0x30]
    // 0x1040cac: StoreField: r2->field_b = r1
    //     0x1040cac: stur            w1, [x2, #0xb]
    // 0x1040cb0: ldur            x3, [fp, #-8]
    // 0x1040cb4: LoadField: r1 = r3->field_1b
    //     0x1040cb4: ldur            w1, [x3, #0x1b]
    // 0x1040cb8: DecompressPointer r1
    //     0x1040cb8: add             x1, x1, HEAP, lsl #32
    // 0x1040cbc: tbnz            w1, #4, #0x1040d18
    // 0x1040cc0: r1 = LoadStaticField(0x1674)
    //     0x1040cc0: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040cc4: ldr             x1, [x1, #0x2ce8]
    // 0x1040cc8: r4 = LoadStaticField(0x1680)
    //     0x1040cc8: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040ccc: ldr             x4, [x4, #0x2d00]
    // 0x1040cd0: tbnz            w4, #4, #0x1040cf0
    // 0x1040cd4: d1 = 0.625000
    //     0x1040cd4: fmov            d1, #0.62500000
    // 0x1040cd8: d0 = 0.800000
    //     0x1040cd8: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040cdc: ldr             d0, [x17, #0xa58]
    // 0x1040ce0: LoadField: d2 = r1->field_7
    //     0x1040ce0: ldur            d2, [x1, #7]
    // 0x1040ce4: fmul            d3, d2, d0
    // 0x1040ce8: fmul            d2, d3, d1
    // 0x1040cec: b               #0x1040d08
    // 0x1040cf0: d1 = 0.625000
    //     0x1040cf0: fmov            d1, #0.62500000
    // 0x1040cf4: d0 = 0.800000
    //     0x1040cf4: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040cf8: ldr             d0, [x17, #0xa58]
    // 0x1040cfc: LoadField: d2 = r1->field_7
    //     0x1040cfc: ldur            d2, [x1, #7]
    // 0x1040d00: fmul            d3, d2, d1
    // 0x1040d04: mov             v2.16b, v3.16b
    // 0x1040d08: mov             v3.16b, v2.16b
    // 0x1040d0c: d2 = 0.144444
    //     0x1040d0c: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040d10: ldr             d2, [x17, #0x1d8]
    // 0x1040d14: b               #0x1040dac
    // 0x1040d18: d1 = 0.625000
    //     0x1040d18: fmov            d1, #0.62500000
    // 0x1040d1c: d0 = 0.800000
    //     0x1040d1c: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040d20: ldr             d0, [x17, #0xa58]
    // 0x1040d24: LoadField: r1 = r3->field_1f
    //     0x1040d24: ldur            w1, [x3, #0x1f]
    // 0x1040d28: DecompressPointer r1
    //     0x1040d28: add             x1, x1, HEAP, lsl #32
    // 0x1040d2c: tbnz            w1, #4, #0x1040d74
    // 0x1040d30: r1 = LoadStaticField(0x1674)
    //     0x1040d30: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040d34: ldr             x1, [x1, #0x2ce8]
    // 0x1040d38: r4 = LoadStaticField(0x1680)
    //     0x1040d38: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040d3c: ldr             x4, [x4, #0x2d00]
    // 0x1040d40: tbnz            w4, #4, #0x1040d5c
    // 0x1040d44: d2 = 0.144444
    //     0x1040d44: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040d48: ldr             d2, [x17, #0x1d8]
    // 0x1040d4c: LoadField: d3 = r1->field_7
    //     0x1040d4c: ldur            d3, [x1, #7]
    // 0x1040d50: fmul            d4, d3, d0
    // 0x1040d54: fmul            d3, d4, d2
    // 0x1040d58: b               #0x1040dac
    // 0x1040d5c: d2 = 0.144444
    //     0x1040d5c: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040d60: ldr             d2, [x17, #0x1d8]
    // 0x1040d64: LoadField: d3 = r1->field_7
    //     0x1040d64: ldur            d3, [x1, #7]
    // 0x1040d68: fmul            d4, d3, d2
    // 0x1040d6c: mov             v3.16b, v4.16b
    // 0x1040d70: b               #0x1040dac
    // 0x1040d74: d2 = 0.144444
    //     0x1040d74: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040d78: ldr             d2, [x17, #0x1d8]
    // 0x1040d7c: r1 = LoadStaticField(0x1674)
    //     0x1040d7c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040d80: ldr             x1, [x1, #0x2ce8]
    // 0x1040d84: r4 = LoadStaticField(0x1680)
    //     0x1040d84: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040d88: ldr             x4, [x4, #0x2d00]
    // 0x1040d8c: tbnz            w4, #4, #0x1040da0
    // 0x1040d90: LoadField: d3 = r1->field_7
    //     0x1040d90: ldur            d3, [x1, #7]
    // 0x1040d94: fmul            d4, d3, d0
    // 0x1040d98: fmul            d3, d4, d2
    // 0x1040d9c: b               #0x1040dac
    // 0x1040da0: LoadField: d3 = r1->field_7
    //     0x1040da0: ldur            d3, [x1, #7]
    // 0x1040da4: fmul            d4, d3, d2
    // 0x1040da8: mov             v3.16b, v4.16b
    // 0x1040dac: stur            d3, [fp, #-0x50]
    // 0x1040db0: LoadField: r1 = r3->field_13
    //     0x1040db0: ldur            w1, [x3, #0x13]
    // 0x1040db4: DecompressPointer r1
    //     0x1040db4: add             x1, x1, HEAP, lsl #32
    // 0x1040db8: r0 = colorsMetronic()
    //     0x1040db8: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x1040dbc: LoadField: r1 = r0->field_c3
    //     0x1040dbc: ldur            w1, [x0, #0xc3]
    // 0x1040dc0: DecompressPointer r1
    //     0x1040dc0: add             x1, x1, HEAP, lsl #32
    // 0x1040dc4: stur            x1, [fp, #-0x30]
    // 0x1040dc8: r0 = ColorButtonMetronic()
    //     0x1040dc8: bl              #0xe754ec  ; AllocateColorButtonMetronicStub -> ColorButtonMetronic (size=0x3c)
    // 0x1040dcc: mov             x3, x0
    // 0x1040dd0: r0 = "Expiredkan Refresh Token"
    //     0x1040dd0: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e258] "Expiredkan Refresh Token"
    //     0x1040dd4: ldr             x0, [x0, #0x258]
    // 0x1040dd8: stur            x3, [fp, #-0x38]
    // 0x1040ddc: StoreField: r3->field_b = r0
    //     0x1040ddc: stur            w0, [x3, #0xb]
    // 0x1040de0: r0 = Instance_ButtonSize
    //     0x1040de0: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1e0] Obj!ButtonSize@12bdab1
    //     0x1040de4: ldr             x0, [x0, #0x1e0]
    // 0x1040de8: StoreField: r3->field_f = r0
    //     0x1040de8: stur            w0, [x3, #0xf]
    // 0x1040dec: r4 = Instance_ButtonIcon
    //     0x1040dec: add             x4, PP, #0x18, lsl #12  ; [pp+0x18270] Obj!ButtonIcon@12bda31
    //     0x1040df0: ldr             x4, [x4, #0x270]
    // 0x1040df4: StoreField: r3->field_13 = r4
    //     0x1040df4: stur            w4, [x3, #0x13]
    // 0x1040df8: r5 = Instance_ButtonState
    //     0x1040df8: add             x5, PP, #0x18, lsl #12  ; [pp+0x18278] Obj!ButtonState@12bd9d1
    //     0x1040dfc: ldr             x5, [x5, #0x278]
    // 0x1040e00: ArrayStore: r3[0] = r5  ; List_4
    //     0x1040e00: stur            w5, [x3, #0x17]
    // 0x1040e04: r6 = Instance_ButtonVariant
    //     0x1040e04: add             x6, PP, #0x18, lsl #12  ; [pp+0x18280] Obj!ButtonVariant@12bd991
    //     0x1040e08: ldr             x6, [x6, #0x280]
    // 0x1040e0c: StoreField: r3->field_1b = r6
    //     0x1040e0c: stur            w6, [x3, #0x1b]
    // 0x1040e10: r7 = Instance_ButtonColor
    //     0x1040e10: add             x7, PP, #0x18, lsl #12  ; [pp+0x182b0] Obj!ButtonColor@12bd8b1
    //     0x1040e14: ldr             x7, [x7, #0x2b0]
    // 0x1040e18: StoreField: r3->field_1f = r7
    //     0x1040e18: stur            w7, [x3, #0x1f]
    // 0x1040e1c: r1 = Function '<anonymous closure>':.
    //     0x1040e1c: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e260] AnonymousClosure: (0x1041b00), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x1040e20: ldr             x1, [x1, #0x260]
    // 0x1040e24: r2 = Null
    //     0x1040e24: mov             x2, NULL
    // 0x1040e28: r0 = AllocateClosure()
    //     0x1040e28: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x1040e2c: mov             x1, x0
    // 0x1040e30: ldur            x0, [fp, #-0x38]
    // 0x1040e34: StoreField: r0->field_23 = r1
    //     0x1040e34: stur            w1, [x0, #0x23]
    // 0x1040e38: r1 = Instance_IconData
    //     0x1040e38: add             x1, PP, #0x18, lsl #12  ; [pp+0x18298] Obj!IconData@128a891
    //     0x1040e3c: ldr             x1, [x1, #0x298]
    // 0x1040e40: StoreField: r0->field_27 = r1
    //     0x1040e40: stur            w1, [x0, #0x27]
    // 0x1040e44: r2 = true
    //     0x1040e44: add             x2, NULL, #0x20  ; true
    // 0x1040e48: StoreField: r0->field_2b = r2
    //     0x1040e48: stur            w2, [x0, #0x2b]
    // 0x1040e4c: r3 = false
    //     0x1040e4c: add             x3, NULL, #0x30  ; false
    // 0x1040e50: StoreField: r0->field_2f = r3
    //     0x1040e50: stur            w3, [x0, #0x2f]
    // 0x1040e54: ldur            x4, [fp, #-0x30]
    // 0x1040e58: StoreField: r0->field_33 = r4
    //     0x1040e58: stur            w4, [x0, #0x33]
    // 0x1040e5c: StoreField: r0->field_37 = r3
    //     0x1040e5c: stur            w3, [x0, #0x37]
    // 0x1040e60: r0 = SizedBox()
    //     0x1040e60: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1040e64: mov             x2, x0
    // 0x1040e68: r0 = inf
    //     0x1040e68: add             x0, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x1040e6c: ldr             x0, [x0, #0x8a8]
    // 0x1040e70: stur            x2, [fp, #-0x30]
    // 0x1040e74: StoreField: r2->field_f = r0
    //     0x1040e74: stur            w0, [x2, #0xf]
    // 0x1040e78: ldur            d0, [fp, #-0x50]
    // 0x1040e7c: r1 = inline_Allocate_Double()
    //     0x1040e7c: ldp             x1, x3, [THR, #0x60]  ; THR::top
    //     0x1040e80: add             x1, x1, #0x10
    //     0x1040e84: cmp             x3, x1
    //     0x1040e88: b.ls            #0x1041638
    //     0x1040e8c: str             x1, [THR, #0x60]  ; THR::top
    //     0x1040e90: sub             x1, x1, #0xf
    //     0x1040e94: mov             x3, #0xe19c
    //     0x1040e98: movk            x3, #3, lsl #16
    //     0x1040e9c: stur            x3, [x1, #-1]
    // 0x1040ea0: dmb             ishst
    // 0x1040ea4: StoreField: r1->field_7 = d0
    //     0x1040ea4: stur            d0, [x1, #7]
    // 0x1040ea8: StoreField: r2->field_13 = r1
    //     0x1040ea8: stur            w1, [x2, #0x13]
    // 0x1040eac: ldur            x1, [fp, #-0x38]
    // 0x1040eb0: StoreField: r2->field_b = r1
    //     0x1040eb0: stur            w1, [x2, #0xb]
    // 0x1040eb4: ldur            x3, [fp, #-8]
    // 0x1040eb8: LoadField: r1 = r3->field_1b
    //     0x1040eb8: ldur            w1, [x3, #0x1b]
    // 0x1040ebc: DecompressPointer r1
    //     0x1040ebc: add             x1, x1, HEAP, lsl #32
    // 0x1040ec0: tbnz            w1, #4, #0x1040f1c
    // 0x1040ec4: r1 = LoadStaticField(0x1674)
    //     0x1040ec4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040ec8: ldr             x1, [x1, #0x2ce8]
    // 0x1040ecc: r4 = LoadStaticField(0x1680)
    //     0x1040ecc: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040ed0: ldr             x4, [x4, #0x2d00]
    // 0x1040ed4: tbnz            w4, #4, #0x1040ef4
    // 0x1040ed8: d1 = 0.625000
    //     0x1040ed8: fmov            d1, #0.62500000
    // 0x1040edc: d0 = 0.800000
    //     0x1040edc: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040ee0: ldr             d0, [x17, #0xa58]
    // 0x1040ee4: LoadField: d2 = r1->field_7
    //     0x1040ee4: ldur            d2, [x1, #7]
    // 0x1040ee8: fmul            d3, d2, d0
    // 0x1040eec: fmul            d2, d3, d1
    // 0x1040ef0: b               #0x1040f0c
    // 0x1040ef4: d1 = 0.625000
    //     0x1040ef4: fmov            d1, #0.62500000
    // 0x1040ef8: d0 = 0.800000
    //     0x1040ef8: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040efc: ldr             d0, [x17, #0xa58]
    // 0x1040f00: LoadField: d2 = r1->field_7
    //     0x1040f00: ldur            d2, [x1, #7]
    // 0x1040f04: fmul            d3, d2, d1
    // 0x1040f08: mov             v2.16b, v3.16b
    // 0x1040f0c: mov             v3.16b, v2.16b
    // 0x1040f10: d2 = 0.144444
    //     0x1040f10: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040f14: ldr             d2, [x17, #0x1d8]
    // 0x1040f18: b               #0x1040fb0
    // 0x1040f1c: d1 = 0.625000
    //     0x1040f1c: fmov            d1, #0.62500000
    // 0x1040f20: d0 = 0.800000
    //     0x1040f20: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1040f24: ldr             d0, [x17, #0xa58]
    // 0x1040f28: LoadField: r1 = r3->field_1f
    //     0x1040f28: ldur            w1, [x3, #0x1f]
    // 0x1040f2c: DecompressPointer r1
    //     0x1040f2c: add             x1, x1, HEAP, lsl #32
    // 0x1040f30: tbnz            w1, #4, #0x1040f78
    // 0x1040f34: r1 = LoadStaticField(0x1674)
    //     0x1040f34: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040f38: ldr             x1, [x1, #0x2ce8]
    // 0x1040f3c: r4 = LoadStaticField(0x1680)
    //     0x1040f3c: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040f40: ldr             x4, [x4, #0x2d00]
    // 0x1040f44: tbnz            w4, #4, #0x1040f60
    // 0x1040f48: d2 = 0.144444
    //     0x1040f48: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040f4c: ldr             d2, [x17, #0x1d8]
    // 0x1040f50: LoadField: d3 = r1->field_7
    //     0x1040f50: ldur            d3, [x1, #7]
    // 0x1040f54: fmul            d4, d3, d0
    // 0x1040f58: fmul            d3, d4, d2
    // 0x1040f5c: b               #0x1040fb0
    // 0x1040f60: d2 = 0.144444
    //     0x1040f60: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040f64: ldr             d2, [x17, #0x1d8]
    // 0x1040f68: LoadField: d3 = r1->field_7
    //     0x1040f68: ldur            d3, [x1, #7]
    // 0x1040f6c: fmul            d4, d3, d2
    // 0x1040f70: mov             v3.16b, v4.16b
    // 0x1040f74: b               #0x1040fb0
    // 0x1040f78: d2 = 0.144444
    //     0x1040f78: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1040f7c: ldr             d2, [x17, #0x1d8]
    // 0x1040f80: r1 = LoadStaticField(0x1674)
    //     0x1040f80: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1040f84: ldr             x1, [x1, #0x2ce8]
    // 0x1040f88: r4 = LoadStaticField(0x1680)
    //     0x1040f88: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1040f8c: ldr             x4, [x4, #0x2d00]
    // 0x1040f90: tbnz            w4, #4, #0x1040fa4
    // 0x1040f94: LoadField: d3 = r1->field_7
    //     0x1040f94: ldur            d3, [x1, #7]
    // 0x1040f98: fmul            d4, d3, d0
    // 0x1040f9c: fmul            d3, d4, d2
    // 0x1040fa0: b               #0x1040fb0
    // 0x1040fa4: LoadField: d3 = r1->field_7
    //     0x1040fa4: ldur            d3, [x1, #7]
    // 0x1040fa8: fmul            d4, d3, d2
    // 0x1040fac: mov             v3.16b, v4.16b
    // 0x1040fb0: stur            d3, [fp, #-0x50]
    // 0x1040fb4: LoadField: r1 = r3->field_13
    //     0x1040fb4: ldur            w1, [x3, #0x13]
    // 0x1040fb8: DecompressPointer r1
    //     0x1040fb8: add             x1, x1, HEAP, lsl #32
    // 0x1040fbc: r0 = colorsMetronic()
    //     0x1040fbc: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x1040fc0: LoadField: r1 = r0->field_c3
    //     0x1040fc0: ldur            w1, [x0, #0xc3]
    // 0x1040fc4: DecompressPointer r1
    //     0x1040fc4: add             x1, x1, HEAP, lsl #32
    // 0x1040fc8: stur            x1, [fp, #-0x38]
    // 0x1040fcc: r0 = ColorButtonMetronic()
    //     0x1040fcc: bl              #0xe754ec  ; AllocateColorButtonMetronicStub -> ColorButtonMetronic (size=0x3c)
    // 0x1040fd0: mov             x3, x0
    // 0x1040fd4: r0 = "SVG TEST"
    //     0x1040fd4: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e268] "SVG TEST"
    //     0x1040fd8: ldr             x0, [x0, #0x268]
    // 0x1040fdc: stur            x3, [fp, #-0x40]
    // 0x1040fe0: StoreField: r3->field_b = r0
    //     0x1040fe0: stur            w0, [x3, #0xb]
    // 0x1040fe4: r0 = Instance_ButtonSize
    //     0x1040fe4: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1e0] Obj!ButtonSize@12bdab1
    //     0x1040fe8: ldr             x0, [x0, #0x1e0]
    // 0x1040fec: StoreField: r3->field_f = r0
    //     0x1040fec: stur            w0, [x3, #0xf]
    // 0x1040ff0: r4 = Instance_ButtonIcon
    //     0x1040ff0: add             x4, PP, #0x18, lsl #12  ; [pp+0x18270] Obj!ButtonIcon@12bda31
    //     0x1040ff4: ldr             x4, [x4, #0x270]
    // 0x1040ff8: StoreField: r3->field_13 = r4
    //     0x1040ff8: stur            w4, [x3, #0x13]
    // 0x1040ffc: r5 = Instance_ButtonState
    //     0x1040ffc: add             x5, PP, #0x18, lsl #12  ; [pp+0x18278] Obj!ButtonState@12bd9d1
    //     0x1041000: ldr             x5, [x5, #0x278]
    // 0x1041004: ArrayStore: r3[0] = r5  ; List_4
    //     0x1041004: stur            w5, [x3, #0x17]
    // 0x1041008: r6 = Instance_ButtonVariant
    //     0x1041008: add             x6, PP, #0x18, lsl #12  ; [pp+0x18280] Obj!ButtonVariant@12bd991
    //     0x104100c: ldr             x6, [x6, #0x280]
    // 0x1041010: StoreField: r3->field_1b = r6
    //     0x1041010: stur            w6, [x3, #0x1b]
    // 0x1041014: r7 = Instance_ButtonColor
    //     0x1041014: add             x7, PP, #0x18, lsl #12  ; [pp+0x182b0] Obj!ButtonColor@12bd8b1
    //     0x1041018: ldr             x7, [x7, #0x2b0]
    // 0x104101c: StoreField: r3->field_1f = r7
    //     0x104101c: stur            w7, [x3, #0x1f]
    // 0x1041020: r1 = Function '<anonymous closure>':.
    //     0x1041020: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e270] AnonymousClosure: (0x10418bc), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x1041024: ldr             x1, [x1, #0x270]
    // 0x1041028: r2 = Null
    //     0x1041028: mov             x2, NULL
    // 0x104102c: r0 = AllocateClosure()
    //     0x104102c: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x1041030: mov             x1, x0
    // 0x1041034: ldur            x0, [fp, #-0x40]
    // 0x1041038: StoreField: r0->field_23 = r1
    //     0x1041038: stur            w1, [x0, #0x23]
    // 0x104103c: r1 = Instance_IconData
    //     0x104103c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18298] Obj!IconData@128a891
    //     0x1041040: ldr             x1, [x1, #0x298]
    // 0x1041044: StoreField: r0->field_27 = r1
    //     0x1041044: stur            w1, [x0, #0x27]
    // 0x1041048: r2 = true
    //     0x1041048: add             x2, NULL, #0x20  ; true
    // 0x104104c: StoreField: r0->field_2b = r2
    //     0x104104c: stur            w2, [x0, #0x2b]
    // 0x1041050: r3 = false
    //     0x1041050: add             x3, NULL, #0x30  ; false
    // 0x1041054: StoreField: r0->field_2f = r3
    //     0x1041054: stur            w3, [x0, #0x2f]
    // 0x1041058: ldur            x4, [fp, #-0x38]
    // 0x104105c: StoreField: r0->field_33 = r4
    //     0x104105c: stur            w4, [x0, #0x33]
    // 0x1041060: StoreField: r0->field_37 = r3
    //     0x1041060: stur            w3, [x0, #0x37]
    // 0x1041064: r0 = SizedBox()
    //     0x1041064: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1041068: mov             x2, x0
    // 0x104106c: r0 = inf
    //     0x104106c: add             x0, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x1041070: ldr             x0, [x0, #0x8a8]
    // 0x1041074: stur            x2, [fp, #-0x38]
    // 0x1041078: StoreField: r2->field_f = r0
    //     0x1041078: stur            w0, [x2, #0xf]
    // 0x104107c: ldur            d0, [fp, #-0x50]
    // 0x1041080: r1 = inline_Allocate_Double()
    //     0x1041080: ldp             x1, x3, [THR, #0x60]  ; THR::top
    //     0x1041084: add             x1, x1, #0x10
    //     0x1041088: cmp             x3, x1
    //     0x104108c: b.ls            #0x1041654
    //     0x1041090: str             x1, [THR, #0x60]  ; THR::top
    //     0x1041094: sub             x1, x1, #0xf
    //     0x1041098: mov             x3, #0xe19c
    //     0x104109c: movk            x3, #3, lsl #16
    //     0x10410a0: stur            x3, [x1, #-1]
    // 0x10410a4: dmb             ishst
    // 0x10410a8: StoreField: r1->field_7 = d0
    //     0x10410a8: stur            d0, [x1, #7]
    // 0x10410ac: StoreField: r2->field_13 = r1
    //     0x10410ac: stur            w1, [x2, #0x13]
    // 0x10410b0: ldur            x1, [fp, #-0x40]
    // 0x10410b4: StoreField: r2->field_b = r1
    //     0x10410b4: stur            w1, [x2, #0xb]
    // 0x10410b8: ldur            x3, [fp, #-8]
    // 0x10410bc: LoadField: r1 = r3->field_1b
    //     0x10410bc: ldur            w1, [x3, #0x1b]
    // 0x10410c0: DecompressPointer r1
    //     0x10410c0: add             x1, x1, HEAP, lsl #32
    // 0x10410c4: tbnz            w1, #4, #0x1041120
    // 0x10410c8: r1 = LoadStaticField(0x1674)
    //     0x10410c8: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x10410cc: ldr             x1, [x1, #0x2ce8]
    // 0x10410d0: r4 = LoadStaticField(0x1680)
    //     0x10410d0: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x10410d4: ldr             x4, [x4, #0x2d00]
    // 0x10410d8: tbnz            w4, #4, #0x10410f8
    // 0x10410dc: d1 = 0.625000
    //     0x10410dc: fmov            d1, #0.62500000
    // 0x10410e0: d0 = 0.800000
    //     0x10410e0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10410e4: ldr             d0, [x17, #0xa58]
    // 0x10410e8: LoadField: d2 = r1->field_7
    //     0x10410e8: ldur            d2, [x1, #7]
    // 0x10410ec: fmul            d3, d2, d0
    // 0x10410f0: fmul            d2, d3, d1
    // 0x10410f4: b               #0x1041110
    // 0x10410f8: d1 = 0.625000
    //     0x10410f8: fmov            d1, #0.62500000
    // 0x10410fc: d0 = 0.800000
    //     0x10410fc: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1041100: ldr             d0, [x17, #0xa58]
    // 0x1041104: LoadField: d2 = r1->field_7
    //     0x1041104: ldur            d2, [x1, #7]
    // 0x1041108: fmul            d3, d2, d1
    // 0x104110c: mov             v2.16b, v3.16b
    // 0x1041110: mov             v3.16b, v2.16b
    // 0x1041114: d2 = 0.144444
    //     0x1041114: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1041118: ldr             d2, [x17, #0x1d8]
    // 0x104111c: b               #0x10411b4
    // 0x1041120: d1 = 0.625000
    //     0x1041120: fmov            d1, #0.62500000
    // 0x1041124: d0 = 0.800000
    //     0x1041124: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1041128: ldr             d0, [x17, #0xa58]
    // 0x104112c: LoadField: r1 = r3->field_1f
    //     0x104112c: ldur            w1, [x3, #0x1f]
    // 0x1041130: DecompressPointer r1
    //     0x1041130: add             x1, x1, HEAP, lsl #32
    // 0x1041134: tbnz            w1, #4, #0x104117c
    // 0x1041138: r1 = LoadStaticField(0x1674)
    //     0x1041138: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x104113c: ldr             x1, [x1, #0x2ce8]
    // 0x1041140: r4 = LoadStaticField(0x1680)
    //     0x1041140: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1041144: ldr             x4, [x4, #0x2d00]
    // 0x1041148: tbnz            w4, #4, #0x1041164
    // 0x104114c: d2 = 0.144444
    //     0x104114c: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1041150: ldr             d2, [x17, #0x1d8]
    // 0x1041154: LoadField: d3 = r1->field_7
    //     0x1041154: ldur            d3, [x1, #7]
    // 0x1041158: fmul            d4, d3, d0
    // 0x104115c: fmul            d3, d4, d2
    // 0x1041160: b               #0x10411b4
    // 0x1041164: d2 = 0.144444
    //     0x1041164: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1041168: ldr             d2, [x17, #0x1d8]
    // 0x104116c: LoadField: d3 = r1->field_7
    //     0x104116c: ldur            d3, [x1, #7]
    // 0x1041170: fmul            d4, d3, d2
    // 0x1041174: mov             v3.16b, v4.16b
    // 0x1041178: b               #0x10411b4
    // 0x104117c: d2 = 0.144444
    //     0x104117c: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1041180: ldr             d2, [x17, #0x1d8]
    // 0x1041184: r1 = LoadStaticField(0x1674)
    //     0x1041184: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1041188: ldr             x1, [x1, #0x2ce8]
    // 0x104118c: r4 = LoadStaticField(0x1680)
    //     0x104118c: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1041190: ldr             x4, [x4, #0x2d00]
    // 0x1041194: tbnz            w4, #4, #0x10411a8
    // 0x1041198: LoadField: d3 = r1->field_7
    //     0x1041198: ldur            d3, [x1, #7]
    // 0x104119c: fmul            d4, d3, d0
    // 0x10411a0: fmul            d3, d4, d2
    // 0x10411a4: b               #0x10411b4
    // 0x10411a8: LoadField: d3 = r1->field_7
    //     0x10411a8: ldur            d3, [x1, #7]
    // 0x10411ac: fmul            d4, d3, d2
    // 0x10411b0: mov             v3.16b, v4.16b
    // 0x10411b4: stur            d3, [fp, #-0x50]
    // 0x10411b8: LoadField: r1 = r3->field_13
    //     0x10411b8: ldur            w1, [x3, #0x13]
    // 0x10411bc: DecompressPointer r1
    //     0x10411bc: add             x1, x1, HEAP, lsl #32
    // 0x10411c0: r0 = colorsMetronic()
    //     0x10411c0: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x10411c4: LoadField: r1 = r0->field_c3
    //     0x10411c4: ldur            w1, [x0, #0xc3]
    // 0x10411c8: DecompressPointer r1
    //     0x10411c8: add             x1, x1, HEAP, lsl #32
    // 0x10411cc: stur            x1, [fp, #-0x40]
    // 0x10411d0: r0 = ColorButtonMetronic()
    //     0x10411d0: bl              #0xe754ec  ; AllocateColorButtonMetronicStub -> ColorButtonMetronic (size=0x3c)
    // 0x10411d4: mov             x3, x0
    // 0x10411d8: r0 = "Hapus Group Menu SimasterCore"
    //     0x10411d8: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e278] "Hapus Group Menu SimasterCore"
    //     0x10411dc: ldr             x0, [x0, #0x278]
    // 0x10411e0: stur            x3, [fp, #-0x48]
    // 0x10411e4: StoreField: r3->field_b = r0
    //     0x10411e4: stur            w0, [x3, #0xb]
    // 0x10411e8: r0 = Instance_ButtonSize
    //     0x10411e8: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1e0] Obj!ButtonSize@12bdab1
    //     0x10411ec: ldr             x0, [x0, #0x1e0]
    // 0x10411f0: StoreField: r3->field_f = r0
    //     0x10411f0: stur            w0, [x3, #0xf]
    // 0x10411f4: r4 = Instance_ButtonIcon
    //     0x10411f4: add             x4, PP, #0x18, lsl #12  ; [pp+0x18270] Obj!ButtonIcon@12bda31
    //     0x10411f8: ldr             x4, [x4, #0x270]
    // 0x10411fc: StoreField: r3->field_13 = r4
    //     0x10411fc: stur            w4, [x3, #0x13]
    // 0x1041200: r5 = Instance_ButtonState
    //     0x1041200: add             x5, PP, #0x18, lsl #12  ; [pp+0x18278] Obj!ButtonState@12bd9d1
    //     0x1041204: ldr             x5, [x5, #0x278]
    // 0x1041208: ArrayStore: r3[0] = r5  ; List_4
    //     0x1041208: stur            w5, [x3, #0x17]
    // 0x104120c: r6 = Instance_ButtonVariant
    //     0x104120c: add             x6, PP, #0x18, lsl #12  ; [pp+0x18280] Obj!ButtonVariant@12bd991
    //     0x1041210: ldr             x6, [x6, #0x280]
    // 0x1041214: StoreField: r3->field_1b = r6
    //     0x1041214: stur            w6, [x3, #0x1b]
    // 0x1041218: r7 = Instance_ButtonColor
    //     0x1041218: add             x7, PP, #0x18, lsl #12  ; [pp+0x182b0] Obj!ButtonColor@12bd8b1
    //     0x104121c: ldr             x7, [x7, #0x2b0]
    // 0x1041220: StoreField: r3->field_1f = r7
    //     0x1041220: stur            w7, [x3, #0x1f]
    // 0x1041224: r1 = Function '<anonymous closure>':.
    //     0x1041224: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e280] AnonymousClosure: (0x104182c), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x1041228: ldr             x1, [x1, #0x280]
    // 0x104122c: r2 = Null
    //     0x104122c: mov             x2, NULL
    // 0x1041230: r0 = AllocateClosure()
    //     0x1041230: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x1041234: mov             x1, x0
    // 0x1041238: ldur            x0, [fp, #-0x48]
    // 0x104123c: StoreField: r0->field_23 = r1
    //     0x104123c: stur            w1, [x0, #0x23]
    // 0x1041240: r1 = Instance_IconData
    //     0x1041240: add             x1, PP, #0x18, lsl #12  ; [pp+0x18298] Obj!IconData@128a891
    //     0x1041244: ldr             x1, [x1, #0x298]
    // 0x1041248: StoreField: r0->field_27 = r1
    //     0x1041248: stur            w1, [x0, #0x27]
    // 0x104124c: r2 = true
    //     0x104124c: add             x2, NULL, #0x20  ; true
    // 0x1041250: StoreField: r0->field_2b = r2
    //     0x1041250: stur            w2, [x0, #0x2b]
    // 0x1041254: r3 = false
    //     0x1041254: add             x3, NULL, #0x30  ; false
    // 0x1041258: StoreField: r0->field_2f = r3
    //     0x1041258: stur            w3, [x0, #0x2f]
    // 0x104125c: ldur            x4, [fp, #-0x40]
    // 0x1041260: StoreField: r0->field_33 = r4
    //     0x1041260: stur            w4, [x0, #0x33]
    // 0x1041264: StoreField: r0->field_37 = r3
    //     0x1041264: stur            w3, [x0, #0x37]
    // 0x1041268: r0 = SizedBox()
    //     0x1041268: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x104126c: mov             x2, x0
    // 0x1041270: r0 = inf
    //     0x1041270: add             x0, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x1041274: ldr             x0, [x0, #0x8a8]
    // 0x1041278: stur            x2, [fp, #-0x40]
    // 0x104127c: StoreField: r2->field_f = r0
    //     0x104127c: stur            w0, [x2, #0xf]
    // 0x1041280: ldur            d0, [fp, #-0x50]
    // 0x1041284: r1 = inline_Allocate_Double()
    //     0x1041284: ldp             x1, x3, [THR, #0x60]  ; THR::top
    //     0x1041288: add             x1, x1, #0x10
    //     0x104128c: cmp             x3, x1
    //     0x1041290: b.ls            #0x1041670
    //     0x1041294: str             x1, [THR, #0x60]  ; THR::top
    //     0x1041298: sub             x1, x1, #0xf
    //     0x104129c: mov             x3, #0xe19c
    //     0x10412a0: movk            x3, #3, lsl #16
    //     0x10412a4: stur            x3, [x1, #-1]
    // 0x10412a8: dmb             ishst
    // 0x10412ac: StoreField: r1->field_7 = d0
    //     0x10412ac: stur            d0, [x1, #7]
    // 0x10412b0: StoreField: r2->field_13 = r1
    //     0x10412b0: stur            w1, [x2, #0x13]
    // 0x10412b4: ldur            x1, [fp, #-0x48]
    // 0x10412b8: StoreField: r2->field_b = r1
    //     0x10412b8: stur            w1, [x2, #0xb]
    // 0x10412bc: ldur            x1, [fp, #-8]
    // 0x10412c0: LoadField: r3 = r1->field_1b
    //     0x10412c0: ldur            w3, [x1, #0x1b]
    // 0x10412c4: DecompressPointer r3
    //     0x10412c4: add             x3, x3, HEAP, lsl #32
    // 0x10412c8: tbnz            w3, #4, #0x1041310
    // 0x10412cc: r3 = LoadStaticField(0x1674)
    //     0x10412cc: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x10412d0: ldr             x3, [x3, #0x2ce8]
    // 0x10412d4: r4 = LoadStaticField(0x1680)
    //     0x10412d4: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x10412d8: ldr             x4, [x4, #0x2d00]
    // 0x10412dc: tbnz            w4, #4, #0x10412fc
    // 0x10412e0: d1 = 0.625000
    //     0x10412e0: fmov            d1, #0.62500000
    // 0x10412e4: d0 = 0.800000
    //     0x10412e4: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10412e8: ldr             d0, [x17, #0xa58]
    // 0x10412ec: LoadField: d2 = r3->field_7
    //     0x10412ec: ldur            d2, [x3, #7]
    // 0x10412f0: fmul            d3, d2, d0
    // 0x10412f4: fmul            d0, d3, d1
    // 0x10412f8: b               #0x10413a0
    // 0x10412fc: d1 = 0.625000
    //     0x10412fc: fmov            d1, #0.62500000
    // 0x1041300: LoadField: d0 = r3->field_7
    //     0x1041300: ldur            d0, [x3, #7]
    // 0x1041304: fmul            d2, d0, d1
    // 0x1041308: mov             v0.16b, v2.16b
    // 0x104130c: b               #0x10413a0
    // 0x1041310: d0 = 0.800000
    //     0x1041310: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1041314: ldr             d0, [x17, #0xa58]
    // 0x1041318: LoadField: r3 = r1->field_1f
    //     0x1041318: ldur            w3, [x1, #0x1f]
    // 0x104131c: DecompressPointer r3
    //     0x104131c: add             x3, x3, HEAP, lsl #32
    // 0x1041320: tbnz            w3, #4, #0x1041368
    // 0x1041324: r3 = LoadStaticField(0x1674)
    //     0x1041324: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x1041328: ldr             x3, [x3, #0x2ce8]
    // 0x104132c: r4 = LoadStaticField(0x1680)
    //     0x104132c: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x1041330: ldr             x4, [x4, #0x2d00]
    // 0x1041334: tbnz            w4, #4, #0x1041350
    // 0x1041338: d1 = 0.144444
    //     0x1041338: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x104133c: ldr             d1, [x17, #0x1d8]
    // 0x1041340: LoadField: d2 = r3->field_7
    //     0x1041340: ldur            d2, [x3, #7]
    // 0x1041344: fmul            d3, d2, d0
    // 0x1041348: fmul            d0, d3, d1
    // 0x104134c: b               #0x10413a0
    // 0x1041350: d1 = 0.144444
    //     0x1041350: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x1041354: ldr             d1, [x17, #0x1d8]
    // 0x1041358: LoadField: d0 = r3->field_7
    //     0x1041358: ldur            d0, [x3, #7]
    // 0x104135c: fmul            d2, d0, d1
    // 0x1041360: mov             v0.16b, v2.16b
    // 0x1041364: b               #0x10413a0
    // 0x1041368: d1 = 0.144444
    //     0x1041368: add             x17, PP, #0x1e, lsl #12  ; [pp+0x1e1d8] IMM: double(0.14444444444444443) from 0x3fc27d27d27d27d2
    //     0x104136c: ldr             d1, [x17, #0x1d8]
    // 0x1041370: r3 = LoadStaticField(0x1674)
    //     0x1041370: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x1041374: ldr             x3, [x3, #0x2ce8]
    // 0x1041378: r4 = LoadStaticField(0x1680)
    //     0x1041378: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x104137c: ldr             x4, [x4, #0x2d00]
    // 0x1041380: tbnz            w4, #4, #0x1041394
    // 0x1041384: LoadField: d2 = r3->field_7
    //     0x1041384: ldur            d2, [x3, #7]
    // 0x1041388: fmul            d3, d2, d0
    // 0x104138c: fmul            d0, d3, d1
    // 0x1041390: b               #0x10413a0
    // 0x1041394: LoadField: d0 = r3->field_7
    //     0x1041394: ldur            d0, [x3, #7]
    // 0x1041398: fmul            d2, d0, d1
    // 0x104139c: mov             v0.16b, v2.16b
    // 0x10413a0: ldur            x8, [fp, #-0x10]
    // 0x10413a4: ldur            x7, [fp, #-0x18]
    // 0x10413a8: ldur            x6, [fp, #-0x20]
    // 0x10413ac: ldur            x5, [fp, #-0x28]
    // 0x10413b0: ldur            x4, [fp, #-0x30]
    // 0x10413b4: ldur            x3, [fp, #-0x38]
    // 0x10413b8: stur            d0, [fp, #-0x50]
    // 0x10413bc: LoadField: r9 = r1->field_13
    //     0x10413bc: ldur            w9, [x1, #0x13]
    // 0x10413c0: DecompressPointer r9
    //     0x10413c0: add             x9, x9, HEAP, lsl #32
    // 0x10413c4: mov             x1, x9
    // 0x10413c8: r0 = colorsMetronic()
    //     0x10413c8: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x10413cc: LoadField: r1 = r0->field_c3
    //     0x10413cc: ldur            w1, [x0, #0xc3]
    // 0x10413d0: DecompressPointer r1
    //     0x10413d0: add             x1, x1, HEAP, lsl #32
    // 0x10413d4: stur            x1, [fp, #-8]
    // 0x10413d8: r0 = ColorButtonMetronic()
    //     0x10413d8: bl              #0xe754ec  ; AllocateColorButtonMetronicStub -> ColorButtonMetronic (size=0x3c)
    // 0x10413dc: mov             x3, x0
    // 0x10413e0: r0 = "DEVICE PROPERTIES TEST"
    //     0x10413e0: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e288] "DEVICE PROPERTIES TEST"
    //     0x10413e4: ldr             x0, [x0, #0x288]
    // 0x10413e8: stur            x3, [fp, #-0x48]
    // 0x10413ec: StoreField: r3->field_b = r0
    //     0x10413ec: stur            w0, [x3, #0xb]
    // 0x10413f0: r0 = Instance_ButtonSize
    //     0x10413f0: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1e0] Obj!ButtonSize@12bdab1
    //     0x10413f4: ldr             x0, [x0, #0x1e0]
    // 0x10413f8: StoreField: r3->field_f = r0
    //     0x10413f8: stur            w0, [x3, #0xf]
    // 0x10413fc: r0 = Instance_ButtonIcon
    //     0x10413fc: add             x0, PP, #0x18, lsl #12  ; [pp+0x18270] Obj!ButtonIcon@12bda31
    //     0x1041400: ldr             x0, [x0, #0x270]
    // 0x1041404: StoreField: r3->field_13 = r0
    //     0x1041404: stur            w0, [x3, #0x13]
    // 0x1041408: r0 = Instance_ButtonState
    //     0x1041408: add             x0, PP, #0x18, lsl #12  ; [pp+0x18278] Obj!ButtonState@12bd9d1
    //     0x104140c: ldr             x0, [x0, #0x278]
    // 0x1041410: ArrayStore: r3[0] = r0  ; List_4
    //     0x1041410: stur            w0, [x3, #0x17]
    // 0x1041414: r0 = Instance_ButtonVariant
    //     0x1041414: add             x0, PP, #0x18, lsl #12  ; [pp+0x18280] Obj!ButtonVariant@12bd991
    //     0x1041418: ldr             x0, [x0, #0x280]
    // 0x104141c: StoreField: r3->field_1b = r0
    //     0x104141c: stur            w0, [x3, #0x1b]
    // 0x1041420: r0 = Instance_ButtonColor
    //     0x1041420: add             x0, PP, #0x18, lsl #12  ; [pp+0x182b0] Obj!ButtonColor@12bd8b1
    //     0x1041424: ldr             x0, [x0, #0x2b0]
    // 0x1041428: StoreField: r3->field_1f = r0
    //     0x1041428: stur            w0, [x3, #0x1f]
    // 0x104142c: r1 = Function '<anonymous closure>':.
    //     0x104142c: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e290] AnonymousClosure: (0x10416a4), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x1041430: ldr             x1, [x1, #0x290]
    // 0x1041434: r2 = Null
    //     0x1041434: mov             x2, NULL
    // 0x1041438: r0 = AllocateClosure()
    //     0x1041438: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x104143c: mov             x1, x0
    // 0x1041440: ldur            x0, [fp, #-0x48]
    // 0x1041444: StoreField: r0->field_23 = r1
    //     0x1041444: stur            w1, [x0, #0x23]
    // 0x1041448: r1 = Instance_IconData
    //     0x1041448: add             x1, PP, #0x18, lsl #12  ; [pp+0x18298] Obj!IconData@128a891
    //     0x104144c: ldr             x1, [x1, #0x298]
    // 0x1041450: StoreField: r0->field_27 = r1
    //     0x1041450: stur            w1, [x0, #0x27]
    // 0x1041454: r1 = true
    //     0x1041454: add             x1, NULL, #0x20  ; true
    // 0x1041458: StoreField: r0->field_2b = r1
    //     0x1041458: stur            w1, [x0, #0x2b]
    // 0x104145c: r1 = false
    //     0x104145c: add             x1, NULL, #0x30  ; false
    // 0x1041460: StoreField: r0->field_2f = r1
    //     0x1041460: stur            w1, [x0, #0x2f]
    // 0x1041464: ldur            x2, [fp, #-8]
    // 0x1041468: StoreField: r0->field_33 = r2
    //     0x1041468: stur            w2, [x0, #0x33]
    // 0x104146c: StoreField: r0->field_37 = r1
    //     0x104146c: stur            w1, [x0, #0x37]
    // 0x1041470: r0 = SizedBox()
    //     0x1041470: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1041474: mov             x3, x0
    // 0x1041478: r0 = inf
    //     0x1041478: add             x0, PP, #0x15, lsl #12  ; [pp+0x158a8] inf
    //     0x104147c: ldr             x0, [x0, #0x8a8]
    // 0x1041480: stur            x3, [fp, #-8]
    // 0x1041484: StoreField: r3->field_f = r0
    //     0x1041484: stur            w0, [x3, #0xf]
    // 0x1041488: ldur            d0, [fp, #-0x50]
    // 0x104148c: r0 = inline_Allocate_Double()
    //     0x104148c: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x1041490: add             x0, x0, #0x10
    //     0x1041494: cmp             x1, x0
    //     0x1041498: b.ls            #0x104168c
    //     0x104149c: str             x0, [THR, #0x60]  ; THR::top
    //     0x10414a0: sub             x0, x0, #0xf
    //     0x10414a4: mov             x1, #0xe19c
    //     0x10414a8: movk            x1, #3, lsl #16
    //     0x10414ac: stur            x1, [x0, #-1]
    // 0x10414b0: dmb             ishst
    // 0x10414b4: StoreField: r0->field_7 = d0
    //     0x10414b4: stur            d0, [x0, #7]
    // 0x10414b8: StoreField: r3->field_13 = r0
    //     0x10414b8: stur            w0, [x3, #0x13]
    // 0x10414bc: ldur            x0, [fp, #-0x48]
    // 0x10414c0: StoreField: r3->field_b = r0
    //     0x10414c0: stur            w0, [x3, #0xb]
    // 0x10414c4: r1 = Null
    //     0x10414c4: mov             x1, NULL
    // 0x10414c8: r2 = 16
    //     0x10414c8: mov             x2, #0x10
    // 0x10414cc: r0 = AllocateArray()
    //     0x10414cc: bl              #0x13df928  ; AllocateArrayStub
    // 0x10414d0: mov             x2, x0
    // 0x10414d4: ldur            x0, [fp, #-0x10]
    // 0x10414d8: stur            x2, [fp, #-0x48]
    // 0x10414dc: StoreField: r2->field_f = r0
    //     0x10414dc: stur            w0, [x2, #0xf]
    // 0x10414e0: ldur            x0, [fp, #-0x18]
    // 0x10414e4: StoreField: r2->field_13 = r0
    //     0x10414e4: stur            w0, [x2, #0x13]
    // 0x10414e8: ldur            x0, [fp, #-0x20]
    // 0x10414ec: ArrayStore: r2[0] = r0  ; List_4
    //     0x10414ec: stur            w0, [x2, #0x17]
    // 0x10414f0: ldur            x0, [fp, #-0x28]
    // 0x10414f4: StoreField: r2->field_1b = r0
    //     0x10414f4: stur            w0, [x2, #0x1b]
    // 0x10414f8: ldur            x0, [fp, #-0x30]
    // 0x10414fc: StoreField: r2->field_1f = r0
    //     0x10414fc: stur            w0, [x2, #0x1f]
    // 0x1041500: ldur            x0, [fp, #-0x38]
    // 0x1041504: StoreField: r2->field_23 = r0
    //     0x1041504: stur            w0, [x2, #0x23]
    // 0x1041508: ldur            x0, [fp, #-0x40]
    // 0x104150c: StoreField: r2->field_27 = r0
    //     0x104150c: stur            w0, [x2, #0x27]
    // 0x1041510: ldur            x0, [fp, #-8]
    // 0x1041514: StoreField: r2->field_2b = r0
    //     0x1041514: stur            w0, [x2, #0x2b]
    // 0x1041518: r1 = <Widget>
    //     0x1041518: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x104151c: r0 = AllocateGrowableArray()
    //     0x104151c: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x1041520: mov             x1, x0
    // 0x1041524: ldur            x0, [fp, #-0x48]
    // 0x1041528: stur            x1, [fp, #-8]
    // 0x104152c: StoreField: r1->field_f = r0
    //     0x104152c: stur            w0, [x1, #0xf]
    // 0x1041530: r0 = 16
    //     0x1041530: mov             x0, #0x10
    // 0x1041534: StoreField: r1->field_b = r0
    //     0x1041534: stur            w0, [x1, #0xb]
    // 0x1041538: r0 = Column()
    //     0x1041538: bl              #0x8a5b1c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x104153c: mov             x1, x0
    // 0x1041540: r0 = Instance_Axis
    //     0x1041540: ldr             x0, [PP, #0x49c0]  ; [pp+0x49c0] Obj!Axis@12c4a81
    // 0x1041544: StoreField: r1->field_f = r0
    //     0x1041544: stur            w0, [x1, #0xf]
    // 0x1041548: r0 = Instance_MainAxisAlignment
    //     0x1041548: add             x0, PP, #0x17, lsl #12  ; [pp+0x177b0] Obj!MainAxisAlignment@12c45c1
    //     0x104154c: ldr             x0, [x0, #0x7b0]
    // 0x1041550: StoreField: r1->field_13 = r0
    //     0x1041550: stur            w0, [x1, #0x13]
    // 0x1041554: r0 = Instance_MainAxisSize
    //     0x1041554: add             x0, PP, #0x15, lsl #12  ; [pp+0x15828] Obj!MainAxisSize@12c4621
    //     0x1041558: ldr             x0, [x0, #0x828]
    // 0x104155c: ArrayStore: r1[0] = r0  ; List_4
    //     0x104155c: stur            w0, [x1, #0x17]
    // 0x1041560: r0 = Instance_CrossAxisAlignment
    //     0x1041560: add             x0, PP, #0x15, lsl #12  ; [pp+0x15888] Obj!CrossAxisAlignment@12c44a1
    //     0x1041564: ldr             x0, [x0, #0x888]
    // 0x1041568: StoreField: r1->field_1b = r0
    //     0x1041568: stur            w0, [x1, #0x1b]
    // 0x104156c: r0 = Instance_VerticalDirection
    //     0x104156c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15838] Obj!VerticalDirection@12c4a21
    //     0x1041570: ldr             x0, [x0, #0x838]
    // 0x1041574: StoreField: r1->field_23 = r0
    //     0x1041574: stur            w0, [x1, #0x23]
    // 0x1041578: r0 = Instance_Clip
    //     0x1041578: add             x0, PP, #0x15, lsl #12  ; [pp+0x15840] Obj!Clip@12c80c1
    //     0x104157c: ldr             x0, [x0, #0x840]
    // 0x1041580: StoreField: r1->field_2b = r0
    //     0x1041580: stur            w0, [x1, #0x2b]
    // 0x1041584: d0 = 16.000000
    //     0x1041584: fmov            d0, #16.00000000
    // 0x1041588: StoreField: r1->field_2f = d0
    //     0x1041588: stur            d0, [x1, #0x2f]
    // 0x104158c: ldur            x0, [fp, #-8]
    // 0x1041590: StoreField: r1->field_b = r0
    //     0x1041590: stur            w0, [x1, #0xb]
    // 0x1041594: mov             x0, x1
    // 0x1041598: LeaveFrame
    //     0x1041598: mov             SP, fp
    //     0x104159c: ldp             fp, lr, [SP], #0x10
    // 0x10415a0: ret
    //     0x10415a0: ret             
    // 0x10415a4: r0 = SizedBox()
    //     0x10415a4: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x10415a8: r1 = 0.000000
    //     0x10415a8: ldr             x1, [PP, #0x4c28]  ; [pp+0x4c28] 0
    // 0x10415ac: StoreField: r0->field_f = r1
    //     0x10415ac: stur            w1, [x0, #0xf]
    // 0x10415b0: StoreField: r0->field_13 = r1
    //     0x10415b0: stur            w1, [x0, #0x13]
    // 0x10415b4: LeaveFrame
    //     0x10415b4: mov             SP, fp
    //     0x10415b8: ldp             fp, lr, [SP], #0x10
    // 0x10415bc: ret
    //     0x10415bc: ret             
    // 0x10415c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10415c0: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10415c4: b               #0x1040484
    // 0x10415c8: SaveReg d0
    //     0x10415c8: str             q0, [SP, #-0x10]!
    // 0x10415cc: stp             x0, x2, [SP, #-0x10]!
    // 0x10415d0: r0 = AllocateDouble()
    //     0x10415d0: bl              #0x13df878  ; AllocateDoubleStub
    // 0x10415d4: mov             x1, x0
    // 0x10415d8: ldp             x0, x2, [SP], #0x10
    // 0x10415dc: RestoreReg d0
    //     0x10415dc: ldr             q0, [SP], #0x10
    // 0x10415e0: b               #0x1040694
    // 0x10415e4: SaveReg d0
    //     0x10415e4: str             q0, [SP, #-0x10]!
    // 0x10415e8: stp             x0, x2, [SP, #-0x10]!
    // 0x10415ec: r0 = AllocateDouble()
    //     0x10415ec: bl              #0x13df878  ; AllocateDoubleStub
    // 0x10415f0: mov             x1, x0
    // 0x10415f4: ldp             x0, x2, [SP], #0x10
    // 0x10415f8: RestoreReg d0
    //     0x10415f8: ldr             q0, [SP], #0x10
    // 0x10415fc: b               #0x1040898
    // 0x1041600: SaveReg d0
    //     0x1041600: str             q0, [SP, #-0x10]!
    // 0x1041604: stp             x0, x2, [SP, #-0x10]!
    // 0x1041608: r0 = AllocateDouble()
    //     0x1041608: bl              #0x13df878  ; AllocateDoubleStub
    // 0x104160c: mov             x1, x0
    // 0x1041610: ldp             x0, x2, [SP], #0x10
    // 0x1041614: RestoreReg d0
    //     0x1041614: ldr             q0, [SP], #0x10
    // 0x1041618: b               #0x1040a9c
    // 0x104161c: SaveReg d0
    //     0x104161c: str             q0, [SP, #-0x10]!
    // 0x1041620: stp             x0, x2, [SP, #-0x10]!
    // 0x1041624: r0 = AllocateDouble()
    //     0x1041624: bl              #0x13df878  ; AllocateDoubleStub
    // 0x1041628: mov             x1, x0
    // 0x104162c: ldp             x0, x2, [SP], #0x10
    // 0x1041630: RestoreReg d0
    //     0x1041630: ldr             q0, [SP], #0x10
    // 0x1041634: b               #0x1040ca0
    // 0x1041638: SaveReg d0
    //     0x1041638: str             q0, [SP, #-0x10]!
    // 0x104163c: stp             x0, x2, [SP, #-0x10]!
    // 0x1041640: r0 = AllocateDouble()
    //     0x1041640: bl              #0x13df878  ; AllocateDoubleStub
    // 0x1041644: mov             x1, x0
    // 0x1041648: ldp             x0, x2, [SP], #0x10
    // 0x104164c: RestoreReg d0
    //     0x104164c: ldr             q0, [SP], #0x10
    // 0x1041650: b               #0x1040ea4
    // 0x1041654: SaveReg d0
    //     0x1041654: str             q0, [SP, #-0x10]!
    // 0x1041658: stp             x0, x2, [SP, #-0x10]!
    // 0x104165c: r0 = AllocateDouble()
    //     0x104165c: bl              #0x13df878  ; AllocateDoubleStub
    // 0x1041660: mov             x1, x0
    // 0x1041664: ldp             x0, x2, [SP], #0x10
    // 0x1041668: RestoreReg d0
    //     0x1041668: ldr             q0, [SP], #0x10
    // 0x104166c: b               #0x10410a8
    // 0x1041670: SaveReg d0
    //     0x1041670: str             q0, [SP, #-0x10]!
    // 0x1041674: stp             x0, x2, [SP, #-0x10]!
    // 0x1041678: r0 = AllocateDouble()
    //     0x1041678: bl              #0x13df878  ; AllocateDoubleStub
    // 0x104167c: mov             x1, x0
    // 0x1041680: ldp             x0, x2, [SP], #0x10
    // 0x1041684: RestoreReg d0
    //     0x1041684: ldr             q0, [SP], #0x10
    // 0x1041688: b               #0x10412ac
    // 0x104168c: SaveReg d0
    //     0x104168c: str             q0, [SP, #-0x10]!
    // 0x1041690: SaveReg r3
    //     0x1041690: str             x3, [SP, #-8]!
    // 0x1041694: r0 = AllocateDouble()
    //     0x1041694: bl              #0x13df878  ; AllocateDoubleStub
    // 0x1041698: RestoreReg r3
    //     0x1041698: ldr             x3, [SP], #8
    // 0x104169c: RestoreReg d0
    //     0x104169c: ldr             q0, [SP], #0x10
    // 0x10416a0: b               #0x10414b4
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x10416a4, size: 0xa8
    // 0x10416a4: EnterFrame
    //     0x10416a4: stp             fp, lr, [SP, #-0x10]!
    //     0x10416a8: mov             fp, SP
    // 0x10416ac: AllocStack(0x20)
    //     0x10416ac: sub             SP, SP, #0x20
    // 0x10416b0: SetupParameters(ProfileView this /* r1 */)
    //     0x10416b0: stur            NULL, [fp, #-8]
    //     0x10416b4: mov             x0, #0
    //     0x10416b8: add             x1, fp, w0, sxtw #2
    //     0x10416bc: ldr             x1, [x1, #0x10]
    //     0x10416c0: ldur            w2, [x1, #0x17]
    //     0x10416c4: add             x2, x2, HEAP, lsl #32
    //     0x10416c8: stur            x2, [fp, #-0x10]
    // 0x10416cc: CheckStackOverflow
    //     0x10416cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10416d0: cmp             SP, x16
    //     0x10416d4: b.ls            #0x1041744
    // 0x10416d8: InitAsync() -> Future<void?>
    //     0x10416d8: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0x10416dc: bl              #0x7f5e44  ; InitAsyncStub
    // 0x10416e0: r0 = LoadStaticField(0x13e8)
    //     0x10416e0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10416e4: ldr             x0, [x0, #0x27d0]
    // 0x10416e8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x10416ec: cmp             w0, w16
    // 0x10416f0: b.ne            #0x10416fc
    // 0x10416f4: r2 = Get
    //     0x10416f4: ldr             x2, [PP, #0x79d0]  ; [pp+0x79d0] Field <::.Get>: static late final (offset: 0x13e8)
    // 0x10416f8: r0 = InitLateFinalStaticField()
    //     0x10416f8: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x10416fc: r0 = DeviceTestController()
    //     0x10416fc: bl              #0x1041820  ; AllocateDeviceTestControllerStub -> DeviceTestController (size=0x20)
    // 0x1041700: mov             x1, x0
    // 0x1041704: stur            x0, [fp, #-0x10]
    // 0x1041708: r0 = DeviceTestController()
    //     0x1041708: bl              #0x1041758  ; [package:simaster_ugm/app/modules/testing/device_test.dart] DeviceTestController::DeviceTestController
    // 0x104170c: r16 = <DeviceTestController>
    //     0x104170c: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e298] TypeArguments: <DeviceTestController>
    //     0x1041710: ldr             x16, [x16, #0x298]
    // 0x1041714: ldur            lr, [fp, #-0x10]
    // 0x1041718: stp             lr, x16, [SP]
    // 0x104171c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x104171c: ldr             x4, [PP, #0xf68]  ; [pp+0xf68] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x1041720: r0 = Inst.put()
    //     0x1041720: bl              #0x91e5e4  ; [package:get/get_instance/src/extension_instance.dart] ::Inst.put
    // 0x1041724: r1 = <DeviceTestController>
    //     0x1041724: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e298] TypeArguments: <DeviceTestController>
    //     0x1041728: ldr             x1, [x1, #0x298]
    // 0x104172c: r0 = DeviceTestView()
    //     0x104172c: bl              #0x104174c  ; AllocateDeviceTestViewStub -> DeviceTestView (size=0x14)
    // 0x1041730: stp             x0, NULL, [SP]
    // 0x1041734: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x1041734: ldr             x4, [PP, #0xf68]  ; [pp+0xf68] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x1041738: r0 = GetNavigation.to()
    //     0x1041738: bl              #0xeaf1a8  ; [package:get/get_navigation/src/extension_navigation.dart] ::GetNavigation.to
    // 0x104173c: r0 = Null
    //     0x104173c: mov             x0, NULL
    // 0x1041740: r0 = ReturnAsyncNotFuture()
    //     0x1041740: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x1041744: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1041744: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x1041748: b               #0x10416d8
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x104182c, size: 0x90
    // 0x104182c: EnterFrame
    //     0x104182c: stp             fp, lr, [SP, #-0x10]!
    //     0x1041830: mov             fp, SP
    // 0x1041834: AllocStack(0x18)
    //     0x1041834: sub             SP, SP, #0x18
    // 0x1041838: SetupParameters(ProfileView this /* r1 */)
    //     0x1041838: stur            NULL, [fp, #-8]
    //     0x104183c: mov             x0, #0
    //     0x1041840: add             x1, fp, w0, sxtw #2
    //     0x1041844: ldr             x1, [x1, #0x10]
    //     0x1041848: ldur            w2, [x1, #0x17]
    //     0x104184c: add             x2, x2, HEAP, lsl #32
    //     0x1041850: stur            x2, [fp, #-0x10]
    // 0x1041854: CheckStackOverflow
    //     0x1041854: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1041858: cmp             SP, x16
    //     0x104185c: b.ls            #0x10418b4
    // 0x1041860: InitAsync() -> Future<void?>
    //     0x1041860: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0x1041864: bl              #0x7f5e44  ; InitAsyncStub
    // 0x1041868: r0 = LoadStaticField(0x930)
    //     0x1041868: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x104186c: ldr             x0, [x0, #0x1260]
    // 0x1041870: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x1041874: cmp             w0, w16
    // 0x1041878: b.ne            #0x1041884
    // 0x104187c: r2 = _isLoggingEnabled
    //     0x104187c: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0x1041880: r0 = InitLateFinalStaticField()
    //     0x1041880: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x1041884: r1 = "Berhasil Menghapus Group Menu Cache"
    //     0x1041884: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e2a0] "Berhasil Menghapus Group Menu Cache"
    //     0x1041888: ldr             x1, [x1, #0x2a0]
    // 0x104188c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x104188c: ldr             x4, [PP, #0xe8]  ; [pp+0xe8] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x1041890: r0 = showToast()
    //     0x1041890: bl              #0xe99f18  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x1041894: r1 = "group_menu"
    //     0x1041894: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e2a8] "group_menu"
    //     0x1041898: ldr             x1, [x1, #0x2a8]
    // 0x104189c: r0 = removeData()
    //     0x104189c: bl              #0xe8b77c  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::removeData
    // 0x10418a0: mov             x1, x0
    // 0x10418a4: stur            x1, [fp, #-0x18]
    // 0x10418a8: r0 = Await()
    //     0x10418a8: bl              #0x7f5c00  ; AwaitStub
    // 0x10418ac: r0 = Null
    //     0x10418ac: mov             x0, NULL
    // 0x10418b0: r0 = ReturnAsyncNotFuture()
    //     0x10418b0: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x10418b4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x10418b4: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x10418b8: b               #0x1041860
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x10418bc, size: 0xc4
    // 0x10418bc: EnterFrame
    //     0x10418bc: stp             fp, lr, [SP, #-0x10]!
    //     0x10418c0: mov             fp, SP
    // 0x10418c4: AllocStack(0x20)
    //     0x10418c4: sub             SP, SP, #0x20
    // 0x10418c8: SetupParameters(ProfileView this /* r1 */)
    //     0x10418c8: stur            NULL, [fp, #-8]
    //     0x10418cc: mov             x0, #0
    //     0x10418d0: add             x1, fp, w0, sxtw #2
    //     0x10418d4: ldr             x1, [x1, #0x10]
    //     0x10418d8: ldur            w2, [x1, #0x17]
    //     0x10418dc: add             x2, x2, HEAP, lsl #32
    //     0x10418e0: stur            x2, [fp, #-0x10]
    // 0x10418e4: CheckStackOverflow
    //     0x10418e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10418e8: cmp             SP, x16
    //     0x10418ec: b.ls            #0x1041978
    // 0x10418f0: InitAsync() -> Future<void?>
    //     0x10418f0: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0x10418f4: bl              #0x7f5e44  ; InitAsyncStub
    // 0x10418f8: r0 = LoadStaticField(0x930)
    //     0x10418f8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10418fc: ldr             x0, [x0, #0x1260]
    // 0x1041900: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x1041904: cmp             w0, w16
    // 0x1041908: b.ne            #0x1041914
    // 0x104190c: r2 = _isLoggingEnabled
    //     0x104190c: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0x1041910: r0 = InitLateFinalStaticField()
    //     0x1041910: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x1041914: r0 = LoadStaticField(0x13e8)
    //     0x1041914: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x1041918: ldr             x0, [x0, #0x27d0]
    // 0x104191c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x1041920: cmp             w0, w16
    // 0x1041924: b.ne            #0x1041930
    // 0x1041928: r2 = Get
    //     0x1041928: ldr             x2, [PP, #0x79d0]  ; [pp+0x79d0] Field <::.Get>: static late final (offset: 0x13e8)
    // 0x104192c: r0 = InitLateFinalStaticField()
    //     0x104192c: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x1041930: r0 = TestSVGController()
    //     0x1041930: bl              #0x1041af4  ; AllocateTestSVGControllerStub -> TestSVGController (size=0x34)
    // 0x1041934: mov             x1, x0
    // 0x1041938: stur            x0, [fp, #-0x10]
    // 0x104193c: r0 = TestSVGController()
    //     0x104193c: bl              #0x104198c  ; [package:simaster_ugm/app/modules/testing/svg_test.dart] TestSVGController::TestSVGController
    // 0x1041940: r16 = <TestSVGController>
    //     0x1041940: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e330] TypeArguments: <TestSVGController>
    //     0x1041944: ldr             x16, [x16, #0x330]
    // 0x1041948: ldur            lr, [fp, #-0x10]
    // 0x104194c: stp             lr, x16, [SP]
    // 0x1041950: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x1041950: ldr             x4, [PP, #0xf68]  ; [pp+0xf68] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x1041954: r0 = Inst.put()
    //     0x1041954: bl              #0x91e5e4  ; [package:get/get_instance/src/extension_instance.dart] ::Inst.put
    // 0x1041958: r1 = <TestSVGController>
    //     0x1041958: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e330] TypeArguments: <TestSVGController>
    //     0x104195c: ldr             x1, [x1, #0x330]
    // 0x1041960: r0 = TestSVGView()
    //     0x1041960: bl              #0x1041980  ; AllocateTestSVGViewStub -> TestSVGView (size=0x14)
    // 0x1041964: stp             x0, NULL, [SP]
    // 0x1041968: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x1041968: ldr             x4, [PP, #0xf68]  ; [pp+0xf68] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x104196c: r0 = GetNavigation.to()
    //     0x104196c: bl              #0xeaf1a8  ; [package:get/get_navigation/src/extension_navigation.dart] ::GetNavigation.to
    // 0x1041970: r0 = Null
    //     0x1041970: mov             x0, NULL
    // 0x1041974: r0 = ReturnAsyncNotFuture()
    //     0x1041974: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x1041978: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1041978: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x104197c: b               #0x10418f0
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x1041b00, size: 0x98
    // 0x1041b00: EnterFrame
    //     0x1041b00: stp             fp, lr, [SP, #-0x10]!
    //     0x1041b04: mov             fp, SP
    // 0x1041b08: AllocStack(0x18)
    //     0x1041b08: sub             SP, SP, #0x18
    // 0x1041b0c: SetupParameters(ProfileView this /* r1 */)
    //     0x1041b0c: stur            NULL, [fp, #-8]
    //     0x1041b10: mov             x0, #0
    //     0x1041b14: add             x1, fp, w0, sxtw #2
    //     0x1041b18: ldr             x1, [x1, #0x10]
    //     0x1041b1c: ldur            w2, [x1, #0x17]
    //     0x1041b20: add             x2, x2, HEAP, lsl #32
    //     0x1041b24: stur            x2, [fp, #-0x10]
    // 0x1041b28: CheckStackOverflow
    //     0x1041b28: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1041b2c: cmp             SP, x16
    //     0x1041b30: b.ls            #0x1041b90
    // 0x1041b34: InitAsync() -> Future<void?>
    //     0x1041b34: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0x1041b38: bl              #0x7f5e44  ; InitAsyncStub
    // 0x1041b3c: r0 = LoadStaticField(0x930)
    //     0x1041b3c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x1041b40: ldr             x0, [x0, #0x1260]
    // 0x1041b44: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x1041b48: cmp             w0, w16
    // 0x1041b4c: b.ne            #0x1041b58
    // 0x1041b50: r2 = _isLoggingEnabled
    //     0x1041b50: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0x1041b54: r0 = InitLateFinalStaticField()
    //     0x1041b54: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x1041b58: r1 = "refresh_token"
    //     0x1041b58: add             x1, PP, #0x16, lsl #12  ; [pp+0x16a30] "refresh_token"
    //     0x1041b5c: ldr             x1, [x1, #0xa30]
    // 0x1041b60: r2 = "[REDACTED_JWT]"
    //     0x1041b60: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e338] "[REDACTED_JWT]"
    //     0x1041b64: ldr             x2, [x2, #0x338]
    // 0x1041b68: r0 = saveData()
    //     0x1041b68: bl              #0x920b74  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::saveData
    // 0x1041b6c: mov             x1, x0
    // 0x1041b70: stur            x1, [fp, #-0x18]
    // 0x1041b74: r0 = Await()
    //     0x1041b74: bl              #0x7f5c00  ; AwaitStub
    // 0x1041b78: r1 = "Berhasil Mengexpiredkan Refresh Token"
    //     0x1041b78: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e340] "Berhasil Mengexpiredkan Refresh Token"
    //     0x1041b7c: ldr             x1, [x1, #0x340]
    // 0x1041b80: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x1041b80: ldr             x4, [PP, #0xe8]  ; [pp+0xe8] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x1041b84: r0 = showToast()
    //     0x1041b84: bl              #0xe99f18  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x1041b88: r0 = Null
    //     0x1041b88: mov             x0, NULL
    // 0x1041b8c: r0 = ReturnAsyncNotFuture()
    //     0x1041b8c: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x1041b90: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1041b90: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x1041b94: b               #0x1041b34
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x1041b98, size: 0x90
    // 0x1041b98: EnterFrame
    //     0x1041b98: stp             fp, lr, [SP, #-0x10]!
    //     0x1041b9c: mov             fp, SP
    // 0x1041ba0: AllocStack(0x18)
    //     0x1041ba0: sub             SP, SP, #0x18
    // 0x1041ba4: SetupParameters(ProfileView this /* r1 */)
    //     0x1041ba4: stur            NULL, [fp, #-8]
    //     0x1041ba8: mov             x0, #0
    //     0x1041bac: add             x1, fp, w0, sxtw #2
    //     0x1041bb0: ldr             x1, [x1, #0x10]
    //     0x1041bb4: ldur            w2, [x1, #0x17]
    //     0x1041bb8: add             x2, x2, HEAP, lsl #32
    //     0x1041bbc: stur            x2, [fp, #-0x10]
    // 0x1041bc0: CheckStackOverflow
    //     0x1041bc0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1041bc4: cmp             SP, x16
    //     0x1041bc8: b.ls            #0x1041c20
    // 0x1041bcc: InitAsync() -> Future<void?>
    //     0x1041bcc: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0x1041bd0: bl              #0x7f5e44  ; InitAsyncStub
    // 0x1041bd4: r0 = LoadStaticField(0x930)
    //     0x1041bd4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x1041bd8: ldr             x0, [x0, #0x1260]
    // 0x1041bdc: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x1041be0: cmp             w0, w16
    // 0x1041be4: b.ne            #0x1041bf0
    // 0x1041be8: r2 = _isLoggingEnabled
    //     0x1041be8: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0x1041bec: r0 = InitLateFinalStaticField()
    //     0x1041bec: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x1041bf0: r1 = "access_token"
    //     0x1041bf0: ldr             x1, [PP, #0x7910]  ; [pp+0x7910] "access_token"
    // 0x1041bf4: r2 = ""
    //     0x1041bf4: ldr             x2, [PP, #0x900]  ; [pp+0x900] ""
    // 0x1041bf8: r0 = saveData()
    //     0x1041bf8: bl              #0x920b74  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::saveData
    // 0x1041bfc: mov             x1, x0
    // 0x1041c00: stur            x1, [fp, #-0x18]
    // 0x1041c04: r0 = Await()
    //     0x1041c04: bl              #0x7f5c00  ; AwaitStub
    // 0x1041c08: r1 = "Berhasil Menghapus Access Token"
    //     0x1041c08: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e348] "Berhasil Menghapus Access Token"
    //     0x1041c0c: ldr             x1, [x1, #0x348]
    // 0x1041c10: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x1041c10: ldr             x4, [PP, #0xe8]  ; [pp+0xe8] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x1041c14: r0 = showToast()
    //     0x1041c14: bl              #0xe99f18  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x1041c18: r0 = Null
    //     0x1041c18: mov             x0, NULL
    // 0x1041c1c: r0 = ReturnAsyncNotFuture()
    //     0x1041c1c: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x1041c20: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1041c20: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x1041c24: b               #0x1041bcc
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x1041c28, size: 0xa4
    // 0x1041c28: EnterFrame
    //     0x1041c28: stp             fp, lr, [SP, #-0x10]!
    //     0x1041c2c: mov             fp, SP
    // 0x1041c30: AllocStack(0x18)
    //     0x1041c30: sub             SP, SP, #0x18
    // 0x1041c34: SetupParameters(ProfileView this /* r1 */)
    //     0x1041c34: stur            NULL, [fp, #-8]
    //     0x1041c38: mov             x0, #0
    //     0x1041c3c: add             x1, fp, w0, sxtw #2
    //     0x1041c40: ldr             x1, [x1, #0x10]
    //     0x1041c44: ldur            w2, [x1, #0x17]
    //     0x1041c48: add             x2, x2, HEAP, lsl #32
    //     0x1041c4c: stur            x2, [fp, #-0x10]
    // 0x1041c50: CheckStackOverflow
    //     0x1041c50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1041c54: cmp             SP, x16
    //     0x1041c58: b.ls            #0x1041cc4
    // 0x1041c5c: InitAsync() -> Future<void?>
    //     0x1041c5c: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0x1041c60: bl              #0x7f5e44  ; InitAsyncStub
    // 0x1041c64: r1 = "last_read_news_id"
    //     0x1041c64: add             x1, PP, #0x18, lsl #12  ; [pp+0x18e38] "last_read_news_id"
    //     0x1041c68: ldr             x1, [x1, #0xe38]
    // 0x1041c6c: r0 = removeData()
    //     0x1041c6c: bl              #0xe8b77c  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::removeData
    // 0x1041c70: mov             x1, x0
    // 0x1041c74: stur            x1, [fp, #-0x18]
    // 0x1041c78: r0 = Await()
    //     0x1041c78: bl              #0x7f5c00  ; AwaitStub
    // 0x1041c7c: r1 = "news_modal_count_today"
    //     0x1041c7c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18e88] "news_modal_count_today"
    //     0x1041c80: ldr             x1, [x1, #0xe88]
    // 0x1041c84: r0 = removeData()
    //     0x1041c84: bl              #0xe8b77c  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::removeData
    // 0x1041c88: mov             x1, x0
    // 0x1041c8c: stur            x1, [fp, #-0x18]
    // 0x1041c90: r0 = Await()
    //     0x1041c90: bl              #0x7f5c00  ; AwaitStub
    // 0x1041c94: r1 = "news_modal_last_date"
    //     0x1041c94: add             x1, PP, #0x18, lsl #12  ; [pp+0x18e80] "news_modal_last_date"
    //     0x1041c98: ldr             x1, [x1, #0xe80]
    // 0x1041c9c: r0 = removeData()
    //     0x1041c9c: bl              #0xe8b77c  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::removeData
    // 0x1041ca0: mov             x1, x0
    // 0x1041ca4: stur            x1, [fp, #-0x18]
    // 0x1041ca8: r0 = Await()
    //     0x1041ca8: bl              #0x7f5c00  ; AwaitStub
    // 0x1041cac: r1 = "Berhasil Reset Data Modal Berita"
    //     0x1041cac: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e350] "Berhasil Reset Data Modal Berita"
    //     0x1041cb0: ldr             x1, [x1, #0x350]
    // 0x1041cb4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x1041cb4: ldr             x4, [PP, #0xe8]  ; [pp+0xe8] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x1041cb8: r0 = showToast()
    //     0x1041cb8: bl              #0xe99f18  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x1041cbc: r0 = Null
    //     0x1041cbc: mov             x0, NULL
    // 0x1041cc0: r0 = ReturnAsyncNotFuture()
    //     0x1041cc0: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x1041cc4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1041cc4: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x1041cc8: b               #0x1041c5c
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x1041ccc, size: 0x94
    // 0x1041ccc: EnterFrame
    //     0x1041ccc: stp             fp, lr, [SP, #-0x10]!
    //     0x1041cd0: mov             fp, SP
    // 0x1041cd4: AllocStack(0x18)
    //     0x1041cd4: sub             SP, SP, #0x18
    // 0x1041cd8: SetupParameters(ProfileView this /* r1 */)
    //     0x1041cd8: stur            NULL, [fp, #-8]
    //     0x1041cdc: mov             x0, #0
    //     0x1041ce0: add             x1, fp, w0, sxtw #2
    //     0x1041ce4: ldr             x1, [x1, #0x10]
    //     0x1041ce8: ldur            w2, [x1, #0x17]
    //     0x1041cec: add             x2, x2, HEAP, lsl #32
    //     0x1041cf0: stur            x2, [fp, #-0x10]
    // 0x1041cf4: CheckStackOverflow
    //     0x1041cf4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1041cf8: cmp             SP, x16
    //     0x1041cfc: b.ls            #0x1041d58
    // 0x1041d00: InitAsync() -> Future<void?>
    //     0x1041d00: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0x1041d04: bl              #0x7f5e44  ; InitAsyncStub
    // 0x1041d08: r0 = LoadStaticField(0x930)
    //     0x1041d08: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x1041d0c: ldr             x0, [x0, #0x1260]
    // 0x1041d10: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x1041d14: cmp             w0, w16
    // 0x1041d18: b.ne            #0x1041d24
    // 0x1041d1c: r2 = _isLoggingEnabled
    //     0x1041d1c: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0x1041d20: r0 = InitLateFinalStaticField()
    //     0x1041d20: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x1041d24: r1 = "access_token"
    //     0x1041d24: ldr             x1, [PP, #0x7910]  ; [pp+0x7910] "access_token"
    // 0x1041d28: r2 = "[REDACTED_JWT]"
    //     0x1041d28: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e338] "[REDACTED_JWT]"
    //     0x1041d2c: ldr             x2, [x2, #0x338]
    // 0x1041d30: r0 = saveData()
    //     0x1041d30: bl              #0x920b74  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::saveData
    // 0x1041d34: mov             x1, x0
    // 0x1041d38: stur            x1, [fp, #-0x18]
    // 0x1041d3c: r0 = Await()
    //     0x1041d3c: bl              #0x7f5c00  ; AwaitStub
    // 0x1041d40: r1 = "Berhasil Mengexpiredkan Access Token"
    //     0x1041d40: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e358] "Berhasil Mengexpiredkan Access Token"
    //     0x1041d44: ldr             x1, [x1, #0x358]
    // 0x1041d48: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x1041d48: ldr             x4, [PP, #0xe8]  ; [pp+0xe8] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x1041d4c: r0 = showToast()
    //     0x1041d4c: bl              #0xe99f18  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x1041d50: r0 = Null
    //     0x1041d50: mov             x0, NULL
    // 0x1041d54: r0 = ReturnAsyncNotFuture()
    //     0x1041d54: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x1041d58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1041d58: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x1041d5c: b               #0x1041d00
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x1041d60, size: 0x6c
    // 0x1041d60: EnterFrame
    //     0x1041d60: stp             fp, lr, [SP, #-0x10]!
    //     0x1041d64: mov             fp, SP
    // 0x1041d68: AllocStack(0x18)
    //     0x1041d68: sub             SP, SP, #0x18
    // 0x1041d6c: SetupParameters(ProfileView this /* r1 */)
    //     0x1041d6c: stur            NULL, [fp, #-8]
    //     0x1041d70: mov             x0, #0
    //     0x1041d74: add             x1, fp, w0, sxtw #2
    //     0x1041d78: ldr             x1, [x1, #0x10]
    //     0x1041d7c: ldur            w2, [x1, #0x17]
    //     0x1041d80: add             x2, x2, HEAP, lsl #32
    //     0x1041d84: stur            x2, [fp, #-0x10]
    // 0x1041d88: CheckStackOverflow
    //     0x1041d88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1041d8c: cmp             SP, x16
    //     0x1041d90: b.ls            #0x1041dc4
    // 0x1041d94: InitAsync() -> Future<void?>
    //     0x1041d94: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0x1041d98: bl              #0x7f5e44  ; InitAsyncStub
    // 0x1041d9c: r0 = resetAllDataExceptLanguageAndTheme()
    //     0x1041d9c: bl              #0x8e8780  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::resetAllDataExceptLanguageAndTheme
    // 0x1041da0: mov             x1, x0
    // 0x1041da4: stur            x1, [fp, #-0x18]
    // 0x1041da8: r0 = Await()
    //     0x1041da8: bl              #0x7f5c00  ; AwaitStub
    // 0x1041dac: r1 = "Berhasil Menghapus Semua Auth Token"
    //     0x1041dac: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e360] "Berhasil Menghapus Semua Auth Token"
    //     0x1041db0: ldr             x1, [x1, #0x360]
    // 0x1041db4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x1041db4: ldr             x4, [PP, #0xe8]  ; [pp+0xe8] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x1041db8: r0 = showToast()
    //     0x1041db8: bl              #0xe99f18  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x1041dbc: r0 = Null
    //     0x1041dbc: mov             x0, NULL
    // 0x1041dc0: r0 = ReturnAsyncNotFuture()
    //     0x1041dc0: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x1041dc4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1041dc4: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x1041dc8: b               #0x1041d94
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x1041dcc, size: 0x8c
    // 0x1041dcc: EnterFrame
    //     0x1041dcc: stp             fp, lr, [SP, #-0x10]!
    //     0x1041dd0: mov             fp, SP
    // 0x1041dd4: AllocStack(0x30)
    //     0x1041dd4: sub             SP, SP, #0x30
    // 0x1041dd8: SetupParameters(ProfileView this /* r1 */)
    //     0x1041dd8: stur            NULL, [fp, #-8]
    //     0x1041ddc: mov             x0, #0
    //     0x1041de0: add             x1, fp, w0, sxtw #2
    //     0x1041de4: ldr             x1, [x1, #0x10]
    //     0x1041de8: ldur            w2, [x1, #0x17]
    //     0x1041dec: add             x2, x2, HEAP, lsl #32
    //     0x1041df0: stur            x2, [fp, #-0x10]
    // 0x1041df4: CheckStackOverflow
    //     0x1041df4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1041df8: cmp             SP, x16
    //     0x1041dfc: b.ls            #0x1041e50
    // 0x1041e00: InitAsync() -> Future<void?>
    //     0x1041e00: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0x1041e04: bl              #0x7f5e44  ; InitAsyncStub
    // 0x1041e08: ldur            x0, [fp, #-0x10]
    // 0x1041e0c: LoadField: r3 = r0->field_13
    //     0x1041e0c: ldur            w3, [x0, #0x13]
    // 0x1041e10: DecompressPointer r3
    //     0x1041e10: add             x3, x3, HEAP, lsl #32
    // 0x1041e14: mov             x2, x0
    // 0x1041e18: stur            x3, [fp, #-0x18]
    // 0x1041e1c: r1 = Function '<anonymous closure>':.
    //     0x1041e1c: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e368] AnonymousClosure: (0x1041e58), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x1041e20: ldr             x1, [x1, #0x368]
    // 0x1041e24: r0 = AllocateClosure()
    //     0x1041e24: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x1041e28: stp             x0, NULL, [SP, #8]
    // 0x1041e2c: ldur            x16, [fp, #-0x18]
    // 0x1041e30: str             x16, [SP]
    // 0x1041e34: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x1041e34: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x1041e38: r0 = showDialog()
    //     0x1041e38: bl              #0xd94f50  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x1041e3c: mov             x1, x0
    // 0x1041e40: stur            x1, [fp, #-0x18]
    // 0x1041e44: r0 = Await()
    //     0x1041e44: bl              #0x7f5c00  ; AwaitStub
    // 0x1041e48: r0 = Null
    //     0x1041e48: mov             x0, NULL
    // 0x1041e4c: r0 = ReturnAsyncNotFuture()
    //     0x1041e4c: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x1041e50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1041e50: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x1041e54: b               #0x1041e00
  }
  [closure] DialogMetronic <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x1041e58, size: 0xe0
    // 0x1041e58: EnterFrame
    //     0x1041e58: stp             fp, lr, [SP, #-0x10]!
    //     0x1041e5c: mov             fp, SP
    // 0x1041e60: AllocStack(0x58)
    //     0x1041e60: sub             SP, SP, #0x58
    // 0x1041e64: SetupParameters([dynamic _ /* r0 */])
    //     0x1041e64: ldr             x0, [fp, #0x18]
    //     0x1041e68: ldur            w2, [x0, #0x17]
    //     0x1041e6c: add             x2, x2, HEAP, lsl #32
    //     0x1041e70: stur            x2, [fp, #-8]
    // 0x1041e74: CheckStackOverflow
    //     0x1041e74: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1041e78: cmp             SP, x16
    //     0x1041e7c: b.ls            #0x1041f30
    // 0x1041e80: r1 = "logout"
    //     0x1041e80: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e1f0] "logout"
    //     0x1041e84: ldr             x1, [x1, #0x1f0]
    // 0x1041e88: r0 = Trans.tr()
    //     0x1041e88: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x1041e8c: r1 = "logout_message"
    //     0x1041e8c: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e370] "logout_message"
    //     0x1041e90: ldr             x1, [x1, #0x370]
    // 0x1041e94: stur            x0, [fp, #-0x10]
    // 0x1041e98: r0 = Trans.tr()
    //     0x1041e98: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x1041e9c: r1 = "yes"
    //     0x1041e9c: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e378] "yes"
    //     0x1041ea0: ldr             x1, [x1, #0x378]
    // 0x1041ea4: stur            x0, [fp, #-0x18]
    // 0x1041ea8: r0 = Trans.tr()
    //     0x1041ea8: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x1041eac: r1 = "no"
    //     0x1041eac: add             x1, PP, #9, lsl #12  ; [pp+0x9630] "no"
    //     0x1041eb0: ldr             x1, [x1, #0x630]
    // 0x1041eb4: stur            x0, [fp, #-0x20]
    // 0x1041eb8: r0 = Trans.tr()
    //     0x1041eb8: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x1041ebc: r1 = "yes"
    //     0x1041ebc: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e378] "yes"
    //     0x1041ec0: ldr             x1, [x1, #0x378]
    // 0x1041ec4: stur            x0, [fp, #-0x28]
    // 0x1041ec8: r0 = Trans.tr()
    //     0x1041ec8: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x1041ecc: ldur            x2, [fp, #-8]
    // 0x1041ed0: r1 = Function '<anonymous closure>':.
    //     0x1041ed0: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e380] AnonymousClosure: (0x1041f38), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x1041ed4: ldr             x1, [x1, #0x380]
    // 0x1041ed8: stur            x0, [fp, #-8]
    // 0x1041edc: r0 = AllocateClosure()
    //     0x1041edc: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x1041ee0: stur            x0, [fp, #-0x30]
    // 0x1041ee4: r0 = DialogMetronic()
    //     0x1041ee4: bl              #0xf7e778  ; AllocateDialogMetronicStub -> DialogMetronic (size=0x50)
    // 0x1041ee8: stur            x0, [fp, #-0x38]
    // 0x1041eec: r16 = true
    //     0x1041eec: add             x16, NULL, #0x20  ; true
    // 0x1041ef0: ldur            lr, [fp, #-0x20]
    // 0x1041ef4: stp             lr, x16, [SP, #0x10]
    // 0x1041ef8: ldur            x16, [fp, #-0x28]
    // 0x1041efc: ldur            lr, [fp, #-8]
    // 0x1041f00: stp             lr, x16, [SP]
    // 0x1041f04: mov             x1, x0
    // 0x1041f08: ldur            x2, [fp, #-0x18]
    // 0x1041f0c: ldur            x3, [fp, #-0x30]
    // 0x1041f10: ldur            x5, [fp, #-0x10]
    // 0x1041f14: r4 = const [0, 0x8, 0x4, 0x4, buttonText, 0x5, cancelText, 0x6, confirmText, 0x7, show2Action, 0x4, null]
    //     0x1041f14: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e388] List(13) [0, 0x8, 0x4, 0x4, "buttonText", 0x5, "cancelText", 0x6, "confirmText", 0x7, "show2Action", 0x4, Null]
    //     0x1041f18: ldr             x4, [x4, #0x388]
    // 0x1041f1c: r0 = DialogMetronic()
    //     0x1041f1c: bl              #0xf7e368  ; [package:simaster_ugm/design_system/widgets/dialog/dialog_collections.dart] DialogMetronic::DialogMetronic
    // 0x1041f20: ldur            x0, [fp, #-0x38]
    // 0x1041f24: LeaveFrame
    //     0x1041f24: mov             SP, fp
    //     0x1041f28: ldp             fp, lr, [SP], #0x10
    // 0x1041f2c: ret
    //     0x1041f2c: ret             
    // 0x1041f30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1041f30: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x1041f34: b               #0x1041e80
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x1041f38, size: 0xb8
    // 0x1041f38: EnterFrame
    //     0x1041f38: stp             fp, lr, [SP, #-0x10]!
    //     0x1041f3c: mov             fp, SP
    // 0x1041f40: AllocStack(0x28)
    //     0x1041f40: sub             SP, SP, #0x28
    // 0x1041f44: SetupParameters(ProfileView this /* r1 */)
    //     0x1041f44: stur            NULL, [fp, #-8]
    //     0x1041f48: mov             x0, #0
    //     0x1041f4c: add             x1, fp, w0, sxtw #2
    //     0x1041f50: ldr             x1, [x1, #0x10]
    //     0x1041f54: ldur            w2, [x1, #0x17]
    //     0x1041f58: add             x2, x2, HEAP, lsl #32
    //     0x1041f5c: stur            x2, [fp, #-0x10]
    // 0x1041f60: CheckStackOverflow
    //     0x1041f60: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1041f64: cmp             SP, x16
    //     0x1041f68: b.ls            #0x1041fe8
    // 0x1041f6c: InitAsync() -> Future<void?>
    //     0x1041f6c: ldr             x0, [PP, #0x2b8]  ; [pp+0x2b8] TypeArguments: <void?>
    //     0x1041f70: bl              #0x7f5e44  ; InitAsyncStub
    // 0x1041f74: r0 = LoadStaticField(0x13e8)
    //     0x1041f74: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x1041f78: ldr             x0, [x0, #0x27d0]
    // 0x1041f7c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x1041f80: cmp             w0, w16
    // 0x1041f84: b.ne            #0x1041f90
    // 0x1041f88: r2 = Get
    //     0x1041f88: ldr             x2, [PP, #0x79d0]  ; [pp+0x79d0] Field <::.Get>: static late final (offset: 0x13e8)
    // 0x1041f8c: r0 = InitLateFinalStaticField()
    //     0x1041f8c: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x1041f90: r16 = "/onboarding"
    //     0x1041f90: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a90] "/onboarding"
    //     0x1041f94: ldr             x16, [x16, #0xa90]
    // 0x1041f98: stp             x16, NULL, [SP]
    // 0x1041f9c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x1041f9c: ldr             x4, [PP, #0xf68]  ; [pp+0xf68] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x1041fa0: r0 = GetNavigation.offAllNamed()
    //     0x1041fa0: bl              #0x8df6d0  ; [package:get/get_navigation/src/extension_navigation.dart] ::GetNavigation.offAllNamed
    // 0x1041fa4: ldur            x0, [fp, #-0x10]
    // 0x1041fa8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x1041fa8: ldur            w1, [x0, #0x17]
    // 0x1041fac: DecompressPointer r1
    //     0x1041fac: add             x1, x1, HEAP, lsl #32
    // 0x1041fb0: r0 = startLoading()
    //     0x1041fb0: bl              #0xfda598  ; [package:simaster_ugm/app/controllers/loading_controller.dart] LoadingController::startLoading
    // 0x1041fb4: r0 = resetAllDataExceptLanguageAndTheme()
    //     0x1041fb4: bl              #0x8e8780  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::resetAllDataExceptLanguageAndTheme
    // 0x1041fb8: mov             x1, x0
    // 0x1041fbc: stur            x1, [fp, #-0x18]
    // 0x1041fc0: r0 = Await()
    //     0x1041fc0: bl              #0x7f5c00  ; AwaitStub
    // 0x1041fc4: r2 = false
    //     0x1041fc4: add             x2, NULL, #0x30  ; false
    // 0x1041fc8: StoreStaticField(0x948, r2)
    //     0x1041fc8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x1041fcc: str             x2, [x0, #0x1290]
    // 0x1041fd0: ldur            x0, [fp, #-0x10]
    // 0x1041fd4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x1041fd4: ldur            w1, [x0, #0x17]
    // 0x1041fd8: DecompressPointer r1
    //     0x1041fd8: add             x1, x1, HEAP, lsl #32
    // 0x1041fdc: r0 = stopLoading()
    //     0x1041fdc: bl              #0xfda0f0  ; [package:simaster_ugm/app/controllers/loading_controller.dart] LoadingController::stopLoading
    // 0x1041fe0: r0 = Null
    //     0x1041fe0: mov             x0, NULL
    // 0x1041fe4: r0 = ReturnAsyncNotFuture()
    //     0x1041fe4: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x1041fe8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1041fe8: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x1041fec: b               #0x1041f6c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x1041ff0, size: 0x5c
    // 0x1041ff0: EnterFrame
    //     0x1041ff0: stp             fp, lr, [SP, #-0x10]!
    //     0x1041ff4: mov             fp, SP
    // 0x1041ff8: AllocStack(0x10)
    //     0x1041ff8: sub             SP, SP, #0x10
    // 0x1041ffc: CheckStackOverflow
    //     0x1041ffc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1042000: cmp             SP, x16
    //     0x1042004: b.ls            #0x1042044
    // 0x1042008: r0 = LoadStaticField(0x13e8)
    //     0x1042008: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x104200c: ldr             x0, [x0, #0x27d0]
    // 0x1042010: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x1042014: cmp             w0, w16
    // 0x1042018: b.ne            #0x1042024
    // 0x104201c: r2 = Get
    //     0x104201c: ldr             x2, [PP, #0x79d0]  ; [pp+0x79d0] Field <::.Get>: static late final (offset: 0x13e8)
    // 0x1042020: r0 = InitLateFinalStaticField()
    //     0x1042020: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x1042024: r16 = "/setting"
    //     0x1042024: add             x16, PP, #0x14, lsl #12  ; [pp+0x14518] "/setting"
    //     0x1042028: ldr             x16, [x16, #0x518]
    // 0x104202c: stp             x16, NULL, [SP]
    // 0x1042030: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x1042030: ldr             x4, [PP, #0xf68]  ; [pp+0xf68] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x1042034: r0 = GetNavigation.toNamed()
    //     0x1042034: bl              #0xe8cef8  ; [package:get/get_navigation/src/extension_navigation.dart] ::GetNavigation.toNamed
    // 0x1042038: LeaveFrame
    //     0x1042038: mov             SP, fp
    //     0x104203c: ldp             fp, lr, [SP], #0x10
    // 0x1042040: ret
    //     0x1042040: ret             
    // 0x1042044: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1042044: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x1042048: b               #0x1042008
  }
  [closure] Column <anonymous closure>(dynamic, UserModel?) {
    // ** addr: 0x104204c, size: 0x350
    // 0x104204c: EnterFrame
    //     0x104204c: stp             fp, lr, [SP, #-0x10]!
    //     0x1042050: mov             fp, SP
    // 0x1042054: AllocStack(0x38)
    //     0x1042054: sub             SP, SP, #0x38
    // 0x1042058: CheckStackOverflow
    //     0x1042058: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x104205c: cmp             SP, x16
    //     0x1042060: b.ls            #0x1042338
    // 0x1042064: ldr             x0, [fp, #0x10]
    // 0x1042068: cmp             w0, NULL
    // 0x104206c: b.eq            #0x1042340
    // 0x1042070: LoadField: r1 = r0->field_37
    //     0x1042070: ldur            w1, [x0, #0x37]
    // 0x1042074: DecompressPointer r1
    //     0x1042074: add             x1, x1, HEAP, lsl #32
    // 0x1042078: stur            x1, [fp, #-0x10]
    // 0x104207c: r2 = LoadStaticField(0x1674)
    //     0x104207c: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x1042080: ldr             x2, [x2, #0x2ce8]
    // 0x1042084: stur            x2, [fp, #-8]
    // 0x1042088: r0 = DetailItem()
    //     0x1042088: bl              #0x104239c  ; AllocateDetailItemStub -> DetailItem (size=0x14)
    // 0x104208c: mov             x1, x0
    // 0x1042090: r0 = "NIM"
    //     0x1042090: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e390] "NIM"
    //     0x1042094: ldr             x0, [x0, #0x390]
    // 0x1042098: stur            x1, [fp, #-0x28]
    // 0x104209c: StoreField: r1->field_b = r0
    //     0x104209c: stur            w0, [x1, #0xb]
    // 0x10420a0: ldur            x0, [fp, #-0x10]
    // 0x10420a4: StoreField: r1->field_f = r0
    //     0x10420a4: stur            w0, [x1, #0xf]
    // 0x10420a8: r0 = LoadStaticField(0x16ec)
    //     0x10420a8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10420ac: ldr             x0, [x0, #0x2dd8]
    // 0x10420b0: stur            x0, [fp, #-0x20]
    // 0x10420b4: r2 = LoadStaticField(0x1680)
    //     0x10420b4: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x10420b8: ldr             x2, [x2, #0x2d00]
    // 0x10420bc: stur            x2, [fp, #-0x18]
    // 0x10420c0: tbnz            w2, #4, #0x10420f0
    // 0x10420c4: ldur            x3, [fp, #-8]
    // 0x10420c8: d1 = 360.000000
    //     0x10420c8: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x10420cc: ldr             d1, [x17, #0x180]
    // 0x10420d0: d0 = 0.800000
    //     0x10420d0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10420d4: ldr             d0, [x17, #0xa58]
    // 0x10420d8: LoadField: d2 = r0->field_7
    //     0x10420d8: ldur            d2, [x0, #7]
    // 0x10420dc: fdiv            d3, d2, d1
    // 0x10420e0: LoadField: d2 = r3->field_7
    //     0x10420e0: ldur            d2, [x3, #7]
    // 0x10420e4: fmul            d4, d2, d0
    // 0x10420e8: fmul            d2, d3, d4
    // 0x10420ec: b               #0x1042118
    // 0x10420f0: ldur            x3, [fp, #-8]
    // 0x10420f4: d1 = 360.000000
    //     0x10420f4: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x10420f8: ldr             d1, [x17, #0x180]
    // 0x10420fc: d0 = 0.800000
    //     0x10420fc: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1042100: ldr             d0, [x17, #0xa58]
    // 0x1042104: LoadField: d2 = r0->field_7
    //     0x1042104: ldur            d2, [x0, #7]
    // 0x1042108: fdiv            d3, d2, d1
    // 0x104210c: LoadField: d2 = r3->field_7
    //     0x104210c: ldur            d2, [x3, #7]
    // 0x1042110: fmul            d4, d3, d2
    // 0x1042114: mov             v2.16b, v4.16b
    // 0x1042118: ldr             x4, [fp, #0x10]
    // 0x104211c: r5 = inline_Allocate_Double()
    //     0x104211c: ldp             x5, x6, [THR, #0x60]  ; THR::top
    //     0x1042120: add             x5, x5, #0x10
    //     0x1042124: cmp             x6, x5
    //     0x1042128: b.ls            #0x1042344
    //     0x104212c: str             x5, [THR, #0x60]  ; THR::top
    //     0x1042130: sub             x5, x5, #0xf
    //     0x1042134: mov             x6, #0xe19c
    //     0x1042138: movk            x6, #3, lsl #16
    //     0x104213c: stur            x6, [x5, #-1]
    // 0x1042140: dmb             ishst
    // 0x1042144: StoreField: r5->field_7 = d2
    //     0x1042144: stur            d2, [x5, #7]
    // 0x1042148: stur            x5, [fp, #-0x10]
    // 0x104214c: r0 = SizedBox()
    //     0x104214c: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1042150: mov             x1, x0
    // 0x1042154: ldur            x0, [fp, #-0x10]
    // 0x1042158: stur            x1, [fp, #-0x30]
    // 0x104215c: StoreField: r1->field_13 = r0
    //     0x104215c: stur            w0, [x1, #0x13]
    // 0x1042160: ldr             x0, [fp, #0x10]
    // 0x1042164: LoadField: r2 = r0->field_3b
    //     0x1042164: ldur            w2, [x0, #0x3b]
    // 0x1042168: DecompressPointer r2
    //     0x1042168: add             x2, x2, HEAP, lsl #32
    // 0x104216c: stur            x2, [fp, #-0x10]
    // 0x1042170: r0 = DetailItem()
    //     0x1042170: bl              #0x104239c  ; AllocateDetailItemStub -> DetailItem (size=0x14)
    // 0x1042174: mov             x1, x0
    // 0x1042178: r0 = "NIU"
    //     0x1042178: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e398] "NIU"
    //     0x104217c: ldr             x0, [x0, #0x398]
    // 0x1042180: stur            x1, [fp, #-0x38]
    // 0x1042184: StoreField: r1->field_b = r0
    //     0x1042184: stur            w0, [x1, #0xb]
    // 0x1042188: ldur            x0, [fp, #-0x10]
    // 0x104218c: StoreField: r1->field_f = r0
    //     0x104218c: stur            w0, [x1, #0xf]
    // 0x1042190: ldur            x0, [fp, #-0x18]
    // 0x1042194: tbnz            w0, #4, #0x10421c8
    // 0x1042198: ldur            x2, [fp, #-8]
    // 0x104219c: ldur            x0, [fp, #-0x20]
    // 0x10421a0: d1 = 360.000000
    //     0x10421a0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x10421a4: ldr             d1, [x17, #0x180]
    // 0x10421a8: d0 = 0.800000
    //     0x10421a8: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10421ac: ldr             d0, [x17, #0xa58]
    // 0x10421b0: LoadField: d2 = r0->field_7
    //     0x10421b0: ldur            d2, [x0, #7]
    // 0x10421b4: fdiv            d3, d2, d1
    // 0x10421b8: LoadField: d1 = r2->field_7
    //     0x10421b8: ldur            d1, [x2, #7]
    // 0x10421bc: fmul            d2, d1, d0
    // 0x10421c0: fmul            d0, d3, d2
    // 0x10421c4: b               #0x10421ec
    // 0x10421c8: ldur            x2, [fp, #-8]
    // 0x10421cc: ldur            x0, [fp, #-0x20]
    // 0x10421d0: d1 = 360.000000
    //     0x10421d0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x10421d4: ldr             d1, [x17, #0x180]
    // 0x10421d8: LoadField: d0 = r0->field_7
    //     0x10421d8: ldur            d0, [x0, #7]
    // 0x10421dc: fdiv            d2, d0, d1
    // 0x10421e0: LoadField: d0 = r2->field_7
    //     0x10421e0: ldur            d0, [x2, #7]
    // 0x10421e4: fmul            d1, d2, d0
    // 0x10421e8: mov             v0.16b, v1.16b
    // 0x10421ec: ldr             x2, [fp, #0x10]
    // 0x10421f0: ldur            x3, [fp, #-0x28]
    // 0x10421f4: ldur            x0, [fp, #-0x30]
    // 0x10421f8: r4 = inline_Allocate_Double()
    //     0x10421f8: ldp             x4, x5, [THR, #0x60]  ; THR::top
    //     0x10421fc: add             x4, x4, #0x10
    //     0x1042200: cmp             x5, x4
    //     0x1042204: b.ls            #0x1042378
    //     0x1042208: str             x4, [THR, #0x60]  ; THR::top
    //     0x104220c: sub             x4, x4, #0xf
    //     0x1042210: mov             x5, #0xe19c
    //     0x1042214: movk            x5, #3, lsl #16
    //     0x1042218: stur            x5, [x4, #-1]
    // 0x104221c: dmb             ishst
    // 0x1042220: StoreField: r4->field_7 = d0
    //     0x1042220: stur            d0, [x4, #7]
    // 0x1042224: stur            x4, [fp, #-8]
    // 0x1042228: r0 = SizedBox()
    //     0x1042228: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x104222c: mov             x2, x0
    // 0x1042230: ldur            x0, [fp, #-8]
    // 0x1042234: stur            x2, [fp, #-0x10]
    // 0x1042238: StoreField: r2->field_13 = r0
    //     0x1042238: stur            w0, [x2, #0x13]
    // 0x104223c: r1 = "generation"
    //     0x104223c: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e3a0] "generation"
    //     0x1042240: ldr             x1, [x1, #0x3a0]
    // 0x1042244: r0 = Trans.tr()
    //     0x1042244: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x1042248: mov             x1, x0
    // 0x104224c: ldr             x0, [fp, #0x10]
    // 0x1042250: stur            x1, [fp, #-0x18]
    // 0x1042254: LoadField: r2 = r0->field_2f
    //     0x1042254: ldur            w2, [x0, #0x2f]
    // 0x1042258: DecompressPointer r2
    //     0x1042258: add             x2, x2, HEAP, lsl #32
    // 0x104225c: stur            x2, [fp, #-8]
    // 0x1042260: r0 = DetailItem()
    //     0x1042260: bl              #0x104239c  ; AllocateDetailItemStub -> DetailItem (size=0x14)
    // 0x1042264: mov             x3, x0
    // 0x1042268: ldur            x0, [fp, #-0x18]
    // 0x104226c: stur            x3, [fp, #-0x20]
    // 0x1042270: StoreField: r3->field_b = r0
    //     0x1042270: stur            w0, [x3, #0xb]
    // 0x1042274: ldur            x0, [fp, #-8]
    // 0x1042278: StoreField: r3->field_f = r0
    //     0x1042278: stur            w0, [x3, #0xf]
    // 0x104227c: r1 = Null
    //     0x104227c: mov             x1, NULL
    // 0x1042280: r2 = 10
    //     0x1042280: mov             x2, #0xa
    // 0x1042284: r0 = AllocateArray()
    //     0x1042284: bl              #0x13df928  ; AllocateArrayStub
    // 0x1042288: mov             x2, x0
    // 0x104228c: ldur            x0, [fp, #-0x28]
    // 0x1042290: stur            x2, [fp, #-8]
    // 0x1042294: StoreField: r2->field_f = r0
    //     0x1042294: stur            w0, [x2, #0xf]
    // 0x1042298: ldur            x0, [fp, #-0x30]
    // 0x104229c: StoreField: r2->field_13 = r0
    //     0x104229c: stur            w0, [x2, #0x13]
    // 0x10422a0: ldur            x0, [fp, #-0x38]
    // 0x10422a4: ArrayStore: r2[0] = r0  ; List_4
    //     0x10422a4: stur            w0, [x2, #0x17]
    // 0x10422a8: ldur            x0, [fp, #-0x10]
    // 0x10422ac: StoreField: r2->field_1b = r0
    //     0x10422ac: stur            w0, [x2, #0x1b]
    // 0x10422b0: ldur            x0, [fp, #-0x20]
    // 0x10422b4: StoreField: r2->field_1f = r0
    //     0x10422b4: stur            w0, [x2, #0x1f]
    // 0x10422b8: r1 = <Widget>
    //     0x10422b8: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x10422bc: r0 = AllocateGrowableArray()
    //     0x10422bc: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x10422c0: mov             x1, x0
    // 0x10422c4: ldur            x0, [fp, #-8]
    // 0x10422c8: stur            x1, [fp, #-0x10]
    // 0x10422cc: StoreField: r1->field_f = r0
    //     0x10422cc: stur            w0, [x1, #0xf]
    // 0x10422d0: r0 = 10
    //     0x10422d0: mov             x0, #0xa
    // 0x10422d4: StoreField: r1->field_b = r0
    //     0x10422d4: stur            w0, [x1, #0xb]
    // 0x10422d8: r0 = Column()
    //     0x10422d8: bl              #0x8a5b1c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x10422dc: r1 = Instance_Axis
    //     0x10422dc: ldr             x1, [PP, #0x49c0]  ; [pp+0x49c0] Obj!Axis@12c4a81
    // 0x10422e0: StoreField: r0->field_f = r1
    //     0x10422e0: stur            w1, [x0, #0xf]
    // 0x10422e4: r1 = Instance_MainAxisAlignment
    //     0x10422e4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15820] Obj!MainAxisAlignment@12c4541
    //     0x10422e8: ldr             x1, [x1, #0x820]
    // 0x10422ec: StoreField: r0->field_13 = r1
    //     0x10422ec: stur            w1, [x0, #0x13]
    // 0x10422f0: r1 = Instance_MainAxisSize
    //     0x10422f0: add             x1, PP, #0x15, lsl #12  ; [pp+0x15828] Obj!MainAxisSize@12c4621
    //     0x10422f4: ldr             x1, [x1, #0x828]
    // 0x10422f8: ArrayStore: r0[0] = r1  ; List_4
    //     0x10422f8: stur            w1, [x0, #0x17]
    // 0x10422fc: r1 = Instance_CrossAxisAlignment
    //     0x10422fc: add             x1, PP, #0x15, lsl #12  ; [pp+0x15830] Obj!CrossAxisAlignment@12c44c1
    //     0x1042300: ldr             x1, [x1, #0x830]
    // 0x1042304: StoreField: r0->field_1b = r1
    //     0x1042304: stur            w1, [x0, #0x1b]
    // 0x1042308: r1 = Instance_VerticalDirection
    //     0x1042308: add             x1, PP, #0x15, lsl #12  ; [pp+0x15838] Obj!VerticalDirection@12c4a21
    //     0x104230c: ldr             x1, [x1, #0x838]
    // 0x1042310: StoreField: r0->field_23 = r1
    //     0x1042310: stur            w1, [x0, #0x23]
    // 0x1042314: r1 = Instance_Clip
    //     0x1042314: add             x1, PP, #0x15, lsl #12  ; [pp+0x15840] Obj!Clip@12c80c1
    //     0x1042318: ldr             x1, [x1, #0x840]
    // 0x104231c: StoreField: r0->field_2b = r1
    //     0x104231c: stur            w1, [x0, #0x2b]
    // 0x1042320: StoreField: r0->field_2f = rZR
    //     0x1042320: stur            xzr, [x0, #0x2f]
    // 0x1042324: ldur            x1, [fp, #-0x10]
    // 0x1042328: StoreField: r0->field_b = r1
    //     0x1042328: stur            w1, [x0, #0xb]
    // 0x104232c: LeaveFrame
    //     0x104232c: mov             SP, fp
    //     0x1042330: ldp             fp, lr, [SP], #0x10
    // 0x1042334: ret
    //     0x1042334: ret             
    // 0x1042338: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1042338: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x104233c: b               #0x1042064
    // 0x1042340: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x1042340: bl              #0x13e00c4  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x1042344: stp             q1, q2, [SP, #-0x20]!
    // 0x1042348: SaveReg d0
    //     0x1042348: str             q0, [SP, #-0x10]!
    // 0x104234c: stp             x3, x4, [SP, #-0x10]!
    // 0x1042350: stp             x1, x2, [SP, #-0x10]!
    // 0x1042354: SaveReg r0
    //     0x1042354: str             x0, [SP, #-8]!
    // 0x1042358: r0 = AllocateDouble()
    //     0x1042358: bl              #0x13df878  ; AllocateDoubleStub
    // 0x104235c: mov             x5, x0
    // 0x1042360: RestoreReg r0
    //     0x1042360: ldr             x0, [SP], #8
    // 0x1042364: ldp             x1, x2, [SP], #0x10
    // 0x1042368: ldp             x3, x4, [SP], #0x10
    // 0x104236c: RestoreReg d0
    //     0x104236c: ldr             q0, [SP], #0x10
    // 0x1042370: ldp             q1, q2, [SP], #0x20
    // 0x1042374: b               #0x1042144
    // 0x1042378: SaveReg d0
    //     0x1042378: str             q0, [SP, #-0x10]!
    // 0x104237c: stp             x2, x3, [SP, #-0x10]!
    // 0x1042380: stp             x0, x1, [SP, #-0x10]!
    // 0x1042384: r0 = AllocateDouble()
    //     0x1042384: bl              #0x13df878  ; AllocateDoubleStub
    // 0x1042388: mov             x4, x0
    // 0x104238c: ldp             x0, x1, [SP], #0x10
    // 0x1042390: ldp             x2, x3, [SP], #0x10
    // 0x1042394: RestoreReg d0
    //     0x1042394: ldr             q0, [SP], #0x10
    // 0x1042398: b               #0x1042220
  }
  [closure] Column <anonymous closure>(dynamic, UserModel?) {
    // ** addr: 0x10423a8, size: 0x568
    // 0x10423a8: EnterFrame
    //     0x10423a8: stp             fp, lr, [SP, #-0x10]!
    //     0x10423ac: mov             fp, SP
    // 0x10423b0: AllocStack(0x50)
    //     0x10423b0: sub             SP, SP, #0x50
    // 0x10423b4: SetupParameters([dynamic _ /* r0 */])
    //     0x10423b4: fmov            d0, #2.00000000
    //     0x10423b8: ldr             x0, [fp, #0x18]
    //     0x10423bc: ldur            w2, [x0, #0x17]
    //     0x10423c0: add             x2, x2, HEAP, lsl #32
    //     0x10423c4: stur            x2, [fp, #-0x10]
    // 0x10423b4: d0 = 2.000000
    // 0x10423c8: CheckStackOverflow
    //     0x10423c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x10423cc: cmp             SP, x16
    //     0x10423d0: b.ls            #0x1042888
    // 0x10423d4: r0 = LoadStaticField(0x16e8)
    //     0x10423d4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10423d8: ldr             x0, [x0, #0x2dd0]
    // 0x10423dc: LoadField: d1 = r0->field_7
    //     0x10423dc: ldur            d1, [x0, #7]
    // 0x10423e0: fsub            d2, d1, d0
    // 0x10423e4: r0 = LoadStaticField(0x1674)
    //     0x10423e4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10423e8: ldr             x0, [x0, #0x2ce8]
    // 0x10423ec: r1 = LoadStaticField(0x1680)
    //     0x10423ec: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x10423f0: ldr             x1, [x1, #0x2d00]
    // 0x10423f4: tbnz            w1, #4, #0x104241c
    // 0x10423f8: d3 = 360.000000
    //     0x10423f8: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x10423fc: ldr             d3, [x17, #0x180]
    // 0x1042400: d1 = 0.800000
    //     0x1042400: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1042404: ldr             d1, [x17, #0xa58]
    // 0x1042408: fdiv            d4, d2, d3
    // 0x104240c: LoadField: d2 = r0->field_7
    //     0x104240c: ldur            d2, [x0, #7]
    // 0x1042410: fmul            d5, d2, d1
    // 0x1042414: fmul            d2, d4, d5
    // 0x1042418: b               #0x104243c
    // 0x104241c: d3 = 360.000000
    //     0x104241c: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x1042420: ldr             d3, [x17, #0x180]
    // 0x1042424: d1 = 0.800000
    //     0x1042424: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1042428: ldr             d1, [x17, #0xa58]
    // 0x104242c: fdiv            d4, d2, d3
    // 0x1042430: LoadField: d2 = r0->field_7
    //     0x1042430: ldur            d2, [x0, #7]
    // 0x1042434: fmul            d5, d4, d2
    // 0x1042438: mov             v2.16b, v5.16b
    // 0x104243c: ldr             x0, [fp, #0x10]
    // 0x1042440: r1 = inline_Allocate_Double()
    //     0x1042440: ldp             x1, x3, [THR, #0x60]  ; THR::top
    //     0x1042444: add             x1, x1, #0x10
    //     0x1042448: cmp             x3, x1
    //     0x104244c: b.ls            #0x1042890
    //     0x1042450: str             x1, [THR, #0x60]  ; THR::top
    //     0x1042454: sub             x1, x1, #0xf
    //     0x1042458: mov             x3, #0xe19c
    //     0x104245c: movk            x3, #3, lsl #16
    //     0x1042460: stur            x3, [x1, #-1]
    // 0x1042464: dmb             ishst
    // 0x1042468: StoreField: r1->field_7 = d2
    //     0x1042468: stur            d2, [x1, #7]
    // 0x104246c: stur            x1, [fp, #-8]
    // 0x1042470: r0 = SizedBox()
    //     0x1042470: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1042474: mov             x1, x0
    // 0x1042478: ldur            x0, [fp, #-8]
    // 0x104247c: stur            x1, [fp, #-0x18]
    // 0x1042480: StoreField: r1->field_13 = r0
    //     0x1042480: stur            w0, [x1, #0x13]
    // 0x1042484: ldr             x0, [fp, #0x10]
    // 0x1042488: cmp             w0, NULL
    // 0x104248c: b.eq            #0x10428b4
    // 0x1042490: LoadField: r2 = r0->field_33
    //     0x1042490: ldur            w2, [x0, #0x33]
    // 0x1042494: DecompressPointer r2
    //     0x1042494: add             x2, x2, HEAP, lsl #32
    // 0x1042498: stur            x2, [fp, #-8]
    // 0x104249c: r0 = LoadStaticField(0x1714)
    //     0x104249c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x10424a0: ldr             x0, [x0, #0x2e28]
    // 0x10424a4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x10424a8: cmp             w0, w16
    // 0x10424ac: b.ne            #0x10424bc
    // 0x10424b0: r2 = textStyles
    //     0x10424b0: add             x2, PP, #0x15, lsl #12  ; [pp+0x157e8] Field <TypographyCollectionsMetronic.textStyles>: static late (offset: 0x1714)
    //     0x10424b4: ldr             x2, [x2, #0x7e8]
    // 0x10424b8: r0 = InitLateStaticField()
    //     0x10424b8: bl              #0x13dda54  ; InitLateStaticFieldStub
    // 0x10424bc: mov             x1, x0
    // 0x10424c0: r0 = h2626600()
    //     0x10424c0: bl              #0xfdc5d4  ; [package:simaster_ugm/design_system/styles/typography_collections.dart] TextStyles::h2626600
    // 0x10424c4: ldur            x2, [fp, #-0x10]
    // 0x10424c8: stur            x0, [fp, #-0x20]
    // 0x10424cc: LoadField: r1 = r2->field_13
    //     0x10424cc: ldur            w1, [x2, #0x13]
    // 0x10424d0: DecompressPointer r1
    //     0x10424d0: add             x1, x1, HEAP, lsl #32
    // 0x10424d4: r0 = colorsMetronic()
    //     0x10424d4: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x10424d8: LoadField: r1 = r0->field_c7
    //     0x10424d8: ldur            w1, [x0, #0xc7]
    // 0x10424dc: DecompressPointer r1
    //     0x10424dc: add             x1, x1, HEAP, lsl #32
    // 0x10424e0: str             x1, [SP]
    // 0x10424e4: ldur            x1, [fp, #-0x20]
    // 0x10424e8: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x10424e8: add             x4, PP, #0x15, lsl #12  ; [pp+0x157f0] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x10424ec: ldr             x4, [x4, #0x7f0]
    // 0x10424f0: r0 = copyWith()
    //     0x10424f0: bl              #0x8a5ba4  ; [package:flutter/src/painting/text_style.dart] TextStyle::copyWith
    // 0x10424f4: stur            x0, [fp, #-0x20]
    // 0x10424f8: r0 = Text()
    //     0x10424f8: bl              #0x8a70a4  ; AllocateTextStub -> Text (size=0x50)
    // 0x10424fc: mov             x1, x0
    // 0x1042500: ldur            x0, [fp, #-8]
    // 0x1042504: stur            x1, [fp, #-0x28]
    // 0x1042508: StoreField: r1->field_b = r0
    //     0x1042508: stur            w0, [x1, #0xb]
    // 0x104250c: ldur            x0, [fp, #-0x20]
    // 0x1042510: StoreField: r1->field_13 = r0
    //     0x1042510: stur            w0, [x1, #0x13]
    // 0x1042514: r0 = Instance_TextAlign
    //     0x1042514: ldr             x0, [PP, #0x4c68]  ; [pp+0x4c68] Obj!TextAlign@12c7561
    // 0x1042518: StoreField: r1->field_1b = r0
    //     0x1042518: stur            w0, [x1, #0x1b]
    // 0x104251c: r2 = Instance_TextOverflow
    //     0x104251c: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1ac18] Obj!TextOverflow@12c47a1
    //     0x1042520: ldr             x2, [x2, #0xc18]
    // 0x1042524: StoreField: r1->field_2b = r2
    //     0x1042524: stur            w2, [x1, #0x2b]
    // 0x1042528: r2 = 4
    //     0x1042528: mov             x2, #4
    // 0x104252c: StoreField: r1->field_37 = r2
    //     0x104252c: stur            w2, [x1, #0x37]
    // 0x1042530: r0 = GestureDetector()
    //     0x1042530: bl              #0x918e18  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x1042534: ldur            x2, [fp, #-0x10]
    // 0x1042538: r1 = Function '<anonymous closure>':.
    //     0x1042538: add             x1, PP, #0x1e, lsl #12  ; [pp+0x1e3a8] AnonymousClosure: (0x1042910), in [package:simaster_ugm/app/modules/profile/views/profile_view.dart] ProfileView::build (0x103f404)
    //     0x104253c: ldr             x1, [x1, #0x3a8]
    // 0x1042540: stur            x0, [fp, #-8]
    // 0x1042544: r0 = AllocateClosure()
    //     0x1042544: bl              #0x13dec0c  ; AllocateClosureStub
    // 0x1042548: ldur            x16, [fp, #-0x28]
    // 0x104254c: stp             x16, x0, [SP]
    // 0x1042550: ldur            x1, [fp, #-8]
    // 0x1042554: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onLongPress, 0x1, null]
    //     0x1042554: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e3b0] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onLongPress", 0x1, Null]
    //     0x1042558: ldr             x4, [x4, #0x3b0]
    // 0x104255c: r0 = GestureDetector()
    //     0x104255c: bl              #0x9182dc  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x1042560: r0 = LoadStaticField(0x16e8)
    //     0x1042560: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x1042564: ldr             x0, [x0, #0x2dd0]
    // 0x1042568: LoadField: d0 = r0->field_7
    //     0x1042568: ldur            d0, [x0, #7]
    // 0x104256c: d1 = 2.000000
    //     0x104256c: fmov            d1, #2.00000000
    // 0x1042570: fsub            d2, d0, d1
    // 0x1042574: r0 = LoadStaticField(0x1674)
    //     0x1042574: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x1042578: ldr             x0, [x0, #0x2ce8]
    // 0x104257c: r1 = LoadStaticField(0x1680)
    //     0x104257c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1042580: ldr             x1, [x1, #0x2d00]
    // 0x1042584: tbnz            w1, #4, #0x10425ac
    // 0x1042588: d3 = 360.000000
    //     0x1042588: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x104258c: ldr             d3, [x17, #0x180]
    // 0x1042590: d0 = 0.800000
    //     0x1042590: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x1042594: ldr             d0, [x17, #0xa58]
    // 0x1042598: fdiv            d4, d2, d3
    // 0x104259c: LoadField: d2 = r0->field_7
    //     0x104259c: ldur            d2, [x0, #7]
    // 0x10425a0: fmul            d5, d2, d0
    // 0x10425a4: fmul            d2, d4, d5
    // 0x10425a8: b               #0x10425cc
    // 0x10425ac: d3 = 360.000000
    //     0x10425ac: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x10425b0: ldr             d3, [x17, #0x180]
    // 0x10425b4: d0 = 0.800000
    //     0x10425b4: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10425b8: ldr             d0, [x17, #0xa58]
    // 0x10425bc: fdiv            d4, d2, d3
    // 0x10425c0: LoadField: d2 = r0->field_7
    //     0x10425c0: ldur            d2, [x0, #7]
    // 0x10425c4: fmul            d5, d4, d2
    // 0x10425c8: mov             v2.16b, v5.16b
    // 0x10425cc: ldr             x1, [fp, #0x10]
    // 0x10425d0: ldur            x0, [fp, #-0x10]
    // 0x10425d4: r2 = inline_Allocate_Double()
    //     0x10425d4: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x10425d8: add             x2, x2, #0x10
    //     0x10425dc: cmp             x3, x2
    //     0x10425e0: b.ls            #0x10428b8
    //     0x10425e4: str             x2, [THR, #0x60]  ; THR::top
    //     0x10425e8: sub             x2, x2, #0xf
    //     0x10425ec: mov             x3, #0xe19c
    //     0x10425f0: movk            x3, #3, lsl #16
    //     0x10425f4: stur            x3, [x2, #-1]
    // 0x10425f8: dmb             ishst
    // 0x10425fc: StoreField: r2->field_7 = d2
    //     0x10425fc: stur            d2, [x2, #7]
    // 0x1042600: stur            x2, [fp, #-0x20]
    // 0x1042604: r0 = SizedBox()
    //     0x1042604: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x1042608: mov             x2, x0
    // 0x104260c: ldur            x0, [fp, #-0x20]
    // 0x1042610: stur            x2, [fp, #-0x28]
    // 0x1042614: StoreField: r2->field_13 = r0
    //     0x1042614: stur            w0, [x2, #0x13]
    // 0x1042618: ldr             x0, [fp, #0x10]
    // 0x104261c: LoadField: r3 = r0->field_37
    //     0x104261c: ldur            w3, [x0, #0x37]
    // 0x1042620: DecompressPointer r3
    //     0x1042620: add             x3, x3, HEAP, lsl #32
    // 0x1042624: stur            x3, [fp, #-0x20]
    // 0x1042628: r1 = LoadStaticField(0x1714)
    //     0x1042628: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x104262c: ldr             x1, [x1, #0x2e28]
    // 0x1042630: r0 = b1414500()
    //     0x1042630: bl              #0xd5bad8  ; [package:simaster_ugm/design_system/styles/typography_collections.dart] TextStyles::b1414500
    // 0x1042634: mov             x2, x0
    // 0x1042638: ldur            x0, [fp, #-0x10]
    // 0x104263c: stur            x2, [fp, #-0x30]
    // 0x1042640: LoadField: r1 = r0->field_13
    //     0x1042640: ldur            w1, [x0, #0x13]
    // 0x1042644: DecompressPointer r1
    //     0x1042644: add             x1, x1, HEAP, lsl #32
    // 0x1042648: r0 = colorsMetronic()
    //     0x1042648: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x104264c: LoadField: r1 = r0->field_b7
    //     0x104264c: ldur            w1, [x0, #0xb7]
    // 0x1042650: DecompressPointer r1
    //     0x1042650: add             x1, x1, HEAP, lsl #32
    // 0x1042654: str             x1, [SP]
    // 0x1042658: ldur            x1, [fp, #-0x30]
    // 0x104265c: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x104265c: add             x4, PP, #0x15, lsl #12  ; [pp+0x157f0] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x1042660: ldr             x4, [x4, #0x7f0]
    // 0x1042664: r0 = copyWith()
    //     0x1042664: bl              #0x8a5ba4  ; [package:flutter/src/painting/text_style.dart] TextStyle::copyWith
    // 0x1042668: stur            x0, [fp, #-0x30]
    // 0x104266c: r0 = Text()
    //     0x104266c: bl              #0x8a70a4  ; AllocateTextStub -> Text (size=0x50)
    // 0x1042670: mov             x1, x0
    // 0x1042674: ldur            x0, [fp, #-0x20]
    // 0x1042678: stur            x1, [fp, #-0x38]
    // 0x104267c: StoreField: r1->field_b = r0
    //     0x104267c: stur            w0, [x1, #0xb]
    // 0x1042680: ldur            x0, [fp, #-0x30]
    // 0x1042684: StoreField: r1->field_13 = r0
    //     0x1042684: stur            w0, [x1, #0x13]
    // 0x1042688: r0 = Instance_TextAlign
    //     0x1042688: ldr             x0, [PP, #0x4c68]  ; [pp+0x4c68] Obj!TextAlign@12c7561
    // 0x104268c: StoreField: r1->field_1b = r0
    //     0x104268c: stur            w0, [x1, #0x1b]
    // 0x1042690: r2 = LoadStaticField(0x16e8)
    //     0x1042690: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x1042694: ldr             x2, [x2, #0x2dd0]
    // 0x1042698: LoadField: d0 = r2->field_7
    //     0x1042698: ldur            d0, [x2, #7]
    // 0x104269c: d1 = 2.000000
    //     0x104269c: fmov            d1, #2.00000000
    // 0x10426a0: fsub            d2, d0, d1
    // 0x10426a4: r2 = LoadStaticField(0x1674)
    //     0x10426a4: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x10426a8: ldr             x2, [x2, #0x2ce8]
    // 0x10426ac: r3 = LoadStaticField(0x1680)
    //     0x10426ac: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x10426b0: ldr             x3, [x3, #0x2d00]
    // 0x10426b4: tbnz            w3, #4, #0x10426dc
    // 0x10426b8: d1 = 360.000000
    //     0x10426b8: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x10426bc: ldr             d1, [x17, #0x180]
    // 0x10426c0: d0 = 0.800000
    //     0x10426c0: add             x17, PP, #0x13, lsl #12  ; [pp+0x13a58] IMM: double(0.8) from 0x3fe999999999999a
    //     0x10426c4: ldr             d0, [x17, #0xa58]
    // 0x10426c8: fdiv            d3, d2, d1
    // 0x10426cc: LoadField: d1 = r2->field_7
    //     0x10426cc: ldur            d1, [x2, #7]
    // 0x10426d0: fmul            d2, d1, d0
    // 0x10426d4: fmul            d0, d3, d2
    // 0x10426d8: b               #0x10426f4
    // 0x10426dc: d1 = 360.000000
    //     0x10426dc: add             x17, PP, #0x13, lsl #12  ; [pp+0x13180] IMM: double(360) from 0x4076800000000000
    //     0x10426e0: ldr             d1, [x17, #0x180]
    // 0x10426e4: fdiv            d0, d2, d1
    // 0x10426e8: LoadField: d1 = r2->field_7
    //     0x10426e8: ldur            d1, [x2, #7]
    // 0x10426ec: fmul            d2, d0, d1
    // 0x10426f0: mov             v0.16b, v2.16b
    // 0x10426f4: ldr             x4, [fp, #0x10]
    // 0x10426f8: ldur            x2, [fp, #-0x10]
    // 0x10426fc: ldur            x6, [fp, #-0x18]
    // 0x1042700: ldur            x5, [fp, #-8]
    // 0x1042704: ldur            x3, [fp, #-0x28]
    // 0x1042708: r7 = inline_Allocate_Double()
    //     0x1042708: ldp             x7, x8, [THR, #0x60]  ; THR::top
    //     0x104270c: add             x7, x7, #0x10
    //     0x1042710: cmp             x8, x7
    //     0x1042714: b.ls            #0x10428dc
    //     0x1042718: str             x7, [THR, #0x60]  ; THR::top
    //     0x104271c: sub             x7, x7, #0xf
    //     0x1042720: mov             x8, #0xe19c
    //     0x1042724: movk            x8, #3, lsl #16
    //     0x1042728: stur            x8, [x7, #-1]
    // 0x104272c: dmb             ishst
    // 0x1042730: StoreField: r7->field_7 = d0
    //     0x1042730: stur            d0, [x7, #7]
    // 0x1042734: stur            x7, [fp, #-0x20]
    // 0x1042738: r0 = SizedBox()
    //     0x1042738: bl              #0x8a7210  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x104273c: mov             x2, x0
    // 0x1042740: ldur            x0, [fp, #-0x20]
    // 0x1042744: stur            x2, [fp, #-0x30]
    // 0x1042748: StoreField: r2->field_13 = r0
    //     0x1042748: stur            w0, [x2, #0x13]
    // 0x104274c: ldr             x0, [fp, #0x10]
    // 0x1042750: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x1042750: ldur            w3, [x0, #0x17]
    // 0x1042754: DecompressPointer r3
    //     0x1042754: add             x3, x3, HEAP, lsl #32
    // 0x1042758: stur            x3, [fp, #-0x20]
    // 0x104275c: r1 = LoadStaticField(0x1714)
    //     0x104275c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x1042760: ldr             x1, [x1, #0x2e28]
    // 0x1042764: r0 = b1212500()
    //     0x1042764: bl              #0xd5b9ec  ; [package:simaster_ugm/design_system/styles/typography_collections.dart] TextStyles::b1212500
    // 0x1042768: mov             x2, x0
    // 0x104276c: ldur            x0, [fp, #-0x10]
    // 0x1042770: stur            x2, [fp, #-0x40]
    // 0x1042774: LoadField: r1 = r0->field_13
    //     0x1042774: ldur            w1, [x0, #0x13]
    // 0x1042778: DecompressPointer r1
    //     0x1042778: add             x1, x1, HEAP, lsl #32
    // 0x104277c: r0 = colorsMetronic()
    //     0x104277c: bl              #0x8a7530  ; [package:simaster_ugm/theme/theme.dart] ::colorsMetronic
    // 0x1042780: LoadField: r1 = r0->field_c3
    //     0x1042780: ldur            w1, [x0, #0xc3]
    // 0x1042784: DecompressPointer r1
    //     0x1042784: add             x1, x1, HEAP, lsl #32
    // 0x1042788: str             x1, [SP]
    // 0x104278c: ldur            x1, [fp, #-0x40]
    // 0x1042790: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x1042790: add             x4, PP, #0x15, lsl #12  ; [pp+0x157f0] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x1042794: ldr             x4, [x4, #0x7f0]
    // 0x1042798: r0 = copyWith()
    //     0x1042798: bl              #0x8a5ba4  ; [package:flutter/src/painting/text_style.dart] TextStyle::copyWith
    // 0x104279c: stur            x0, [fp, #-0x10]
    // 0x10427a0: r0 = Text()
    //     0x10427a0: bl              #0x8a70a4  ; AllocateTextStub -> Text (size=0x50)
    // 0x10427a4: mov             x3, x0
    // 0x10427a8: ldur            x0, [fp, #-0x20]
    // 0x10427ac: stur            x3, [fp, #-0x40]
    // 0x10427b0: StoreField: r3->field_b = r0
    //     0x10427b0: stur            w0, [x3, #0xb]
    // 0x10427b4: ldur            x0, [fp, #-0x10]
    // 0x10427b8: StoreField: r3->field_13 = r0
    //     0x10427b8: stur            w0, [x3, #0x13]
    // 0x10427bc: r0 = Instance_TextAlign
    //     0x10427bc: ldr             x0, [PP, #0x4c68]  ; [pp+0x4c68] Obj!TextAlign@12c7561
    // 0x10427c0: StoreField: r3->field_1b = r0
    //     0x10427c0: stur            w0, [x3, #0x1b]
    // 0x10427c4: r1 = Null
    //     0x10427c4: mov             x1, NULL
    // 0x10427c8: r2 = 12
    //     0x10427c8: mov             x2, #0xc
    // 0x10427cc: r0 = AllocateArray()
    //     0x10427cc: bl              #0x13df928  ; AllocateArrayStub
    // 0x10427d0: mov             x2, x0
    // 0x10427d4: ldur            x0, [fp, #-0x18]
    // 0x10427d8: stur            x2, [fp, #-0x10]
    // 0x10427dc: StoreField: r2->field_f = r0
    //     0x10427dc: stur            w0, [x2, #0xf]
    // 0x10427e0: ldur            x0, [fp, #-8]
    // 0x10427e4: StoreField: r2->field_13 = r0
    //     0x10427e4: stur            w0, [x2, #0x13]
    // 0x10427e8: ldur            x0, [fp, #-0x28]
    // 0x10427ec: ArrayStore: r2[0] = r0  ; List_4
    //     0x10427ec: stur            w0, [x2, #0x17]
    // 0x10427f0: ldur            x0, [fp, #-0x38]
    // 0x10427f4: StoreField: r2->field_1b = r0
    //     0x10427f4: stur            w0, [x2, #0x1b]
    // 0x10427f8: ldur            x0, [fp, #-0x30]
    // 0x10427fc: StoreField: r2->field_1f = r0
    //     0x10427fc: stur            w0, [x2, #0x1f]
    // 0x1042800: ldur            x0, [fp, #-0x40]
    // 0x1042804: StoreField: r2->field_23 = r0
    //     0x1042804: stur            w0, [x2, #0x23]
    // 0x1042808: r1 = <Widget>
    //     0x1042808: ldr             x1, [PP, #0x5468]  ; [pp+0x5468] TypeArguments: <Widget>
    // 0x104280c: r0 = AllocateGrowableArray()
    //     0x104280c: bl              #0x13de7f8  ; AllocateGrowableArrayStub
    // 0x1042810: mov             x1, x0
    // 0x1042814: ldur            x0, [fp, #-0x10]
    // 0x1042818: stur            x1, [fp, #-8]
    // 0x104281c: StoreField: r1->field_f = r0
    //     0x104281c: stur            w0, [x1, #0xf]
    // 0x1042820: r0 = 12
    //     0x1042820: mov             x0, #0xc
    // 0x1042824: StoreField: r1->field_b = r0
    //     0x1042824: stur            w0, [x1, #0xb]
    // 0x1042828: r0 = Column()
    //     0x1042828: bl              #0x8a5b1c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x104282c: r1 = Instance_Axis
    //     0x104282c: ldr             x1, [PP, #0x49c0]  ; [pp+0x49c0] Obj!Axis@12c4a81
    // 0x1042830: StoreField: r0->field_f = r1
    //     0x1042830: stur            w1, [x0, #0xf]
    // 0x1042834: r1 = Instance_MainAxisAlignment
    //     0x1042834: add             x1, PP, #0x15, lsl #12  ; [pp+0x15820] Obj!MainAxisAlignment@12c4541
    //     0x1042838: ldr             x1, [x1, #0x820]
    // 0x104283c: StoreField: r0->field_13 = r1
    //     0x104283c: stur            w1, [x0, #0x13]
    // 0x1042840: r1 = Instance_MainAxisSize
    //     0x1042840: add             x1, PP, #0x15, lsl #12  ; [pp+0x15828] Obj!MainAxisSize@12c4621
    //     0x1042844: ldr             x1, [x1, #0x828]
    // 0x1042848: ArrayStore: r0[0] = r1  ; List_4
    //     0x1042848: stur            w1, [x0, #0x17]
    // 0x104284c: r1 = Instance_CrossAxisAlignment
    //     0x104284c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15888] Obj!CrossAxisAlignment@12c44a1
    //     0x1042850: ldr             x1, [x1, #0x888]
    // 0x1042854: StoreField: r0->field_1b = r1
    //     0x1042854: stur            w1, [x0, #0x1b]
    // 0x1042858: r1 = Instance_VerticalDirection
    //     0x1042858: add             x1, PP, #0x15, lsl #12  ; [pp+0x15838] Obj!VerticalDirection@12c4a21
    //     0x104285c: ldr             x1, [x1, #0x838]
    // 0x1042860: StoreField: r0->field_23 = r1
    //     0x1042860: stur            w1, [x0, #0x23]
    // 0x1042864: r1 = Instance_Clip
    //     0x1042864: add             x1, PP, #0x15, lsl #12  ; [pp+0x15840] Obj!Clip@12c80c1
    //     0x1042868: ldr             x1, [x1, #0x840]
    // 0x104286c: StoreField: r0->field_2b = r1
    //     0x104286c: stur            w1, [x0, #0x2b]
    // 0x1042870: StoreField: r0->field_2f = rZR
    //     0x1042870: stur            xzr, [x0, #0x2f]
    // 0x1042874: ldur            x1, [fp, #-8]
    // 0x1042878: StoreField: r0->field_b = r1
    //     0x1042878: stur            w1, [x0, #0xb]
    // 0x104287c: LeaveFrame
    //     0x104287c: mov             SP, fp
    //     0x1042880: ldp             fp, lr, [SP], #0x10
    // 0x1042884: ret
    //     0x1042884: ret             
    // 0x1042888: r0 = StackOverflowSharedWithFPURegs()
    //     0x1042888: bl              #0x13dfab4  ; StackOverflowSharedWithFPURegsStub
    // 0x104288c: b               #0x10423d4
    // 0x1042890: stp             q2, q3, [SP, #-0x20]!
    // 0x1042894: stp             q0, q1, [SP, #-0x20]!
    // 0x1042898: stp             x0, x2, [SP, #-0x10]!
    // 0x104289c: r0 = AllocateDouble()
    //     0x104289c: bl              #0x13df878  ; AllocateDoubleStub
    // 0x10428a0: mov             x1, x0
    // 0x10428a4: ldp             x0, x2, [SP], #0x10
    // 0x10428a8: ldp             q0, q1, [SP], #0x20
    // 0x10428ac: ldp             q2, q3, [SP], #0x20
    // 0x10428b0: b               #0x1042468
    // 0x10428b4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x10428b4: bl              #0x13e00c4  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x10428b8: stp             q2, q3, [SP, #-0x20]!
    // 0x10428bc: stp             q0, q1, [SP, #-0x20]!
    // 0x10428c0: stp             x0, x1, [SP, #-0x10]!
    // 0x10428c4: r0 = AllocateDouble()
    //     0x10428c4: bl              #0x13df878  ; AllocateDoubleStub
    // 0x10428c8: mov             x2, x0
    // 0x10428cc: ldp             x0, x1, [SP], #0x10
    // 0x10428d0: ldp             q0, q1, [SP], #0x20
    // 0x10428d4: ldp             q2, q3, [SP], #0x20
    // 0x10428d8: b               #0x10425fc
    // 0x10428dc: SaveReg d0
    //     0x10428dc: str             q0, [SP, #-0x10]!
    // 0x10428e0: stp             x5, x6, [SP, #-0x10]!
    // 0x10428e4: stp             x3, x4, [SP, #-0x10]!
    // 0x10428e8: stp             x1, x2, [SP, #-0x10]!
    // 0x10428ec: SaveReg r0
    //     0x10428ec: str             x0, [SP, #-8]!
    // 0x10428f0: r0 = AllocateDouble()
    //     0x10428f0: bl              #0x13df878  ; AllocateDoubleStub
    // 0x10428f4: mov             x7, x0
    // 0x10428f8: RestoreReg r0
    //     0x10428f8: ldr             x0, [SP], #8
    // 0x10428fc: ldp             x1, x2, [SP], #0x10
    // 0x1042900: ldp             x3, x4, [SP], #0x10
    // 0x1042904: ldp             x5, x6, [SP], #0x10
    // 0x1042908: RestoreReg d0
    //     0x1042908: ldr             q0, [SP], #0x10
    // 0x104290c: b               #0x1042730
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x1042910, size: 0x50
    // 0x1042910: EnterFrame
    //     0x1042910: stp             fp, lr, [SP, #-0x10]!
    //     0x1042914: mov             fp, SP
    // 0x1042918: ldr             x0, [fp, #0x10]
    // 0x104291c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x104291c: ldur            w1, [x0, #0x17]
    // 0x1042920: DecompressPointer r1
    //     0x1042920: add             x1, x1, HEAP, lsl #32
    // 0x1042924: CheckStackOverflow
    //     0x1042924: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x1042928: cmp             SP, x16
    //     0x104292c: b.ls            #0x1042958
    // 0x1042930: LoadField: r0 = r1->field_f
    //     0x1042930: ldur            w0, [x1, #0xf]
    // 0x1042934: DecompressPointer r0
    //     0x1042934: add             x0, x0, HEAP, lsl #32
    // 0x1042938: mov             x1, x0
    // 0x104293c: r0 = controller()
    //     0x104293c: bl              #0xe67524  ; [package:get/get_state_manager/src/simple/get_view.dart] GetView::controller
    // 0x1042940: mov             x1, x0
    // 0x1042944: r0 = onNameLongPress()
    //     0x1042944: bl              #0x1042960  ; [package:simaster_ugm/app/modules/profile/controllers/profile_controller.dart] ProfileController::onNameLongPress
    // 0x1042948: r0 = Null
    //     0x1042948: mov             x0, NULL
    // 0x104294c: LeaveFrame
    //     0x104294c: mov             SP, fp
    //     0x1042950: ldp             fp, lr, [SP], #0x10
    // 0x1042954: ret
    //     0x1042954: ret             
    // 0x1042958: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x1042958: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x104295c: b               #0x1042930
  }
}

// class id: 6282, size: 0x10, field offset: 0xc
//   const constructor, 
class _ProfileStoryViewer extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0xfa75c0, size: 0x48
    // 0xfa75c0: EnterFrame
    //     0xfa75c0: stp             fp, lr, [SP, #-0x10]!
    //     0xfa75c4: mov             fp, SP
    // 0xfa75c8: AllocStack(0x8)
    //     0xfa75c8: sub             SP, SP, #8
    // 0xfa75cc: CheckStackOverflow
    //     0xfa75cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xfa75d0: cmp             SP, x16
    //     0xfa75d4: b.ls            #0xfa7600
    // 0xfa75d8: r1 = <_ProfileStoryViewer>
    //     0xfa75d8: add             x1, PP, #0x92, lsl #12  ; [pp+0x92a68] TypeArguments: <_ProfileStoryViewer>
    //     0xfa75dc: ldr             x1, [x1, #0xa68]
    // 0xfa75e0: r0 = _ProfileStoryViewerState()
    //     0xfa75e0: bl              #0xfa7694  ; Allocate_ProfileStoryViewerStateStub -> _ProfileStoryViewerState (size=0x24)
    // 0xfa75e4: mov             x1, x0
    // 0xfa75e8: stur            x0, [fp, #-8]
    // 0xfa75ec: r0 = _ProfileStoryViewerState()
    //     0xfa75ec: bl              #0xfa7608  ; [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _ProfileStoryViewerState::_ProfileStoryViewerState
    // 0xfa75f0: ldur            x0, [fp, #-8]
    // 0xfa75f4: LeaveFrame
    //     0xfa75f4: mov             SP, fp
    //     0xfa75f8: ldp             fp, lr, [SP], #0x10
    // 0xfa75fc: ret
    //     0xfa75fc: ret             
    // 0xfa7600: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xfa7600: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xfa7604: b               #0xfa75d8
  }
}

// class id: 6283, size: 0xc, field offset: 0xc
//   const constructor, 
class _AvatarWithStory extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0xfa753c, size: 0x78
    // 0xfa753c: EnterFrame
    //     0xfa753c: stp             fp, lr, [SP, #-0x10]!
    //     0xfa7540: mov             fp, SP
    // 0xfa7544: AllocStack(0x8)
    //     0xfa7544: sub             SP, SP, #8
    // 0xfa7548: CheckStackOverflow
    //     0xfa7548: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xfa754c: cmp             SP, x16
    //     0xfa7550: b.ls            #0xfa75ac
    // 0xfa7554: r1 = <_AvatarWithStory>
    //     0xfa7554: add             x1, PP, #0x7b, lsl #12  ; [pp+0x7b720] TypeArguments: <_AvatarWithStory>
    //     0xfa7558: ldr             x1, [x1, #0x720]
    // 0xfa755c: r0 = _AvatarWithStoryState()
    //     0xfa755c: bl              #0xfa75b4  ; Allocate_AvatarWithStoryStateStub -> _AvatarWithStoryState (size=0x1c)
    // 0xfa7560: mov             x2, x0
    // 0xfa7564: r0 = Instance_Alignment
    //     0xfa7564: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e1b8] Obj!Alignment@129e6f1
    //     0xfa7568: ldr             x0, [x0, #0x1b8]
    // 0xfa756c: stur            x2, [fp, #-8]
    // 0xfa7570: StoreField: r2->field_13 = r0
    //     0xfa7570: stur            w0, [x2, #0x13]
    // 0xfa7574: r1 = Null
    //     0xfa7574: mov             x1, NULL
    // 0xfa7578: r0 = Random()
    //     0xfa7578: bl              #0x912154  ; [dart:math] Random::Random
    // 0xfa757c: ldur            x1, [fp, #-8]
    // 0xfa7580: ArrayStore: r1[0] = r0  ; List_4
    //     0xfa7580: stur            w0, [x1, #0x17]
    //     0xfa7584: ldurb           w16, [x1, #-1]
    //     0xfa7588: ldurb           w17, [x0, #-1]
    //     0xfa758c: and             x16, x17, x16, lsr #2
    //     0xfa7590: tst             x16, HEAP, lsr #32
    //     0xfa7594: b.eq            #0xfa759c
    //     0xfa7598: bl              #0x13ddf94  ; WriteBarrierWrappersStub
    // 0xfa759c: mov             x0, x1
    // 0xfa75a0: LeaveFrame
    //     0xfa75a0: mov             SP, fp
    //     0xfa75a4: ldp             fp, lr, [SP], #0x10
    // 0xfa75a8: ret
    //     0xfa75a8: ret             
    // 0xfa75ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xfa75ac: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xfa75b0: b               #0xfa7554
  }
}

// class id: 6284, size: 0xc, field offset: 0xc
//   const constructor, 
class _MascotSwitcher extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0xfa7410, size: 0x48
    // 0xfa7410: EnterFrame
    //     0xfa7410: stp             fp, lr, [SP, #-0x10]!
    //     0xfa7414: mov             fp, SP
    // 0xfa7418: AllocStack(0x8)
    //     0xfa7418: sub             SP, SP, #8
    // 0xfa741c: CheckStackOverflow
    //     0xfa741c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xfa7420: cmp             SP, x16
    //     0xfa7424: b.ls            #0xfa7450
    // 0xfa7428: r1 = <_MascotSwitcher>
    //     0xfa7428: add             x1, PP, #0x7b, lsl #12  ; [pp+0x7b728] TypeArguments: <_MascotSwitcher>
    //     0xfa742c: ldr             x1, [x1, #0x728]
    // 0xfa7430: r0 = _MascotSwitcherState()
    //     0xfa7430: bl              #0xfa7530  ; Allocate_MascotSwitcherStateStub -> _MascotSwitcherState (size=0x34)
    // 0xfa7434: mov             x1, x0
    // 0xfa7438: stur            x0, [fp, #-8]
    // 0xfa743c: r0 = _MascotSwitcherState()
    //     0xfa743c: bl              #0xfa7458  ; [package:simaster_ugm/app/modules/profile/views/profile_view.dart] _MascotSwitcherState::_MascotSwitcherState
    // 0xfa7440: ldur            x0, [fp, #-8]
    // 0xfa7444: LeaveFrame
    //     0xfa7444: mov             SP, fp
    //     0xfa7448: ldp             fp, lr, [SP], #0x10
    // 0xfa744c: ret
    //     0xfa744c: ret             
    // 0xfa7450: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xfa7450: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xfa7454: b               #0xfa7428
  }
}
