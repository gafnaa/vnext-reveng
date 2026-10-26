// lib: , url: package:simaster_ugm/app/modules/auth/data/data_sources/network/auth_network_impl.dart

// class id: 1050106, size: 0x8
class :: {
}

// class id: 1337, size: 0x8, field offset: 0x8
class AuthNetworkImpl extends AuthNetwork {

  _ signIn(/* No info */) async {
    // ** addr: 0xfda15c, size: 0x430
    // 0xfda15c: EnterFrame
    //     0xfda15c: stp             fp, lr, [SP, #-0x10]!
    //     0xfda160: mov             fp, SP
    // 0xfda164: AllocStack(0x40)
    //     0xfda164: sub             SP, SP, #0x40
    // 0xfda168: SetupParameters(AuthNetworkImpl this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0xfda168: stur            NULL, [fp, #-8]
    //     0xfda16c: stur            x1, [fp, #-0x10]
    //     0xfda170: stur            x2, [fp, #-0x18]
    // 0xfda174: CheckStackOverflow
    //     0xfda174: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0xfda178: cmp             SP, x16
    //     0xfda17c: b.ls            #0xfda584
    // 0xfda180: InitAsync() -> Future<String>
    //     0xfda180: ldr             x0, [PP, #0x8d0]  ; [pp+0x8d0] TypeArguments: <String>
    //     0xfda184: bl              #0x7f5e44  ; InitAsyncStub
    // 0xfda188: r0 = LoadStaticField(0x934)
    //     0xfda188: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xfda18c: ldr             x0, [x0, #0x1268]
    // 0xfda190: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xfda194: cmp             w0, w16
    // 0xfda198: b.ne            #0xfda1a8
    // 0xfda19c: r2 = shared
    //     0xfda19c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15c50] Field <BaseNetworking.shared>: static late final (offset: 0x934)
    //     0xfda1a0: ldr             x2, [x2, #0xc50]
    // 0xfda1a4: r0 = InitLateFinalStaticField()
    //     0xfda1a4: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xfda1a8: r1 = Null
    //     0xfda1a8: mov             x1, NULL
    // 0xfda1ac: r2 = 10
    //     0xfda1ac: mov             x2, #0xa
    // 0xfda1b0: stur            x0, [fp, #-0x20]
    // 0xfda1b4: r0 = AllocateArray()
    //     0xfda1b4: bl              #0x13df928  ; AllocateArrayStub
    // 0xfda1b8: r16 = "{\"micro\":\"staff\",\"service\":\"get_simaster_atribut_by_username\",\"query\":[],\"param\":[[["
    //     0xfda1b8: add             x16, PP, #0x22, lsl #12  ; [pp+0x22170] "{\"micro\":\"staff\",\"service\":\"get_simaster_atribut_by_username\",\"query\":[],\"param\":[[["
    //     0xfda1bc: ldr             x16, [x16, #0x170]
    // 0xfda1c0: StoreField: r0->field_f = r16
    //     0xfda1c0: stur            w16, [x0, #0xf]
    // 0xfda1c4: ldur            x1, [fp, #-0x18]
    // 0xfda1c8: StoreField: r0->field_13 = r1
    //     0xfda1c8: stur            w1, [x0, #0x13]
    // 0xfda1cc: r16 = ",\""
    //     0xfda1cc: add             x16, PP, #0xe, lsl #12  ; [pp+0xe6d0] ",\""
    //     0xfda1d0: ldr             x16, [x16, #0x6d0]
    // 0xfda1d4: ArrayStore: r0[0] = r16  ; List_4
    //     0xfda1d4: stur            w16, [x0, #0x17]
    // 0xfda1d8: r16 = "8"
    //     0xfda1d8: add             x16, PP, #0xc, lsl #12  ; [pp+0xca18] "8"
    //     0xfda1dc: ldr             x16, [x16, #0xa18]
    // 0xfda1e0: StoreField: r0->field_1b = r16
    //     0xfda1e0: stur            w16, [x0, #0x1b]
    // 0xfda1e4: r16 = "\"]]]}"
    //     0xfda1e4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17890] "\"]]]}"
    //     0xfda1e8: ldr             x16, [x16, #0x890]
    // 0xfda1ec: StoreField: r0->field_1f = r16
    //     0xfda1ec: stur            w16, [x0, #0x1f]
    // 0xfda1f0: str             x0, [SP]
    // 0xfda1f4: r0 = _interpolate()
    //     0xfda1f4: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xfda1f8: ldur            x16, [fp, #-0x20]
    // 0xfda1fc: stp             x16, NULL, [SP, #0x10]
    // 0xfda200: r16 = "staff"
    //     0xfda200: add             x16, PP, #0x19, lsl #12  ; [pp+0x198a0] "staff"
    //     0xfda204: ldr             x16, [x16, #0x8a0]
    // 0xfda208: stp             x16, x0, [SP]
    // 0xfda20c: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0xfda20c: ldr             x4, [PP, #0x728]  ; [pp+0x728] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0xfda210: r0 = post()
    //     0xfda210: bl              #0x8ec50c  ; [package:simaster_ugm/utils/utils.dart] BaseNetworking::post
    // 0xfda214: mov             x1, x0
    // 0xfda218: stur            x1, [fp, #-0x18]
    // 0xfda21c: r0 = Await()
    //     0xfda21c: bl              #0x7f5c00  ; AwaitStub
    // 0xfda220: r1 = Null
    //     0xfda220: mov             x1, NULL
    // 0xfda224: r2 = 4
    //     0xfda224: mov             x2, #4
    // 0xfda228: stur            x0, [fp, #-0x10]
    // 0xfda22c: r0 = AllocateArray()
    //     0xfda22c: bl              #0x13df928  ; AllocateArrayStub
    // 0xfda230: r16 = "sso response: "
    //     0xfda230: add             x16, PP, #0x22, lsl #12  ; [pp+0x22178] "sso response: "
    //     0xfda234: ldr             x16, [x16, #0x178]
    // 0xfda238: StoreField: r0->field_f = r16
    //     0xfda238: stur            w16, [x0, #0xf]
    // 0xfda23c: ldur            x1, [fp, #-0x10]
    // 0xfda240: LoadField: r2 = r1->field_b
    //     0xfda240: ldur            w2, [x1, #0xb]
    // 0xfda244: DecompressPointer r2
    //     0xfda244: add             x2, x2, HEAP, lsl #32
    // 0xfda248: StoreField: r0->field_13 = r2
    //     0xfda248: stur            w2, [x0, #0x13]
    // 0xfda24c: str             x0, [SP]
    // 0xfda250: r0 = _interpolate()
    //     0xfda250: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0xfda254: r0 = LoadStaticField(0x930)
    //     0xfda254: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0xfda258: ldr             x0, [x0, #0x1260]
    // 0xfda25c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0xfda260: cmp             w0, w16
    // 0xfda264: b.ne            #0xfda270
    // 0xfda268: r2 = _isLoggingEnabled
    //     0xfda268: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0xfda26c: r0 = InitLateFinalStaticField()
    //     0xfda26c: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0xfda270: ldur            x0, [fp, #-0x10]
    // 0xfda274: LoadField: r1 = r0->field_13
    //     0xfda274: ldur            w1, [x0, #0x13]
    // 0xfda278: DecompressPointer r1
    //     0xfda278: add             x1, x1, HEAP, lsl #32
    // 0xfda27c: cmp             w1, #0x190
    // 0xfda280: b.ne            #0xfda528
    // 0xfda284: LoadField: r1 = r0->field_b
    //     0xfda284: ldur            w1, [x0, #0xb]
    // 0xfda288: DecompressPointer r1
    //     0xfda288: add             x1, x1, HEAP, lsl #32
    // 0xfda28c: r16 = "res"
    //     0xfda28c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c70] "res"
    //     0xfda290: ldr             x16, [x16, #0xc70]
    // 0xfda294: stp             x16, x1, [SP]
    // 0xfda298: r4 = 0
    //     0xfda298: mov             x4, #0
    // 0xfda29c: ldr             x0, [SP, #8]
    // 0xfda2a0: r30 = 139822029843448
    //     0xfda2a0: add             x16, PP, #0x22, lsl #12  ; [pp+0x22180] IMM: 0x7f2ada6babf8
    //     0xfda2a4: ldp             lr, x5, [x16, #0x180]
    // 0xfda2a8: blr             lr
    // 0xfda2ac: stp             xzr, x0, [SP]
    // 0xfda2b0: r4 = 0
    //     0xfda2b0: mov             x4, #0
    // 0xfda2b4: ldr             x0, [SP, #8]
    // 0xfda2b8: r30 = 139822029843448
    //     0xfda2b8: add             x16, PP, #0x22, lsl #12  ; [pp+0x22190] IMM: 0x7f2ada6babf8
    //     0xfda2bc: ldp             lr, x5, [x16, #0x190]
    // 0xfda2c0: blr             lr
    // 0xfda2c4: r1 = 60
    //     0xfda2c4: mov             x1, #0x3c
    // 0xfda2c8: branchIfSmi(r0, 0xfda2d4)
    //     0xfda2c8: tbz             w0, #0, #0xfda2d4
    // 0xfda2cc: r1 = LoadClassIdInstr(r0)
    //     0xfda2cc: ldur            x1, [x0, #-1]
    //     0xfda2d0: ubfx            x1, x1, #0xc, #0x14
    // 0xfda2d4: str             x0, [SP]
    // 0xfda2d8: mov             x0, x1
    // 0xfda2dc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0xfda2dc: ldr             x4, [PP, #0x290]  ; [pp+0x290] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0xfda2e0: r0 = GDT[cid_x0 + 0x91c1]()
    //     0xfda2e0: mov             x17, #0x91c1
    //     0xfda2e4: add             lr, x0, x17
    //     0xfda2e8: ldr             lr, [x21, lr, lsl #3]
    //     0xfda2ec: blr             lr
    // 0xfda2f0: r1 = LoadClassIdInstr(r0)
    //     0xfda2f0: ldur            x1, [x0, #-1]
    //     0xfda2f4: ubfx            x1, x1, #0xc, #0x14
    // 0xfda2f8: r16 = "[]"
    //     0xfda2f8: add             x16, PP, #0xc, lsl #12  ; [pp+0xcf48] "[]"
    //     0xfda2fc: ldr             x16, [x16, #0xf48]
    // 0xfda300: stp             x16, x0, [SP]
    // 0xfda304: mov             x0, x1
    // 0xfda308: mov             lr, x0
    // 0xfda30c: ldr             lr, [x21, lr, lsl #3]
    // 0xfda310: blr             lr
    // 0xfda314: tbz             w0, #4, #0xfda470
    // 0xfda318: ldur            x0, [fp, #-0x10]
    // 0xfda31c: LoadField: r1 = r0->field_b
    //     0xfda31c: ldur            w1, [x0, #0xb]
    // 0xfda320: DecompressPointer r1
    //     0xfda320: add             x1, x1, HEAP, lsl #32
    // 0xfda324: r16 = "res"
    //     0xfda324: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c70] "res"
    //     0xfda328: ldr             x16, [x16, #0xc70]
    // 0xfda32c: stp             x16, x1, [SP]
    // 0xfda330: r4 = 0
    //     0xfda330: mov             x4, #0
    // 0xfda334: ldr             x0, [SP, #8]
    // 0xfda338: r30 = 139822029843448
    //     0xfda338: add             x16, PP, #0x22, lsl #12  ; [pp+0x221a0] IMM: 0x7f2ada6babf8
    //     0xfda33c: ldp             lr, x5, [x16, #0x1a0]
    // 0xfda340: blr             lr
    // 0xfda344: stp             xzr, x0, [SP]
    // 0xfda348: r4 = 0
    //     0xfda348: mov             x4, #0
    // 0xfda34c: ldr             x0, [SP, #8]
    // 0xfda350: r30 = 139822029843448
    //     0xfda350: add             x16, PP, #0x22, lsl #12  ; [pp+0x221b0] IMM: 0x7f2ada6babf8
    //     0xfda354: ldp             lr, x5, [x16, #0x1b0]
    // 0xfda358: blr             lr
    // 0xfda35c: stp             xzr, x0, [SP]
    // 0xfda360: r4 = 0
    //     0xfda360: mov             x4, #0
    // 0xfda364: ldr             x0, [SP, #8]
    // 0xfda368: r30 = 139822029843448
    //     0xfda368: add             x16, PP, #0x22, lsl #12  ; [pp+0x221c0] IMM: 0x7f2ada6babf8
    //     0xfda36c: ldp             lr, x5, [x16, #0x1c0]
    // 0xfda370: blr             lr
    // 0xfda374: r16 = "is_active"
    //     0xfda374: add             x16, PP, #0x18, lsl #12  ; [pp+0x18b18] "is_active"
    //     0xfda378: ldr             x16, [x16, #0xb18]
    // 0xfda37c: stp             x16, x0, [SP]
    // 0xfda380: r4 = 0
    //     0xfda380: mov             x4, #0
    // 0xfda384: ldr             x0, [SP, #8]
    // 0xfda388: r30 = 139822029843448
    //     0xfda388: add             x16, PP, #0x22, lsl #12  ; [pp+0x221d0] IMM: 0x7f2ada6babf8
    //     0xfda38c: ldp             lr, x5, [x16, #0x1d0]
    // 0xfda390: blr             lr
    // 0xfda394: r1 = 60
    //     0xfda394: mov             x1, #0x3c
    // 0xfda398: branchIfSmi(r0, 0xfda3a4)
    //     0xfda398: tbz             w0, #0, #0xfda3a4
    // 0xfda39c: r1 = LoadClassIdInstr(r0)
    //     0xfda39c: ldur            x1, [x0, #-1]
    //     0xfda3a0: ubfx            x1, x1, #0xc, #0x14
    // 0xfda3a4: r16 = "0"
    //     0xfda3a4: ldr             x16, [PP, #0x47e8]  ; [pp+0x47e8] "0"
    // 0xfda3a8: stp             x16, x0, [SP]
    // 0xfda3ac: mov             x0, x1
    // 0xfda3b0: mov             lr, x0
    // 0xfda3b4: ldr             lr, [x21, lr, lsl #3]
    // 0xfda3b8: blr             lr
    // 0xfda3bc: tbz             w0, #4, #0xfda4cc
    // 0xfda3c0: ldur            x0, [fp, #-0x10]
    // 0xfda3c4: LoadField: r1 = r0->field_b
    //     0xfda3c4: ldur            w1, [x0, #0xb]
    // 0xfda3c8: DecompressPointer r1
    //     0xfda3c8: add             x1, x1, HEAP, lsl #32
    // 0xfda3cc: r16 = "res"
    //     0xfda3cc: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c70] "res"
    //     0xfda3d0: ldr             x16, [x16, #0xc70]
    // 0xfda3d4: stp             x16, x1, [SP]
    // 0xfda3d8: r4 = 0
    //     0xfda3d8: mov             x4, #0
    // 0xfda3dc: ldr             x0, [SP, #8]
    // 0xfda3e0: r30 = 139822029843448
    //     0xfda3e0: add             x16, PP, #0x22, lsl #12  ; [pp+0x221e0] IMM: 0x7f2ada6babf8
    //     0xfda3e4: ldp             lr, x5, [x16, #0x1e0]
    // 0xfda3e8: blr             lr
    // 0xfda3ec: stp             xzr, x0, [SP]
    // 0xfda3f0: r4 = 0
    //     0xfda3f0: mov             x4, #0
    // 0xfda3f4: ldr             x0, [SP, #8]
    // 0xfda3f8: r30 = 139822029843448
    //     0xfda3f8: add             x16, PP, #0x22, lsl #12  ; [pp+0x221f0] IMM: 0x7f2ada6babf8
    //     0xfda3fc: ldp             lr, x5, [x16, #0x1f0]
    // 0xfda400: blr             lr
    // 0xfda404: stp             xzr, x0, [SP]
    // 0xfda408: r4 = 0
    //     0xfda408: mov             x4, #0
    // 0xfda40c: ldr             x0, [SP, #8]
    // 0xfda410: r16 = 139822029843448
    //     0xfda410: add             x16, PP, #0x22, lsl #12  ; [pp+0x22200] IMM: 0x7f2ada6babf8
    //     0xfda414: add             x16, x16, #0x200
    // 0xfda418: ldp             lr, x5, [x16]
    // 0xfda41c: blr             lr
    // 0xfda420: r16 = "user_tipe_nomor"
    //     0xfda420: add             x16, PP, #0x18, lsl #12  ; [pp+0x187c8] "user_tipe_nomor"
    //     0xfda424: ldr             x16, [x16, #0x7c8]
    // 0xfda428: stp             x16, x0, [SP]
    // 0xfda42c: r4 = 0
    //     0xfda42c: mov             x4, #0
    // 0xfda430: ldr             x0, [SP, #8]
    // 0xfda434: r16 = 139822029843448
    //     0xfda434: add             x16, PP, #0x22, lsl #12  ; [pp+0x22210] IMM: 0x7f2ada6babf8
    //     0xfda438: add             x16, x16, #0x210
    // 0xfda43c: ldp             lr, x5, [x16]
    // 0xfda440: blr             lr
    // 0xfda444: mov             x3, x0
    // 0xfda448: r2 = Null
    //     0xfda448: mov             x2, NULL
    // 0xfda44c: r1 = Null
    //     0xfda44c: mov             x1, NULL
    // 0xfda450: stur            x3, [fp, #-0x10]
    // 0xfda454: r8 = FutureOr<String>
    //     0xfda454: add             x8, PP, #0x17, lsl #12  ; [pp+0x17cd8] Type: FutureOr<String>
    //     0xfda458: ldr             x8, [x8, #0xcd8]
    // 0xfda45c: r3 = Null
    //     0xfda45c: add             x3, PP, #0x22, lsl #12  ; [pp+0x22220] Null
    //     0xfda460: ldr             x3, [x3, #0x220]
    // 0xfda464: r0 = DefaultTypeTest()
    //     0xfda464: bl              #0x13dd7a4  ; DefaultTypeTestStub
    // 0xfda468: ldur            x0, [fp, #-0x10]
    // 0xfda46c: r0 = ReturnAsync()
    //     0xfda46c: b               #0x82fdf0  ; ReturnAsyncStub
    // 0xfda470: r0 = RequestOptions()
    //     0xfda470: bl              #0x8eba04  ; AllocateRequestOptionsStub -> RequestOptions (size=0x70)
    // 0xfda474: stur            x0, [fp, #-0x10]
    // 0xfda478: r16 = "staff"
    //     0xfda478: add             x16, PP, #0x19, lsl #12  ; [pp+0x198a0] "staff"
    //     0xfda47c: ldr             x16, [x16, #0x8a0]
    // 0xfda480: str             x16, [SP]
    // 0xfda484: mov             x1, x0
    // 0xfda488: r4 = const [0, 0x2, 0x1, 0x1, path, 0x1, null]
    //     0xfda488: ldr             x4, [PP, #0x3978]  ; [pp+0x3978] List(7) [0, 0x2, 0x1, 0x1, "path", 0x1, Null]
    // 0xfda48c: r0 = RequestOptions()
    //     0xfda48c: bl              #0x8ea020  ; [package:dio/src/options.dart] RequestOptions::RequestOptions
    // 0xfda490: r0 = DioException()
    //     0xfda490: bl              #0x8ea014  ; AllocateDioExceptionStub -> DioException (size=0x24)
    // 0xfda494: stur            x0, [fp, #-0x18]
    // 0xfda498: r16 = Instance_DioExceptionType
    //     0xfda498: add             x16, PP, #0x15, lsl #12  ; [pp+0x15f90] Obj!DioExceptionType@12c6501
    //     0xfda49c: ldr             x16, [x16, #0xf90]
    // 0xfda4a0: r30 = "Akun UGM Student tidak aktif"
    //     0xfda4a0: add             lr, PP, #0x22, lsl #12  ; [pp+0x22230] "Akun UGM Student tidak aktif"
    //     0xfda4a4: ldr             lr, [lr, #0x230]
    // 0xfda4a8: stp             lr, x16, [SP]
    // 0xfda4ac: mov             x1, x0
    // 0xfda4b0: ldur            x2, [fp, #-0x10]
    // 0xfda4b4: r4 = const [0, 0x4, 0x2, 0x2, error, 0x3, type, 0x2, null]
    //     0xfda4b4: add             x4, PP, #0x17, lsl #12  ; [pp+0x174f0] List(9) [0, 0x4, 0x2, 0x2, "error", 0x3, "type", 0x2, Null]
    //     0xfda4b8: ldr             x4, [x4, #0x4f0]
    // 0xfda4bc: r0 = DioException()
    //     0xfda4bc: bl              #0x8e97ec  ; [package:dio/src/dio_exception.dart] DioException::DioException
    // 0xfda4c0: ldur            x0, [fp, #-0x18]
    // 0xfda4c4: r0 = Throw()
    //     0xfda4c4: bl              #0x13ddb2c  ; ThrowStub
    // 0xfda4c8: brk             #0
    // 0xfda4cc: r0 = RequestOptions()
    //     0xfda4cc: bl              #0x8eba04  ; AllocateRequestOptionsStub -> RequestOptions (size=0x70)
    // 0xfda4d0: stur            x0, [fp, #-0x10]
    // 0xfda4d4: r16 = "staff"
    //     0xfda4d4: add             x16, PP, #0x19, lsl #12  ; [pp+0x198a0] "staff"
    //     0xfda4d8: ldr             x16, [x16, #0x8a0]
    // 0xfda4dc: str             x16, [SP]
    // 0xfda4e0: mov             x1, x0
    // 0xfda4e4: r4 = const [0, 0x2, 0x1, 0x1, path, 0x1, null]
    //     0xfda4e4: ldr             x4, [PP, #0x3978]  ; [pp+0x3978] List(7) [0, 0x2, 0x1, 0x1, "path", 0x1, Null]
    // 0xfda4e8: r0 = RequestOptions()
    //     0xfda4e8: bl              #0x8ea020  ; [package:dio/src/options.dart] RequestOptions::RequestOptions
    // 0xfda4ec: r0 = DioException()
    //     0xfda4ec: bl              #0x8ea014  ; AllocateDioExceptionStub -> DioException (size=0x24)
    // 0xfda4f0: stur            x0, [fp, #-0x18]
    // 0xfda4f4: r16 = Instance_DioExceptionType
    //     0xfda4f4: add             x16, PP, #0x15, lsl #12  ; [pp+0x15f90] Obj!DioExceptionType@12c6501
    //     0xfda4f8: ldr             x16, [x16, #0xf90]
    // 0xfda4fc: r30 = "Maaf akun anda sudah tidak aktif"
    //     0xfda4fc: add             lr, PP, #0x22, lsl #12  ; [pp+0x22238] "Maaf akun anda sudah tidak aktif"
    //     0xfda500: ldr             lr, [lr, #0x238]
    // 0xfda504: stp             lr, x16, [SP]
    // 0xfda508: mov             x1, x0
    // 0xfda50c: ldur            x2, [fp, #-0x10]
    // 0xfda510: r4 = const [0, 0x4, 0x2, 0x2, error, 0x3, type, 0x2, null]
    //     0xfda510: add             x4, PP, #0x17, lsl #12  ; [pp+0x174f0] List(9) [0, 0x4, 0x2, 0x2, "error", 0x3, "type", 0x2, Null]
    //     0xfda514: ldr             x4, [x4, #0x4f0]
    // 0xfda518: r0 = DioException()
    //     0xfda518: bl              #0x8e97ec  ; [package:dio/src/dio_exception.dart] DioException::DioException
    // 0xfda51c: ldur            x0, [fp, #-0x18]
    // 0xfda520: r0 = Throw()
    //     0xfda520: bl              #0x13ddb2c  ; ThrowStub
    // 0xfda524: brk             #0
    // 0xfda528: r0 = RequestOptions()
    //     0xfda528: bl              #0x8eba04  ; AllocateRequestOptionsStub -> RequestOptions (size=0x70)
    // 0xfda52c: stur            x0, [fp, #-0x10]
    // 0xfda530: r16 = "staff"
    //     0xfda530: add             x16, PP, #0x19, lsl #12  ; [pp+0x198a0] "staff"
    //     0xfda534: ldr             x16, [x16, #0x8a0]
    // 0xfda538: str             x16, [SP]
    // 0xfda53c: mov             x1, x0
    // 0xfda540: r4 = const [0, 0x2, 0x1, 0x1, path, 0x1, null]
    //     0xfda540: ldr             x4, [PP, #0x3978]  ; [pp+0x3978] List(7) [0, 0x2, 0x1, 0x1, "path", 0x1, Null]
    // 0xfda544: r0 = RequestOptions()
    //     0xfda544: bl              #0x8ea020  ; [package:dio/src/options.dart] RequestOptions::RequestOptions
    // 0xfda548: r0 = DioException()
    //     0xfda548: bl              #0x8ea014  ; AllocateDioExceptionStub -> DioException (size=0x24)
    // 0xfda54c: stur            x0, [fp, #-0x18]
    // 0xfda550: r16 = "401"
    //     0xfda550: add             x16, PP, #0x17, lsl #12  ; [pp+0x17908] "401"
    //     0xfda554: ldr             x16, [x16, #0x908]
    // 0xfda558: r30 = Instance_DioExceptionType
    //     0xfda558: add             lr, PP, #0x15, lsl #12  ; [pp+0x15ce0] Obj!DioExceptionType@12c64e1
    //     0xfda55c: ldr             lr, [lr, #0xce0]
    // 0xfda560: stp             lr, x16, [SP]
    // 0xfda564: mov             x1, x0
    // 0xfda568: ldur            x2, [fp, #-0x10]
    // 0xfda56c: r4 = const [0, 0x4, 0x2, 0x2, error, 0x2, type, 0x3, null]
    //     0xfda56c: add             x4, PP, #0x15, lsl #12  ; [pp+0x15cd0] List(9) [0, 0x4, 0x2, 0x2, "error", 0x2, "type", 0x3, Null]
    //     0xfda570: ldr             x4, [x4, #0xcd0]
    // 0xfda574: r0 = DioException()
    //     0xfda574: bl              #0x8e97ec  ; [package:dio/src/dio_exception.dart] DioException::DioException
    // 0xfda578: ldur            x0, [fp, #-0x18]
    // 0xfda57c: r0 = Throw()
    //     0xfda57c: bl              #0x13ddb2c  ; ThrowStub
    // 0xfda580: brk             #0
    // 0xfda584: r0 = StackOverflowSharedWithoutFPURegs()
    //     0xfda584: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0xfda588: b               #0xfda180
  }
}
