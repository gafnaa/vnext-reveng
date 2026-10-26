// lib: , url: package:simaster_ugm/utils/firebase_option_config.dart

// class id: 1050486, size: 0x8
class :: {
}

// class id: 1134, size: 0x8, field offset: 0x8
abstract class FirebaseOptionConfig extends Object {

  get _ firebaseOptions(/* No info */) {
    // ** addr: 0x13eab5c, size: 0x40
    // 0x13eab5c: EnterFrame
    //     0x13eab5c: stp             fp, lr, [SP, #-0x10]!
    //     0x13eab60: mov             fp, SP
    // 0x13eab64: CheckStackOverflow
    //     0x13eab64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x13eab68: cmp             SP, x16
    //     0x13eab6c: b.ls            #0x13eab90
    // 0x13eab70: r0 = LoadStaticField(0x1648)
    //     0x13eab70: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x13eab74: ldr             x0, [x0, #0x2c90]
    // 0x13eab78: cmp             w0, NULL
    // 0x13eab7c: b.eq            #0x13eab98
    // 0x13eab80: r0 = getFirebaseOptions()
    //     0x13eab80: bl              #0x13eab9c  ; [package:simaster_ugm/utils/firebase_option_config.dart] FirebaseOptionConfig::getFirebaseOptions
    // 0x13eab84: LeaveFrame
    //     0x13eab84: mov             SP, fp
    //     0x13eab88: ldp             fp, lr, [SP], #0x10
    // 0x13eab8c: ret
    //     0x13eab8c: ret             
    // 0x13eab90: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x13eab90: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x13eab94: b               #0x13eab70
    // 0x13eab98: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x13eab98: bl              #0x13e00c4  ; NullCastErrorSharedWithoutFPURegsStub
  }
  static _ getFirebaseOptions(/* No info */) {
    // ** addr: 0x13eab9c, size: 0x48
    // 0x13eab9c: EnterFrame
    //     0x13eab9c: stp             fp, lr, [SP, #-0x10]!
    //     0x13eaba0: mov             fp, SP
    // 0x13eaba4: r0 = FirebaseOptions()
    //     0x13eaba4: bl              #0x13ea308  ; AllocateFirebaseOptionsStub -> FirebaseOptions (size=0x44)
    // 0x13eaba8: r1 = "[REDACTED_GOOGLE_API_KEY]"
    //     0x13eaba8: add             x1, PP, #8, lsl #12  ; [pp+0x8df8] "[REDACTED_GOOGLE_API_KEY]"
    //     0x13eabac: ldr             x1, [x1, #0xdf8]
    // 0x13eabb0: StoreField: r0->field_7 = r1
    //     0x13eabb0: stur            w1, [x0, #7]
    // 0x13eabb4: r1 = "1:181248267495:android:49d56e064692be91bb3e42"
    //     0x13eabb4: add             x1, PP, #8, lsl #12  ; [pp+0x8e00] "1:181248267495:android:49d56e064692be91bb3e42"
    //     0x13eabb8: ldr             x1, [x1, #0xe00]
    // 0x13eabbc: StoreField: r0->field_b = r1
    //     0x13eabbc: stur            w1, [x0, #0xb]
    // 0x13eabc0: r1 = "181248267495"
    //     0x13eabc0: add             x1, PP, #8, lsl #12  ; [pp+0x8e08] "181248267495"
    //     0x13eabc4: ldr             x1, [x1, #0xe08]
    // 0x13eabc8: StoreField: r0->field_f = r1
    //     0x13eabc8: stur            w1, [x0, #0xf]
    // 0x13eabcc: r1 = "simaster-vnext-1949"
    //     0x13eabcc: add             x1, PP, #8, lsl #12  ; [pp+0x8e10] "simaster-vnext-1949"
    //     0x13eabd0: ldr             x1, [x1, #0xe10]
    // 0x13eabd4: StoreField: r0->field_13 = r1
    //     0x13eabd4: stur            w1, [x0, #0x13]
    // 0x13eabd8: LeaveFrame
    //     0x13eabd8: mov             SP, fp
    //     0x13eabdc: ldp             fp, lr, [SP], #0x10
    // 0x13eabe0: ret
    //     0x13eabe0: ret             
  }
}
