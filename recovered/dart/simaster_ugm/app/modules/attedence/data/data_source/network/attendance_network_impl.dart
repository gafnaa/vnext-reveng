// lib: , url: package:simaster_ugm/app/modules/attedence/data/data_source/network/attendance_network_impl.dart

// class id: 1050086, size: 0x8
class :: {
}

// class id: 1348, size: 0x8, field offset: 0x8
class AttendanceNetworkImpl extends AttendanceNetwork {

  _ getConfirmationQRStudent(/* No info */) async {
    // ** addr: 0xd4e500, size: 0x638
    // 0xd4e500: EnterFrame
    //     0xd4e500: stp             fp, lr, [SP, #-0x10]!
    //     0xd4e504: mov             fp, SP
    // 0xd4e508: AllocStack(0xf0)
    //     0xd4e508: sub             SP, SP, #0xf0
    // 0xd4e50c: SetupParameters(AttendanceNetworkImpl this /* r1 => r1, fp-0x90 */, dynamic _ /* r2 => r2, fp-0x98 */)
    //     0xd4e50c: stur            NULL, [fp, #-8]
    //     0xd4e510: stur            x1, [fp, #-0x90]
    //     0xd4e514: stur            x2, [fp, #-0x98]
    // 0xd4e518: CheckStackOverflow
    //     0xd4e518: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xd4e51c: cmp             SP, x16
    //     0xd4e520: b.ls            #0xd4eb24
    // 0xd4e524: InitAsync() -> Future<PresenceConfirmationModel?>
    //     0xd4e524: add             x0, PP, #0x83, lsl #12  ; [pp+0x83b48] TypeArguments: <PresenceConfirmationModel?>
    //     0xd4e528: ldr             x0, [x0, #0xb48]
    //     0xd4e52c: bl              #0x7f5e44  ; InitAsyncStub
    // 0xd4e530: r3 = 0
    //     0xd4e530: mov             x3, #0
    // 0xd4e534: r2 = Null
    //     0xd4e534: mov             x2, NULL
    // 0xd4e538: r1 = Null
    //     0xd4e538: mov             x1, NULL
    // 0xd4e53c: ldur            x0, [fp, #-0x98]
    // 0xd4e540: stur            x3, [fp, #-0xa0]
    // 0xd4e544: stur            x2, [fp, #-0x90]
    // 0xd4e548: stur            x1, [fp, #-0xa8]
    // 0xd4e54c: CheckStackOverflow
    //     0xd4e54c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xd4e550: cmp             SP, x16
    //     0xd4e554: b.ls            #0xd4eb2c
    // 0xd4e558: cmp             x3, #3
    // 0xd4e55c: b.ge            #0xd4eac8
    // 0xd4e560: r0 = getUserNumberType()
    //     0xd4e560: bl              #0x91d664  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::getUserNumberType
    // 0xd4e564: mov             x1, x0
    // 0xd4e568: stur            x1, [fp, #-0xb0]
    // 0xd4e56c: r0 = Await()
    //     0xd4e56c: bl              #0x7f5c00  ; AwaitStub
    // 0xd4e570: r1 = Null
    //     0xd4e570: mov             x1, NULL
    // 0xd4e574: r2 = 8
    //     0xd4e574: mov             x2, #8
    // 0xd4e578: stur            x0, [fp, #-0xb0]
    // 0xd4e57c: r0 = AllocateArray()
    //     0xd4e57c: bl              #0x13df928  ; AllocateArrayStub
    // 0xd4e580: r16 = "getConfirmationQRStudent param: "
    //     0xd4e580: add             x16, PP, #0x83, lsl #12  ; [pp+0x83b60] "getConfirmationQRStudent param: "
    //     0xd4e584: ldr             x16, [x16, #0xb60]
    // 0xd4e588: StoreField: r0->field_f = r16
    //     0xd4e588: stur            w16, [x0, #0xf]
    // 0xd4e58c: ldur            x1, [fp, #-0x98]
    // 0xd4e590: StoreField: r0->field_13 = r1
    //     0xd4e590: stur            w1, [x0, #0x13]
    // 0xd4e594: r16 = ", "
    //     0xd4e594: ldr             x16, [PP, #0xe80]  ; [pp+0xe80] ", "
    // 0xd4e598: ArrayStore: r0[0] = r16  ; List_4
    //     0xd4e598: stur            w16, [x0, #0x17]
    // 0xd4e59c: ldur            x2, [fp, #-0xb0]
    // 0xd4e5a0: StoreField: r0->field_1b = r2
    //     0xd4e5a0: stur            w2, [x0, #0x1b]
    // 0xd4e5a4: str             x0, [SP]
    // 0xd4e5a8: r0 = _interpolate()
    //     0xd4e5a8: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd4e5ac: stur            x0, [fp, #-0xb8]
    // 0xd4e5b0: r0 = LoadStaticField(0x930)
    //     0xd4e5b0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xd4e5b4: ldr             x0, [x0, #0x1260]
    // 0xd4e5b8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xd4e5bc: cmp             w0, w16
    // 0xd4e5c0: b.ne            #0xd4e5cc
    // 0xd4e5c4: r2 = _isLoggingEnabled
    //     0xd4e5c4: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0xd4e5c8: r0 = InitLateFinalStaticField()
    //     0xd4e5c8: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xd4e5cc: r0 = LoadStaticField(0x934)
    //     0xd4e5cc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xd4e5d0: ldr             x0, [x0, #0x1268]
    // 0xd4e5d4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xd4e5d8: cmp             w0, w16
    // 0xd4e5dc: b.ne            #0xd4e5ec
    // 0xd4e5e0: r2 = shared
    //     0xd4e5e0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15c50] Field <BaseNetworking.shared>: static late final (offset: 0x934)
    //     0xd4e5e4: ldr             x2, [x2, #0xc50]
    // 0xd4e5e8: r0 = InitLateFinalStaticField()
    //     0xd4e5e8: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xd4e5ec: r1 = Null
    //     0xd4e5ec: mov             x1, NULL
    // 0xd4e5f0: r2 = 10
    //     0xd4e5f0: mov             x2, #0xa
    // 0xd4e5f4: stur            x0, [fp, #-0xb8]
    // 0xd4e5f8: r0 = AllocateArray()
    //     0xd4e5f8: bl              #0x13df928  ; AllocateArrayStub
    // 0xd4e5fc: r16 = "{\"micro\":\"student\",\"service\":\"get_konfirmasi_qr_student\",\"param\":[[[\""
    //     0xd4e5fc: add             x16, PP, #0x83, lsl #12  ; [pp+0x83b68] "{\"micro\":\"student\",\"service\":\"get_konfirmasi_qr_student\",\"param\":[[[\""
    //     0xd4e600: ldr             x16, [x16, #0xb68]
    // 0xd4e604: StoreField: r0->field_f = r16
    //     0xd4e604: stur            w16, [x0, #0xf]
    // 0xd4e608: ldur            x1, [fp, #-0x98]
    // 0xd4e60c: StoreField: r0->field_13 = r1
    //     0xd4e60c: stur            w1, [x0, #0x13]
    // 0xd4e610: r16 = "\",\"9\",\""
    //     0xd4e610: add             x16, PP, #0x83, lsl #12  ; [pp+0x83b70] "\",\"9\",\""
    //     0xd4e614: ldr             x16, [x16, #0xb70]
    // 0xd4e618: ArrayStore: r0[0] = r16  ; List_4
    //     0xd4e618: stur            w16, [x0, #0x17]
    // 0xd4e61c: ldur            x2, [fp, #-0xb0]
    // 0xd4e620: StoreField: r0->field_1b = r2
    //     0xd4e620: stur            w2, [x0, #0x1b]
    // 0xd4e624: r16 = "\"]]]}"
    //     0xd4e624: add             x16, PP, #0x17, lsl #12  ; [pp+0x17890] "\"]]]}"
    //     0xd4e628: ldr             x16, [x16, #0x890]
    // 0xd4e62c: StoreField: r0->field_1f = r16
    //     0xd4e62c: stur            w16, [x0, #0x1f]
    // 0xd4e630: str             x0, [SP]
    // 0xd4e634: r0 = _interpolate()
    //     0xd4e634: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd4e638: stur            x0, [fp, #-0xc0]
    // 0xd4e63c: ldur            x16, [fp, #-0xb8]
    // 0xd4e640: stp             x16, NULL, [SP, #0x10]
    // 0xd4e644: r16 = "v1/student/micro/services"
    //     0xd4e644: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c68] "v1/student/micro/services"
    //     0xd4e648: ldr             x16, [x16, #0xc68]
    // 0xd4e64c: stp             x16, x0, [SP]
    // 0xd4e650: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0xd4e650: ldr             x4, [PP, #0x728]  ; [pp+0x728] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0xd4e654: r0 = post()
    //     0xd4e654: bl              #0x8ec50c  ; [package:simaster_ugm/utils/utils.dart] BaseNetworking::post
    // 0xd4e658: mov             x1, x0
    // 0xd4e65c: stur            x1, [fp, #-0xc8]
    // 0xd4e660: r0 = Await()
    //     0xd4e660: bl              #0x7f5c00  ; AwaitStub
    // 0xd4e664: r1 = Null
    //     0xd4e664: mov             x1, NULL
    // 0xd4e668: r2 = 4
    //     0xd4e668: mov             x2, #4
    // 0xd4e66c: stur            x0, [fp, #-0xc8]
    // 0xd4e670: r0 = AllocateArray()
    //     0xd4e670: bl              #0x13df928  ; AllocateArrayStub
    // 0xd4e674: r16 = "ini data getConfirmationQRStudent response: "
    //     0xd4e674: add             x16, PP, #0x83, lsl #12  ; [pp+0x83b78] "ini data getConfirmationQRStudent response: "
    //     0xd4e678: ldr             x16, [x16, #0xb78]
    // 0xd4e67c: StoreField: r0->field_f = r16
    //     0xd4e67c: stur            w16, [x0, #0xf]
    // 0xd4e680: ldur            x1, [fp, #-0xc8]
    // 0xd4e684: StoreField: r0->field_13 = r1
    //     0xd4e684: stur            w1, [x0, #0x13]
    // 0xd4e688: str             x0, [SP]
    // 0xd4e68c: r0 = _interpolate()
    //     0xd4e68c: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd4e690: ldur            x0, [fp, #-0xc8]
    // 0xd4e694: LoadField: r1 = r0->field_13
    //     0xd4e694: ldur            w1, [x0, #0x13]
    // 0xd4e698: DecompressPointer r1
    //     0xd4e698: add             x1, x1, HEAP, lsl #32
    // 0xd4e69c: cmp             w1, #0x190
    // 0xd4e6a0: b.ne            #0xd4e8d0
    // 0xd4e6a4: LoadField: r1 = r0->field_b
    //     0xd4e6a4: ldur            w1, [x0, #0xb]
    // 0xd4e6a8: DecompressPointer r1
    //     0xd4e6a8: add             x1, x1, HEAP, lsl #32
    // 0xd4e6ac: cmp             w1, NULL
    // 0xd4e6b0: b.eq            #0xd4e8d0
    // 0xd4e6b4: r16 = "res"
    //     0xd4e6b4: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c70] "res"
    //     0xd4e6b8: ldr             x16, [x16, #0xc70]
    // 0xd4e6bc: stp             x16, x1, [SP]
    // 0xd4e6c0: r4 = 0
    //     0xd4e6c0: mov             x4, #0
    // 0xd4e6c4: ldr             x0, [SP, #8]
    // 0xd4e6c8: r16 = 139822029843448
    //     0xd4e6c8: add             x16, PP, #0x83, lsl #12  ; [pp+0x83b80] IMM: 0x7f2ada6babf8
    //     0xd4e6cc: add             x16, x16, #0xb80
    // 0xd4e6d0: ldp             lr, x5, [x16]
    // 0xd4e6d4: blr             lr
    // 0xd4e6d8: cmp             w0, NULL
    // 0xd4e6dc: b.eq            #0xd4e8d0
    // 0xd4e6e0: ldur            x0, [fp, #-0xc8]
    // 0xd4e6e4: LoadField: r1 = r0->field_b
    //     0xd4e6e4: ldur            w1, [x0, #0xb]
    // 0xd4e6e8: DecompressPointer r1
    //     0xd4e6e8: add             x1, x1, HEAP, lsl #32
    // 0xd4e6ec: r16 = "res"
    //     0xd4e6ec: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c70] "res"
    //     0xd4e6f0: ldr             x16, [x16, #0xc70]
    // 0xd4e6f4: stp             x16, x1, [SP]
    // 0xd4e6f8: r4 = 0
    //     0xd4e6f8: mov             x4, #0
    // 0xd4e6fc: ldr             x0, [SP, #8]
    // 0xd4e700: r16 = 139822029843448
    //     0xd4e700: add             x16, PP, #0x83, lsl #12  ; [pp+0x83b90] IMM: 0x7f2ada6babf8
    //     0xd4e704: add             x16, x16, #0xb90
    // 0xd4e708: ldp             lr, x5, [x16]
    // 0xd4e70c: blr             lr
    // 0xd4e710: str             x0, [SP]
    // 0xd4e714: r4 = 0
    //     0xd4e714: mov             x4, #0
    // 0xd4e718: ldr             x0, [SP]
    // 0xd4e71c: r16 = 139822029843448
    //     0xd4e71c: add             x16, PP, #0x83, lsl #12  ; [pp+0x83ba0] IMM: 0x7f2ada6babf8
    //     0xd4e720: add             x16, x16, #0xba0
    // 0xd4e724: ldp             lr, x5, [x16]
    // 0xd4e728: blr             lr
    // 0xd4e72c: tbnz            w0, #4, #0xd4e8d0
    // 0xd4e730: ldur            x0, [fp, #-0xc8]
    // 0xd4e734: LoadField: r1 = r0->field_b
    //     0xd4e734: ldur            w1, [x0, #0xb]
    // 0xd4e738: DecompressPointer r1
    //     0xd4e738: add             x1, x1, HEAP, lsl #32
    // 0xd4e73c: r16 = "res"
    //     0xd4e73c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c70] "res"
    //     0xd4e740: ldr             x16, [x16, #0xc70]
    // 0xd4e744: stp             x16, x1, [SP]
    // 0xd4e748: r4 = 0
    //     0xd4e748: mov             x4, #0
    // 0xd4e74c: ldr             x0, [SP, #8]
    // 0xd4e750: r16 = 139822029843448
    //     0xd4e750: add             x16, PP, #0x83, lsl #12  ; [pp+0x83bb0] IMM: 0x7f2ada6babf8
    //     0xd4e754: add             x16, x16, #0xbb0
    // 0xd4e758: ldp             lr, x5, [x16]
    // 0xd4e75c: blr             lr
    // 0xd4e760: stp             xzr, x0, [SP]
    // 0xd4e764: r4 = 0
    //     0xd4e764: mov             x4, #0
    // 0xd4e768: ldr             x0, [SP, #8]
    // 0xd4e76c: r16 = 139822029843448
    //     0xd4e76c: add             x16, PP, #0x83, lsl #12  ; [pp+0x83bc0] IMM: 0x7f2ada6babf8
    //     0xd4e770: add             x16, x16, #0xbc0
    // 0xd4e774: ldp             lr, x5, [x16]
    // 0xd4e778: blr             lr
    // 0xd4e77c: str             x0, [SP]
    // 0xd4e780: r4 = 0
    //     0xd4e780: mov             x4, #0
    // 0xd4e784: ldr             x0, [SP]
    // 0xd4e788: r16 = 139822029843448
    //     0xd4e788: add             x16, PP, #0x83, lsl #12  ; [pp+0x83bd0] IMM: 0x7f2ada6babf8
    //     0xd4e78c: add             x16, x16, #0xbd0
    // 0xd4e790: ldp             lr, x5, [x16]
    // 0xd4e794: blr             lr
    // 0xd4e798: tbnz            w0, #4, #0xd4e8d0
    // 0xd4e79c: ldur            x0, [fp, #-0xc8]
    // 0xd4e7a0: LoadField: r1 = r0->field_b
    //     0xd4e7a0: ldur            w1, [x0, #0xb]
    // 0xd4e7a4: DecompressPointer r1
    //     0xd4e7a4: add             x1, x1, HEAP, lsl #32
    // 0xd4e7a8: r16 = "res"
    //     0xd4e7a8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c70] "res"
    //     0xd4e7ac: ldr             x16, [x16, #0xc70]
    // 0xd4e7b0: stp             x16, x1, [SP]
    // 0xd4e7b4: r4 = 0
    //     0xd4e7b4: mov             x4, #0
    // 0xd4e7b8: ldr             x0, [SP, #8]
    // 0xd4e7bc: r16 = 139822029843448
    //     0xd4e7bc: add             x16, PP, #0x83, lsl #12  ; [pp+0x83be0] IMM: 0x7f2ada6babf8
    //     0xd4e7c0: add             x16, x16, #0xbe0
    // 0xd4e7c4: ldp             lr, x5, [x16]
    // 0xd4e7c8: blr             lr
    // 0xd4e7cc: stp             xzr, x0, [SP]
    // 0xd4e7d0: r4 = 0
    //     0xd4e7d0: mov             x4, #0
    // 0xd4e7d4: ldr             x0, [SP, #8]
    // 0xd4e7d8: r16 = 139822029843448
    //     0xd4e7d8: add             x16, PP, #0x83, lsl #12  ; [pp+0x83bf0] IMM: 0x7f2ada6babf8
    //     0xd4e7dc: add             x16, x16, #0xbf0
    // 0xd4e7e0: ldp             lr, x5, [x16]
    // 0xd4e7e4: blr             lr
    // 0xd4e7e8: mov             x1, x0
    // 0xd4e7ec: stur            x1, [fp, #-0xb0]
    // 0xd4e7f0: cmp             w1, NULL
    // 0xd4e7f4: b.ne            #0xd4e800
    // 0xd4e7f8: mov             x0, x1
    // 0xd4e7fc: b               #0xd4e854
    // 0xd4e800: r0 = 60
    //     0xd4e800: mov             x0, #0x3c
    // 0xd4e804: branchIfSmi(r1, 0xd4e810)
    //     0xd4e804: tbz             w1, #0, #0xd4e810
    // 0xd4e808: r0 = LoadClassIdInstr(r1)
    //     0xd4e808: ldur            x0, [x1, #-1]
    //     0xd4e80c: ubfx            x0, x0, #0xc, #0x14
    // 0xd4e810: str             x1, [SP]
    // 0xd4e814: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0xd4e814: ldr             x4, [PP, #0x290]  ; [pp+0x290] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0xd4e818: r0 = GDT[cid_x0 + 0x91c1]()
    //     0xd4e818: mov             x17, #0x91c1
    //     0xd4e81c: add             lr, x0, x17
    //     0xd4e820: ldr             lr, [x21, lr, lsl #3]
    //     0xd4e824: blr             lr
    // 0xd4e828: r1 = LoadClassIdInstr(r0)
    //     0xd4e828: ldur            x1, [x0, #-1]
    //     0xd4e82c: ubfx            x1, x1, #0xc, #0x14
    // 0xd4e830: r16 = "[]"
    //     0xd4e830: add             x16, PP, #0xc, lsl #12  ; [pp+0xcf48] "[]"
    //     0xd4e834: ldr             x16, [x16, #0xf48]
    // 0xd4e838: stp             x16, x0, [SP]
    // 0xd4e83c: mov             x0, x1
    // 0xd4e840: mov             lr, x0
    // 0xd4e844: ldr             lr, [x21, lr, lsl #3]
    // 0xd4e848: blr             lr
    // 0xd4e84c: tbnz            w0, #4, #0xd4e884
    // 0xd4e850: ldur            x0, [fp, #-0xb0]
    // 0xd4e854: r1 = Null
    //     0xd4e854: mov             x1, NULL
    // 0xd4e858: r2 = 4
    //     0xd4e858: mov             x2, #4
    // 0xd4e85c: r0 = AllocateArray()
    //     0xd4e85c: bl              #0x13df928  ; AllocateArrayStub
    // 0xd4e860: r16 = "Response getConfirmationQRStudent awd: "
    //     0xd4e860: add             x16, PP, #0x83, lsl #12  ; [pp+0x83c00] "Response getConfirmationQRStudent awd: "
    //     0xd4e864: ldr             x16, [x16, #0xc00]
    // 0xd4e868: StoreField: r0->field_f = r16
    //     0xd4e868: stur            w16, [x0, #0xf]
    // 0xd4e86c: ldur            x1, [fp, #-0xb0]
    // 0xd4e870: StoreField: r0->field_13 = r1
    //     0xd4e870: stur            w1, [x0, #0x13]
    // 0xd4e874: str             x0, [SP]
    // 0xd4e878: r0 = _interpolate()
    //     0xd4e878: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd4e87c: r0 = Null
    //     0xd4e87c: mov             x0, NULL
    // 0xd4e880: r0 = ReturnAsyncNotFuture()
    //     0xd4e880: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0xd4e884: ldur            x16, [fp, #-0xb0]
    // 0xd4e888: stp             xzr, x16, [SP]
    // 0xd4e88c: r4 = 0
    //     0xd4e88c: mov             x4, #0
    // 0xd4e890: ldr             x0, [SP, #8]
    // 0xd4e894: r16 = 139822029843448
    //     0xd4e894: add             x16, PP, #0x83, lsl #12  ; [pp+0x83c08] IMM: 0x7f2ada6babf8
    //     0xd4e898: add             x16, x16, #0xc08
    // 0xd4e89c: ldp             lr, x5, [x16]
    // 0xd4e8a0: blr             lr
    // 0xd4e8a4: mov             x3, x0
    // 0xd4e8a8: r2 = Null
    //     0xd4e8a8: mov             x2, NULL
    // 0xd4e8ac: r1 = Null
    //     0xd4e8ac: mov             x1, NULL
    // 0xd4e8b0: stur            x3, [fp, #-0xb8]
    // 0xd4e8b4: r8 = Map<String, dynamic>
    //     0xd4e8b4: ldr             x8, [PP, #0x3298]  ; [pp+0x3298] Type: Map<String, dynamic>
    // 0xd4e8b8: r3 = Null
    //     0xd4e8b8: add             x3, PP, #0x83, lsl #12  ; [pp+0x83c18] Null
    //     0xd4e8bc: ldr             x3, [x3, #0xc18]
    // 0xd4e8c0: r0 = Map<String, dynamic>()
    //     0xd4e8c0: bl              #0x84f9a4  ; IsType_Map<String, dynamic>_Stub
    // 0xd4e8c4: ldur            x1, [fp, #-0xb8]
    // 0xd4e8c8: r0 = _$PresenceConfirmationModelFromJson()
    //     0xd4e8c8: bl              #0xd4eb38  ; [package:simaster_ugm/app/modules/attedence/data/models/presence_confirmation_model.dart] ::_$PresenceConfirmationModelFromJson
    // 0xd4e8cc: r0 = ReturnAsyncNotFuture()
    //     0xd4e8cc: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0xd4e8d0: ldur            x1, [fp, #-0xa0]
    // 0xd4e8d4: ldur            x0, [fp, #-0xc8]
    // 0xd4e8d8: add             x3, x1, #1
    // 0xd4e8dc: stur            x3, [fp, #-0xd0]
    // 0xd4e8e0: r1 = Null
    //     0xd4e8e0: mov             x1, NULL
    // 0xd4e8e4: r2 = 14
    //     0xd4e8e4: mov             x2, #0xe
    // 0xd4e8e8: r0 = AllocateArray()
    //     0xd4e8e8: bl              #0x13df928  ; AllocateArrayStub
    // 0xd4e8ec: mov             x2, x0
    // 0xd4e8f0: r16 = "Request failed with status: "
    //     0xd4e8f0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18658] "Request failed with status: "
    //     0xd4e8f4: ldr             x16, [x16, #0x658]
    // 0xd4e8f8: StoreField: r2->field_f = r16
    //     0xd4e8f8: stur            w16, [x2, #0xf]
    // 0xd4e8fc: ldur            x3, [fp, #-0xc8]
    // 0xd4e900: LoadField: r0 = r3->field_13
    //     0xd4e900: ldur            w0, [x3, #0x13]
    // 0xd4e904: DecompressPointer r0
    //     0xd4e904: add             x0, x0, HEAP, lsl #32
    // 0xd4e908: StoreField: r2->field_13 = r0
    //     0xd4e908: stur            w0, [x2, #0x13]
    // 0xd4e90c: r16 = ". Retrying "
    //     0xd4e90c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18660] ". Retrying "
    //     0xd4e910: ldr             x16, [x16, #0x660]
    // 0xd4e914: ArrayStore: r2[0] = r16  ; List_4
    //     0xd4e914: stur            w16, [x2, #0x17]
    // 0xd4e918: ldur            x4, [fp, #-0xd0]
    // 0xd4e91c: r0 = BoxInt64Instr(r4)
    //     0xd4e91c: sbfiz           x0, x4, #1, #0x1f
    //     0xd4e920: cmp             x4, x0, asr #1
    //     0xd4e924: b.eq            #0xd4e930
    //     0xd4e928: bl              #0x13dfbb4  ; AllocateMintSharedWithoutFPURegsStub
    //     0xd4e92c: stur            x4, [x0, #7]
    // 0xd4e930: StoreField: r2->field_1b = r0
    //     0xd4e930: stur            w0, [x2, #0x1b]
    // 0xd4e934: r16 = "/"
    //     0xd4e934: ldr             x16, [PP, #0xfe0]  ; [pp+0xfe0] "/"
    // 0xd4e938: StoreField: r2->field_1f = r16
    //     0xd4e938: stur            w16, [x2, #0x1f]
    // 0xd4e93c: r16 = 6
    //     0xd4e93c: mov             x16, #6
    // 0xd4e940: StoreField: r2->field_23 = r16
    //     0xd4e940: stur            w16, [x2, #0x23]
    // 0xd4e944: r16 = "..."
    //     0xd4e944: ldr             x16, [PP, #0xf98]  ; [pp+0xf98] "..."
    // 0xd4e948: StoreField: r2->field_27 = r16
    //     0xd4e948: stur            w16, [x2, #0x27]
    // 0xd4e94c: str             x2, [SP]
    // 0xd4e950: r0 = _interpolate()
    //     0xd4e950: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd4e954: ldur            x3, [fp, #-0xd0]
    // 0xd4e958: ldur            x2, [fp, #-0x90]
    // 0xd4e95c: ldur            x1, [fp, #-0xa8]
    // 0xd4e960: b               #0xd4e53c
    // 0xd4e964: sub             SP, fp, #0xf0
    // 0xd4e968: mov             x3, x0
    // 0xd4e96c: stur            x0, [fp, #-0x90]
    // 0xd4e970: mov             x0, x1
    // 0xd4e974: stur            x1, [fp, #-0xa8]
    // 0xd4e978: r1 = 60
    //     0xd4e978: mov             x1, #0x3c
    // 0xd4e97c: branchIfSmi(r3, 0xd4e988)
    //     0xd4e97c: tbz             w3, #0, #0xd4e988
    // 0xd4e980: r1 = LoadClassIdInstr(r3)
    //     0xd4e980: ldur            x1, [x3, #-1]
    //     0xd4e984: ubfx            x1, x1, #0xc, #0x14
    // 0xd4e988: cmp             x1, #0xd52
    // 0xd4e98c: b.ne            #0xd4eab8
    // 0xd4e990: ldur            x1, [fp, #-0x88]
    // 0xd4e994: cmp             w1, NULL
    // 0xd4e998: b.eq            #0xd4eb34
    // 0xd4e99c: r2 = LoadInt32Instr(r1)
    //     0xd4e99c: sbfx            x2, x1, #1, #0x1f
    //     0xd4e9a0: tbz             w1, #0, #0xd4e9a8
    //     0xd4e9a4: ldur            x2, [x1, #7]
    // 0xd4e9a8: cmp             x2, #2
    // 0xd4e9ac: b.ge            #0xd4ea58
    // 0xd4e9b0: add             x4, x2, #1
    // 0xd4e9b4: stur            x4, [fp, #-0xa0]
    // 0xd4e9b8: r1 = Null
    //     0xd4e9b8: mov             x1, NULL
    // 0xd4e9bc: r2 = 14
    //     0xd4e9bc: mov             x2, #0xe
    // 0xd4e9c0: r0 = AllocateArray()
    //     0xd4e9c0: bl              #0x13df928  ; AllocateArrayStub
    // 0xd4e9c4: mov             x2, x0
    // 0xd4e9c8: r16 = "Request failed with DioException: "
    //     0xd4e9c8: add             x16, PP, #0x18, lsl #12  ; [pp+0x186c8] "Request failed with DioException: "
    //     0xd4e9cc: ldr             x16, [x16, #0x6c8]
    // 0xd4e9d0: StoreField: r2->field_f = r16
    //     0xd4e9d0: stur            w16, [x2, #0xf]
    // 0xd4e9d4: ldur            x3, [fp, #-0x90]
    // 0xd4e9d8: LoadField: r0 = r3->field_1b
    //     0xd4e9d8: ldur            w0, [x3, #0x1b]
    // 0xd4e9dc: DecompressPointer r0
    //     0xd4e9dc: add             x0, x0, HEAP, lsl #32
    // 0xd4e9e0: StoreField: r2->field_13 = r0
    //     0xd4e9e0: stur            w0, [x2, #0x13]
    // 0xd4e9e4: r16 = ". Retrying "
    //     0xd4e9e4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18660] ". Retrying "
    //     0xd4e9e8: ldr             x16, [x16, #0x660]
    // 0xd4e9ec: ArrayStore: r2[0] = r16  ; List_4
    //     0xd4e9ec: stur            w16, [x2, #0x17]
    // 0xd4e9f0: ldur            x4, [fp, #-0xa0]
    // 0xd4e9f4: r0 = BoxInt64Instr(r4)
    //     0xd4e9f4: sbfiz           x0, x4, #1, #0x1f
    //     0xd4e9f8: cmp             x4, x0, asr #1
    //     0xd4e9fc: b.eq            #0xd4ea08
    //     0xd4ea00: bl              #0x13dfbb4  ; AllocateMintSharedWithoutFPURegsStub
    //     0xd4ea04: stur            x4, [x0, #7]
    // 0xd4ea08: StoreField: r2->field_1b = r0
    //     0xd4ea08: stur            w0, [x2, #0x1b]
    // 0xd4ea0c: r16 = "/"
    //     0xd4ea0c: ldr             x16, [PP, #0xfe0]  ; [pp+0xfe0] "/"
    // 0xd4ea10: StoreField: r2->field_1f = r16
    //     0xd4ea10: stur            w16, [x2, #0x1f]
    // 0xd4ea14: r16 = 6
    //     0xd4ea14: mov             x16, #6
    // 0xd4ea18: StoreField: r2->field_23 = r16
    //     0xd4ea18: stur            w16, [x2, #0x23]
    // 0xd4ea1c: r16 = "..."
    //     0xd4ea1c: ldr             x16, [PP, #0xf98]  ; [pp+0xf98] "..."
    // 0xd4ea20: StoreField: r2->field_27 = r16
    //     0xd4ea20: stur            w16, [x2, #0x27]
    // 0xd4ea24: str             x2, [SP]
    // 0xd4ea28: r0 = _interpolate()
    //     0xd4ea28: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd4ea2c: r0 = LoadStaticField(0x930)
    //     0xd4ea2c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xd4ea30: ldr             x0, [x0, #0x1260]
    // 0xd4ea34: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xd4ea38: cmp             w0, w16
    // 0xd4ea3c: b.ne            #0xd4ea48
    // 0xd4ea40: r2 = _isLoggingEnabled
    //     0xd4ea40: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0xd4ea44: r0 = InitLateFinalStaticField()
    //     0xd4ea44: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xd4ea48: ldur            x3, [fp, #-0xa0]
    // 0xd4ea4c: ldur            x2, [fp, #-0x90]
    // 0xd4ea50: ldur            x1, [fp, #-0xa8]
    // 0xd4ea54: b               #0xd4e53c
    // 0xd4ea58: mov             x0, x3
    // 0xd4ea5c: r1 = Null
    //     0xd4ea5c: mov             x1, NULL
    // 0xd4ea60: r2 = 4
    //     0xd4ea60: mov             x2, #4
    // 0xd4ea64: r0 = AllocateArray()
    //     0xd4ea64: bl              #0x13df928  ; AllocateArrayStub
    // 0xd4ea68: r16 = "Maximum retry limit reached. Error: "
    //     0xd4ea68: add             x16, PP, #0x18, lsl #12  ; [pp+0x186d0] "Maximum retry limit reached. Error: "
    //     0xd4ea6c: ldr             x16, [x16, #0x6d0]
    // 0xd4ea70: StoreField: r0->field_f = r16
    //     0xd4ea70: stur            w16, [x0, #0xf]
    // 0xd4ea74: ldur            x1, [fp, #-0x90]
    // 0xd4ea78: LoadField: r2 = r1->field_1b
    //     0xd4ea78: ldur            w2, [x1, #0x1b]
    // 0xd4ea7c: DecompressPointer r2
    //     0xd4ea7c: add             x2, x2, HEAP, lsl #32
    // 0xd4ea80: StoreField: r0->field_13 = r2
    //     0xd4ea80: stur            w2, [x0, #0x13]
    // 0xd4ea84: str             x0, [SP]
    // 0xd4ea88: r0 = _interpolate()
    //     0xd4ea88: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd4ea8c: r0 = LoadStaticField(0x930)
    //     0xd4ea8c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xd4ea90: ldr             x0, [x0, #0x1260]
    // 0xd4ea94: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xd4ea98: cmp             w0, w16
    // 0xd4ea9c: b.ne            #0xd4eaa8
    // 0xd4eaa0: r2 = _isLoggingEnabled
    //     0xd4eaa0: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0xd4eaa4: r0 = InitLateFinalStaticField()
    //     0xd4eaa4: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xd4eaa8: ldur            x0, [fp, #-0x90]
    // 0xd4eaac: ldur            x1, [fp, #-0xa8]
    // 0xd4eab0: r0 = ReThrow()
    //     0xd4eab0: bl              #0x13ddb00  ; ReThrowStub
    // 0xd4eab4: brk             #0
    // 0xd4eab8: ldur            x0, [fp, #-0x90]
    // 0xd4eabc: ldur            x1, [fp, #-0xa8]
    // 0xd4eac0: r0 = ReThrow()
    //     0xd4eac0: bl              #0x13ddb00  ; ReThrowStub
    // 0xd4eac4: brk             #0
    // 0xd4eac8: r0 = RequestOptions()
    //     0xd4eac8: bl              #0x8eba04  ; AllocateRequestOptionsStub -> RequestOptions (size=0x70)
    // 0xd4eacc: stur            x0, [fp, #-0x90]
    // 0xd4ead0: r16 = "konfirmasi_qr"
    //     0xd4ead0: add             x16, PP, #0x83, lsl #12  ; [pp+0x83c28] "konfirmasi_qr"
    //     0xd4ead4: ldr             x16, [x16, #0xc28]
    // 0xd4ead8: str             x16, [SP]
    // 0xd4eadc: mov             x1, x0
    // 0xd4eae0: r4 = const [0, 0x2, 0x1, 0x1, path, 0x1, null]
    //     0xd4eae0: ldr             x4, [PP, #0x3978]  ; [pp+0x3978] List(7) [0, 0x2, 0x1, 0x1, "path", 0x1, Null]
    // 0xd4eae4: r0 = RequestOptions()
    //     0xd4eae4: bl              #0x8ea020  ; [package:dio/src/options.dart] RequestOptions::RequestOptions
    // 0xd4eae8: r0 = DioException()
    //     0xd4eae8: bl              #0x8ea014  ; AllocateDioExceptionStub -> DioException (size=0x24)
    // 0xd4eaec: stur            x0, [fp, #-0x98]
    // 0xd4eaf0: r16 = "Maximum retry limit reached"
    //     0xd4eaf0: add             x16, PP, #0x18, lsl #12  ; [pp+0x186e0] "Maximum retry limit reached"
    //     0xd4eaf4: ldr             x16, [x16, #0x6e0]
    // 0xd4eaf8: r30 = Instance_DioExceptionType
    //     0xd4eaf8: add             lr, PP, #0x15, lsl #12  ; [pp+0x15ce0] Obj!DioExceptionType@12c64e1
    //     0xd4eafc: ldr             lr, [lr, #0xce0]
    // 0xd4eb00: stp             lr, x16, [SP]
    // 0xd4eb04: mov             x1, x0
    // 0xd4eb08: ldur            x2, [fp, #-0x90]
    // 0xd4eb0c: r4 = const [0, 0x4, 0x2, 0x2, error, 0x2, type, 0x3, null]
    //     0xd4eb0c: add             x4, PP, #0x15, lsl #12  ; [pp+0x15cd0] List(9) [0, 0x4, 0x2, 0x2, "error", 0x2, "type", 0x3, Null]
    //     0xd4eb10: ldr             x4, [x4, #0xcd0]
    // 0xd4eb14: r0 = DioException()
    //     0xd4eb14: bl              #0x8e97ec  ; [package:dio/src/dio_exception.dart] DioException::DioException
    // 0xd4eb18: ldur            x0, [fp, #-0x98]
    // 0xd4eb1c: r0 = Throw()
    //     0xd4eb1c: bl              #0x13ddb2c  ; ThrowStub
    // 0xd4eb20: brk             #0
    // 0xd4eb24: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xd4eb24: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xd4eb28: b               #0xd4e524
    // 0xd4eb2c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xd4eb2c: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xd4eb30: b               #0xd4e558
    // 0xd4eb34: r0 = NullErrorSharedWithoutFPURegs()
    //     0xd4eb34: bl              #0x13e0274  ; NullErrorSharedWithoutFPURegsStub
  }
  _ scanEntrant(/* No info */) async {
    // ** addr: 0xd4fc74, size: 0x10d8
    // 0xd4fc74: EnterFrame
    //     0xd4fc74: stp             fp, lr, [SP, #-0x10]!
    //     0xd4fc78: mov             fp, SP
    // 0xd4fc7c: AllocStack(0x170)
    //     0xd4fc7c: sub             SP, SP, #0x170
    // 0xd4fc80: SetupParameters(AttendanceNetworkImpl this /* r1 => r2, fp-0xd0 */, dynamic _ /* r2 => r1, fp-0xd8 */)
    //     0xd4fc80: stur            NULL, [fp, #-8]
    //     0xd4fc84: stur            x1, [fp, #-0xd0]
    //     0xd4fc88: mov             x16, x2
    //     0xd4fc8c: mov             x2, x1
    //     0xd4fc90: mov             x1, x16
    //     0xd4fc94: stur            x1, [fp, #-0xd8]
    // 0xd4fc98: CheckStackOverflow
    //     0xd4fc98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xd4fc9c: cmp             SP, x16
    //     0xd4fca0: b.ls            #0xd50d38
    // 0xd4fca4: InitAsync() -> Future
    //     0xd4fca4: mov             x0, NULL
    //     0xd4fca8: bl              #0x7f5e44  ; InitAsyncStub
    // 0xd4fcac: r1 = Null
    //     0xd4fcac: mov             x1, NULL
    // 0xd4fcb0: r2 = 4
    //     0xd4fcb0: mov             x2, #4
    // 0xd4fcb4: r0 = AllocateArray()
    //     0xd4fcb4: bl              #0x13df928  ; AllocateArrayStub
    // 0xd4fcb8: r16 = "[PRES_NEW] ini adalah param qr: "
    //     0xd4fcb8: add             x16, PP, #0x83, lsl #12  ; [pp+0x83ce0] "[PRES_NEW] ini adalah param qr: "
    //     0xd4fcbc: ldr             x16, [x16, #0xce0]
    // 0xd4fcc0: StoreField: r0->field_f = r16
    //     0xd4fcc0: stur            w16, [x0, #0xf]
    // 0xd4fcc4: ldur            x1, [fp, #-0xd8]
    // 0xd4fcc8: StoreField: r0->field_13 = r1
    //     0xd4fcc8: stur            w1, [x0, #0x13]
    // 0xd4fccc: str             x0, [SP]
    // 0xd4fcd0: r0 = _interpolate()
    //     0xd4fcd0: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd4fcd4: r0 = LoadStaticField(0x930)
    //     0xd4fcd4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xd4fcd8: ldr             x0, [x0, #0x1260]
    // 0xd4fcdc: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xd4fce0: cmp             w0, w16
    // 0xd4fce4: b.ne            #0xd4fcf0
    // 0xd4fce8: r2 = _isLoggingEnabled
    //     0xd4fce8: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0xd4fcec: r0 = InitLateFinalStaticField()
    //     0xd4fcec: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xd4fcf0: ldur            x1, [fp, #-0xd8]
    // 0xd4fcf4: LoadField: r0 = r1->field_7
    //     0xd4fcf4: ldur            w0, [x1, #7]
    // 0xd4fcf8: DecompressPointer r0
    //     0xd4fcf8: add             x0, x0, HEAP, lsl #32
    // 0xd4fcfc: stur            x0, [fp, #-0xe8]
    // 0xd4fd00: LoadField: r2 = r0->field_7
    //     0xd4fd00: ldur            w2, [x0, #7]
    // 0xd4fd04: stur            x2, [fp, #-0xe0]
    // 0xd4fd08: r3 = LoadInt32Instr(r2)
    //     0xd4fd08: sbfx            x3, x2, #1, #0x1f
    // 0xd4fd0c: cmp             x3, #0x25
    // 0xd4fd10: b.gt            #0xd50adc
    // 0xd4fd14: r0 = DeviceInfoPlugin()
    //     0xd4fd14: bl              #0x9ec034  ; AllocateDeviceInfoPluginStub -> DeviceInfoPlugin (size=0xc)
    // 0xd4fd18: mov             x1, x0
    // 0xd4fd1c: stur            x0, [fp, #-0xf0]
    // 0xd4fd20: r0 = androidInfo()
    //     0xd4fd20: bl              #0x9e8854  ; [package:device_info_plus/device_info_plus.dart] DeviceInfoPlugin::androidInfo
    // 0xd4fd24: mov             x1, x0
    // 0xd4fd28: stur            x1, [fp, #-0xf8]
    // 0xd4fd2c: r0 = Await()
    //     0xd4fd2c: bl              #0x7f5c00  ; AwaitStub
    // 0xd4fd30: LoadField: r1 = r0->field_2b
    //     0xd4fd30: ldur            w1, [x0, #0x2b]
    // 0xd4fd34: DecompressPointer r1
    //     0xd4fd34: add             x1, x1, HEAP, lsl #32
    // 0xd4fd38: mov             x3, x1
    // 0xd4fd3c: r2 = Null
    //     0xd4fd3c: mov             x2, NULL
    // 0xd4fd40: r0 = Null
    //     0xd4fd40: mov             x0, NULL
    // 0xd4fd44: b               #0xd4fd90
    // 0xd4fd48: sub             SP, fp, #0x170
    // 0xd4fd4c: mov             x3, x0
    // 0xd4fd50: stur            x0, [fp, #-0xf0]
    // 0xd4fd54: mov             x0, x1
    // 0xd4fd58: stur            x1, [fp, #-0xf8]
    // 0xd4fd5c: r1 = Null
    //     0xd4fd5c: mov             x1, NULL
    // 0xd4fd60: r2 = 4
    //     0xd4fd60: mov             x2, #4
    // 0xd4fd64: r0 = AllocateArray()
    //     0xd4fd64: bl              #0x13df928  ; AllocateArrayStub
    // 0xd4fd68: r16 = "[PRES_NEW] Gagal mendapatkan device ID: "
    //     0xd4fd68: add             x16, PP, #0x83, lsl #12  ; [pp+0x83ce8] "[PRES_NEW] Gagal mendapatkan device ID: "
    //     0xd4fd6c: ldr             x16, [x16, #0xce8]
    // 0xd4fd70: StoreField: r0->field_f = r16
    //     0xd4fd70: stur            w16, [x0, #0xf]
    // 0xd4fd74: ldur            x1, [fp, #-0xf0]
    // 0xd4fd78: StoreField: r0->field_13 = r1
    //     0xd4fd78: stur            w1, [x0, #0x13]
    // 0xd4fd7c: str             x0, [SP]
    // 0xd4fd80: r0 = _interpolate()
    //     0xd4fd80: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd4fd84: ldur            x2, [fp, #-0xf0]
    // 0xd4fd88: ldur            x0, [fp, #-0xf8]
    // 0xd4fd8c: r3 = "-"
    //     0xd4fd8c: ldr             x3, [PP, #0x24e8]  ; [pp+0x24e8] "-"
    // 0xd4fd90: stur            x3, [fp, #-0xf0]
    // 0xd4fd94: stur            x2, [fp, #-0xf8]
    // 0xd4fd98: stur            x0, [fp, #-0x100]
    // 0xd4fd9c: r1 = "user_username"
    //     0xd4fd9c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19230] "user_username"
    //     0xd4fda0: ldr             x1, [x1, #0x230]
    // 0xd4fda4: r0 = getData()
    //     0xd4fda4: bl              #0xd52ef0  ; [package:simaster_ugm/utils/utils.dart] SharedPreferencesService::getData
    // 0xd4fda8: mov             x1, x0
    // 0xd4fdac: r17 = -264
    //     0xd4fdac: mov             x17, #-0x108
    // 0xd4fdb0: str             x1, [fp, x17]
    // 0xd4fdb4: r0 = Await()
    //     0xd4fdb4: bl              #0x7f5c00  ; AwaitStub
    // 0xd4fdb8: cmp             w0, NULL
    // 0xd4fdbc: b.ne            #0xd4fdd0
    // 0xd4fdc0: ldur            x1, [fp, #-0xd8]
    // 0xd4fdc4: LoadField: r0 = r1->field_1f
    //     0xd4fdc4: ldur            w0, [x1, #0x1f]
    // 0xd4fdc8: DecompressPointer r0
    //     0xd4fdc8: add             x0, x0, HEAP, lsl #32
    // 0xd4fdcc: b               #0xd4fdd4
    // 0xd4fdd0: ldur            x1, [fp, #-0xd8]
    // 0xd4fdd4: r17 = -264
    //     0xd4fdd4: mov             x17, #-0x108
    // 0xd4fdd8: str             x0, [fp, x17]
    // 0xd4fddc: str             x0, [SP]
    // 0xd4fde0: r4 = 0
    //     0xd4fde0: mov             x4, #0
    // 0xd4fde4: ldr             x0, [SP]
    // 0xd4fde8: r16 = 139822029843448
    //     0xd4fde8: add             x16, PP, #0x83, lsl #12  ; [pp+0x83cf0] IMM: 0x7f2ada6babf8
    //     0xd4fdec: add             x16, x16, #0xcf0
    // 0xd4fdf0: ldp             lr, x5, [x16]
    // 0xd4fdf4: blr             lr
    // 0xd4fdf8: mov             x3, x0
    // 0xd4fdfc: r2 = Null
    //     0xd4fdfc: mov             x2, NULL
    // 0xd4fe00: r1 = Null
    //     0xd4fe00: mov             x1, NULL
    // 0xd4fe04: r17 = -272
    //     0xd4fe04: mov             x17, #-0x110
    // 0xd4fe08: str             x3, [fp, x17]
    // 0xd4fe0c: r4 = 60
    //     0xd4fe0c: mov             x4, #0x3c
    // 0xd4fe10: branchIfSmi(r0, 0xd4fe1c)
    //     0xd4fe10: tbz             w0, #0, #0xd4fe1c
    // 0xd4fe14: r4 = LoadClassIdInstr(r0)
    //     0xd4fe14: ldur            x4, [x0, #-1]
    //     0xd4fe18: ubfx            x4, x4, #0xc, #0x14
    // 0xd4fe1c: cmp             x4, #0x3f
    // 0xd4fe20: b.eq            #0xd4fe34
    // 0xd4fe24: r8 = bool
    //     0xd4fe24: ldr             x8, [PP, #0xb18]  ; [pp+0xb18] Type: bool
    // 0xd4fe28: r3 = Null
    //     0xd4fe28: add             x3, PP, #0x83, lsl #12  ; [pp+0x83d00] Null
    //     0xd4fe2c: ldr             x3, [x3, #0xd00]
    // 0xd4fe30: r0 = bool()
    //     0xd4fe30: bl              #0x13ee15c  ; IsType_bool_Stub
    // 0xd4fe34: r17 = -272
    //     0xd4fe34: mov             x17, #-0x110
    // 0xd4fe38: ldr             x0, [fp, x17]
    // 0xd4fe3c: tbz             w0, #4, #0xd50b7c
    // 0xd4fe40: r17 = -264
    //     0xd4fe40: mov             x17, #-0x108
    // 0xd4fe44: ldr             x0, [fp, x17]
    // 0xd4fe48: r0 = DateTime()
    //     0xd4fe48: bl              #0x8174b8  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0xd4fe4c: mov             x1, x0
    // 0xd4fe50: r0 = false
    //     0xd4fe50: add             x0, NULL, #0x30  ; false
    // 0xd4fe54: r17 = -272
    //     0xd4fe54: mov             x17, #-0x110
    // 0xd4fe58: str             x1, [fp, x17]
    // 0xd4fe5c: StoreField: r1->field_7 = r0
    //     0xd4fe5c: stur            w0, [x1, #7]
    // 0xd4fe60: r0 = _getCurrentMicros()
    //     0xd4fe60: bl              #0x89fe10  ; [dart:core] DateTime::_getCurrentMicros
    // 0xd4fe64: r1 = LoadInt32Instr(r0)
    //     0xd4fe64: sbfx            x1, x0, #1, #0x1f
    //     0xd4fe68: tbz             w0, #0, #0xd4fe70
    //     0xd4fe6c: ldur            x1, [x0, #7]
    // 0xd4fe70: r17 = -272
    //     0xd4fe70: mov             x17, #-0x110
    // 0xd4fe74: ldr             x0, [fp, x17]
    // 0xd4fe78: StoreField: r0->field_b = r1
    //     0xd4fe78: stur            x1, [x0, #0xb]
    // 0xd4fe7c: r1 = Null
    //     0xd4fe7c: mov             x1, NULL
    // 0xd4fe80: r2 = 10
    //     0xd4fe80: mov             x2, #0xa
    // 0xd4fe84: r0 = AllocateArray()
    //     0xd4fe84: bl              #0x13df928  ; AllocateArrayStub
    // 0xd4fe88: r17 = -272
    //     0xd4fe88: mov             x17, #-0x110
    // 0xd4fe8c: ldr             x1, [fp, x17]
    // 0xd4fe90: r17 = -280
    //     0xd4fe90: mov             x17, #-0x118
    // 0xd4fe94: str             x0, [fp, x17]
    // 0xd4fe98: r0 = _parts()
    //     0xd4fe98: bl              #0x816b24  ; [dart:core] DateTime::_parts
    // 0xd4fe9c: mov             x2, x0
    // 0xd4fea0: LoadField: r0 = r2->field_b
    //     0xd4fea0: ldur            w0, [x2, #0xb]
    // 0xd4fea4: r1 = LoadInt32Instr(r0)
    //     0xd4fea4: sbfx            x1, x0, #1, #0x1f
    // 0xd4fea8: mov             x0, x1
    // 0xd4feac: r1 = 8
    //     0xd4feac: mov             x1, #8
    // 0xd4feb0: cmp             x1, x0
    // 0xd4feb4: b.hs            #0xd50d40
    // 0xd4feb8: LoadField: r0 = r2->field_2f
    //     0xd4feb8: ldur            w0, [x2, #0x2f]
    // 0xd4febc: DecompressPointer r0
    //     0xd4febc: add             x0, x0, HEAP, lsl #32
    // 0xd4fec0: r1 = 60
    //     0xd4fec0: mov             x1, #0x3c
    // 0xd4fec4: branchIfSmi(r0, 0xd4fed0)
    //     0xd4fec4: tbz             w0, #0, #0xd4fed0
    // 0xd4fec8: r1 = LoadClassIdInstr(r0)
    //     0xd4fec8: ldur            x1, [x0, #-1]
    //     0xd4fecc: ubfx            x1, x1, #0xc, #0x14
    // 0xd4fed0: str             x0, [SP]
    // 0xd4fed4: mov             x0, x1
    // 0xd4fed8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0xd4fed8: ldr             x4, [PP, #0x290]  ; [pp+0x290] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0xd4fedc: r0 = GDT[cid_x0 + 0x91c1]()
    //     0xd4fedc: mov             x17, #0x91c1
    //     0xd4fee0: add             lr, x0, x17
    //     0xd4fee4: ldr             lr, [x21, lr, lsl #3]
    //     0xd4fee8: blr             lr
    // 0xd4feec: r1 = LoadClassIdInstr(r0)
    //     0xd4feec: ldur            x1, [x0, #-1]
    //     0xd4fef0: ubfx            x1, x1, #0xc, #0x14
    // 0xd4fef4: mov             x16, x0
    // 0xd4fef8: mov             x0, x1
    // 0xd4fefc: mov             x1, x16
    // 0xd4ff00: r2 = 4
    //     0xd4ff00: mov             x2, #4
    // 0xd4ff04: r3 = "0"
    //     0xd4ff04: ldr             x3, [PP, #0x47e8]  ; [pp+0x47e8] "0"
    // 0xd4ff08: r0 = GDT[cid_x0 + -0xff6]()
    //     0xd4ff08: sub             lr, x0, #0xff6
    //     0xd4ff0c: ldr             lr, [x21, lr, lsl #3]
    //     0xd4ff10: blr             lr
    // 0xd4ff14: r17 = -280
    //     0xd4ff14: mov             x17, #-0x118
    // 0xd4ff18: ldr             x1, [fp, x17]
    // 0xd4ff1c: ArrayStore: r1[0] = r0  ; List_4
    //     0xd4ff1c: add             x25, x1, #0xf
    //     0xd4ff20: str             w0, [x25]
    //     0xd4ff24: tbz             w0, #0, #0xd4ff40
    //     0xd4ff28: ldurb           w16, [x1, #-1]
    //     0xd4ff2c: ldurb           w17, [x0, #-1]
    //     0xd4ff30: and             x16, x17, x16, lsr #2
    //     0xd4ff34: tst             x16, HEAP, lsr #32
    //     0xd4ff38: b.eq            #0xd4ff40
    //     0xd4ff3c: bl              #0x13ddb50  ; ArrayWriteBarrierStub
    // 0xd4ff40: r17 = -280
    //     0xd4ff40: mov             x17, #-0x118
    // 0xd4ff44: ldr             x0, [fp, x17]
    // 0xd4ff48: r16 = "-"
    //     0xd4ff48: ldr             x16, [PP, #0x24e8]  ; [pp+0x24e8] "-"
    // 0xd4ff4c: StoreField: r0->field_13 = r16
    //     0xd4ff4c: stur            w16, [x0, #0x13]
    // 0xd4ff50: r17 = -272
    //     0xd4ff50: mov             x17, #-0x110
    // 0xd4ff54: ldr             x1, [fp, x17]
    // 0xd4ff58: r0 = _parts()
    //     0xd4ff58: bl              #0x816b24  ; [dart:core] DateTime::_parts
    // 0xd4ff5c: mov             x2, x0
    // 0xd4ff60: LoadField: r0 = r2->field_b
    //     0xd4ff60: ldur            w0, [x2, #0xb]
    // 0xd4ff64: r1 = LoadInt32Instr(r0)
    //     0xd4ff64: sbfx            x1, x0, #1, #0x1f
    // 0xd4ff68: mov             x0, x1
    // 0xd4ff6c: r1 = 7
    //     0xd4ff6c: mov             x1, #7
    // 0xd4ff70: cmp             x1, x0
    // 0xd4ff74: b.hs            #0xd50d44
    // 0xd4ff78: LoadField: r0 = r2->field_2b
    //     0xd4ff78: ldur            w0, [x2, #0x2b]
    // 0xd4ff7c: DecompressPointer r0
    //     0xd4ff7c: add             x0, x0, HEAP, lsl #32
    // 0xd4ff80: r1 = 60
    //     0xd4ff80: mov             x1, #0x3c
    // 0xd4ff84: branchIfSmi(r0, 0xd4ff90)
    //     0xd4ff84: tbz             w0, #0, #0xd4ff90
    // 0xd4ff88: r1 = LoadClassIdInstr(r0)
    //     0xd4ff88: ldur            x1, [x0, #-1]
    //     0xd4ff8c: ubfx            x1, x1, #0xc, #0x14
    // 0xd4ff90: str             x0, [SP]
    // 0xd4ff94: mov             x0, x1
    // 0xd4ff98: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0xd4ff98: ldr             x4, [PP, #0x290]  ; [pp+0x290] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0xd4ff9c: r0 = GDT[cid_x0 + 0x91c1]()
    //     0xd4ff9c: mov             x17, #0x91c1
    //     0xd4ffa0: add             lr, x0, x17
    //     0xd4ffa4: ldr             lr, [x21, lr, lsl #3]
    //     0xd4ffa8: blr             lr
    // 0xd4ffac: r1 = LoadClassIdInstr(r0)
    //     0xd4ffac: ldur            x1, [x0, #-1]
    //     0xd4ffb0: ubfx            x1, x1, #0xc, #0x14
    // 0xd4ffb4: mov             x16, x0
    // 0xd4ffb8: mov             x0, x1
    // 0xd4ffbc: mov             x1, x16
    // 0xd4ffc0: r2 = 2
    //     0xd4ffc0: mov             x2, #2
    // 0xd4ffc4: r3 = "0"
    //     0xd4ffc4: ldr             x3, [PP, #0x47e8]  ; [pp+0x47e8] "0"
    // 0xd4ffc8: r0 = GDT[cid_x0 + -0xff6]()
    //     0xd4ffc8: sub             lr, x0, #0xff6
    //     0xd4ffcc: ldr             lr, [x21, lr, lsl #3]
    //     0xd4ffd0: blr             lr
    // 0xd4ffd4: r17 = -280
    //     0xd4ffd4: mov             x17, #-0x118
    // 0xd4ffd8: ldr             x1, [fp, x17]
    // 0xd4ffdc: ArrayStore: r1[2] = r0  ; List_4
    //     0xd4ffdc: add             x25, x1, #0x17
    //     0xd4ffe0: str             w0, [x25]
    //     0xd4ffe4: tbz             w0, #0, #0xd50000
    //     0xd4ffe8: ldurb           w16, [x1, #-1]
    //     0xd4ffec: ldurb           w17, [x0, #-1]
    //     0xd4fff0: and             x16, x17, x16, lsr #2
    //     0xd4fff4: tst             x16, HEAP, lsr #32
    //     0xd4fff8: b.eq            #0xd50000
    //     0xd4fffc: bl              #0x13ddb50  ; ArrayWriteBarrierStub
    // 0xd50000: r17 = -280
    //     0xd50000: mov             x17, #-0x118
    // 0xd50004: ldr             x0, [fp, x17]
    // 0xd50008: r16 = "-"
    //     0xd50008: ldr             x16, [PP, #0x24e8]  ; [pp+0x24e8] "-"
    // 0xd5000c: StoreField: r0->field_1b = r16
    //     0xd5000c: stur            w16, [x0, #0x1b]
    // 0xd50010: r17 = -272
    //     0xd50010: mov             x17, #-0x110
    // 0xd50014: ldr             x1, [fp, x17]
    // 0xd50018: r0 = _parts()
    //     0xd50018: bl              #0x816b24  ; [dart:core] DateTime::_parts
    // 0xd5001c: mov             x2, x0
    // 0xd50020: LoadField: r0 = r2->field_b
    //     0xd50020: ldur            w0, [x2, #0xb]
    // 0xd50024: r1 = LoadInt32Instr(r0)
    //     0xd50024: sbfx            x1, x0, #1, #0x1f
    // 0xd50028: mov             x0, x1
    // 0xd5002c: r1 = 5
    //     0xd5002c: mov             x1, #5
    // 0xd50030: cmp             x1, x0
    // 0xd50034: b.hs            #0xd50d48
    // 0xd50038: LoadField: r0 = r2->field_23
    //     0xd50038: ldur            w0, [x2, #0x23]
    // 0xd5003c: DecompressPointer r0
    //     0xd5003c: add             x0, x0, HEAP, lsl #32
    // 0xd50040: r1 = 60
    //     0xd50040: mov             x1, #0x3c
    // 0xd50044: branchIfSmi(r0, 0xd50050)
    //     0xd50044: tbz             w0, #0, #0xd50050
    // 0xd50048: r1 = LoadClassIdInstr(r0)
    //     0xd50048: ldur            x1, [x0, #-1]
    //     0xd5004c: ubfx            x1, x1, #0xc, #0x14
    // 0xd50050: str             x0, [SP]
    // 0xd50054: mov             x0, x1
    // 0xd50058: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0xd50058: ldr             x4, [PP, #0x290]  ; [pp+0x290] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0xd5005c: r0 = GDT[cid_x0 + 0x91c1]()
    //     0xd5005c: mov             x17, #0x91c1
    //     0xd50060: add             lr, x0, x17
    //     0xd50064: ldr             lr, [x21, lr, lsl #3]
    //     0xd50068: blr             lr
    // 0xd5006c: r1 = LoadClassIdInstr(r0)
    //     0xd5006c: ldur            x1, [x0, #-1]
    //     0xd50070: ubfx            x1, x1, #0xc, #0x14
    // 0xd50074: mov             x16, x0
    // 0xd50078: mov             x0, x1
    // 0xd5007c: mov             x1, x16
    // 0xd50080: r2 = 2
    //     0xd50080: mov             x2, #2
    // 0xd50084: r3 = "0"
    //     0xd50084: ldr             x3, [PP, #0x47e8]  ; [pp+0x47e8] "0"
    // 0xd50088: r0 = GDT[cid_x0 + -0xff6]()
    //     0xd50088: sub             lr, x0, #0xff6
    //     0xd5008c: ldr             lr, [x21, lr, lsl #3]
    //     0xd50090: blr             lr
    // 0xd50094: r17 = -280
    //     0xd50094: mov             x17, #-0x118
    // 0xd50098: ldr             x1, [fp, x17]
    // 0xd5009c: ArrayStore: r1[4] = r0  ; List_4
    //     0xd5009c: add             x25, x1, #0x1f
    //     0xd500a0: str             w0, [x25]
    //     0xd500a4: tbz             w0, #0, #0xd500c0
    //     0xd500a8: ldurb           w16, [x1, #-1]
    //     0xd500ac: ldurb           w17, [x0, #-1]
    //     0xd500b0: and             x16, x17, x16, lsr #2
    //     0xd500b4: tst             x16, HEAP, lsr #32
    //     0xd500b8: b.eq            #0xd500c0
    //     0xd500bc: bl              #0x13ddb50  ; ArrayWriteBarrierStub
    // 0xd500c0: r17 = -280
    //     0xd500c0: mov             x17, #-0x118
    // 0xd500c4: ldr             x16, [fp, x17]
    // 0xd500c8: str             x16, [SP]
    // 0xd500cc: r0 = _interpolate()
    //     0xd500cc: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd500d0: r1 = Null
    //     0xd500d0: mov             x1, NULL
    // 0xd500d4: r2 = 10
    //     0xd500d4: mov             x2, #0xa
    // 0xd500d8: r17 = -280
    //     0xd500d8: mov             x17, #-0x118
    // 0xd500dc: str             x0, [fp, x17]
    // 0xd500e0: r0 = AllocateArray()
    //     0xd500e0: bl              #0x13df928  ; AllocateArrayStub
    // 0xd500e4: r16 = "*_"
    //     0xd500e4: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d10] "*_"
    //     0xd500e8: ldr             x16, [x16, #0xd10]
    // 0xd500ec: StoreField: r0->field_f = r16
    //     0xd500ec: stur            w16, [x0, #0xf]
    // 0xd500f0: r17 = -264
    //     0xd500f0: mov             x17, #-0x108
    // 0xd500f4: ldr             x1, [fp, x17]
    // 0xd500f8: StoreField: r0->field_13 = r1
    //     0xd500f8: stur            w1, [x0, #0x13]
    // 0xd500fc: r16 = "_Ini_Adalah_Password_#_Login_*_JWT_Username_Ku_"
    //     0xd500fc: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d18] "_Ini_Adalah_Password_#_Login_*_JWT_Username_Ku_"
    //     0xd50100: ldr             x16, [x16, #0xd18]
    // 0xd50104: ArrayStore: r0[0] = r16  ; List_4
    //     0xd50104: stur            w16, [x0, #0x17]
    // 0xd50108: r17 = -280
    //     0xd50108: mov             x17, #-0x118
    // 0xd5010c: ldr             x2, [fp, x17]
    // 0xd50110: StoreField: r0->field_1b = r2
    //     0xd50110: stur            w2, [x0, #0x1b]
    // 0xd50114: r16 = "_#"
    //     0xd50114: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d20] "_#"
    //     0xd50118: ldr             x16, [x16, #0xd20]
    // 0xd5011c: StoreField: r0->field_1f = r16
    //     0xd5011c: stur            w16, [x0, #0x1f]
    // 0xd50120: str             x0, [SP]
    // 0xd50124: r0 = _interpolate()
    //     0xd50124: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd50128: ldur            x1, [fp, #-0xd0]
    // 0xd5012c: mov             x2, x0
    // 0xd50130: r0 = _enc()
    //     0xd50130: bl              #0xd51f2c  ; [package:simaster_ugm/app/modules/attedence/data/data_source/network/attendance_network_impl.dart] AttendanceNetworkImpl::_enc
    // 0xd50134: r1 = Null
    //     0xd50134: mov             x1, NULL
    // 0xd50138: r17 = -288
    //     0xd50138: mov             x17, #-0x120
    // 0xd5013c: str             x0, [fp, x17]
    // 0xd50140: r0 = createDio()
    //     0xd50140: bl              #0x91cfc8  ; [package:dio/src/dio/dio_for_native.dart] ::createDio
    // 0xd50144: r17 = -296
    //     0xd50144: mov             x17, #-0x128
    // 0xd50148: str             x0, [fp, x17]
    // 0xd5014c: r0 = FormData()
    //     0xd5014c: bl              #0x91298c  ; AllocateFormDataStub -> FormData (size=0x20)
    // 0xd50150: r1 = Null
    //     0xd50150: mov             x1, NULL
    // 0xd50154: r2 = 8
    //     0xd50154: mov             x2, #8
    // 0xd50158: r17 = -304
    //     0xd50158: mov             x17, #-0x130
    // 0xd5015c: str             x0, [fp, x17]
    // 0xd50160: r0 = AllocateArray()
    //     0xd50160: bl              #0x13df928  ; AllocateArrayStub
    // 0xd50164: r16 = "username"
    //     0xd50164: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1b9c8] "username"
    //     0xd50168: ldr             x16, [x16, #0x9c8]
    // 0xd5016c: StoreField: r0->field_f = r16
    //     0xd5016c: stur            w16, [x0, #0xf]
    // 0xd50170: r17 = -264
    //     0xd50170: mov             x17, #-0x108
    // 0xd50174: ldr             x1, [fp, x17]
    // 0xd50178: StoreField: r0->field_13 = r1
    //     0xd50178: stur            w1, [x0, #0x13]
    // 0xd5017c: r16 = "password"
    //     0xd5017c: add             x16, PP, #0x22, lsl #12  ; [pp+0x22240] "password"
    //     0xd50180: ldr             x16, [x16, #0x240]
    // 0xd50184: ArrayStore: r0[0] = r16  ; List_4
    //     0xd50184: stur            w16, [x0, #0x17]
    // 0xd50188: r17 = -288
    //     0xd50188: mov             x17, #-0x120
    // 0xd5018c: ldr             x2, [fp, x17]
    // 0xd50190: StoreField: r0->field_1b = r2
    //     0xd50190: stur            w2, [x0, #0x1b]
    // 0xd50194: r16 = <String, dynamic>
    //     0xd50194: ldr             x16, [PP, #0x21e0]  ; [pp+0x21e0] TypeArguments: <String, dynamic>
    // 0xd50198: stp             x0, x16, [SP]
    // 0xd5019c: r0 = Map._fromLiteral()
    //     0xd5019c: bl              #0x7efee0  ; [dart:core] Map::Map._fromLiteral
    // 0xd501a0: r17 = -304
    //     0xd501a0: mov             x17, #-0x130
    // 0xd501a4: ldr             x1, [fp, x17]
    // 0xd501a8: mov             x2, x0
    // 0xd501ac: r0 = FormData.fromMap()
    //     0xd501ac: bl              #0x911e40  ; [package:dio/src/form_data.dart] FormData::FormData.fromMap
    // 0xd501b0: r0 = Options()
    //     0xd501b0: bl              #0x911e34  ; AllocateOptionsStub -> Options (size=0x50)
    // 0xd501b4: r1 = Null
    //     0xd501b4: mov             x1, NULL
    // 0xd501b8: r2 = 4
    //     0xd501b8: mov             x2, #4
    // 0xd501bc: r17 = -312
    //     0xd501bc: mov             x17, #-0x138
    // 0xd501c0: str             x0, [fp, x17]
    // 0xd501c4: r0 = AllocateArray()
    //     0xd501c4: bl              #0x13df928  ; AllocateArrayStub
    // 0xd501c8: r17 = -320
    //     0xd501c8: mov             x17, #-0x140
    // 0xd501cc: str             x0, [fp, x17]
    // 0xd501d0: r16 = "Authorization"
    //     0xd501d0: add             x16, PP, #0x16, lsl #12  ; [pp+0x16a28] "Authorization"
    //     0xd501d4: ldr             x16, [x16, #0xa28]
    // 0xd501d8: StoreField: r0->field_f = r16
    //     0xd501d8: stur            w16, [x0, #0xf]
    // 0xd501dc: r1 = Null
    //     0xd501dc: mov             x1, NULL
    // 0xd501e0: r2 = 4
    //     0xd501e0: mov             x2, #4
    // 0xd501e4: r0 = AllocateArray()
    //     0xd501e4: bl              #0x13df928  ; AllocateArrayStub
    // 0xd501e8: r17 = -328
    //     0xd501e8: mov             x17, #-0x148
    // 0xd501ec: str             x0, [fp, x17]
    // 0xd501f0: r16 = "Basic "
    //     0xd501f0: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc10] "Basic "
    //     0xd501f4: ldr             x16, [x16, #0xc10]
    // 0xd501f8: StoreField: r0->field_f = r16
    //     0xd501f8: stur            w16, [x0, #0xf]
    // 0xd501fc: r1 = Instance_Utf8Encoder
    //     0xd501fc: ldr             x1, [PP, #0x11f8]  ; [pp+0x11f8] Obj!Utf8Encoder@12b7f11
    // 0xd50200: r2 = "770525b4421773f5feb721d8e714d8c5:76a42717a48fa76d5db922f85599d23c"
    //     0xd50200: add             x2, PP, #0x83, lsl #12  ; [pp+0x83d28] "770525b4421773f5feb721d8e714d8c5:76a42717a48fa76d5db922f85599d23c"
    //     0xd50204: ldr             x2, [x2, #0xd28]
    // 0xd50208: r4 = const [0, 0x2, 0, 0x2, null]
    //     0xd50208: ldr             x4, [PP, #0xc0]  ; [pp+0xc0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0xd5020c: r0 = convert()
    //     0xd5020c: bl              #0x122268c  ; [dart:convert] Utf8Encoder::convert
    // 0xd50210: mov             x1, x0
    // 0xd50214: r0 = base64Encode()
    //     0xd50214: bl              #0x9e86bc  ; [dart:convert] ::base64Encode
    // 0xd50218: r17 = -328
    //     0xd50218: mov             x17, #-0x148
    // 0xd5021c: ldr             x1, [fp, x17]
    // 0xd50220: ArrayStore: r1[1] = r0  ; List_4
    //     0xd50220: add             x25, x1, #0x13
    //     0xd50224: str             w0, [x25]
    //     0xd50228: tbz             w0, #0, #0xd50244
    //     0xd5022c: ldurb           w16, [x1, #-1]
    //     0xd50230: ldurb           w17, [x0, #-1]
    //     0xd50234: and             x16, x17, x16, lsr #2
    //     0xd50238: tst             x16, HEAP, lsr #32
    //     0xd5023c: b.eq            #0xd50244
    //     0xd50240: bl              #0x13ddb50  ; ArrayWriteBarrierStub
    // 0xd50244: r17 = -328
    //     0xd50244: mov             x17, #-0x148
    // 0xd50248: ldr             x16, [fp, x17]
    // 0xd5024c: str             x16, [SP]
    // 0xd50250: r0 = _interpolate()
    //     0xd50250: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd50254: r17 = -320
    //     0xd50254: mov             x17, #-0x140
    // 0xd50258: ldr             x1, [fp, x17]
    // 0xd5025c: ArrayStore: r1[1] = r0  ; List_4
    //     0xd5025c: add             x25, x1, #0x13
    //     0xd50260: str             w0, [x25]
    //     0xd50264: tbz             w0, #0, #0xd50280
    //     0xd50268: ldurb           w16, [x1, #-1]
    //     0xd5026c: ldurb           w17, [x0, #-1]
    //     0xd50270: and             x16, x17, x16, lsr #2
    //     0xd50274: tst             x16, HEAP, lsr #32
    //     0xd50278: b.eq            #0xd50280
    //     0xd5027c: bl              #0x13ddb50  ; ArrayWriteBarrierStub
    // 0xd50280: r16 = <String, dynamic>
    //     0xd50280: ldr             x16, [PP, #0x21e0]  ; [pp+0x21e0] TypeArguments: <String, dynamic>
    // 0xd50284: r17 = -320
    //     0xd50284: mov             x17, #-0x140
    // 0xd50288: ldr             lr, [fp, x17]
    // 0xd5028c: stp             lr, x16, [SP]
    // 0xd50290: r0 = Map._fromLiteral()
    //     0xd50290: bl              #0x7efee0  ; [dart:core] Map::Map._fromLiteral
    // 0xd50294: r17 = -312
    //     0xd50294: mov             x17, #-0x138
    // 0xd50298: ldr             x1, [fp, x17]
    // 0xd5029c: StoreField: r1->field_b = r0
    //     0xd5029c: stur            w0, [x1, #0xb]
    //     0xd502a0: ldurb           w16, [x1, #-1]
    //     0xd502a4: ldurb           w17, [x0, #-1]
    //     0xd502a8: and             x16, x17, x16, lsr #2
    //     0xd502ac: tst             x16, HEAP, lsr #32
    //     0xd502b0: b.eq            #0xd502b8
    //     0xd502b4: bl              #0x13ddf94  ; WriteBarrierWrappersStub
    // 0xd502b8: r17 = -296
    //     0xd502b8: mov             x17, #-0x128
    // 0xd502bc: ldr             x16, [fp, x17]
    // 0xd502c0: stp             x16, NULL, [SP, #0x18]
    // 0xd502c4: r16 = "https://simaster.ugm.ac.id/presensivnext/api/signin"
    //     0xd502c4: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d30] "https://simaster.ugm.ac.id/presensivnext/api/signin"
    //     0xd502c8: ldr             x16, [x16, #0xd30]
    // 0xd502cc: r17 = -304
    //     0xd502cc: mov             x17, #-0x130
    // 0xd502d0: ldr             lr, [fp, x17]
    // 0xd502d4: stp             lr, x16, [SP, #8]
    // 0xd502d8: str             x1, [SP]
    // 0xd502dc: r4 = const [0x1, 0x4, 0x4, 0x4, null]
    //     0xd502dc: ldr             x4, [PP, #0x560]  ; [pp+0x560] List(5) [0x1, 0x4, 0x4, 0x4, Null]
    // 0xd502e0: r0 = post()
    //     0xd502e0: bl              #0xd51ea4  ; [dart:mixin_deduplication] _MixinApplication598&Object&DioMixin::post
    // 0xd502e4: mov             x1, x0
    // 0xd502e8: r17 = -320
    //     0xd502e8: mov             x17, #-0x140
    // 0xd502ec: str             x1, [fp, x17]
    // 0xd502f0: r0 = Await()
    //     0xd502f0: bl              #0x7f5c00  ; AwaitStub
    // 0xd502f4: LoadField: r2 = r0->field_b
    //     0xd502f4: ldur            w2, [x0, #0xb]
    // 0xd502f8: DecompressPointer r2
    //     0xd502f8: add             x2, x2, HEAP, lsl #32
    // 0xd502fc: stur            x2, [fp, #-0xd0]
    // 0xd50300: r0 = 60
    //     0xd50300: mov             x0, #0x3c
    // 0xd50304: branchIfSmi(r2, 0xd50310)
    //     0xd50304: tbz             w2, #0, #0xd50310
    // 0xd50308: r0 = LoadClassIdInstr(r2)
    //     0xd50308: ldur            x0, [x2, #-1]
    //     0xd5030c: ubfx            x0, x0, #0xc, #0x14
    // 0xd50310: sub             x16, x0, #0x5e
    // 0xd50314: cmp             x16, #1
    // 0xd50318: b.hi            #0xd5032c
    // 0xd5031c: mov             x1, x2
    // 0xd50320: r0 = jsonDecode()
    //     0xd50320: bl              #0x920e74  ; [dart:convert] ::jsonDecode
    // 0xd50324: mov             x3, x0
    // 0xd50328: b               #0xd50330
    // 0xd5032c: ldur            x3, [fp, #-0xd0]
    // 0xd50330: mov             x0, x3
    // 0xd50334: stur            x3, [fp, #-0xd0]
    // 0xd50338: r2 = Null
    //     0xd50338: mov             x2, NULL
    // 0xd5033c: r1 = Null
    //     0xd5033c: mov             x1, NULL
    // 0xd50340: cmp             w0, NULL
    // 0xd50344: b.eq            #0xd503dc
    // 0xd50348: branchIfSmi(r0, 0xd503dc)
    //     0xd50348: tbz             w0, #0, #0xd503dc
    // 0xd5034c: r3 = LoadClassIdInstr(r0)
    //     0xd5034c: ldur            x3, [x0, #-1]
    //     0xd50350: ubfx            x3, x3, #0xc, #0x14
    // 0xd50354: r17 = 7630
    //     0xd50354: mov             x17, #0x1dce
    // 0xd50358: cmp             x3, x17
    // 0xd5035c: b.eq            #0xd503e4
    // 0xd50360: r4 = LoadClassIdInstr(r0)
    //     0xd50360: ldur            x4, [x0, #-1]
    //     0xd50364: ubfx            x4, x4, #0xc, #0x14
    // 0xd50368: ldr             x3, [THR, #0x688]  ; THR::isolate_group
    // 0xd5036c: ldr             x3, [x3, #0x18]
    // 0xd50370: ldr             x3, [x3, x4, lsl #3]
    // 0xd50374: LoadField: r3 = r3->field_2b
    //     0xd50374: ldur            w3, [x3, #0x2b]
    // 0xd50378: DecompressPointer r3
    //     0xd50378: add             x3, x3, HEAP, lsl #32
    // 0xd5037c: cmp             w3, NULL
    // 0xd50380: b.eq            #0xd503dc
    // 0xd50384: LoadField: r3 = r3->field_f
    //     0xd50384: ldur            w3, [x3, #0xf]
    // 0xd50388: lsr             x3, x3, #3
    // 0xd5038c: r17 = 7630
    //     0xd5038c: mov             x17, #0x1dce
    // 0xd50390: cmp             x3, x17
    // 0xd50394: b.eq            #0xd503e4
    // 0xd50398: r3 = SubtypeTestCache
    //     0xd50398: add             x3, PP, #0x83, lsl #12  ; [pp+0x83d38] SubtypeTestCache
    //     0xd5039c: ldr             x3, [x3, #0xd38]
    // 0xd503a0: r30 = Subtype1TestCacheStub
    //     0xd503a0: ldr             lr, [PP, #0x350]  ; [pp+0x350] Stub: Subtype1TestCache (0x7d2fcc)
    // 0xd503a4: LoadField: r30 = r30->field_7
    //     0xd503a4: ldur            lr, [lr, #7]
    // 0xd503a8: blr             lr
    // 0xd503ac: cmp             w7, NULL
    // 0xd503b0: b.eq            #0xd503bc
    // 0xd503b4: tbnz            w7, #4, #0xd503dc
    // 0xd503b8: b               #0xd503e4
    // 0xd503bc: r8 = Map
    //     0xd503bc: add             x8, PP, #0x83, lsl #12  ; [pp+0x83d40] Type: Map
    //     0xd503c0: ldr             x8, [x8, #0xd40]
    // 0xd503c4: r3 = SubtypeTestCache
    //     0xd503c4: add             x3, PP, #0x83, lsl #12  ; [pp+0x83d48] SubtypeTestCache
    //     0xd503c8: ldr             x3, [x3, #0xd48]
    // 0xd503cc: r30 = InstanceOfStub
    //     0xd503cc: ldr             lr, [PP, #0x2f8]  ; [pp+0x2f8] Stub: InstanceOf (0x7c12f4)
    // 0xd503d0: LoadField: r30 = r30->field_7
    //     0xd503d0: ldur            lr, [lr, #7]
    // 0xd503d4: blr             lr
    // 0xd503d8: b               #0xd503e8
    // 0xd503dc: r0 = false
    //     0xd503dc: add             x0, NULL, #0x30  ; false
    // 0xd503e0: b               #0xd503e8
    // 0xd503e4: r0 = true
    //     0xd503e4: add             x0, NULL, #0x20  ; true
    // 0xd503e8: tbnz            w0, #4, #0xd50454
    // 0xd503ec: ldur            x3, [fp, #-0xd0]
    // 0xd503f0: r0 = LoadClassIdInstr(r3)
    //     0xd503f0: ldur            x0, [x3, #-1]
    //     0xd503f4: ubfx            x0, x0, #0xc, #0x14
    // 0xd503f8: mov             x1, x3
    // 0xd503fc: r2 = "token"
    //     0xd503fc: add             x2, PP, #8, lsl #12  ; [pp+0x8be8] "token"
    //     0xd50400: ldr             x2, [x2, #0xbe8]
    // 0xd50404: r0 = GDT[cid_x0 + -0xd48]()
    //     0xd50404: sub             lr, x0, #0xd48
    //     0xd50408: ldr             lr, [x21, lr, lsl #3]
    //     0xd5040c: blr             lr
    // 0xd50410: mov             x1, x0
    // 0xd50414: stur            x1, [fp, #-0xd0]
    // 0xd50418: cmp             w1, NULL
    // 0xd5041c: b.ne            #0xd50428
    // 0xd50420: r0 = Null
    //     0xd50420: mov             x0, NULL
    // 0xd50424: b               #0xd50458
    // 0xd50428: r0 = 60
    //     0xd50428: mov             x0, #0x3c
    // 0xd5042c: branchIfSmi(r1, 0xd50438)
    //     0xd5042c: tbz             w1, #0, #0xd50438
    // 0xd50430: r0 = LoadClassIdInstr(r1)
    //     0xd50430: ldur            x0, [x1, #-1]
    //     0xd50434: ubfx            x0, x0, #0xc, #0x14
    // 0xd50438: str             x1, [SP]
    // 0xd5043c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0xd5043c: ldr             x4, [PP, #0x290]  ; [pp+0x290] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0xd50440: r0 = GDT[cid_x0 + 0x91c1]()
    //     0xd50440: mov             x17, #0x91c1
    //     0xd50444: add             lr, x0, x17
    //     0xd50448: ldr             lr, [x21, lr, lsl #3]
    //     0xd5044c: blr             lr
    // 0xd50450: b               #0xd50458
    // 0xd50454: r0 = Null
    //     0xd50454: mov             x0, NULL
    // 0xd50458: stur            x0, [fp, #-0xd0]
    // 0xd5045c: cmp             w0, NULL
    // 0xd50460: b.eq            #0xd50ba0
    // 0xd50464: LoadField: r1 = r0->field_7
    //     0xd50464: ldur            w1, [x0, #7]
    // 0xd50468: cbz             w1, #0xd50ba0
    // 0xd5046c: r1 = Null
    //     0xd5046c: mov             x1, NULL
    // 0xd50470: r2 = 4
    //     0xd50470: mov             x2, #4
    // 0xd50474: r0 = AllocateArray()
    //     0xd50474: bl              #0x13df928  ; AllocateArrayStub
    // 0xd50478: r16 = "Bearer "
    //     0xd50478: add             x16, PP, #0x16, lsl #12  ; [pp+0x16a00] "Bearer "
    //     0xd5047c: ldr             x16, [x16, #0xa00]
    // 0xd50480: StoreField: r0->field_f = r16
    //     0xd50480: stur            w16, [x0, #0xf]
    // 0xd50484: ldur            x1, [fp, #-0xd0]
    // 0xd50488: StoreField: r0->field_13 = r1
    //     0xd50488: stur            w1, [x0, #0x13]
    // 0xd5048c: str             x0, [SP]
    // 0xd50490: r0 = _interpolate()
    //     0xd50490: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd50494: stur            x0, [fp, #-0xd0]
    // 0xd50498: ldur            x3, [fp, #-0xd8]
    // 0xd5049c: ldur            x5, [fp, #-0xe8]
    // 0xd504a0: ldur            x4, [fp, #-0xf0]
    // 0xd504a4: ldur            x6, [fp, #-0xe0]
    // 0xd504a8: r1 = Null
    //     0xd504a8: mov             x1, NULL
    // 0xd504ac: r2 = 8
    //     0xd504ac: mov             x2, #8
    // 0xd504b0: r0 = AllocateArray()
    //     0xd504b0: bl              #0x13df928  ; AllocateArrayStub
    // 0xd504b4: r16 = "[PRES_NEW] QR Code: "
    //     0xd504b4: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d50] "[PRES_NEW] QR Code: "
    //     0xd504b8: ldr             x16, [x16, #0xd50]
    // 0xd504bc: StoreField: r0->field_f = r16
    //     0xd504bc: stur            w16, [x0, #0xf]
    // 0xd504c0: ldur            x1, [fp, #-0xe8]
    // 0xd504c4: StoreField: r0->field_13 = r1
    //     0xd504c4: stur            w1, [x0, #0x13]
    // 0xd504c8: r16 = ", Length: "
    //     0xd504c8: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d58] ", Length: "
    //     0xd504cc: ldr             x16, [x16, #0xd58]
    // 0xd504d0: ArrayStore: r0[0] = r16  ; List_4
    //     0xd504d0: stur            w16, [x0, #0x17]
    // 0xd504d4: ldur            x2, [fp, #-0xe0]
    // 0xd504d8: StoreField: r0->field_1b = r2
    //     0xd504d8: stur            w2, [x0, #0x1b]
    // 0xd504dc: str             x0, [SP]
    // 0xd504e0: r0 = _interpolate()
    //     0xd504e0: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd504e4: r1 = Null
    //     0xd504e4: mov             x1, NULL
    // 0xd504e8: r2 = 40
    //     0xd504e8: mov             x2, #0x28
    // 0xd504ec: stur            x0, [fp, #-0xe0]
    // 0xd504f0: r0 = AllocateArray()
    //     0xd504f0: bl              #0x13df928  ; AllocateArrayStub
    // 0xd504f4: r17 = -264
    //     0xd504f4: mov             x17, #-0x108
    // 0xd504f8: str             x0, [fp, x17]
    // 0xd504fc: r16 = "jenis_id"
    //     0xd504fc: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d60] "jenis_id"
    //     0xd50500: ldr             x16, [x16, #0xd60]
    // 0xd50504: StoreField: r0->field_f = r16
    //     0xd50504: stur            w16, [x0, #0xf]
    // 0xd50508: r16 = "2"
    //     0xd50508: add             x16, PP, #0x17, lsl #12  ; [pp+0x17ed8] "2"
    //     0xd5050c: ldr             x16, [x16, #0xed8]
    // 0xd50510: StoreField: r0->field_13 = r16
    //     0xd50510: stur            w16, [x0, #0x13]
    // 0xd50514: r16 = "qr_peserta"
    //     0xd50514: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d68] "qr_peserta"
    //     0xd50518: ldr             x16, [x16, #0xd68]
    // 0xd5051c: ArrayStore: r0[0] = r16  ; List_4
    //     0xd5051c: stur            w16, [x0, #0x17]
    // 0xd50520: ldur            x1, [fp, #-0xe8]
    // 0xd50524: StoreField: r0->field_1b = r1
    //     0xd50524: stur            w1, [x0, #0x1b]
    // 0xd50528: r16 = "device_id"
    //     0xd50528: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d70] "device_id"
    //     0xd5052c: ldr             x16, [x16, #0xd70]
    // 0xd50530: StoreField: r0->field_1f = r16
    //     0xd50530: stur            w16, [x0, #0x1f]
    // 0xd50534: ldur            x1, [fp, #-0xf0]
    // 0xd50538: StoreField: r0->field_23 = r1
    //     0xd50538: stur            w1, [x0, #0x23]
    // 0xd5053c: r16 = "username"
    //     0xd5053c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1b9c8] "username"
    //     0xd50540: ldr             x16, [x16, #0x9c8]
    // 0xd50544: StoreField: r0->field_27 = r16
    //     0xd50544: stur            w16, [x0, #0x27]
    // 0xd50548: ldur            x2, [fp, #-0xd8]
    // 0xd5054c: LoadField: r3 = r2->field_1f
    //     0xd5054c: ldur            w3, [x2, #0x1f]
    // 0xd50550: DecompressPointer r3
    //     0xd50550: add             x3, x3, HEAP, lsl #32
    // 0xd50554: StoreField: r0->field_2b = r3
    //     0xd50554: stur            w3, [x0, #0x2b]
    // 0xd50558: r16 = "identitas_id"
    //     0xd50558: add             x16, PP, #0x18, lsl #12  ; [pp+0x18638] "identitas_id"
    //     0xd5055c: ldr             x16, [x16, #0x638]
    // 0xd50560: StoreField: r0->field_2f = r16
    //     0xd50560: stur            w16, [x0, #0x2f]
    // 0xd50564: LoadField: r3 = r2->field_1b
    //     0xd50564: ldur            w3, [x2, #0x1b]
    // 0xd50568: DecompressPointer r3
    //     0xd50568: add             x3, x3, HEAP, lsl #32
    // 0xd5056c: StoreField: r0->field_33 = r3
    //     0xd5056c: stur            w3, [x0, #0x33]
    // 0xd50570: r16 = "user_tipe_nomor"
    //     0xd50570: add             x16, PP, #0x18, lsl #12  ; [pp+0x187c8] "user_tipe_nomor"
    //     0xd50574: ldr             x16, [x16, #0x7c8]
    // 0xd50578: StoreField: r0->field_37 = r16
    //     0xd50578: stur            w16, [x0, #0x37]
    // 0xd5057c: ArrayLoad: r3 = r2[0]  ; List_4
    //     0xd5057c: ldur            w3, [x2, #0x17]
    // 0xd50580: DecompressPointer r3
    //     0xd50580: add             x3, x3, HEAP, lsl #32
    // 0xd50584: StoreField: r0->field_3b = r3
    //     0xd50584: stur            w3, [x0, #0x3b]
    // 0xd50588: r16 = "user_nama"
    //     0xd50588: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d78] "user_nama"
    //     0xd5058c: ldr             x16, [x16, #0xd78]
    // 0xd50590: StoreField: r0->field_3f = r16
    //     0xd50590: stur            w16, [x0, #0x3f]
    // 0xd50594: LoadField: r3 = r2->field_23
    //     0xd50594: ldur            w3, [x2, #0x23]
    // 0xd50598: DecompressPointer r3
    //     0xd50598: add             x3, x3, HEAP, lsl #32
    // 0xd5059c: StoreField: r0->field_43 = r3
    //     0xd5059c: stur            w3, [x0, #0x43]
    // 0xd505a0: r16 = "lat"
    //     0xd505a0: add             x16, PP, #0x27, lsl #12  ; [pp+0x27fe8] "lat"
    //     0xd505a4: ldr             x16, [x16, #0xfe8]
    // 0xd505a8: StoreField: r0->field_47 = r16
    //     0xd505a8: stur            w16, [x0, #0x47]
    // 0xd505ac: LoadField: r3 = r2->field_b
    //     0xd505ac: ldur            w3, [x2, #0xb]
    // 0xd505b0: DecompressPointer r3
    //     0xd505b0: add             x3, x3, HEAP, lsl #32
    // 0xd505b4: StoreField: r0->field_4b = r3
    //     0xd505b4: stur            w3, [x0, #0x4b]
    // 0xd505b8: r16 = "lon"
    //     0xd505b8: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d80] "lon"
    //     0xd505bc: ldr             x16, [x16, #0xd80]
    // 0xd505c0: StoreField: r0->field_4f = r16
    //     0xd505c0: stur            w16, [x0, #0x4f]
    // 0xd505c4: LoadField: r3 = r2->field_f
    //     0xd505c4: ldur            w3, [x2, #0xf]
    // 0xd505c8: DecompressPointer r3
    //     0xd505c8: add             x3, x3, HEAP, lsl #32
    // 0xd505cc: StoreField: r0->field_53 = r3
    //     0xd505cc: stur            w3, [x0, #0x53]
    // 0xd505d0: r16 = "tgl_hp"
    //     0xd505d0: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d88] "tgl_hp"
    //     0xd505d4: ldr             x16, [x16, #0xd88]
    // 0xd505d8: StoreField: r0->field_57 = r16
    //     0xd505d8: stur            w16, [x0, #0x57]
    // 0xd505dc: r0 = DateTime()
    //     0xd505dc: bl              #0x8174b8  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0xd505e0: mov             x1, x0
    // 0xd505e4: r0 = false
    //     0xd505e4: add             x0, NULL, #0x30  ; false
    // 0xd505e8: stur            x1, [fp, #-0xe8]
    // 0xd505ec: StoreField: r1->field_7 = r0
    //     0xd505ec: stur            w0, [x1, #7]
    // 0xd505f0: r0 = _getCurrentMicros()
    //     0xd505f0: bl              #0x89fe10  ; [dart:core] DateTime::_getCurrentMicros
    // 0xd505f4: r1 = LoadInt32Instr(r0)
    //     0xd505f4: sbfx            x1, x0, #1, #0x1f
    //     0xd505f8: tbz             w0, #0, #0xd50600
    //     0xd505fc: ldur            x1, [x0, #7]
    // 0xd50600: ldur            x0, [fp, #-0xe8]
    // 0xd50604: StoreField: r0->field_b = r1
    //     0xd50604: stur            x1, [x0, #0xb]
    // 0xd50608: mov             x1, x0
    // 0xd5060c: r0 = toIso8601String()
    //     0xd5060c: bl              #0xd515a0  ; [dart:core] DateTime::toIso8601String
    // 0xd50610: r17 = -264
    //     0xd50610: mov             x17, #-0x108
    // 0xd50614: ldr             x1, [fp, x17]
    // 0xd50618: ArrayStore: r1[19] = r0  ; List_4
    //     0xd50618: add             x25, x1, #0x5b
    //     0xd5061c: str             w0, [x25]
    //     0xd50620: tbz             w0, #0, #0xd5063c
    //     0xd50624: ldurb           w16, [x1, #-1]
    //     0xd50628: ldurb           w17, [x0, #-1]
    //     0xd5062c: and             x16, x17, x16, lsr #2
    //     0xd50630: tst             x16, HEAP, lsr #32
    //     0xd50634: b.eq            #0xd5063c
    //     0xd50638: bl              #0x13ddb50  ; ArrayWriteBarrierStub
    // 0xd5063c: r16 = <String, String>
    //     0xd5063c: ldr             x16, [PP, #0x7c88]  ; [pp+0x7c88] TypeArguments: <String, String>
    // 0xd50640: r17 = -264
    //     0xd50640: mov             x17, #-0x108
    // 0xd50644: ldr             lr, [fp, x17]
    // 0xd50648: stp             lr, x16, [SP]
    // 0xd5064c: r0 = Map._fromLiteral()
    //     0xd5064c: bl              #0x7efee0  ; [dart:core] Map::Map._fromLiteral
    // 0xd50650: r1 = Null
    //     0xd50650: mov             x1, NULL
    // 0xd50654: r2 = 4
    //     0xd50654: mov             x2, #4
    // 0xd50658: stur            x0, [fp, #-0xe8]
    // 0xd5065c: r0 = AllocateArray()
    //     0xd5065c: bl              #0x13df928  ; AllocateArrayStub
    // 0xd50660: r16 = "[PRES_NEW] ini adalah payload send2 scan peserta: "
    //     0xd50660: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d90] "[PRES_NEW] ini adalah payload send2 scan peserta: "
    //     0xd50664: ldr             x16, [x16, #0xd90]
    // 0xd50668: StoreField: r0->field_f = r16
    //     0xd50668: stur            w16, [x0, #0xf]
    // 0xd5066c: ldur            x2, [fp, #-0xe8]
    // 0xd50670: StoreField: r0->field_13 = r2
    //     0xd50670: stur            w2, [x0, #0x13]
    // 0xd50674: str             x0, [SP]
    // 0xd50678: r0 = _interpolate()
    //     0xd50678: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd5067c: r1 = Null
    //     0xd5067c: mov             x1, NULL
    // 0xd50680: stur            x0, [fp, #-0xe0]
    // 0xd50684: r0 = createDio()
    //     0xd50684: bl              #0x91cfc8  ; [package:dio/src/dio/dio_for_native.dart] ::createDio
    // 0xd50688: stur            x0, [fp, #-0xe0]
    // 0xd5068c: r0 = FormData()
    //     0xd5068c: bl              #0x91298c  ; AllocateFormDataStub -> FormData (size=0x20)
    // 0xd50690: mov             x1, x0
    // 0xd50694: ldur            x2, [fp, #-0xe8]
    // 0xd50698: r17 = -264
    //     0xd50698: mov             x17, #-0x108
    // 0xd5069c: str             x0, [fp, x17]
    // 0xd506a0: r0 = FormData.fromMap()
    //     0xd506a0: bl              #0x911e40  ; [package:dio/src/form_data.dart] FormData::FormData.fromMap
    // 0xd506a4: r0 = Options()
    //     0xd506a4: bl              #0x911e34  ; AllocateOptionsStub -> Options (size=0x50)
    // 0xd506a8: r1 = Null
    //     0xd506a8: mov             x1, NULL
    // 0xd506ac: r2 = 4
    //     0xd506ac: mov             x2, #4
    // 0xd506b0: r17 = -272
    //     0xd506b0: mov             x17, #-0x110
    // 0xd506b4: str             x0, [fp, x17]
    // 0xd506b8: r0 = AllocateArray()
    //     0xd506b8: bl              #0x13df928  ; AllocateArrayStub
    // 0xd506bc: r16 = "Authorization"
    //     0xd506bc: add             x16, PP, #0x16, lsl #12  ; [pp+0x16a28] "Authorization"
    //     0xd506c0: ldr             x16, [x16, #0xa28]
    // 0xd506c4: StoreField: r0->field_f = r16
    //     0xd506c4: stur            w16, [x0, #0xf]
    // 0xd506c8: ldur            x1, [fp, #-0xd0]
    // 0xd506cc: StoreField: r0->field_13 = r1
    //     0xd506cc: stur            w1, [x0, #0x13]
    // 0xd506d0: r16 = <String, dynamic>
    //     0xd506d0: ldr             x16, [PP, #0x21e0]  ; [pp+0x21e0] TypeArguments: <String, dynamic>
    // 0xd506d4: stp             x0, x16, [SP]
    // 0xd506d8: r0 = Map._fromLiteral()
    //     0xd506d8: bl              #0x7efee0  ; [dart:core] Map::Map._fromLiteral
    // 0xd506dc: r17 = -272
    //     0xd506dc: mov             x17, #-0x110
    // 0xd506e0: ldr             x1, [fp, x17]
    // 0xd506e4: StoreField: r1->field_b = r0
    //     0xd506e4: stur            w0, [x1, #0xb]
    //     0xd506e8: ldurb           w16, [x1, #-1]
    //     0xd506ec: ldurb           w17, [x0, #-1]
    //     0xd506f0: and             x16, x17, x16, lsr #2
    //     0xd506f4: tst             x16, HEAP, lsr #32
    //     0xd506f8: b.eq            #0xd50700
    //     0xd506fc: bl              #0x13ddf94  ; WriteBarrierWrappersStub
    // 0xd50700: ldur            x16, [fp, #-0xe0]
    // 0xd50704: stp             x16, NULL, [SP, #0x18]
    // 0xd50708: r16 = "https://simaster.ugm.ac.id/presensivnext/api/send_peserta"
    //     0xd50708: add             x16, PP, #0x83, lsl #12  ; [pp+0x83d98] "https://simaster.ugm.ac.id/presensivnext/api/send_peserta"
    //     0xd5070c: ldr             x16, [x16, #0xd98]
    // 0xd50710: r17 = -264
    //     0xd50710: mov             x17, #-0x108
    // 0xd50714: ldr             lr, [fp, x17]
    // 0xd50718: stp             lr, x16, [SP, #8]
    // 0xd5071c: str             x1, [SP]
    // 0xd50720: r4 = const [0x1, 0x4, 0x4, 0x4, null]
    //     0xd50720: ldr             x4, [PP, #0x560]  ; [pp+0x560] List(5) [0x1, 0x4, 0x4, 0x4, Null]
    // 0xd50724: r0 = post()
    //     0xd50724: bl              #0xd51ea4  ; [dart:mixin_deduplication] _MixinApplication598&Object&DioMixin::post
    // 0xd50728: mov             x1, x0
    // 0xd5072c: r17 = -280
    //     0xd5072c: mov             x17, #-0x118
    // 0xd50730: str             x1, [fp, x17]
    // 0xd50734: r0 = Await()
    //     0xd50734: bl              #0x7f5c00  ; AwaitStub
    // 0xd50738: LoadField: r2 = r0->field_b
    //     0xd50738: ldur            w2, [x0, #0xb]
    // 0xd5073c: DecompressPointer r2
    //     0xd5073c: add             x2, x2, HEAP, lsl #32
    // 0xd50740: stur            x2, [fp, #-0xd0]
    // 0xd50744: r0 = 60
    //     0xd50744: mov             x0, #0x3c
    // 0xd50748: branchIfSmi(r2, 0xd50754)
    //     0xd50748: tbz             w2, #0, #0xd50754
    // 0xd5074c: r0 = LoadClassIdInstr(r2)
    //     0xd5074c: ldur            x0, [x2, #-1]
    //     0xd50750: ubfx            x0, x0, #0xc, #0x14
    // 0xd50754: sub             x16, x0, #0x5e
    // 0xd50758: cmp             x16, #1
    // 0xd5075c: b.hi            #0xd507cc
    // 0xd50760: mov             x1, x2
    // 0xd50764: r0 = jsonDecode()
    //     0xd50764: bl              #0x920e74  ; [dart:convert] ::jsonDecode
    // 0xd50768: ldur            x2, [fp, #-0xf8]
    // 0xd5076c: ldur            x1, [fp, #-0x100]
    // 0xd50770: b               #0xd507bc
    // 0xd50774: sub             SP, fp, #0x170
    // 0xd50778: mov             x3, x0
    // 0xd5077c: stur            x0, [fp, #-0xe0]
    // 0xd50780: mov             x0, x1
    // 0xd50784: stur            x1, [fp, #-0xe8]
    // 0xd50788: r1 = Null
    //     0xd50788: mov             x1, NULL
    // 0xd5078c: r2 = 4
    //     0xd5078c: mov             x2, #4
    // 0xd50790: r0 = AllocateArray()
    //     0xd50790: bl              #0x13df928  ; AllocateArrayStub
    // 0xd50794: r16 = "[PRES_NEW] Failed to decode JSON response: "
    //     0xd50794: add             x16, PP, #0x83, lsl #12  ; [pp+0x83da0] "[PRES_NEW] Failed to decode JSON response: "
    //     0xd50798: ldr             x16, [x16, #0xda0]
    // 0xd5079c: StoreField: r0->field_f = r16
    //     0xd5079c: stur            w16, [x0, #0xf]
    // 0xd507a0: ldur            x1, [fp, #-0xe0]
    // 0xd507a4: StoreField: r0->field_13 = r1
    //     0xd507a4: stur            w1, [x0, #0x13]
    // 0xd507a8: str             x0, [SP]
    // 0xd507ac: r0 = _interpolate()
    //     0xd507ac: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd507b0: ldur            x2, [fp, #-0xe0]
    // 0xd507b4: ldur            x1, [fp, #-0xe8]
    // 0xd507b8: ldur            x0, [fp, #-0xd0]
    // 0xd507bc: mov             x5, x2
    // 0xd507c0: mov             x4, x1
    // 0xd507c4: mov             x3, x0
    // 0xd507c8: b               #0xd507d8
    // 0xd507cc: ldur            x5, [fp, #-0xf8]
    // 0xd507d0: ldur            x4, [fp, #-0x100]
    // 0xd507d4: ldur            x3, [fp, #-0xd0]
    // 0xd507d8: stur            x5, [fp, #-0xd0]
    // 0xd507dc: stur            x4, [fp, #-0xe0]
    // 0xd507e0: stur            x3, [fp, #-0xe8]
    // 0xd507e4: cmp             w3, NULL
    // 0xd507e8: b.eq            #0xd5098c
    // 0xd507ec: mov             x0, x3
    // 0xd507f0: r2 = Null
    //     0xd507f0: mov             x2, NULL
    // 0xd507f4: r1 = Null
    //     0xd507f4: mov             x1, NULL
    // 0xd507f8: cmp             w0, NULL
    // 0xd507fc: b.eq            #0xd50894
    // 0xd50800: branchIfSmi(r0, 0xd50894)
    //     0xd50800: tbz             w0, #0, #0xd50894
    // 0xd50804: r3 = LoadClassIdInstr(r0)
    //     0xd50804: ldur            x3, [x0, #-1]
    //     0xd50808: ubfx            x3, x3, #0xc, #0x14
    // 0xd5080c: r17 = 7630
    //     0xd5080c: mov             x17, #0x1dce
    // 0xd50810: cmp             x3, x17
    // 0xd50814: b.eq            #0xd5089c
    // 0xd50818: r4 = LoadClassIdInstr(r0)
    //     0xd50818: ldur            x4, [x0, #-1]
    //     0xd5081c: ubfx            x4, x4, #0xc, #0x14
    // 0xd50820: ldr             x3, [THR, #0x688]  ; THR::isolate_group
    // 0xd50824: ldr             x3, [x3, #0x18]
    // 0xd50828: ldr             x3, [x3, x4, lsl #3]
    // 0xd5082c: LoadField: r3 = r3->field_2b
    //     0xd5082c: ldur            w3, [x3, #0x2b]
    // 0xd50830: DecompressPointer r3
    //     0xd50830: add             x3, x3, HEAP, lsl #32
    // 0xd50834: cmp             w3, NULL
    // 0xd50838: b.eq            #0xd50894
    // 0xd5083c: LoadField: r3 = r3->field_f
    //     0xd5083c: ldur            w3, [x3, #0xf]
    // 0xd50840: lsr             x3, x3, #3
    // 0xd50844: r17 = 7630
    //     0xd50844: mov             x17, #0x1dce
    // 0xd50848: cmp             x3, x17
    // 0xd5084c: b.eq            #0xd5089c
    // 0xd50850: r3 = SubtypeTestCache
    //     0xd50850: add             x3, PP, #0x83, lsl #12  ; [pp+0x83da8] SubtypeTestCache
    //     0xd50854: ldr             x3, [x3, #0xda8]
    // 0xd50858: r30 = Subtype1TestCacheStub
    //     0xd50858: ldr             lr, [PP, #0x350]  ; [pp+0x350] Stub: Subtype1TestCache (0x7d2fcc)
    // 0xd5085c: LoadField: r30 = r30->field_7
    //     0xd5085c: ldur            lr, [lr, #7]
    // 0xd50860: blr             lr
    // 0xd50864: cmp             w7, NULL
    // 0xd50868: b.eq            #0xd50874
    // 0xd5086c: tbnz            w7, #4, #0xd50894
    // 0xd50870: b               #0xd5089c
    // 0xd50874: r8 = Map
    //     0xd50874: add             x8, PP, #0x83, lsl #12  ; [pp+0x83db0] Type: Map
    //     0xd50878: ldr             x8, [x8, #0xdb0]
    // 0xd5087c: r3 = SubtypeTestCache
    //     0xd5087c: add             x3, PP, #0x83, lsl #12  ; [pp+0x83db8] SubtypeTestCache
    //     0xd50880: ldr             x3, [x3, #0xdb8]
    // 0xd50884: r30 = InstanceOfStub
    //     0xd50884: ldr             lr, [PP, #0x2f8]  ; [pp+0x2f8] Stub: InstanceOf (0x7c12f4)
    // 0xd50888: LoadField: r30 = r30->field_7
    //     0xd50888: ldur            lr, [lr, #7]
    // 0xd5088c: blr             lr
    // 0xd50890: b               #0xd508a0
    // 0xd50894: r0 = false
    //     0xd50894: add             x0, NULL, #0x30  ; false
    // 0xd50898: b               #0xd508a0
    // 0xd5089c: r0 = true
    //     0xd5089c: add             x0, NULL, #0x20  ; true
    // 0xd508a0: tbnz            w0, #4, #0xd5098c
    // 0xd508a4: ldur            x3, [fp, #-0xe8]
    // 0xd508a8: r0 = LoadClassIdInstr(r3)
    //     0xd508a8: ldur            x0, [x3, #-1]
    //     0xd508ac: ubfx            x0, x0, #0xc, #0x14
    // 0xd508b0: mov             x1, x3
    // 0xd508b4: r2 = "status"
    //     0xd508b4: add             x2, PP, #0x17, lsl #12  ; [pp+0x171a8] "status"
    //     0xd508b8: ldr             x2, [x2, #0x1a8]
    // 0xd508bc: r0 = GDT[cid_x0 + -0xd48]()
    //     0xd508bc: sub             lr, x0, #0xd48
    //     0xd508c0: ldr             lr, [x21, lr, lsl #3]
    //     0xd508c4: blr             lr
    // 0xd508c8: mov             x1, x0
    // 0xd508cc: stur            x1, [fp, #-0xf0]
    // 0xd508d0: cmp             w1, NULL
    // 0xd508d4: b.ne            #0xd508e0
    // 0xd508d8: r1 = Null
    //     0xd508d8: mov             x1, NULL
    // 0xd508dc: b               #0xd5090c
    // 0xd508e0: r0 = 60
    //     0xd508e0: mov             x0, #0x3c
    // 0xd508e4: branchIfSmi(r1, 0xd508f0)
    //     0xd508e4: tbz             w1, #0, #0xd508f0
    // 0xd508e8: r0 = LoadClassIdInstr(r1)
    //     0xd508e8: ldur            x0, [x1, #-1]
    //     0xd508ec: ubfx            x0, x0, #0xc, #0x14
    // 0xd508f0: str             x1, [SP]
    // 0xd508f4: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0xd508f4: ldr             x4, [PP, #0x290]  ; [pp+0x290] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0xd508f8: r0 = GDT[cid_x0 + 0x91c1]()
    //     0xd508f8: mov             x17, #0x91c1
    //     0xd508fc: add             lr, x0, x17
    //     0xd50900: ldr             lr, [x21, lr, lsl #3]
    //     0xd50904: blr             lr
    // 0xd50908: mov             x1, x0
    // 0xd5090c: stur            x1, [fp, #-0xf0]
    // 0xd50910: r0 = LoadClassIdInstr(r1)
    //     0xd50910: ldur            x0, [x1, #-1]
    //     0xd50914: ubfx            x0, x0, #0xc, #0x14
    // 0xd50918: r16 = "1"
    //     0xd50918: add             x16, PP, #0x15, lsl #12  ; [pp+0x15bc8] "1"
    //     0xd5091c: ldr             x16, [x16, #0xbc8]
    // 0xd50920: stp             x16, x1, [SP]
    // 0xd50924: mov             lr, x0
    // 0xd50928: ldr             lr, [x21, lr, lsl #3]
    // 0xd5092c: blr             lr
    // 0xd50930: tbnz            w0, #4, #0xd5098c
    // 0xd50934: ldur            x0, [fp, #-0xe8]
    // 0xd50938: r1 = Null
    //     0xd50938: mov             x1, NULL
    // 0xd5093c: r2 = 4
    //     0xd5093c: mov             x2, #4
    // 0xd50940: r0 = AllocateArray()
    //     0xd50940: bl              #0x13df928  ; AllocateArrayStub
    // 0xd50944: r16 = "[PRES_NEW] send2: SUCCESS -> "
    //     0xd50944: add             x16, PP, #0x83, lsl #12  ; [pp+0x83dc0] "[PRES_NEW] send2: SUCCESS -> "
    //     0xd50948: ldr             x16, [x16, #0xdc0]
    // 0xd5094c: StoreField: r0->field_f = r16
    //     0xd5094c: stur            w16, [x0, #0xf]
    // 0xd50950: ldur            x1, [fp, #-0xe8]
    // 0xd50954: StoreField: r0->field_13 = r1
    //     0xd50954: stur            w1, [x0, #0x13]
    // 0xd50958: str             x0, [SP]
    // 0xd5095c: r0 = _interpolate()
    //     0xd5095c: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd50960: mov             x3, x0
    // 0xd50964: ldur            x0, [fp, #-0xe8]
    // 0xd50968: r2 = Null
    //     0xd50968: mov             x2, NULL
    // 0xd5096c: r1 = Null
    //     0xd5096c: mov             x1, NULL
    // 0xd50970: stur            x3, [fp, #-0xf0]
    // 0xd50974: r8 = Map<String, dynamic>
    //     0xd50974: ldr             x8, [PP, #0x3298]  ; [pp+0x3298] Type: Map<String, dynamic>
    // 0xd50978: r3 = Null
    //     0xd50978: add             x3, PP, #0x83, lsl #12  ; [pp+0x83dc8] Null
    //     0xd5097c: ldr             x3, [x3, #0xdc8]
    // 0xd50980: r0 = Map<String, dynamic>()
    //     0xd50980: bl              #0x84f9a4  ; IsType_Map<String, dynamic>_Stub
    // 0xd50984: ldur            x0, [fp, #-0xe8]
    // 0xd50988: r0 = ReturnAsyncNotFuture()
    //     0xd50988: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0xd5098c: ldur            x0, [fp, #-0xe8]
    // 0xd50990: r1 = Null
    //     0xd50990: mov             x1, NULL
    // 0xd50994: r2 = 4
    //     0xd50994: mov             x2, #4
    // 0xd50998: r0 = AllocateArray()
    //     0xd50998: bl              #0x13df928  ; AllocateArrayStub
    // 0xd5099c: r16 = "[PRES_NEW] send2: FAILED -> "
    //     0xd5099c: add             x16, PP, #0x83, lsl #12  ; [pp+0x83dd8] "[PRES_NEW] send2: FAILED -> "
    //     0xd509a0: ldr             x16, [x16, #0xdd8]
    // 0xd509a4: StoreField: r0->field_f = r16
    //     0xd509a4: stur            w16, [x0, #0xf]
    // 0xd509a8: ldur            x1, [fp, #-0xe8]
    // 0xd509ac: StoreField: r0->field_13 = r1
    //     0xd509ac: stur            w1, [x0, #0x13]
    // 0xd509b0: str             x0, [SP]
    // 0xd509b4: r0 = _interpolate()
    //     0xd509b4: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd509b8: mov             x3, x0
    // 0xd509bc: ldur            x0, [fp, #-0xe8]
    // 0xd509c0: r2 = Null
    //     0xd509c0: mov             x2, NULL
    // 0xd509c4: r1 = Null
    //     0xd509c4: mov             x1, NULL
    // 0xd509c8: stur            x3, [fp, #-0xf0]
    // 0xd509cc: cmp             w0, NULL
    // 0xd509d0: b.eq            #0xd50a68
    // 0xd509d4: branchIfSmi(r0, 0xd50a68)
    //     0xd509d4: tbz             w0, #0, #0xd50a68
    // 0xd509d8: r3 = LoadClassIdInstr(r0)
    //     0xd509d8: ldur            x3, [x0, #-1]
    //     0xd509dc: ubfx            x3, x3, #0xc, #0x14
    // 0xd509e0: r17 = 7630
    //     0xd509e0: mov             x17, #0x1dce
    // 0xd509e4: cmp             x3, x17
    // 0xd509e8: b.eq            #0xd50a70
    // 0xd509ec: r4 = LoadClassIdInstr(r0)
    //     0xd509ec: ldur            x4, [x0, #-1]
    //     0xd509f0: ubfx            x4, x4, #0xc, #0x14
    // 0xd509f4: ldr             x3, [THR, #0x688]  ; THR::isolate_group
    // 0xd509f8: ldr             x3, [x3, #0x18]
    // 0xd509fc: ldr             x3, [x3, x4, lsl #3]
    // 0xd50a00: LoadField: r3 = r3->field_2b
    //     0xd50a00: ldur            w3, [x3, #0x2b]
    // 0xd50a04: DecompressPointer r3
    //     0xd50a04: add             x3, x3, HEAP, lsl #32
    // 0xd50a08: cmp             w3, NULL
    // 0xd50a0c: b.eq            #0xd50a68
    // 0xd50a10: LoadField: r3 = r3->field_f
    //     0xd50a10: ldur            w3, [x3, #0xf]
    // 0xd50a14: lsr             x3, x3, #3
    // 0xd50a18: r17 = 7630
    //     0xd50a18: mov             x17, #0x1dce
    // 0xd50a1c: cmp             x3, x17
    // 0xd50a20: b.eq            #0xd50a70
    // 0xd50a24: r3 = SubtypeTestCache
    //     0xd50a24: add             x3, PP, #0x83, lsl #12  ; [pp+0x83de0] SubtypeTestCache
    //     0xd50a28: ldr             x3, [x3, #0xde0]
    // 0xd50a2c: r30 = Subtype1TestCacheStub
    //     0xd50a2c: ldr             lr, [PP, #0x350]  ; [pp+0x350] Stub: Subtype1TestCache (0x7d2fcc)
    // 0xd50a30: LoadField: r30 = r30->field_7
    //     0xd50a30: ldur            lr, [lr, #7]
    // 0xd50a34: blr             lr
    // 0xd50a38: cmp             w7, NULL
    // 0xd50a3c: b.eq            #0xd50a48
    // 0xd50a40: tbnz            w7, #4, #0xd50a68
    // 0xd50a44: b               #0xd50a70
    // 0xd50a48: r8 = Map
    //     0xd50a48: add             x8, PP, #0x83, lsl #12  ; [pp+0x83de8] Type: Map
    //     0xd50a4c: ldr             x8, [x8, #0xde8]
    // 0xd50a50: r3 = SubtypeTestCache
    //     0xd50a50: add             x3, PP, #0x83, lsl #12  ; [pp+0x83df0] SubtypeTestCache
    //     0xd50a54: ldr             x3, [x3, #0xdf0]
    // 0xd50a58: r30 = InstanceOfStub
    //     0xd50a58: ldr             lr, [PP, #0x2f8]  ; [pp+0x2f8] Stub: InstanceOf (0x7c12f4)
    // 0xd50a5c: LoadField: r30 = r30->field_7
    //     0xd50a5c: ldur            lr, [lr, #7]
    // 0xd50a60: blr             lr
    // 0xd50a64: b               #0xd50a74
    // 0xd50a68: r0 = false
    //     0xd50a68: add             x0, NULL, #0x30  ; false
    // 0xd50a6c: b               #0xd50a74
    // 0xd50a70: r0 = true
    //     0xd50a70: add             x0, NULL, #0x20  ; true
    // 0xd50a74: tbnz            w0, #4, #0xd50a9c
    // 0xd50a78: ldur            x0, [fp, #-0xe8]
    // 0xd50a7c: r2 = Null
    //     0xd50a7c: mov             x2, NULL
    // 0xd50a80: r1 = Null
    //     0xd50a80: mov             x1, NULL
    // 0xd50a84: r8 = Map<String, dynamic>
    //     0xd50a84: ldr             x8, [PP, #0x3298]  ; [pp+0x3298] Type: Map<String, dynamic>
    // 0xd50a88: r3 = Null
    //     0xd50a88: add             x3, PP, #0x83, lsl #12  ; [pp+0x83df8] Null
    //     0xd50a8c: ldr             x3, [x3, #0xdf8]
    // 0xd50a90: r0 = Map<String, dynamic>()
    //     0xd50a90: bl              #0x84f9a4  ; IsType_Map<String, dynamic>_Stub
    // 0xd50a94: ldur            x0, [fp, #-0xe8]
    // 0xd50a98: b               #0xd50ad8
    // 0xd50a9c: r1 = Null
    //     0xd50a9c: mov             x1, NULL
    // 0xd50aa0: r2 = 8
    //     0xd50aa0: mov             x2, #8
    // 0xd50aa4: r0 = AllocateArray()
    //     0xd50aa4: bl              #0x13df928  ; AllocateArrayStub
    // 0xd50aa8: r16 = "status"
    //     0xd50aa8: add             x16, PP, #0x17, lsl #12  ; [pp+0x171a8] "status"
    //     0xd50aac: ldr             x16, [x16, #0x1a8]
    // 0xd50ab0: StoreField: r0->field_f = r16
    //     0xd50ab0: stur            w16, [x0, #0xf]
    // 0xd50ab4: StoreField: r0->field_13 = rZR
    //     0xd50ab4: stur            wzr, [x0, #0x13]
    // 0xd50ab8: r16 = "message"
    //     0xd50ab8: ldr             x16, [PP, #0x62a0]  ; [pp+0x62a0] "message"
    // 0xd50abc: ArrayStore: r0[0] = r16  ; List_4
    //     0xd50abc: stur            w16, [x0, #0x17]
    // 0xd50ac0: r16 = "Unknown error"
    //     0xd50ac0: add             x16, PP, #8, lsl #12  ; [pp+0x8f88] "Unknown error"
    //     0xd50ac4: ldr             x16, [x16, #0xf88]
    // 0xd50ac8: StoreField: r0->field_1b = r16
    //     0xd50ac8: stur            w16, [x0, #0x1b]
    // 0xd50acc: r16 = <String, Object>
    //     0xd50acc: ldr             x16, [PP, #0x7aa0]  ; [pp+0x7aa0] TypeArguments: <String, Object>
    // 0xd50ad0: stp             x0, x16, [SP]
    // 0xd50ad4: r0 = Map._fromLiteral()
    //     0xd50ad4: bl              #0x7efee0  ; [dart:core] Map::Map._fromLiteral
    // 0xd50ad8: r0 = ReturnAsync()
    //     0xd50ad8: b               #0x82fdf0  ; ReturnAsyncStub
    // 0xd50adc: r0 = LoadStaticField(0x94c)
    //     0xd50adc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xd50ae0: ldr             x0, [x0, #0x1298]
    // 0xd50ae4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xd50ae8: cmp             w0, w16
    // 0xd50aec: b.ne            #0xd50afc
    // 0xd50af0: r2 = shared
    //     0xd50af0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ba0] Field <BaseNetworkingV2.shared>: static late final (offset: 0x94c)
    //     0xd50af4: ldr             x2, [x2, #0xba0]
    // 0xd50af8: r0 = InitLateFinalStaticField()
    //     0xd50af8: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xd50afc: stur            x0, [fp, #-0xd0]
    // 0xd50b00: r0 = baseUrl()
    //     0xd50b00: bl              #0x91d4e0  ; [package:simaster_ugm/flavors.dart] F::baseUrl
    // 0xd50b04: ldur            x1, [fp, #-0xd8]
    // 0xd50b08: stur            x0, [fp, #-0xe0]
    // 0xd50b0c: r0 = _$$ScanEntrantParamImplToJson()
    //     0xd50b0c: bl              #0xd51494  ; [package:simaster_ugm/app/modules/attedence/data/params/scan_entrant_param/scan_entrant_param.dart] ::_$$ScanEntrantParamImplToJson
    // 0xd50b10: stur            x0, [fp, #-0xe8]
    // 0xd50b14: ldur            x16, [fp, #-0xd0]
    // 0xd50b18: stp             x16, NULL, [SP, #0x18]
    // 0xd50b1c: r16 = "v1/staff/micro/doscanent"
    //     0xd50b1c: add             x16, PP, #0x83, lsl #12  ; [pp+0x83e08] "v1/staff/micro/doscanent"
    //     0xd50b20: ldr             x16, [x16, #0xe08]
    // 0xd50b24: stp             x16, x0, [SP, #8]
    // 0xd50b28: ldur            x16, [fp, #-0xe0]
    // 0xd50b2c: str             x16, [SP]
    // 0xd50b30: r4 = const [0x1, 0x4, 0x4, 0x3, baseUrl, 0x3, null]
    //     0xd50b30: add             x4, PP, #0x83, lsl #12  ; [pp+0x83e10] List(7) [0x1, 0x4, 0x4, 0x3, "baseUrl", 0x3, Null]
    //     0xd50b34: ldr             x4, [x4, #0xe10]
    // 0xd50b38: r0 = post()
    //     0xd50b38: bl              #0xd50d94  ; [package:simaster_ugm/utils/utils.dart] BaseNetworkingV2::post
    // 0xd50b3c: mov             x1, x0
    // 0xd50b40: stur            x1, [fp, #-0xf0]
    // 0xd50b44: r0 = Await()
    //     0xd50b44: bl              #0x7f5c00  ; AwaitStub
    // 0xd50b48: r1 = Null
    //     0xd50b48: mov             x1, NULL
    // 0xd50b4c: r2 = 4
    //     0xd50b4c: mov             x2, #4
    // 0xd50b50: stur            x0, [fp, #-0xf0]
    // 0xd50b54: r0 = AllocateArray()
    //     0xd50b54: bl              #0x13df928  ; AllocateArrayStub
    // 0xd50b58: r16 = "ini data scanEntrant success: "
    //     0xd50b58: add             x16, PP, #0x83, lsl #12  ; [pp+0x83e18] "ini data scanEntrant success: "
    //     0xd50b5c: ldr             x16, [x16, #0xe18]
    // 0xd50b60: StoreField: r0->field_f = r16
    //     0xd50b60: stur            w16, [x0, #0xf]
    // 0xd50b64: ldur            x1, [fp, #-0xf0]
    // 0xd50b68: StoreField: r0->field_13 = r1
    //     0xd50b68: stur            w1, [x0, #0x13]
    // 0xd50b6c: str             x0, [SP]
    // 0xd50b70: r0 = _interpolate()
    //     0xd50b70: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd50b74: r0 = Null
    //     0xd50b74: mov             x0, NULL
    // 0xd50b78: r0 = ReturnAsyncNotFuture()
    //     0xd50b78: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0xd50b7c: r0 = StateError()
    //     0xd50b7c: bl              #0x7d92a0  ; AllocateStateErrorStub -> StateError (size=0x10)
    // 0xd50b80: mov             x1, x0
    // 0xd50b84: r0 = "Username tidak tersedia untuk membuat JWT"
    //     0xd50b84: add             x0, PP, #0x83, lsl #12  ; [pp+0x83e20] "Username tidak tersedia untuk membuat JWT"
    //     0xd50b88: ldr             x0, [x0, #0xe20]
    // 0xd50b8c: stur            x1, [fp, #-0xd0]
    // 0xd50b90: StoreField: r1->field_b = r0
    //     0xd50b90: stur            w0, [x1, #0xb]
    // 0xd50b94: mov             x0, x1
    // 0xd50b98: r0 = Throw()
    //     0xd50b98: bl              #0x13ddb2c  ; ThrowStub
    // 0xd50b9c: brk             #0
    // 0xd50ba0: r0 = StateError()
    //     0xd50ba0: bl              #0x7d92a0  ; AllocateStateErrorStub -> StateError (size=0x10)
    // 0xd50ba4: mov             x1, x0
    // 0xd50ba8: r0 = "Response signin tidak berisi token JWT"
    //     0xd50ba8: add             x0, PP, #0x83, lsl #12  ; [pp+0x83e28] "Response signin tidak berisi token JWT"
    //     0xd50bac: ldr             x0, [x0, #0xe28]
    // 0xd50bb0: stur            x1, [fp, #-0xd0]
    // 0xd50bb4: StoreField: r1->field_b = r0
    //     0xd50bb4: stur            w0, [x1, #0xb]
    // 0xd50bb8: mov             x0, x1
    // 0xd50bbc: r0 = Throw()
    //     0xd50bbc: bl              #0x13ddb2c  ; ThrowStub
    // 0xd50bc0: brk             #0
    // 0xd50bc4: sub             SP, fp, #0x170
    // 0xd50bc8: mov             x3, x0
    // 0xd50bcc: stur            x0, [fp, #-0xd0]
    // 0xd50bd0: mov             x0, x1
    // 0xd50bd4: stur            x1, [fp, #-0xd8]
    // 0xd50bd8: r1 = Null
    //     0xd50bd8: mov             x1, NULL
    // 0xd50bdc: r2 = 4
    //     0xd50bdc: mov             x2, #4
    // 0xd50be0: r0 = AllocateArray()
    //     0xd50be0: bl              #0x13df928  ; AllocateArrayStub
    // 0xd50be4: r16 = "[PRES_NEW] send2: ERROR -> "
    //     0xd50be4: add             x16, PP, #0x83, lsl #12  ; [pp+0x83e30] "[PRES_NEW] send2: ERROR -> "
    //     0xd50be8: ldr             x16, [x16, #0xe30]
    // 0xd50bec: StoreField: r0->field_f = r16
    //     0xd50bec: stur            w16, [x0, #0xf]
    // 0xd50bf0: ldur            x1, [fp, #-0xd0]
    // 0xd50bf4: StoreField: r0->field_13 = r1
    //     0xd50bf4: stur            w1, [x0, #0x13]
    // 0xd50bf8: str             x0, [SP]
    // 0xd50bfc: r0 = _interpolate()
    //     0xd50bfc: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd50c00: ldur            x0, [fp, #-0xd0]
    // 0xd50c04: ldur            x1, [fp, #-0xd8]
    // 0xd50c08: r0 = ReThrow()
    //     0xd50c08: bl              #0x13ddb00  ; ReThrowStub
    // 0xd50c0c: brk             #0
    // 0xd50c10: sub             SP, fp, #0x170
    // 0xd50c14: mov             x3, x0
    // 0xd50c18: stur            x0, [fp, #-0xd0]
    // 0xd50c1c: mov             x0, x1
    // 0xd50c20: stur            x1, [fp, #-0xd8]
    // 0xd50c24: r1 = Null
    //     0xd50c24: mov             x1, NULL
    // 0xd50c28: r2 = 4
    //     0xd50c28: mov             x2, #4
    // 0xd50c2c: r0 = AllocateArray()
    //     0xd50c2c: bl              #0x13df928  ; AllocateArrayStub
    // 0xd50c30: r16 = "[PRES_NEW] JWT/signin ERROR -> "
    //     0xd50c30: add             x16, PP, #0x83, lsl #12  ; [pp+0x83e38] "[PRES_NEW] JWT/signin ERROR -> "
    //     0xd50c34: ldr             x16, [x16, #0xe38]
    // 0xd50c38: StoreField: r0->field_f = r16
    //     0xd50c38: stur            w16, [x0, #0xf]
    // 0xd50c3c: ldur            x1, [fp, #-0xd0]
    // 0xd50c40: StoreField: r0->field_13 = r1
    //     0xd50c40: stur            w1, [x0, #0x13]
    // 0xd50c44: str             x0, [SP]
    // 0xd50c48: r0 = _interpolate()
    //     0xd50c48: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd50c4c: ldur            x0, [fp, #-0xd0]
    // 0xd50c50: ldur            x1, [fp, #-0xd8]
    // 0xd50c54: r0 = ReThrow()
    //     0xd50c54: bl              #0x13ddb00  ; ReThrowStub
    // 0xd50c58: brk             #0
    // 0xd50c5c: sub             SP, fp, #0x170
    // 0xd50c60: mov             x3, x0
    // 0xd50c64: stur            x0, [fp, #-0xd0]
    // 0xd50c68: mov             x0, x1
    // 0xd50c6c: stur            x1, [fp, #-0xd8]
    // 0xd50c70: r1 = 60
    //     0xd50c70: mov             x1, #0x3c
    // 0xd50c74: branchIfSmi(r3, 0xd50c80)
    //     0xd50c74: tbz             w3, #0, #0xd50c80
    // 0xd50c78: r1 = LoadClassIdInstr(r3)
    //     0xd50c78: ldur            x1, [x3, #-1]
    //     0xd50c7c: ubfx            x1, x1, #0xc, #0x14
    // 0xd50c80: cmp             x1, #0xd52
    // 0xd50c84: b.ne            #0xd50d28
    // 0xd50c88: r1 = Null
    //     0xd50c88: mov             x1, NULL
    // 0xd50c8c: r2 = 16
    //     0xd50c8c: mov             x2, #0x10
    // 0xd50c90: r0 = AllocateArray()
    //     0xd50c90: bl              #0x13df928  ; AllocateArrayStub
    // 0xd50c94: r16 = "ini response error AttendanceNetworkImpl (scanEntrant): "
    //     0xd50c94: add             x16, PP, #0x83, lsl #12  ; [pp+0x83e40] "ini response error AttendanceNetworkImpl (scanEntrant): "
    //     0xd50c98: ldr             x16, [x16, #0xe40]
    // 0xd50c9c: StoreField: r0->field_f = r16
    //     0xd50c9c: stur            w16, [x0, #0xf]
    // 0xd50ca0: ldur            x1, [fp, #-0xd0]
    // 0xd50ca4: StoreField: r0->field_13 = r1
    //     0xd50ca4: stur            w1, [x0, #0x13]
    // 0xd50ca8: r16 = ", "
    //     0xd50ca8: ldr             x16, [PP, #0xe80]  ; [pp+0xe80] ", "
    // 0xd50cac: ArrayStore: r0[0] = r16  ; List_4
    //     0xd50cac: stur            w16, [x0, #0x17]
    // 0xd50cb0: LoadField: r2 = r1->field_1b
    //     0xd50cb0: ldur            w2, [x1, #0x1b]
    // 0xd50cb4: DecompressPointer r2
    //     0xd50cb4: add             x2, x2, HEAP, lsl #32
    // 0xd50cb8: StoreField: r0->field_1b = r2
    //     0xd50cb8: stur            w2, [x0, #0x1b]
    // 0xd50cbc: r16 = " - "
    //     0xd50cbc: ldr             x16, [PP, #0x79f0]  ; [pp+0x79f0] " - "
    // 0xd50cc0: StoreField: r0->field_1f = r16
    //     0xd50cc0: stur            w16, [x0, #0x1f]
    // 0xd50cc4: LoadField: r2 = r1->field_b
    //     0xd50cc4: ldur            w2, [x1, #0xb]
    // 0xd50cc8: DecompressPointer r2
    //     0xd50cc8: add             x2, x2, HEAP, lsl #32
    // 0xd50ccc: cmp             w2, NULL
    // 0xd50cd0: b.ne            #0xd50cdc
    // 0xd50cd4: r3 = Null
    //     0xd50cd4: mov             x3, NULL
    // 0xd50cd8: b               #0xd50ce4
    // 0xd50cdc: LoadField: r3 = r2->field_b
    //     0xd50cdc: ldur            w3, [x2, #0xb]
    // 0xd50ce0: DecompressPointer r3
    //     0xd50ce0: add             x3, x3, HEAP, lsl #32
    // 0xd50ce4: StoreField: r0->field_23 = r3
    //     0xd50ce4: stur            w3, [x0, #0x23]
    // 0xd50ce8: r16 = " - "
    //     0xd50ce8: ldr             x16, [PP, #0x79f0]  ; [pp+0x79f0] " - "
    // 0xd50cec: StoreField: r0->field_27 = r16
    //     0xd50cec: stur            w16, [x0, #0x27]
    // 0xd50cf0: cmp             w2, NULL
    // 0xd50cf4: b.ne            #0xd50d00
    // 0xd50cf8: r2 = Null
    //     0xd50cf8: mov             x2, NULL
    // 0xd50cfc: b               #0xd50d0c
    // 0xd50d00: LoadField: r3 = r2->field_13
    //     0xd50d00: ldur            w3, [x2, #0x13]
    // 0xd50d04: DecompressPointer r3
    //     0xd50d04: add             x3, x3, HEAP, lsl #32
    // 0xd50d08: mov             x2, x3
    // 0xd50d0c: StoreField: r0->field_2b = r2
    //     0xd50d0c: stur            w2, [x0, #0x2b]
    // 0xd50d10: str             x0, [SP]
    // 0xd50d14: r0 = _interpolate()
    //     0xd50d14: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xd50d18: ldur            x0, [fp, #-0xd0]
    // 0xd50d1c: ldur            x1, [fp, #-0xd8]
    // 0xd50d20: r0 = ReThrow()
    //     0xd50d20: bl              #0x13ddb00  ; ReThrowStub
    // 0xd50d24: brk             #0
    // 0xd50d28: ldur            x0, [fp, #-0xd0]
    // 0xd50d2c: ldur            x1, [fp, #-0xd8]
    // 0xd50d30: r0 = ReThrow()
    //     0xd50d30: bl              #0x13ddb00  ; ReThrowStub
    // 0xd50d34: brk             #0
    // 0xd50d38: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xd50d38: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xd50d3c: b               #0xd4fca4
    // 0xd50d40: r0 = RangeErrorSharedWithoutFPURegs()
    //     0xd50d40: bl              #0x13dff64  ; RangeErrorSharedWithoutFPURegsStub
    // 0xd50d44: r0 = RangeErrorSharedWithoutFPURegs()
    //     0xd50d44: bl              #0x13dff64  ; RangeErrorSharedWithoutFPURegsStub
    // 0xd50d48: r0 = RangeErrorSharedWithoutFPURegs()
    //     0xd50d48: bl              #0x13dff64  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _enc(/* No info */) {
    // ** addr: 0xd51f2c, size: 0x128
    // 0xd51f2c: EnterFrame
    //     0xd51f2c: stp             fp, lr, [SP, #-0x10]!
    //     0xd51f30: mov             fp, SP
    // 0xd51f34: AllocStack(0x20)
    //     0xd51f34: sub             SP, SP, #0x20
    // 0xd51f38: CheckStackOverflow
    //     0xd51f38: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xd51f3c: cmp             SP, x16
    //     0xd51f40: b.ls            #0xd5204c
    // 0xd51f44: r1 = Instance_Utf8Encoder
    //     0xd51f44: ldr             x1, [PP, #0x11f8]  ; [pp+0x11f8] Obj!Utf8Encoder@12b7f11
    // 0xd51f48: r4 = const [0, 0x2, 0, 0x2, null]
    //     0xd51f48: ldr             x4, [PP, #0xc0]  ; [pp+0xc0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0xd51f4c: r0 = convert()
    //     0xd51f4c: bl              #0x122268c  ; [dart:convert] Utf8Encoder::convert
    // 0xd51f50: mov             x2, x0
    // 0xd51f54: r1 = Instance_Base64Codec
    //     0xd51f54: ldr             x1, [PP, #0x1380]  ; [pp+0x1380] Obj!Base64Codec@12b7e41
    // 0xd51f58: r0 = encode()
    //     0xd51f58: bl              #0x1237370  ; [dart:convert] Codec::encode
    // 0xd51f5c: mov             x1, x0
    // 0xd51f60: r2 = "+"
    //     0xd51f60: ldr             x2, [PP, #0x33a8]  ; [pp+0x33a8] "+"
    // 0xd51f64: r3 = "."
    //     0xd51f64: ldr             x3, [PP, #0xfc8]  ; [pp+0xfc8] "."
    // 0xd51f68: r0 = replaceAll()
    //     0xd51f68: bl              #0x7eb6a4  ; [dart:core] _StringBase::replaceAll
    // 0xd51f6c: mov             x1, x0
    // 0xd51f70: r2 = "/"
    //     0xd51f70: ldr             x2, [PP, #0xfe0]  ; [pp+0xfe0] "/"
    // 0xd51f74: r3 = "_"
    //     0xd51f74: ldr             x3, [PP, #0x4a50]  ; [pp+0x4a50] "_"
    // 0xd51f78: r0 = replaceAll()
    //     0xd51f78: bl              #0x7eb6a4  ; [dart:core] _StringBase::replaceAll
    // 0xd51f7c: mov             x1, x0
    // 0xd51f80: r2 = "="
    //     0xd51f80: ldr             x2, [PP, #0x11d0]  ; [pp+0x11d0] "="
    // 0xd51f84: r3 = "-"
    //     0xd51f84: ldr             x3, [PP, #0x24e8]  ; [pp+0x24e8] "-"
    // 0xd51f88: r0 = replaceAll()
    //     0xd51f88: bl              #0x7eb6a4  ; [dart:core] _StringBase::replaceAll
    // 0xd51f8c: stur            x0, [fp, #-8]
    // 0xd51f90: r16 = 160
    //     0xd51f90: mov             x16, #0xa0
    // 0xd51f94: str             x16, [SP]
    // 0xd51f98: mov             x1, x0
    // 0xd51f9c: r2 = 66
    //     0xd51f9c: mov             x2, #0x42
    // 0xd51fa0: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0xd51fa0: ldr             x4, [PP, #0xca8]  ; [pp+0xca8] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0xd51fa4: r0 = substring()
    //     0xd51fa4: bl              #0x7e3f74  ; [dart:core] _StringBase::substring
    // 0xd51fa8: stur            x0, [fp, #-0x10]
    // 0xd51fac: r16 = 132
    //     0xd51fac: mov             x16, #0x84
    // 0xd51fb0: str             x16, [SP]
    // 0xd51fb4: ldur            x1, [fp, #-8]
    // 0xd51fb8: r2 = 43
    //     0xd51fb8: mov             x2, #0x2b
    // 0xd51fbc: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0xd51fbc: ldr             x4, [PP, #0xca8]  ; [pp+0xca8] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0xd51fc0: r0 = substring()
    //     0xd51fc0: bl              #0x7e3f74  ; [dart:core] _StringBase::substring
    // 0xd51fc4: ldur            x16, [fp, #-0x10]
    // 0xd51fc8: stp             x0, x16, [SP]
    // 0xd51fcc: r0 = +()
    //     0xd51fcc: bl              #0x7e1e74  ; [dart:core] _StringBase::+
    // 0xd51fd0: stur            x0, [fp, #-0x10]
    // 0xd51fd4: r16 = 86
    //     0xd51fd4: mov             x16, #0x56
    // 0xd51fd8: str             x16, [SP]
    // 0xd51fdc: ldur            x1, [fp, #-8]
    // 0xd51fe0: r2 = 26
    //     0xd51fe0: mov             x2, #0x1a
    // 0xd51fe4: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0xd51fe4: ldr             x4, [PP, #0xca8]  ; [pp+0xca8] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0xd51fe8: r0 = substring()
    //     0xd51fe8: bl              #0x7e3f74  ; [dart:core] _StringBase::substring
    // 0xd51fec: ldur            x16, [fp, #-0x10]
    // 0xd51ff0: stp             x0, x16, [SP]
    // 0xd51ff4: r0 = +()
    //     0xd51ff4: bl              #0x7e1e74  ; [dart:core] _StringBase::+
    // 0xd51ff8: stur            x0, [fp, #-0x10]
    // 0xd51ffc: r16 = 52
    //     0xd51ffc: mov             x16, #0x34
    // 0xd52000: str             x16, [SP]
    // 0xd52004: ldur            x1, [fp, #-8]
    // 0xd52008: r2 = 0
    //     0xd52008: mov             x2, #0
    // 0xd5200c: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0xd5200c: ldr             x4, [PP, #0xca8]  ; [pp+0xca8] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0xd52010: r0 = substring()
    //     0xd52010: bl              #0x7e3f74  ; [dart:core] _StringBase::substring
    // 0xd52014: ldur            x16, [fp, #-0x10]
    // 0xd52018: stp             x0, x16, [SP]
    // 0xd5201c: r0 = +()
    //     0xd5201c: bl              #0x7e1e74  ; [dart:core] _StringBase::+
    // 0xd52020: ldur            x1, [fp, #-8]
    // 0xd52024: r2 = 80
    //     0xd52024: mov             x2, #0x50
    // 0xd52028: stur            x0, [fp, #-8]
    // 0xd5202c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0xd5202c: ldr             x4, [PP, #0xc0]  ; [pp+0xc0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0xd52030: r0 = substring()
    //     0xd52030: bl              #0x7e3f74  ; [dart:core] _StringBase::substring
    // 0xd52034: ldur            x16, [fp, #-8]
    // 0xd52038: stp             x0, x16, [SP]
    // 0xd5203c: r0 = +()
    //     0xd5203c: bl              #0x7e1e74  ; [dart:core] _StringBase::+
    // 0xd52040: LeaveFrame
    //     0xd52040: mov             SP, fp
    //     0xd52044: ldp             fp, lr, [SP], #0x10
    // 0xd52048: ret
    //     0xd52048: ret             
    // 0xd5204c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xd5204c: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xd52050: b               #0xd51f44
  }
}
