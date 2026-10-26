// lib: , url: package:simaster_ugm/app/modules/dashboard/controllers/dashboard_controller.dart

// class id: 1050164, size: 0x8
class :: {
}

// class id: 6889, size: 0x20, field offset: 0x1c
class DashboardController extends GetxController {

  _ reloadData(/* No info */) {
    // ** addr: 0xfe34e4, size: 0x50
    // 0xfe34e4: EnterFrame
    //     0xfe34e4: stp             fp, lr, [SP, #-0x10]!
    //     0xfe34e8: mov             fp, SP
    // 0xfe34ec: AllocStack(0x8)
    //     0xfe34ec: sub             SP, SP, #8
    // 0xfe34f0: CheckStackOverflow
    //     0xfe34f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xfe34f4: cmp             SP, x16
    //     0xfe34f8: b.ls            #0xfe352c
    // 0xfe34fc: LoadField: r0 = r1->field_1b
    //     0xfe34fc: ldur            w0, [x1, #0x1b]
    // 0xfe3500: DecompressPointer r0
    //     0xfe3500: add             x0, x0, HEAP, lsl #32
    // 0xfe3504: mov             x1, x0
    // 0xfe3508: stur            x0, [fp, #-8]
    // 0xfe350c: r0 = value()
    //     0xfe350c: bl              #0x1106bc8  ; [dart:mixin_deduplication] _MixinApplication314&RxNotifier&RxObjectMixin::value
    // 0xfe3510: eor             x2, x0, #0x10
    // 0xfe3514: ldur            x1, [fp, #-8]
    // 0xfe3518: r0 = value=()
    //     0xfe3518: bl              #0x91e088  ; [dart:mixin_deduplication] _MixinApplication314&RxNotifier&RxObjectMixin::value=
    // 0xfe351c: r0 = Null
    //     0xfe351c: mov             x0, NULL
    // 0xfe3520: LeaveFrame
    //     0xfe3520: mov             SP, fp
    //     0xfe3524: ldp             fp, lr, [SP], #0x10
    // 0xfe3528: ret
    //     0xfe3528: ret             
    // 0xfe352c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xfe352c: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xfe3530: b               #0xfe34fc
  }
  _ onInit(/* No info */) {
    // ** addr: 0x11f3300, size: 0x50
    // 0x11f3300: EnterFrame
    //     0x11f3300: stp             fp, lr, [SP, #-0x10]!
    //     0x11f3304: mov             fp, SP
    // 0x11f3308: AllocStack(0x8)
    //     0x11f3308: sub             SP, SP, #8
    // 0x11f330c: SetupParameters(DashboardController this /* r1 => r0, fp-0x8 */)
    //     0x11f330c: mov             x0, x1
    //     0x11f3310: stur            x1, [fp, #-8]
    // 0x11f3314: CheckStackOverflow
    //     0x11f3314: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x11f3318: cmp             SP, x16
    //     0x11f331c: b.ls            #0x11f3348
    // 0x11f3320: LoadField: r1 = r0->field_1b
    //     0x11f3320: ldur            w1, [x0, #0x1b]
    // 0x11f3324: DecompressPointer r1
    //     0x11f3324: add             x1, x1, HEAP, lsl #32
    // 0x11f3328: r2 = true
    //     0x11f3328: add             x2, NULL, #0x20  ; true
    // 0x11f332c: r0 = value=()
    //     0x11f332c: bl              #0x91e088  ; [dart:mixin_deduplication] _MixinApplication314&RxNotifier&RxObjectMixin::value=
    // 0x11f3330: ldur            x1, [fp, #-8]
    // 0x11f3334: r0 = onInit()
    //     0x11f3334: bl              #0x11fb6b8  ; [package:get/get_state_manager/src/rx_flutter/rx_disposable.dart] DisposableInterface::onInit
    // 0x11f3338: r0 = Null
    //     0x11f3338: mov             x0, NULL
    // 0x11f333c: LeaveFrame
    //     0x11f333c: mov             SP, fp
    //     0x11f3340: ldp             fp, lr, [SP], #0x10
    // 0x11f3344: ret
    //     0x11f3344: ret             
    // 0x11f3348: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x11f3348: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x11f334c: b               #0x11f3320
  }
}
