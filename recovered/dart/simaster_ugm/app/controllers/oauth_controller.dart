// lib: , url: package:simaster_ugm/app/controllers/oauth_controller.dart

// class id: 1050073, size: 0x8
class :: {
}

// class id: 1352, size: 0x8, field offset: 0x8
class OauthGlobalController extends Object {

  static late Set<dynamic> noLogoutStatusesWhenRefreshFailed; // offset: 0x1644

  _ refreshOAuth(/* No info */) async {
    // ** addr: 0x913d58, size: 0x8c4
    // 0x913d58: EnterFrame
    //     0x913d58: stp             fp, lr, [SP, #-0x10]!
    //     0x913d5c: mov             fp, SP
    // 0x913d60: AllocStack(0x90)
    //     0x913d60: sub             SP, SP, #0x90
    // 0x913d64: SetupParameters(dynamic _ /* r2 => r2, fp-0x18 */, {dynamic oldRefreshToken = "-" /* r1, fp-0x10 */})
    //     0x913d64: stur            NULL, [fp, #-8]
    //     0x913d68: stur            x2, [fp, #-0x18]
    //     0x913d6c: ldur            w0, [x4, #0x13]
    //     0x913d70: ldur            w1, [x4, #0x1f]
    //     0x913d74: add             x1, x1, HEAP, lsl #32
    //     0x913d78: add             x16, PP, #0x16, lsl #12  ; [pp+0x16ba0] "oldRefreshToken"
    //     0x913d7c: ldr             x16, [x16, #0xba0]
    //     0x913d80: cmp             w1, w16
    //     0x913d84: b.ne            #0x913da4
    //     0x913d88: ldur            w1, [x4, #0x23]
    //     0x913d8c: add             x1, x1, HEAP, lsl #32
    //     0x913d90: sub             w3, w0, w1
    //     0x913d94: add             x0, fp, w3, sxtw #2
    //     0x913d98: ldr             x0, [x0, #8]
    //     0x913d9c: mov             x1, x0
    //     0x913da0: b               #0x913da8
    //     0x913da4: ldr             x1, [PP, #0x24e8]  ; [pp+0x24e8] "-"
    //     0x913da8: stur            x1, [fp, #-0x10]
    // 0x913dac: CheckStackOverflow
    //     0x913dac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x913db0: cmp             SP, x16
    //     0x913db4: b.ls            #0x914608
    // 0x913db8: InitAsync() -> Future
    //     0x913db8: mov             x0, NULL
    //     0x913dbc: bl              #0x7f5e44  ; InitAsyncStub
    // 0x913dc0: r0 = getInstance()
    //     0x913dc0: bl              #0x8e8c80  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x913dc4: mov             x1, x0
    // 0x913dc8: stur            x1, [fp, #-0x20]
    // 0x913dcc: r0 = Await()
    //     0x913dcc: bl              #0x7f5c00  ; AwaitStub
    // 0x913dd0: mov             x1, x0
    // 0x913dd4: r2 = "refresh_token"
    //     0x913dd4: add             x2, PP, #0x16, lsl #12  ; [pp+0x16a30] "refresh_token"
    //     0x913dd8: ldr             x2, [x2, #0xa30]
    // 0x913ddc: stur            x0, [fp, #-0x20]
    // 0x913de0: r0 = getString()
    //     0x913de0: bl              #0x8e8bf0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x913de4: cmp             w0, NULL
    // 0x913de8: b.ne            #0x913df0
    // 0x913dec: ldur            x0, [fp, #-0x10]
    // 0x913df0: stur            x0, [fp, #-0x10]
    // 0x913df4: LoadField: r1 = r0->field_7
    //     0x913df4: ldur            w1, [x0, #7]
    // 0x913df8: cbnz            w1, #0x913e20
    // 0x913dfc: r0 = LoadStaticField(0x930)
    //     0x913dfc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x913e00: ldr             x0, [x0, #0x1260]
    // 0x913e04: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x913e08: cmp             w0, w16
    // 0x913e0c: b.ne            #0x913e18
    // 0x913e10: r2 = _isLoggingEnabled
    //     0x913e10: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0x913e14: r0 = InitLateFinalStaticField()
    //     0x913e14: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x913e18: r0 = Null
    //     0x913e18: mov             x0, NULL
    // 0x913e1c: r0 = ReturnAsyncNotFuture()
    //     0x913e1c: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x913e20: r0 = configOauth()
    //     0x913e20: bl              #0x8bff94  ; [package:simaster_ugm/flavors.dart] F::configOauth
    // 0x913e24: stur            x0, [fp, #-0x28]
    // 0x913e28: cmp             w0, NULL
    // 0x913e2c: b.eq            #0x914610
    // 0x913e30: mov             x1, x0
    // 0x913e34: r2 = "clientId"
    //     0x913e34: add             x2, PP, #0x16, lsl #12  ; [pp+0x16ba8] "clientId"
    //     0x913e38: ldr             x2, [x2, #0xba8]
    // 0x913e3c: r0 = _getValueOrData()
    //     0x913e3c: bl              #0x13d8564  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x913e40: mov             x1, x0
    // 0x913e44: ldur            x0, [fp, #-0x28]
    // 0x913e48: LoadField: r2 = r0->field_f
    //     0x913e48: ldur            w2, [x0, #0xf]
    // 0x913e4c: DecompressPointer r2
    //     0x913e4c: add             x2, x2, HEAP, lsl #32
    // 0x913e50: cmp             w2, w1
    // 0x913e54: b.ne            #0x913e60
    // 0x913e58: r0 = Null
    //     0x913e58: mov             x0, NULL
    // 0x913e5c: b               #0x913e64
    // 0x913e60: mov             x0, x1
    // 0x913e64: stur            x0, [fp, #-0x28]
    // 0x913e68: r0 = configOauth()
    //     0x913e68: bl              #0x8bff94  ; [package:simaster_ugm/flavors.dart] F::configOauth
    // 0x913e6c: stur            x0, [fp, #-0x30]
    // 0x913e70: cmp             w0, NULL
    // 0x913e74: b.eq            #0x914614
    // 0x913e78: mov             x1, x0
    // 0x913e7c: r2 = "clientSecret"
    //     0x913e7c: add             x2, PP, #0x16, lsl #12  ; [pp+0x16bb0] "clientSecret"
    //     0x913e80: ldr             x2, [x2, #0xbb0]
    // 0x913e84: r0 = _getValueOrData()
    //     0x913e84: bl              #0x13d8564  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x913e88: mov             x1, x0
    // 0x913e8c: ldur            x0, [fp, #-0x30]
    // 0x913e90: LoadField: r2 = r0->field_f
    //     0x913e90: ldur            w2, [x0, #0xf]
    // 0x913e94: DecompressPointer r2
    //     0x913e94: add             x2, x2, HEAP, lsl #32
    // 0x913e98: cmp             w2, w1
    // 0x913e9c: b.ne            #0x913ea8
    // 0x913ea0: r5 = Null
    //     0x913ea0: mov             x5, NULL
    // 0x913ea4: b               #0x913eac
    // 0x913ea8: mov             x5, x1
    // 0x913eac: ldur            x4, [fp, #-0x18]
    // 0x913eb0: ldur            x3, [fp, #-0x10]
    // 0x913eb4: ldur            x0, [fp, #-0x28]
    // 0x913eb8: stur            x5, [fp, #-0x30]
    // 0x913ebc: r1 = Null
    //     0x913ebc: mov             x1, NULL
    // 0x913ec0: r2 = 16
    //     0x913ec0: mov             x2, #0x10
    // 0x913ec4: r0 = AllocateArray()
    //     0x913ec4: bl              #0x13df928  ; AllocateArrayStub
    // 0x913ec8: r16 = "refresh_token"
    //     0x913ec8: add             x16, PP, #0x16, lsl #12  ; [pp+0x16a30] "refresh_token"
    //     0x913ecc: ldr             x16, [x16, #0xa30]
    // 0x913ed0: StoreField: r0->field_f = r16
    //     0x913ed0: stur            w16, [x0, #0xf]
    // 0x913ed4: ldur            x1, [fp, #-0x10]
    // 0x913ed8: StoreField: r0->field_13 = r1
    //     0x913ed8: stur            w1, [x0, #0x13]
    // 0x913edc: r16 = "grant_type"
    //     0x913edc: add             x16, PP, #0x16, lsl #12  ; [pp+0x16bb8] "grant_type"
    //     0x913ee0: ldr             x16, [x16, #0xbb8]
    // 0x913ee4: ArrayStore: r0[0] = r16  ; List_4
    //     0x913ee4: stur            w16, [x0, #0x17]
    // 0x913ee8: r16 = "refresh_token"
    //     0x913ee8: add             x16, PP, #0x16, lsl #12  ; [pp+0x16a30] "refresh_token"
    //     0x913eec: ldr             x16, [x16, #0xa30]
    // 0x913ef0: StoreField: r0->field_1b = r16
    //     0x913ef0: stur            w16, [x0, #0x1b]
    // 0x913ef4: r16 = "client_id"
    //     0x913ef4: add             x16, PP, #0x16, lsl #12  ; [pp+0x16bc0] "client_id"
    //     0x913ef8: ldr             x16, [x16, #0xbc0]
    // 0x913efc: StoreField: r0->field_1f = r16
    //     0x913efc: stur            w16, [x0, #0x1f]
    // 0x913f00: ldur            x1, [fp, #-0x28]
    // 0x913f04: StoreField: r0->field_23 = r1
    //     0x913f04: stur            w1, [x0, #0x23]
    // 0x913f08: r16 = "client_secret"
    //     0x913f08: add             x16, PP, #0x16, lsl #12  ; [pp+0x16bc8] "client_secret"
    //     0x913f0c: ldr             x16, [x16, #0xbc8]
    // 0x913f10: StoreField: r0->field_27 = r16
    //     0x913f10: stur            w16, [x0, #0x27]
    // 0x913f14: ldur            x2, [fp, #-0x30]
    // 0x913f18: StoreField: r0->field_2b = r2
    //     0x913f18: stur            w2, [x0, #0x2b]
    // 0x913f1c: r16 = <String, dynamic>
    //     0x913f1c: ldr             x16, [PP, #0x21e0]  ; [pp+0x21e0] TypeArguments: <String, dynamic>
    // 0x913f20: stp             x0, x16, [SP]
    // 0x913f24: r0 = Map._fromLiteral()
    //     0x913f24: bl              #0x7efee0  ; [dart:core] Map::Map._fromLiteral
    // 0x913f28: r1 = Null
    //     0x913f28: mov             x1, NULL
    // 0x913f2c: r2 = 8
    //     0x913f2c: mov             x2, #8
    // 0x913f30: stur            x0, [fp, #-0x10]
    // 0x913f34: r0 = AllocateArray()
    //     0x913f34: bl              #0x13df928  ; AllocateArrayStub
    // 0x913f38: stur            x0, [fp, #-0x38]
    // 0x913f3c: r16 = "Content-Type"
    //     0x913f3c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16a08] "Content-Type"
    //     0x913f40: ldr             x16, [x16, #0xa08]
    // 0x913f44: StoreField: r0->field_f = r16
    //     0x913f44: stur            w16, [x0, #0xf]
    // 0x913f48: r16 = "application/x-www-form-urlencoded"
    //     0x913f48: add             x16, PP, #8, lsl #12  ; [pp+0x85a0] "application/x-www-form-urlencoded"
    //     0x913f4c: ldr             x16, [x16, #0x5a0]
    // 0x913f50: StoreField: r0->field_13 = r16
    //     0x913f50: stur            w16, [x0, #0x13]
    // 0x913f54: r16 = "authorization"
    //     0x913f54: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc20] "authorization"
    //     0x913f58: ldr             x16, [x16, #0xc20]
    // 0x913f5c: ArrayStore: r0[0] = r16  ; List_4
    //     0x913f5c: stur            w16, [x0, #0x17]
    // 0x913f60: r1 = Null
    //     0x913f60: mov             x1, NULL
    // 0x913f64: r2 = 4
    //     0x913f64: mov             x2, #4
    // 0x913f68: r0 = AllocateArray()
    //     0x913f68: bl              #0x13df928  ; AllocateArrayStub
    // 0x913f6c: stur            x0, [fp, #-0x40]
    // 0x913f70: r16 = "Basic "
    //     0x913f70: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc10] "Basic "
    //     0x913f74: ldr             x16, [x16, #0xc10]
    // 0x913f78: StoreField: r0->field_f = r16
    //     0x913f78: stur            w16, [x0, #0xf]
    // 0x913f7c: r1 = Null
    //     0x913f7c: mov             x1, NULL
    // 0x913f80: r2 = 6
    //     0x913f80: mov             x2, #6
    // 0x913f84: r0 = AllocateArray()
    //     0x913f84: bl              #0x13df928  ; AllocateArrayStub
    // 0x913f88: mov             x1, x0
    // 0x913f8c: ldur            x0, [fp, #-0x28]
    // 0x913f90: StoreField: r1->field_f = r0
    //     0x913f90: stur            w0, [x1, #0xf]
    // 0x913f94: r16 = ":"
    //     0x913f94: ldr             x16, [PP, #0xdd0]  ; [pp+0xdd0] ":"
    // 0x913f98: StoreField: r1->field_13 = r16
    //     0x913f98: stur            w16, [x1, #0x13]
    // 0x913f9c: ldur            x0, [fp, #-0x30]
    // 0x913fa0: ArrayStore: r1[0] = r0  ; List_4
    //     0x913fa0: stur            w0, [x1, #0x17]
    // 0x913fa4: str             x1, [SP]
    // 0x913fa8: r0 = _interpolate()
    //     0x913fa8: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0x913fac: mov             x2, x0
    // 0x913fb0: r1 = Instance_Utf8Encoder
    //     0x913fb0: ldr             x1, [PP, #0x11f8]  ; [pp+0x11f8] Obj!Utf8Encoder@12b7f11
    // 0x913fb4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x913fb4: ldr             x4, [PP, #0xc0]  ; [pp+0xc0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x913fb8: r0 = convert()
    //     0x913fb8: bl              #0x122268c  ; [dart:convert] Utf8Encoder::convert
    // 0x913fbc: mov             x2, x0
    // 0x913fc0: r1 = Instance_Base64Encoder
    //     0x913fc0: add             x1, PP, #0x16, lsl #12  ; [pp+0x16bd0] Obj!Base64Encoder@12b7f61
    //     0x913fc4: ldr             x1, [x1, #0xbd0]
    // 0x913fc8: r0 = convert()
    //     0x913fc8: bl              #0x12201b0  ; [dart:convert] Base64Encoder::convert
    // 0x913fcc: ldur            x1, [fp, #-0x40]
    // 0x913fd0: ArrayStore: r1[1] = r0  ; List_4
    //     0x913fd0: add             x25, x1, #0x13
    //     0x913fd4: str             w0, [x25]
    //     0x913fd8: tbz             w0, #0, #0x913ff4
    //     0x913fdc: ldurb           w16, [x1, #-1]
    //     0x913fe0: ldurb           w17, [x0, #-1]
    //     0x913fe4: and             x16, x17, x16, lsr #2
    //     0x913fe8: tst             x16, HEAP, lsr #32
    //     0x913fec: b.eq            #0x913ff4
    //     0x913ff0: bl              #0x13ddb50  ; ArrayWriteBarrierStub
    // 0x913ff4: ldur            x16, [fp, #-0x40]
    // 0x913ff8: str             x16, [SP]
    // 0x913ffc: r0 = _interpolate()
    //     0x913ffc: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0x914000: ldur            x1, [fp, #-0x38]
    // 0x914004: ArrayStore: r1[3] = r0  ; List_4
    //     0x914004: add             x25, x1, #0x1b
    //     0x914008: str             w0, [x25]
    //     0x91400c: tbz             w0, #0, #0x914028
    //     0x914010: ldurb           w16, [x1, #-1]
    //     0x914014: ldurb           w17, [x0, #-1]
    //     0x914018: and             x16, x17, x16, lsr #2
    //     0x91401c: tst             x16, HEAP, lsr #32
    //     0x914020: b.eq            #0x914028
    //     0x914024: bl              #0x13ddb50  ; ArrayWriteBarrierStub
    // 0x914028: r16 = <String, String>
    //     0x914028: ldr             x16, [PP, #0x7c88]  ; [pp+0x7c88] TypeArguments: <String, String>
    // 0x91402c: ldur            lr, [fp, #-0x38]
    // 0x914030: stp             lr, x16, [SP]
    // 0x914034: r0 = Map._fromLiteral()
    //     0x914034: bl              #0x7efee0  ; [dart:core] Map::Map._fromLiteral
    // 0x914038: mov             x1, x0
    // 0x91403c: ldur            x0, [fp, #-0x18]
    // 0x914040: stur            x1, [fp, #-0x28]
    // 0x914044: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x914044: ldur            w2, [x0, #0x17]
    // 0x914048: DecompressPointer r2
    //     0x914048: add             x2, x2, HEAP, lsl #32
    // 0x91404c: cmp             w2, NULL
    // 0x914050: b.ne            #0x91405c
    // 0x914054: r0 = Null
    //     0x914054: mov             x0, NULL
    // 0x914058: r0 = ReturnAsyncNotFuture()
    //     0x914058: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x91405c: r0 = LoadStaticField(0x165c)
    //     0x91405c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x914060: ldr             x0, [x0, #0x2cb8]
    // 0x914064: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x914068: cmp             w0, w16
    // 0x91406c: b.ne            #0x91407c
    // 0x914070: r2 = _instance
    //     0x914070: add             x2, PP, #0x16, lsl #12  ; [pp+0x16bd8] Field <APIService._instance@1757190008>: static late final (offset: 0x165c)
    //     0x914074: ldr             x2, [x2, #0xbd8]
    // 0x914078: r0 = InitLateFinalStaticField()
    //     0x914078: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x91407c: stur            x0, [fp, #-0x30]
    // 0x914080: r0 = configOauth()
    //     0x914080: bl              #0x8bff94  ; [package:simaster_ugm/flavors.dart] F::configOauth
    // 0x914084: stur            x0, [fp, #-0x38]
    // 0x914088: cmp             w0, NULL
    // 0x91408c: b.eq            #0x914618
    // 0x914090: mov             x1, x0
    // 0x914094: r2 = "tokenUrl"
    //     0x914094: add             x2, PP, #0x16, lsl #12  ; [pp+0x16be0] "tokenUrl"
    //     0x914098: ldr             x2, [x2, #0xbe0]
    // 0x91409c: r0 = _getValueOrData()
    //     0x91409c: bl              #0x13d8564  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x9140a0: mov             x1, x0
    // 0x9140a4: ldur            x0, [fp, #-0x38]
    // 0x9140a8: LoadField: r2 = r0->field_f
    //     0x9140a8: ldur            w2, [x0, #0xf]
    // 0x9140ac: DecompressPointer r2
    //     0x9140ac: add             x2, x2, HEAP, lsl #32
    // 0x9140b0: cmp             w2, w1
    // 0x9140b4: b.ne            #0x9140c0
    // 0x9140b8: r3 = Null
    //     0x9140b8: mov             x3, NULL
    // 0x9140bc: b               #0x9140c4
    // 0x9140c0: mov             x3, x1
    // 0x9140c4: mov             x0, x3
    // 0x9140c8: stur            x3, [fp, #-0x38]
    // 0x9140cc: r2 = Null
    //     0x9140cc: mov             x2, NULL
    // 0x9140d0: r1 = Null
    //     0x9140d0: mov             x1, NULL
    // 0x9140d4: r4 = 60
    //     0x9140d4: mov             x4, #0x3c
    // 0x9140d8: branchIfSmi(r0, 0x9140e4)
    //     0x9140d8: tbz             w0, #0, #0x9140e4
    // 0x9140dc: r4 = LoadClassIdInstr(r0)
    //     0x9140dc: ldur            x4, [x0, #-1]
    //     0x9140e0: ubfx            x4, x4, #0xc, #0x14
    // 0x9140e4: sub             x4, x4, #0x5e
    // 0x9140e8: cmp             x4, #1
    // 0x9140ec: b.ls            #0x914100
    // 0x9140f0: r8 = String
    //     0x9140f0: ldr             x8, [PP, #0x970]  ; [pp+0x970] Type: String
    // 0x9140f4: r3 = Null
    //     0x9140f4: add             x3, PP, #0x16, lsl #12  ; [pp+0x16be8] Null
    //     0x9140f8: ldr             x3, [x3, #0xbe8]
    // 0x9140fc: r0 = String()
    //     0x9140fc: bl              #0x13ee320  ; IsType_String_Stub
    // 0x914100: ldur            x16, [fp, #-0x30]
    // 0x914104: stp             x16, NULL, [SP, #0x40]
    // 0x914108: ldur            x16, [fp, #-0x18]
    // 0x91410c: ldur            lr, [fp, #-0x38]
    // 0x914110: stp             lr, x16, [SP, #0x30]
    // 0x914114: r16 = Instance_HttpMethod
    //     0x914114: add             x16, PP, #0x16, lsl #12  ; [pp+0x16bf8] Obj!HttpMethod@12bd531
    //     0x914118: ldr             x16, [x16, #0xbf8]
    // 0x91411c: ldur            lr, [fp, #-0x10]
    // 0x914120: stp             lr, x16, [SP, #0x20]
    // 0x914124: r16 = false
    //     0x914124: add             x16, NULL, #0x30  ; false
    // 0x914128: r30 = false
    //     0x914128: add             lr, NULL, #0x30  ; false
    // 0x91412c: stp             lr, x16, [SP, #0x10]
    // 0x914130: ldur            x16, [fp, #-0x28]
    // 0x914134: stp             NULL, x16, [SP]
    // 0x914138: r4 = const [0x1, 0x9, 0x9, 0x7, model, 0x8, requestHeader, 0x7, null]
    //     0x914138: add             x4, PP, #0x16, lsl #12  ; [pp+0x16c00] List(9) [0x1, 0x9, 0x9, 0x7, "model", 0x8, "requestHeader", 0x7, Null]
    //     0x91413c: ldr             x4, [x4, #0xc00]
    // 0x914140: r0 = apiProvider()
    //     0x914140: bl              #0x91ae40  ; [package:simaster_ugm/utils/base_networking_madzab_baru.dart] APIService::apiProvider
    // 0x914144: mov             x1, x0
    // 0x914148: stur            x1, [fp, #-0x10]
    // 0x91414c: r0 = Await()
    //     0x91414c: bl              #0x7f5c00  ; AwaitStub
    // 0x914150: mov             x1, x0
    // 0x914154: stur            x1, [fp, #-0x18]
    // 0x914158: cmp             w1, NULL
    // 0x91415c: b.ne            #0x914168
    // 0x914160: r0 = Null
    //     0x914160: mov             x0, NULL
    // 0x914164: r0 = ReturnAsyncNotFuture()
    //     0x914164: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x914168: LoadField: r0 = r1->field_f
    //     0x914168: ldur            w0, [x1, #0xf]
    // 0x91416c: DecompressPointer r0
    //     0x91416c: add             x0, x0, HEAP, lsl #32
    // 0x914170: LoadField: r2 = r0->field_b
    //     0x914170: ldur            w2, [x0, #0xb]
    // 0x914174: DecompressPointer r2
    //     0x914174: add             x2, x2, HEAP, lsl #32
    // 0x914178: stur            x2, [fp, #-0x10]
    // 0x91417c: r0 = 60
    //     0x91417c: mov             x0, #0x3c
    // 0x914180: branchIfSmi(r2, 0x91418c)
    //     0x914180: tbz             w2, #0, #0x91418c
    // 0x914184: r0 = LoadClassIdInstr(r2)
    //     0x914184: ldur            x0, [x2, #-1]
    //     0x914188: ubfx            x0, x0, #0xc, #0x14
    // 0x91418c: r16 = 400
    //     0x91418c: mov             x16, #0x190
    // 0x914190: stp             x16, x2, [SP]
    // 0x914194: mov             lr, x0
    // 0x914198: ldr             lr, [x21, lr, lsl #3]
    // 0x91419c: blr             lr
    // 0x9141a0: tbnz            w0, #4, #0x91451c
    // 0x9141a4: ldur            x0, [fp, #-0x18]
    // 0x9141a8: LoadField: r1 = r0->field_b
    //     0x9141a8: ldur            w1, [x0, #0xb]
    // 0x9141ac: DecompressPointer r1
    //     0x9141ac: add             x1, x1, HEAP, lsl #32
    // 0x9141b0: stur            x1, [fp, #-0x28]
    // 0x9141b4: r16 = "access_token"
    //     0x9141b4: ldr             x16, [PP, #0x7910]  ; [pp+0x7910] "access_token"
    // 0x9141b8: stp             x16, x1, [SP]
    // 0x9141bc: r4 = 0
    //     0x9141bc: mov             x4, #0
    // 0x9141c0: ldr             x0, [SP, #8]
    // 0x9141c4: r16 = 139822029843448
    //     0x9141c4: add             x16, PP, #0x16, lsl #12  ; [pp+0x16c08] IMM: 0x7f2ada6babf8
    //     0x9141c8: add             x16, x16, #0xc08
    // 0x9141cc: ldp             lr, x5, [x16]
    // 0x9141d0: blr             lr
    // 0x9141d4: cmp             w0, NULL
    // 0x9141d8: b.ne            #0x9141e0
    // 0x9141dc: r0 = ""
    //     0x9141dc: ldr             x0, [PP, #0x900]  ; [pp+0x900] ""
    // 0x9141e0: stur            x0, [fp, #-0x30]
    // 0x9141e4: ldur            x16, [fp, #-0x28]
    // 0x9141e8: r30 = "refresh_token"
    //     0x9141e8: add             lr, PP, #0x16, lsl #12  ; [pp+0x16a30] "refresh_token"
    //     0x9141ec: ldr             lr, [lr, #0xa30]
    // 0x9141f0: stp             lr, x16, [SP]
    // 0x9141f4: r4 = 0
    //     0x9141f4: mov             x4, #0
    // 0x9141f8: ldr             x0, [SP, #8]
    // 0x9141fc: r16 = 139822029843448
    //     0x9141fc: add             x16, PP, #0x16, lsl #12  ; [pp+0x16c18] IMM: 0x7f2ada6babf8
    //     0x914200: add             x16, x16, #0xc18
    // 0x914204: ldp             lr, x5, [x16]
    // 0x914208: blr             lr
    // 0x91420c: cmp             w0, NULL
    // 0x914210: b.ne            #0x914218
    // 0x914214: r0 = ""
    //     0x914214: ldr             x0, [PP, #0x900]  ; [pp+0x900] ""
    // 0x914218: stur            x0, [fp, #-0x28]
    // 0x91421c: ldur            x16, [fp, #-0x30]
    // 0x914220: str             x16, [SP]
    // 0x914224: r4 = 0
    //     0x914224: mov             x4, #0
    // 0x914228: ldr             x0, [SP]
    // 0x91422c: r16 = 139822029843448
    //     0x91422c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16c28] IMM: 0x7f2ada6babf8
    //     0x914230: add             x16, x16, #0xc28
    // 0x914234: ldp             lr, x5, [x16]
    // 0x914238: blr             lr
    // 0x91423c: tbnz            w0, #4, #0x9144f8
    // 0x914240: ldur            x16, [fp, #-0x28]
    // 0x914244: str             x16, [SP]
    // 0x914248: r4 = 0
    //     0x914248: mov             x4, #0
    // 0x91424c: ldr             x0, [SP]
    // 0x914250: r16 = 139822029843448
    //     0x914250: add             x16, PP, #0x16, lsl #12  ; [pp+0x16c38] IMM: 0x7f2ada6babf8
    //     0x914254: add             x16, x16, #0xc38
    // 0x914258: ldp             lr, x5, [x16]
    // 0x91425c: blr             lr
    // 0x914260: tbnz            w0, #4, #0x9144f8
    // 0x914264: ldur            x0, [fp, #-0x30]
    // 0x914268: r2 = Null
    //     0x914268: mov             x2, NULL
    // 0x91426c: r1 = Null
    //     0x91426c: mov             x1, NULL
    // 0x914270: r4 = 60
    //     0x914270: mov             x4, #0x3c
    // 0x914274: branchIfSmi(r0, 0x914280)
    //     0x914274: tbz             w0, #0, #0x914280
    // 0x914278: r4 = LoadClassIdInstr(r0)
    //     0x914278: ldur            x4, [x0, #-1]
    //     0x91427c: ubfx            x4, x4, #0xc, #0x14
    // 0x914280: sub             x4, x4, #0x5e
    // 0x914284: cmp             x4, #1
    // 0x914288: b.ls            #0x91429c
    // 0x91428c: r8 = String
    //     0x91428c: ldr             x8, [PP, #0x970]  ; [pp+0x970] Type: String
    // 0x914290: r3 = Null
    //     0x914290: add             x3, PP, #0x16, lsl #12  ; [pp+0x16c48] Null
    //     0x914294: ldr             x3, [x3, #0xc48]
    // 0x914298: r0 = String()
    //     0x914298: bl              #0x13ee320  ; IsType_String_Stub
    // 0x91429c: ldur            x1, [fp, #-0x20]
    // 0x9142a0: ldur            x3, [fp, #-0x30]
    // 0x9142a4: r2 = "access_token"
    //     0x9142a4: ldr             x2, [PP, #0x7910]  ; [pp+0x7910] "access_token"
    // 0x9142a8: r0 = setString()
    //     0x9142a8: bl              #0x91ae08  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x9142ac: mov             x1, x0
    // 0x9142b0: stur            x1, [fp, #-0x38]
    // 0x9142b4: r0 = Await()
    //     0x9142b4: bl              #0x7f5c00  ; AwaitStub
    // 0x9142b8: ldur            x0, [fp, #-0x28]
    // 0x9142bc: r2 = Null
    //     0x9142bc: mov             x2, NULL
    // 0x9142c0: r1 = Null
    //     0x9142c0: mov             x1, NULL
    // 0x9142c4: r4 = 60
    //     0x9142c4: mov             x4, #0x3c
    // 0x9142c8: branchIfSmi(r0, 0x9142d4)
    //     0x9142c8: tbz             w0, #0, #0x9142d4
    // 0x9142cc: r4 = LoadClassIdInstr(r0)
    //     0x9142cc: ldur            x4, [x0, #-1]
    //     0x9142d0: ubfx            x4, x4, #0xc, #0x14
    // 0x9142d4: sub             x4, x4, #0x5e
    // 0x9142d8: cmp             x4, #1
    // 0x9142dc: b.ls            #0x9142f0
    // 0x9142e0: r8 = String
    //     0x9142e0: ldr             x8, [PP, #0x970]  ; [pp+0x970] Type: String
    // 0x9142e4: r3 = Null
    //     0x9142e4: add             x3, PP, #0x16, lsl #12  ; [pp+0x16c58] Null
    //     0x9142e8: ldr             x3, [x3, #0xc58]
    // 0x9142ec: r0 = String()
    //     0x9142ec: bl              #0x13ee320  ; IsType_String_Stub
    // 0x9142f0: ldur            x1, [fp, #-0x20]
    // 0x9142f4: ldur            x3, [fp, #-0x28]
    // 0x9142f8: r2 = "refresh_token"
    //     0x9142f8: add             x2, PP, #0x16, lsl #12  ; [pp+0x16a30] "refresh_token"
    //     0x9142fc: ldr             x2, [x2, #0xa30]
    // 0x914300: r0 = setString()
    //     0x914300: bl              #0x91ae08  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x914304: mov             x1, x0
    // 0x914308: stur            x1, [fp, #-0x38]
    // 0x91430c: r0 = Await()
    //     0x91430c: bl              #0x7f5c00  ; AwaitStub
    // 0x914310: ldur            x1, [fp, #-0x30]
    // 0x914314: r0 = decode()
    //     0x914314: bl              #0x920a4c  ; [package:jwt_decoder/jwt_decoder.dart] JwtDecoder::decode
    // 0x914318: ldur            x1, [fp, #-0x28]
    // 0x91431c: stur            x0, [fp, #-0x28]
    // 0x914320: r0 = decode()
    //     0x914320: bl              #0x920a4c  ; [package:jwt_decoder/jwt_decoder.dart] JwtDecoder::decode
    // 0x914324: mov             x4, x0
    // 0x914328: ldur            x3, [fp, #-0x28]
    // 0x91432c: stur            x4, [fp, #-0x30]
    // 0x914330: r0 = LoadClassIdInstr(r3)
    //     0x914330: ldur            x0, [x3, #-1]
    //     0x914334: ubfx            x0, x0, #0xc, #0x14
    // 0x914338: mov             x1, x3
    // 0x91433c: r2 = "exp"
    //     0x91433c: add             x2, PP, #0x16, lsl #12  ; [pp+0x16b68] "exp"
    //     0x914340: ldr             x2, [x2, #0xb68]
    // 0x914344: r0 = GDT[cid_x0 + -0xd48]()
    //     0x914344: sub             lr, x0, #0xd48
    //     0x914348: ldr             lr, [x21, lr, lsl #3]
    //     0x91434c: blr             lr
    // 0x914350: cmp             w0, NULL
    // 0x914354: b.ne            #0x914360
    // 0x914358: r4 = 0
    //     0x914358: mov             x4, #0
    // 0x91435c: b               #0x914364
    // 0x914360: mov             x4, x0
    // 0x914364: ldur            x3, [fp, #-0x30]
    // 0x914368: mov             x0, x4
    // 0x91436c: stur            x4, [fp, #-0x38]
    // 0x914370: r2 = Null
    //     0x914370: mov             x2, NULL
    // 0x914374: r1 = Null
    //     0x914374: mov             x1, NULL
    // 0x914378: branchIfSmi(r0, 0x9143a0)
    //     0x914378: tbz             w0, #0, #0x9143a0
    // 0x91437c: r4 = LoadClassIdInstr(r0)
    //     0x91437c: ldur            x4, [x0, #-1]
    //     0x914380: ubfx            x4, x4, #0xc, #0x14
    // 0x914384: sub             x4, x4, #0x3c
    // 0x914388: cmp             x4, #1
    // 0x91438c: b.ls            #0x9143a0
    // 0x914390: r8 = int
    //     0x914390: ldr             x8, [PP, #0x390]  ; [pp+0x390] Type: int
    // 0x914394: r3 = Null
    //     0x914394: add             x3, PP, #0x16, lsl #12  ; [pp+0x16c68] Null
    //     0x914398: ldr             x3, [x3, #0xc68]
    // 0x91439c: r0 = int()
    //     0x91439c: bl              #0x13ee980  ; IsType_int_Stub
    // 0x9143a0: ldur            x0, [fp, #-0x38]
    // 0x9143a4: r3 = LoadInt32Instr(r0)
    //     0x9143a4: sbfx            x3, x0, #1, #0x1f
    //     0x9143a8: tbz             w0, #0, #0x9143b0
    //     0x9143ac: ldur            x3, [x0, #7]
    // 0x9143b0: ldur            x1, [fp, #-0x20]
    // 0x9143b4: r2 = "access_token_expiration_unix"
    //     0x9143b4: add             x2, PP, #0x16, lsl #12  ; [pp+0x16c78] "access_token_expiration_unix"
    //     0x9143b8: ldr             x2, [x2, #0xc78]
    // 0x9143bc: r0 = setInt()
    //     0x9143bc: bl              #0x91abd4  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x9143c0: mov             x1, x0
    // 0x9143c4: stur            x1, [fp, #-0x38]
    // 0x9143c8: r0 = Await()
    //     0x9143c8: bl              #0x7f5c00  ; AwaitStub
    // 0x9143cc: ldur            x1, [fp, #-0x30]
    // 0x9143d0: r0 = LoadClassIdInstr(r1)
    //     0x9143d0: ldur            x0, [x1, #-1]
    //     0x9143d4: ubfx            x0, x0, #0xc, #0x14
    // 0x9143d8: r2 = "exp"
    //     0x9143d8: add             x2, PP, #0x16, lsl #12  ; [pp+0x16b68] "exp"
    //     0x9143dc: ldr             x2, [x2, #0xb68]
    // 0x9143e0: r0 = GDT[cid_x0 + -0xd48]()
    //     0x9143e0: sub             lr, x0, #0xd48
    //     0x9143e4: ldr             lr, [x21, lr, lsl #3]
    //     0x9143e8: blr             lr
    // 0x9143ec: cmp             w0, NULL
    // 0x9143f0: b.ne            #0x9143fc
    // 0x9143f4: r4 = 0
    //     0x9143f4: mov             x4, #0
    // 0x9143f8: b               #0x914400
    // 0x9143fc: mov             x4, x0
    // 0x914400: ldur            x3, [fp, #-0x28]
    // 0x914404: mov             x0, x4
    // 0x914408: stur            x4, [fp, #-0x30]
    // 0x91440c: r2 = Null
    //     0x91440c: mov             x2, NULL
    // 0x914410: r1 = Null
    //     0x914410: mov             x1, NULL
    // 0x914414: branchIfSmi(r0, 0x91443c)
    //     0x914414: tbz             w0, #0, #0x91443c
    // 0x914418: r4 = LoadClassIdInstr(r0)
    //     0x914418: ldur            x4, [x0, #-1]
    //     0x91441c: ubfx            x4, x4, #0xc, #0x14
    // 0x914420: sub             x4, x4, #0x3c
    // 0x914424: cmp             x4, #1
    // 0x914428: b.ls            #0x91443c
    // 0x91442c: r8 = int
    //     0x91442c: ldr             x8, [PP, #0x390]  ; [pp+0x390] Type: int
    // 0x914430: r3 = Null
    //     0x914430: add             x3, PP, #0x16, lsl #12  ; [pp+0x16c80] Null
    //     0x914434: ldr             x3, [x3, #0xc80]
    // 0x914438: r0 = int()
    //     0x914438: bl              #0x13ee980  ; IsType_int_Stub
    // 0x91443c: ldur            x0, [fp, #-0x30]
    // 0x914440: r3 = LoadInt32Instr(r0)
    //     0x914440: sbfx            x3, x0, #1, #0x1f
    //     0x914444: tbz             w0, #0, #0x91444c
    //     0x914448: ldur            x3, [x0, #7]
    // 0x91444c: ldur            x1, [fp, #-0x20]
    // 0x914450: r2 = "refresh_token_expiration_unix"
    //     0x914450: add             x2, PP, #0x16, lsl #12  ; [pp+0x16c90] "refresh_token_expiration_unix"
    //     0x914454: ldr             x2, [x2, #0xc90]
    // 0x914458: r0 = setInt()
    //     0x914458: bl              #0x91abd4  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x91445c: mov             x1, x0
    // 0x914460: stur            x1, [fp, #-0x30]
    // 0x914464: r0 = Await()
    //     0x914464: bl              #0x7f5c00  ; AwaitStub
    // 0x914468: ldur            x1, [fp, #-0x28]
    // 0x91446c: r0 = LoadClassIdInstr(r1)
    //     0x91446c: ldur            x0, [x1, #-1]
    //     0x914470: ubfx            x0, x0, #0xc, #0x14
    // 0x914474: r2 = "scopes"
    //     0x914474: add             x2, PP, #0x16, lsl #12  ; [pp+0x16c98] "scopes"
    //     0x914478: ldr             x2, [x2, #0xc98]
    // 0x91447c: r0 = GDT[cid_x0 + -0xd48]()
    //     0x91447c: sub             lr, x0, #0xd48
    //     0x914480: ldr             lr, [x21, lr, lsl #3]
    //     0x914484: blr             lr
    // 0x914488: cmp             w0, NULL
    // 0x91448c: b.ne            #0x914498
    // 0x914490: r3 = ""
    //     0x914490: ldr             x3, [PP, #0x900]  ; [pp+0x900] ""
    // 0x914494: b               #0x91449c
    // 0x914498: mov             x3, x0
    // 0x91449c: mov             x0, x3
    // 0x9144a0: stur            x3, [fp, #-0x28]
    // 0x9144a4: r2 = Null
    //     0x9144a4: mov             x2, NULL
    // 0x9144a8: r1 = Null
    //     0x9144a8: mov             x1, NULL
    // 0x9144ac: r4 = 60
    //     0x9144ac: mov             x4, #0x3c
    // 0x9144b0: branchIfSmi(r0, 0x9144bc)
    //     0x9144b0: tbz             w0, #0, #0x9144bc
    // 0x9144b4: r4 = LoadClassIdInstr(r0)
    //     0x9144b4: ldur            x4, [x0, #-1]
    //     0x9144b8: ubfx            x4, x4, #0xc, #0x14
    // 0x9144bc: sub             x4, x4, #0x5e
    // 0x9144c0: cmp             x4, #1
    // 0x9144c4: b.ls            #0x9144d8
    // 0x9144c8: r8 = String
    //     0x9144c8: ldr             x8, [PP, #0x970]  ; [pp+0x970] Type: String
    // 0x9144cc: r3 = Null
    //     0x9144cc: add             x3, PP, #0x16, lsl #12  ; [pp+0x16ca0] Null
    //     0x9144d0: ldr             x3, [x3, #0xca0]
    // 0x9144d4: r0 = String()
    //     0x9144d4: bl              #0x13ee320  ; IsType_String_Stub
    // 0x9144d8: ldur            x1, [fp, #-0x20]
    // 0x9144dc: ldur            x3, [fp, #-0x28]
    // 0x9144e0: r2 = "scopes"
    //     0x9144e0: add             x2, PP, #0x16, lsl #12  ; [pp+0x16c98] "scopes"
    //     0x9144e4: ldr             x2, [x2, #0xc98]
    // 0x9144e8: r0 = setString()
    //     0x9144e8: bl              #0x91ae08  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x9144ec: mov             x1, x0
    // 0x9144f0: stur            x1, [fp, #-0x20]
    // 0x9144f4: r0 = Await()
    //     0x9144f4: bl              #0x7f5c00  ; AwaitStub
    // 0x9144f8: r0 = LoadStaticField(0x930)
    //     0x9144f8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x9144fc: ldr             x0, [x0, #0x1260]
    // 0x914500: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x914504: cmp             w0, w16
    // 0x914508: b.ne            #0x914514
    // 0x91450c: r2 = _isLoggingEnabled
    //     0x91450c: ldr             x2, [PP, #0x7998]  ; [pp+0x7998] Field <Log._isLoggingEnabled@241238401>: static late final (offset: 0x930)
    // 0x914510: r0 = InitLateFinalStaticField()
    //     0x914510: bl              #0x13dd9ec  ; InitLateFinalStaticFieldStub
    // 0x914514: ldur            x0, [fp, #-0x18]
    // 0x914518: r0 = ReturnAsync()
    //     0x914518: b               #0x82fdf0  ; ReturnAsyncStub
    // 0x91451c: r0 = LoadStaticField(0x1644)
    //     0x91451c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x914520: ldr             x0, [x0, #0x2c88]
    // 0x914524: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x914528: cmp             w0, w16
    // 0x91452c: b.ne            #0x91453c
    // 0x914530: r2 = noLogoutStatusesWhenRefreshFailed
    //     0x914530: add             x2, PP, #0x16, lsl #12  ; [pp+0x16a80] Field <OauthGlobalController.noLogoutStatusesWhenRefreshFailed>: static late (offset: 0x1644)
    //     0x914534: ldr             x2, [x2, #0xa80]
    // 0x914538: r0 = InitLateStaticField()
    //     0x914538: bl              #0x13dda54  ; InitLateStaticFieldStub
    // 0x91453c: mov             x1, x0
    // 0x914540: ldur            x2, [fp, #-0x10]
    // 0x914544: r0 = contains()
    //     0x914544: bl              #0xbafbf4  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::contains
    // 0x914548: tbnz            w0, #4, #0x914600
    // 0x91454c: r16 = 858
    //     0x91454c: mov             x16, #0x35a
    // 0x914550: ldur            lr, [fp, #-0x10]
    // 0x914554: stp             lr, x16, [SP]
    // 0x914558: r0 = ==()
    //     0x914558: bl              #0x12b7d64  ; [dart:core] _IntegerImplementation::==
    // 0x91455c: tbnz            w0, #4, #0x9145f8
    // 0x914560: ldur            x0, [fp, #-0x10]
    // 0x914564: r1 = "error_detail_refresh"
    //     0x914564: add             x1, PP, #0x16, lsl #12  ; [pp+0x16cb0] "error_detail_refresh"
    //     0x914568: ldr             x1, [x1, #0xcb0]
    // 0x91456c: r0 = Trans.tr()
    //     0x91456c: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x914570: r1 = "error_title_refresh"
    //     0x914570: add             x1, PP, #0x16, lsl #12  ; [pp+0x16cb8] "error_title_refresh"
    //     0x914574: ldr             x1, [x1, #0xcb8]
    // 0x914578: stur            x0, [fp, #-0x20]
    // 0x91457c: r0 = Trans.tr()
    //     0x91457c: bl              #0x8becf8  ; [package:get/get_utils/src/extensions/internacionalization.dart] ::Trans.tr
    // 0x914580: r1 = Null
    //     0x914580: mov             x1, NULL
    // 0x914584: r2 = 8
    //     0x914584: mov             x2, #8
    // 0x914588: stur            x0, [fp, #-0x28]
    // 0x91458c: r0 = AllocateArray()
    //     0x91458c: bl              #0x13df928  ; AllocateArrayStub
    // 0x914590: mov             x1, x0
    // 0x914594: ldur            x0, [fp, #-0x28]
    // 0x914598: StoreField: r1->field_f = r0
    //     0x914598: stur            w0, [x1, #0xf]
    // 0x91459c: r16 = " ("
    //     0x91459c: ldr             x16, [PP, #0xe38]  ; [pp+0xe38] " ("
    // 0x9145a0: StoreField: r1->field_13 = r16
    //     0x9145a0: stur            w16, [x1, #0x13]
    // 0x9145a4: ldur            x0, [fp, #-0x10]
    // 0x9145a8: ArrayStore: r1[0] = r0  ; List_4
    //     0x9145a8: stur            w0, [x1, #0x17]
    // 0x9145ac: r16 = ")"
    //     0x9145ac: ldr             x16, [PP, #0xe60]  ; [pp+0xe60] ")"
    // 0x9145b0: StoreField: r1->field_1b = r16
    //     0x9145b0: stur            w16, [x1, #0x1b]
    // 0x9145b4: str             x1, [SP]
    // 0x9145b8: r0 = _interpolate()
    //     0x9145b8: bl              #0x7e1b8c  ; [dart:core] _StringBase::_interpolate
    // 0x9145bc: stur            x0, [fp, #-0x10]
    // 0x9145c0: r0 = Image()
    //     0x9145c0: bl              #0x91abc8  ; AllocateImageStub -> Image (size=0x58)
    // 0x9145c4: mov             x1, x0
    // 0x9145c8: r2 = "assets/images/mascot/maskot_disconnected.png"
    //     0x9145c8: add             x2, PP, #0x16, lsl #12  ; [pp+0x16cc0] "assets/images/mascot/maskot_disconnected.png"
    //     0x9145cc: ldr             x2, [x2, #0xcc0]
    // 0x9145d0: stur            x0, [fp, #-0x28]
    // 0x9145d4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x9145d4: ldr             x4, [PP, #0xc0]  ; [pp+0xc0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x9145d8: r0 = Image.asset()
    //     0x9145d8: bl              #0x919980  ; [package:flutter/src/widgets/image.dart] Image::Image.asset
    // 0x9145dc: ldur            x16, [fp, #-0x28]
    // 0x9145e0: str             x16, [SP]
    // 0x9145e4: ldur            x1, [fp, #-0x20]
    // 0x9145e8: ldur            x2, [fp, #-0x10]
    // 0x9145ec: r4 = const [0, 0x3, 0x1, 0x2, icon, 0x2, null]
    //     0x9145ec: add             x4, PP, #0x16, lsl #12  ; [pp+0x16cc8] List(7) [0, 0x3, 0x1, 0x2, "icon", 0x2, Null]
    //     0x9145f0: ldr             x4, [x4, #0xcc8]
    // 0x9145f4: r0 = showSnackbarWithIconWarning()
    //     0x9145f4: bl              #0x91461c  ; [package:simaster_ugm/design_system/widgets/snackbar/snackbar_collections.dart] SnackbarMetronic::showSnackbarWithIconWarning
    // 0x9145f8: ldur            x0, [fp, #-0x18]
    // 0x9145fc: r0 = ReturnAsync()
    //     0x9145fc: b               #0x82fdf0  ; ReturnAsyncStub
    // 0x914600: r0 = Null
    //     0x914600: mov             x0, NULL
    // 0x914604: r0 = ReturnAsyncNotFuture()
    //     0x914604: b               #0x7f592c  ; ReturnAsyncNotFutureStub
    // 0x914608: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x914608: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x91460c: b               #0x913db8
    // 0x914610: r0 = NullErrorSharedWithoutFPURegs()
    //     0x914610: bl              #0x13e0274  ; NullErrorSharedWithoutFPURegsStub
    // 0x914614: r0 = NullErrorSharedWithoutFPURegs()
    //     0x914614: bl              #0x13e0274  ; NullErrorSharedWithoutFPURegsStub
    // 0x914618: r0 = NullErrorSharedWithoutFPURegs()
    //     0x914618: bl              #0x13e0274  ; NullErrorSharedWithoutFPURegsStub
  }
  static Set<dynamic> noLogoutStatusesWhenRefreshFailed() {
    // ** addr: 0x91d5ac, size: 0x80
    // 0x91d5ac: EnterFrame
    //     0x91d5ac: stp             fp, lr, [SP, #-0x10]!
    //     0x91d5b0: mov             fp, SP
    // 0x91d5b4: AllocStack(0x8)
    //     0x91d5b4: sub             SP, SP, #8
    // 0x91d5b8: CheckStackOverflow
    //     0x91d5b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x91d5bc: cmp             SP, x16
    //     0x91d5c0: b.ls            #0x91d624
    // 0x91d5c4: r1 = Null
    //     0x91d5c4: mov             x1, NULL
    // 0x91d5c8: r0 = _Set()
    //     0x91d5c8: bl              #0x81d998  ; Allocate_SetStub -> _Set<X0> (size=-0x8)
    // 0x91d5cc: mov             x3, x0
    // 0x91d5d0: r0 = _Uint32List
    //     0x91d5d0: ldr             x0, [PP, #0x17d8]  ; [pp+0x17d8] _Uint32List(1) [0x0]
    // 0x91d5d4: stur            x3, [fp, #-8]
    // 0x91d5d8: StoreField: r3->field_1b = r0
    //     0x91d5d8: stur            w0, [x3, #0x1b]
    // 0x91d5dc: StoreField: r3->field_b = rZR
    //     0x91d5dc: stur            wzr, [x3, #0xb]
    // 0x91d5e0: r0 = const []
    //     0x91d5e0: ldr             x0, [PP, #0x17e0]  ; [pp+0x17e0] List(0) []
    // 0x91d5e4: StoreField: r3->field_f = r0
    //     0x91d5e4: stur            w0, [x3, #0xf]
    // 0x91d5e8: StoreField: r3->field_13 = rZR
    //     0x91d5e8: stur            wzr, [x3, #0x13]
    // 0x91d5ec: ArrayStore: r3[0] = rZR  ; List_4
    //     0x91d5ec: stur            wzr, [x3, #0x17]
    // 0x91d5f0: mov             x1, x3
    // 0x91d5f4: r2 = 858
    //     0x91d5f4: mov             x2, #0x35a
    // 0x91d5f8: r0 = add()
    //     0x91d5f8: bl              #0x12d6178  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x91d5fc: ldur            x1, [fp, #-8]
    // 0x91d600: r2 = 1000
    //     0x91d600: mov             x2, #0x3e8
    // 0x91d604: r0 = add()
    //     0x91d604: bl              #0x12d6178  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x91d608: ldur            x1, [fp, #-8]
    // 0x91d60c: r2 = 1006
    //     0x91d60c: mov             x2, #0x3ee
    // 0x91d610: r0 = add()
    //     0x91d610: bl              #0x12d6178  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x91d614: ldur            x0, [fp, #-8]
    // 0x91d618: LeaveFrame
    //     0x91d618: mov             SP, fp
    //     0x91d61c: ldp             fp, lr, [SP], #0x10
    // 0x91d620: ret
    //     0x91d620: ret             
    // 0x91d624: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x91d624: bl              #0x13dfa34  ; StackOverflowSharedWithoutFPURegsStub
    // 0x91d628: b               #0x91d5c4
  }
}
