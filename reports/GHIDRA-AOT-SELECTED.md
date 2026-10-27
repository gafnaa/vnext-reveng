# Ghidra 12.1.4 decompilation of selected Dart AOT functions

Source ELF SHA-256: 3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290

Blutter source addresses are ELF file-backed coordinates. Ghidra imported this ELF with image base 0x100000, so the script uses Ghidra address = Blutter address + 0x100000. Names and byte extents come from Blutter's labeled output; instruction decoding and pseudocode below come from Ghidra.

Ghidra function inventory after analysis and seeding: `2052`

> Angka 2.052 di atas adalah baseline lima seed. Batch aplikasi 2026-10-27 menambahkan 2.763 function; Function Manager akhir berisi 4.815 function dan seluruh function start `simaster_ugm` terwakili. Lihat [`GHIDRA-APP-DECOMPILE.md`](GHIDRA-APP-DECOMPILE.md).

## AuthNetworkImpl_signIn

- Blutter address: `0xfda15c`
- Ghidra address: `0x10da15c`
- Blutter byte extent: `0x430` bytes (inclusive end `0x10da58b`)
- Ghidra bounded disassembly command: `true`
- Ghidra function entry: `0x10da15c`
- Ghidra body bytes: `1072`
- Ghidra body address ranges: `1`

```c

void AuthNetworkImpl_signIn(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  code *pcVar1;
  uint uVar2;
  undefined8 uVar3;
  long lVar4;
  ulong uVar5;
  undefined8 extraout_x1;
  undefined8 extraout_x1_00;
  ulong uVar6;
  long in_x15;
  undefined8 *puVar7;
  long *extraout_x15;
  undefined8 *extraout_x15_00;
  long *extraout_x15_01;
  undefined8 *extraout_x15_02;
  undefined8 *extraout_x15_03;
  undefined8 *puVar8;
  undefined8 *extraout_x15_04;
  ulong *extraout_x15_05;
  undefined8 *extraout_x15_06;
  undefined8 *extraout_x15_07;
  undefined8 *extraout_x15_08;
  undefined8 *extraout_x15_09;
  undefined8 *extraout_x15_10;
  undefined8 *extraout_x15_11;
  undefined8 *extraout_x15_12;
  undefined8 *extraout_x15_13;
  undefined8 *extraout_x15_14;
  undefined8 *extraout_x15_15;
  undefined8 *extraout_x15_16;
  undefined8 *extraout_x15_17;
  undefined8 *extraout_x15_18;
  undefined8 *extraout_x15_19;
  undefined8 *extraout_x15_20;
  undefined8 *extraout_x15_21;
  undefined8 uVar9;
  long unaff_x21;
  undefined8 unaff_x22;
  long unaff_x26;
  long unaff_x27;
  long unaff_x28;
  undefined8 unaff_x29;
  undefined8 unaff_x30;

  puVar7 = (undefined8 *)(in_x15 + -0x10);
  *puVar7 = unaff_x29;
  *(undefined8 *)(in_x15 + -8) = unaff_x30;
  *(undefined8 *)(in_x15 + -0x18) = unaff_x22;
  *(undefined8 *)(in_x15 + -0x20) = param_2;
  *(undefined8 *)(in_x15 + -0x28) = param_3;
  if (in_x15 - 0x50U <= *(ulong *)(unaff_x26 + 0x48)) {
    FUN_014dfa34();
  }
  FUN_008f5e44(*(undefined8 *)(unaff_x27 + 0x8d0));
  uVar3 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1268);
  if ((int)uVar3 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
    uVar3 = FUN_014dd9ec(uVar3,extraout_x1,*(undefined8 *)(unaff_x27 + 0x15c50));
  }
  *(undefined8 *)(in_x15 + -0x30) = uVar3;
  lVar4 = FUN_014df928();
  *(int *)(lVar4 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x22170);
  *(int *)(lVar4 + 0x13) = (int)*(undefined8 *)(in_x15 + -0x28);
  *(int *)(lVar4 + 0x17) = (int)*(undefined8 *)(unaff_x27 + 0xe6d0);
  *(int *)(lVar4 + 0x1b) = (int)*(undefined8 *)(unaff_x27 + 0xca18);
  *(int *)(lVar4 + 0x1f) = (int)*(undefined8 *)(unaff_x27 + 0x17890);
  *extraout_x15 = lVar4;
  uVar3 = FUN_008e1b8c();
  extraout_x15_00[2] = *(undefined8 *)(in_x15 + -0x30);
  extraout_x15_00[3] = unaff_x22;
  *extraout_x15_00 = *(undefined8 *)(unaff_x27 + 0x198a0);
  extraout_x15_00[1] = uVar3;
  uVar3 = BaseNetworking_post();
  *(undefined8 *)(in_x15 + -0x28) = uVar3;
  uVar3 = FUN_008f5c00();
  *(undefined8 *)(in_x15 + -0x20) = uVar3;
  lVar4 = FUN_014df928();
  *(int *)(lVar4 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x22178);
  *(undefined4 *)(lVar4 + 0x13) = *(undefined4 *)(*(long *)(in_x15 + -0x20) + 0xb);
  *extraout_x15_01 = lVar4;
  FUN_008e1b8c();
  uVar3 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
  puVar8 = extraout_x15_02;
  if ((int)uVar3 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
    FUN_014dd9ec(uVar3,extraout_x1_00,*(undefined8 *)(unaff_x27 + 0x7998));
    puVar8 = extraout_x15_03;
  }
  if (*(int *)(*(long *)(in_x15 + -0x20) + 0x13) == 400) {
    uVar2 = *(uint *)(*(long *)(in_x15 + -0x20) + 0xb);
    *puVar8 = *(undefined8 *)(unaff_x27 + 0x15c70);
    puVar8[1] = (ulong)uVar2 + (unaff_x28 << 0x20);
    uVar3 = (**(code **)(unaff_x27 + 0x22180))(puVar8[1]);
    *extraout_x15_04 = 0;
    extraout_x15_04[1] = uVar3;
    uVar5 = (**(code **)(unaff_x27 + 0x22190))(extraout_x15_04[1]);
    uVar6 = 0x3c;
    if ((uVar5 & 1) != 0) {
      uVar6 = *(ulong *)(uVar5 - 1) >> 0xc & 0xfffff;
    }
    *extraout_x15_05 = uVar5;
    lVar4 = (**(code **)(unaff_x21 + (uVar6 + 0x91c1) * 8))();
    uVar5 = *(ulong *)(lVar4 + -1);
    *extraout_x15_06 = *(undefined8 *)(unaff_x27 + 0xcf48);
    extraout_x15_06[1] = lVar4;
    uVar2 = (**(code **)(unaff_x21 + (uVar5 >> 0xc & 0xfffff) * 8))();
    if ((uVar2 >> 4 & 1) != 0) {
      uVar2 = *(uint *)(*(long *)(in_x15 + -0x20) + 0xb);
      *extraout_x15_07 = *(undefined8 *)(unaff_x27 + 0x15c70);
      extraout_x15_07[1] = (ulong)uVar2 + (unaff_x28 << 0x20);
      uVar3 = (**(code **)(unaff_x27 + 0x221a0))(extraout_x15_07[1]);
      *extraout_x15_08 = 0;
      extraout_x15_08[1] = uVar3;
      uVar3 = (**(code **)(unaff_x27 + 0x221b0))(extraout_x15_08[1]);
      *extraout_x15_09 = 0;
      extraout_x15_09[1] = uVar3;
      uVar3 = (**(code **)(unaff_x27 + 0x221c0))(extraout_x15_09[1]);
      *extraout_x15_10 = *(undefined8 *)(unaff_x27 + 0x18b18);
      extraout_x15_10[1] = uVar3;
      uVar5 = (**(code **)(unaff_x27 + 0x221d0))(extraout_x15_10[1]);
      uVar6 = 0x3c;
      if ((uVar5 & 1) != 0) {
        uVar6 = *(ulong *)(uVar5 - 1) >> 0xc & 0xfffff;
      }
      *extraout_x15_11 = *(undefined8 *)(unaff_x27 + 0x47e8);
      extraout_x15_11[1] = uVar5;
      uVar2 = (**(code **)(unaff_x21 + uVar6 * 8))();
      if ((uVar2 >> 4 & 1) != 0) {
        uVar2 = *(uint *)(*(long *)(in_x15 + -0x20) + 0xb);
        *extraout_x15_12 = *(undefined8 *)(unaff_x27 + 0x15c70);
        extraout_x15_12[1] = (ulong)uVar2 + (unaff_x28 << 0x20);
        uVar3 = (**(code **)(unaff_x27 + 0x221e0))(extraout_x15_12[1]);
        *extraout_x15_13 = 0;
        extraout_x15_13[1] = uVar3;
        uVar3 = (**(code **)(unaff_x27 + 0x221f0))(extraout_x15_13[1]);
        *extraout_x15_14 = 0;
        extraout_x15_14[1] = uVar3;
        uVar3 = (**(code **)(unaff_x27 + 0x22200))(extraout_x15_14[1]);
        *extraout_x15_15 = *(undefined8 *)(unaff_x27 + 0x187c8);
        extraout_x15_15[1] = uVar3;
        uVar3 = (**(code **)(unaff_x27 + 0x22210))(extraout_x15_15[1]);
        *(undefined8 *)(in_x15 + -0x20) = uVar3;
        FUN_014dd7a4(*(undefined8 *)(unaff_x27 + 0x17cd8));
        *puVar7 = *puVar7;
        *(undefined8 *)(in_x15 + -8) = *(undefined8 *)(in_x15 + -8);
        *(undefined8 *)(in_x15 + -0x20) = *(undefined8 *)(in_x15 + -0x20);
        *(undefined8 *)(in_x15 + -0x18) = *(undefined8 *)(in_x15 + -0x18);
        (**(code **)(unaff_x26 + 0x640))();
        return;
      }
      uVar3 = FUN_009eba04();
      *(undefined8 *)(in_x15 + -0x20) = uVar3;
      *extraout_x15_18 = *(undefined8 *)(unaff_x27 + 0x198a0);
      FUN_009ea020(uVar3,uVar3);
      uVar3 = FUN_009ea014();
      *(undefined8 *)(in_x15 + -0x28) = uVar3;
      uVar9 = *(undefined8 *)(unaff_x27 + 90000);
      *extraout_x15_19 = *(undefined8 *)(unaff_x27 + 0x22238);
      extraout_x15_19[1] = uVar9;
      FUN_009e97ec(uVar3,uVar3,*(undefined8 *)(in_x15 + -0x20));
      FUN_014ddb2c(*(undefined8 *)(in_x15 + -0x28));
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0,0x10da528);
      (*pcVar1)();
    }
    uVar3 = FUN_009eba04();
    *(undefined8 *)(in_x15 + -0x20) = uVar3;
    *extraout_x15_16 = *(undefined8 *)(unaff_x27 + 0x198a0);
    FUN_009ea020(uVar3,uVar3);
    uVar3 = FUN_009ea014();
    *(undefined8 *)(in_x15 + -0x28) = uVar3;
    uVar9 = *(undefined8 *)(unaff_x27 + 90000);
    *extraout_x15_17 = *(undefined8 *)(unaff_x27 + 0x22230);
    extraout_x15_17[1] = uVar9;
    FUN_009e97ec(uVar3,uVar3,*(undefined8 *)(in_x15 + -0x20));
    FUN_014ddb2c(*(undefined8 *)(in_x15 + -0x28));
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0,0x10da4cc);
    (*pcVar1)();
  }
  uVar3 = FUN_009eba04();
  *(undefined8 *)(in_x15 + -0x20) = uVar3;
  *extraout_x15_20 = *(undefined8 *)(unaff_x27 + 0x198a0);
  FUN_009ea020(uVar3,uVar3);
  uVar3 = FUN_009ea014();
  *(undefined8 *)(in_x15 + -0x28) = uVar3;
  uVar9 = *(undefined8 *)(unaff_x27 + 0x17908);
  *extraout_x15_21 = *(undefined8 *)(unaff_x27 + 0x15ce0);
  extraout_x15_21[1] = uVar9;
  FUN_009e97ec(uVar3,uVar3,*(undefined8 *)(in_x15 + -0x20));
  FUN_014ddb2c(*(undefined8 *)(in_x15 + -0x28));
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0,0x10da584);
  (*pcVar1)();
}


```

## OAuthController_refreshOAuth

- Blutter address: `0x913d58`
- Ghidra address: `0xa13d58`
- Blutter byte extent: `0x8c4` bytes (inclusive end `0xa1461b`)
- Ghidra bounded disassembly command: `true`
- Ghidra function entry: `0xa13d58`
- Ghidra body bytes: `2244`
- Ghidra body address ranges: `1`

```c

void OAuthController_refreshOAuth
               (undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4,
               long param_5)

{
  uint uVar1;
  undefined8 uVar2;
  long lVar3;
  ulong uVar4;
  undefined8 extraout_x1;
  undefined8 extraout_x1_00;
  undefined8 extraout_x1_01;
  undefined8 extraout_x1_02;
  undefined8 uVar5;
  ulong uVar6;
  long in_x15;
  undefined8 *puVar7;
  long *extraout_x15;
  long *extraout_x15_00;
  undefined8 *extraout_x15_01;
  undefined8 *extraout_x15_02;
  undefined8 *extraout_x15_03;
  undefined8 *extraout_x15_04;
  undefined8 *extraout_x15_05;
  undefined8 *extraout_x15_06;
  undefined8 *puVar8;
  undefined8 *extraout_x15_07;
  undefined8 *extraout_x15_08;
  undefined8 *extraout_x15_09;
  undefined8 *extraout_x15_10;
  undefined8 *extraout_x15_11;
  undefined8 *extraout_x15_12;
  long *extraout_x15_13;
  undefined8 *extraout_x15_14;
  long lVar9;
  long unaff_x21;
  int unaff_w22;
  undefined4 unaff_000040b4;
  long unaff_x26;
  long unaff_x27;
  ulong unaff_x28;
  undefined8 unaff_x29;
  undefined8 unaff_x30;

  puVar7 = (undefined8 *)(in_x15 + -0x10);
  *puVar7 = unaff_x29;
  *(undefined8 *)(in_x15 + -8) = unaff_x30;
  *(ulong *)(in_x15 + -0x18) = CONCAT44(unaff_000040b4,unaff_w22);
  *(undefined8 *)(in_x15 + -0x28) = param_3;
  if (*(int *)(param_5 + 0x1f) == (int)*(undefined8 *)(unaff_x27 + 0x16ba0)) {
    uVar2 = *(undefined8 *)
             ((long)puVar7 + (long)(*(int *)(param_5 + 0x13) - *(int *)(param_5 + 0x23)) * 4 + 8);
  }
  else {
    uVar2 = *(undefined8 *)(unaff_x27 + 0x24e8);
  }
  *(undefined8 *)(in_x15 + -0x20) = uVar2;
  if (in_x15 - 0xa0U <= *(ulong *)(unaff_x26 + 0x48)) {
    FUN_014dfa34();
  }
  FUN_008f5e44();
  uVar2 = FUN_009e8c80();
  *(undefined8 *)(in_x15 + -0x30) = uVar2;
  uVar2 = FUN_008f5c00();
  uVar5 = *(undefined8 *)(unaff_x27 + 0x16a30);
  *(undefined8 *)(in_x15 + -0x30) = uVar2;
  lVar3 = FUN_009e8bf0(uVar2,uVar2,uVar5);
  if ((int)lVar3 == unaff_w22) {
    lVar3 = *(long *)(in_x15 + -0x20);
  }
  *(long *)(in_x15 + -0x20) = lVar3;
  if (*(int *)(lVar3 + 7) == 0) {
    uVar2 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
    if ((int)uVar2 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
      FUN_014dd9ec(uVar2,0,*(undefined8 *)(unaff_x27 + 0x7998));
    }
  }
  else {
    uVar2 = FUN_009bff94();
    *(undefined8 *)(in_x15 + -0x38) = uVar2;
    if ((int)uVar2 == unaff_w22) {
                    /* WARNING: Subroutine does not return */
      FUN_014e0274();
    }
    uVar2 = FUN_014d8564(uVar2,uVar2,*(undefined8 *)(unaff_x27 + 0x16ba8));
    if (*(int *)(*(long *)(in_x15 + -0x38) + 0xf) == (int)uVar2) {
      uVar2 = CONCAT44(unaff_000040b4,unaff_w22);
    }
    *(undefined8 *)(in_x15 + -0x38) = uVar2;
    uVar2 = FUN_009bff94();
    *(undefined8 *)(in_x15 + -0x40) = uVar2;
    if ((int)uVar2 == unaff_w22) {
                    /* WARNING: Subroutine does not return */
      FUN_014e0274();
    }
    uVar2 = FUN_014d8564(uVar2,uVar2,*(undefined8 *)(unaff_x27 + 0x16bb0));
    if (*(int *)(*(long *)(in_x15 + -0x40) + 0xf) == (int)uVar2) {
      uVar2 = CONCAT44(unaff_000040b4,unaff_w22);
    }
    *(undefined8 *)(in_x15 + -0x40) = uVar2;
    lVar3 = FUN_014df928(*(undefined8 *)(in_x15 + -0x38));
    *(int *)(lVar3 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x16a30);
    *(int *)(lVar3 + 0x13) = (int)*(undefined8 *)(in_x15 + -0x20);
    *(int *)(lVar3 + 0x17) = (int)*(undefined8 *)(unaff_x27 + 0x16bb8);
    *(int *)(lVar3 + 0x1b) = (int)*(undefined8 *)(unaff_x27 + 0x16a30);
    *(int *)(lVar3 + 0x1f) = (int)*(undefined8 *)(unaff_x27 + 0x16bc0);
    *(int *)(lVar3 + 0x23) = (int)*(undefined8 *)(in_x15 + -0x38);
    *(int *)(lVar3 + 0x27) = (int)*(undefined8 *)(unaff_x27 + 0x16bc8);
    *(int *)(lVar3 + 0x2b) = (int)*(undefined8 *)(in_x15 + -0x40);
    lVar9 = *(long *)(unaff_x27 + 0x21e0);
    *extraout_x15 = lVar3;
    extraout_x15[1] = lVar9;
    uVar2 = FUN_008efee0();
    *(undefined8 *)(in_x15 + -0x20) = uVar2;
    lVar3 = FUN_014df928();
    *(long *)(in_x15 + -0x48) = lVar3;
    *(int *)(lVar3 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x16a08);
    *(int *)(lVar3 + 0x13) = (int)*(undefined8 *)(unaff_x27 + 0x85a0);
    *(int *)(lVar3 + 0x17) = (int)*(undefined8 *)(unaff_x27 + 0xbc20);
    lVar3 = FUN_014df928();
    *(long *)(in_x15 + -0x50) = lVar3;
    *(int *)(lVar3 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0xbc10);
    lVar3 = FUN_014df928();
    *(int *)(lVar3 + 0xf) = (int)*(undefined8 *)(in_x15 + -0x38);
    *(int *)(lVar3 + 0x13) = (int)*(undefined8 *)(unaff_x27 + 0xdd0);
    *(int *)(lVar3 + 0x17) = (int)*(undefined8 *)(in_x15 + -0x40);
    *extraout_x15_00 = lVar3;
    uVar2 = FUN_008e1b8c();
    uVar2 = FUN_0132268c(uVar2,*(undefined8 *)(unaff_x27 + 0x11f8),uVar2);
    uVar4 = FUN_013201b0(uVar2,*(undefined8 *)(unaff_x27 + 0x16bd0),uVar2);
    lVar3 = *(long *)(in_x15 + -0x50);
    *(int *)(lVar3 + 0x13) = (int)uVar4;
    puVar8 = extraout_x15_01;
    if (((uVar4 & 1) != 0) &&
       (((ulong)(*(byte *)(uVar4 - 1) & *(byte *)(lVar3 + -1) >> 2) & unaff_x28 >> 0x20) != 0)) {
      FUN_014ddb50();
      puVar8 = extraout_x15_02;
    }
    *puVar8 = *(undefined8 *)(in_x15 + -0x50);
    uVar4 = FUN_008e1b8c();
    lVar3 = *(long *)(in_x15 + -0x48);
    *(int *)(lVar3 + 0x1b) = (int)uVar4;
    puVar8 = extraout_x15_03;
    if (((uVar4 & 1) != 0) &&
       (((ulong)(*(byte *)(uVar4 - 1) & *(byte *)(lVar3 + -1) >> 2) & unaff_x28 >> 0x20) != 0)) {
      FUN_014ddb50();
      puVar8 = extraout_x15_04;
    }
    uVar2 = *(undefined8 *)(unaff_x27 + 0x7c88);
    *puVar8 = *(undefined8 *)(in_x15 + -0x48);
    puVar8[1] = uVar2;
    uVar2 = FUN_008efee0();
    *(undefined8 *)(in_x15 + -0x38) = uVar2;
    if (*(int *)(*(long *)(in_x15 + -0x28) + 0x17) != unaff_w22) {
      uVar5 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x2cb8);
      if ((int)uVar5 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
        uVar5 = FUN_014dd9ec(uVar5,uVar2,*(undefined8 *)(unaff_x27 + 0x16bd8));
      }
      *(undefined8 *)(in_x15 + -0x40) = uVar5;
      uVar2 = FUN_009bff94();
      *(undefined8 *)(in_x15 + -0x48) = uVar2;
      if ((int)uVar2 == unaff_w22) {
                    /* WARNING: Subroutine does not return */
        FUN_014e0274();
      }
      uVar4 = FUN_014d8564(uVar2,uVar2,*(undefined8 *)(unaff_x27 + 0x16be0));
      if (*(int *)(*(long *)(in_x15 + -0x48) + 0xf) == (int)uVar4) {
        uVar4 = CONCAT44(unaff_000040b4,unaff_w22);
      }
      *(ulong *)(in_x15 + -0x48) = uVar4;
      uVar6 = 0x3c;
      if ((uVar4 & 1) != 0) {
        uVar6 = *(ulong *)(uVar4 - 1) >> 0xc & 0xfffff;
      }
      puVar8 = extraout_x15_05;
      if (1 < uVar6 - 0x5e) {
        FUN_014ee320(*(undefined8 *)(unaff_x27 + 0x970));
        puVar8 = extraout_x15_06;
      }
      puVar8[8] = *(undefined8 *)(in_x15 + -0x40);
      puVar8[9] = CONCAT44(unaff_000040b4,unaff_w22);
      uVar2 = *(undefined8 *)(in_x15 + -0x28);
      puVar8[6] = *(undefined8 *)(in_x15 + -0x48);
      puVar8[7] = uVar2;
      uVar2 = *(undefined8 *)(unaff_x27 + 0x16bf8);
      puVar8[4] = *(undefined8 *)(in_x15 + -0x20);
      puVar8[5] = uVar2;
      puVar8[2] = CONCAT44(unaff_000040b4,unaff_w22) + 0x30;
      puVar8[3] = CONCAT44(unaff_000040b4,unaff_w22) + 0x30;
      uVar2 = *(undefined8 *)(in_x15 + -0x38);
      *puVar8 = CONCAT44(unaff_000040b4,unaff_w22);
      puVar8[1] = uVar2;
      uVar2 = FUN_00a1ae40();
      *(undefined8 *)(in_x15 + -0x20) = uVar2;
      lVar3 = FUN_008f5c00();
      *(long *)(in_x15 + -0x28) = lVar3;
      if ((int)lVar3 != unaff_w22) {
        uVar4 = (ulong)*(uint *)((ulong)*(uint *)(lVar3 + 0xf) + (unaff_x28 << 0x20) + 0xb) +
                (unaff_x28 << 0x20);
        *(ulong *)(in_x15 + -0x20) = uVar4;
        uVar6 = 0x3c;
        if ((uVar4 & 1) != 0) {
          uVar6 = *(ulong *)(uVar4 - 1) >> 0xc & 0xfffff;
        }
        *extraout_x15_07 = 400;
        extraout_x15_07[1] = uVar4;
        uVar1 = (**(code **)(unaff_x21 + uVar6 * 8))();
        if ((uVar1 >> 4 & 1) == 0) {
          lVar3 = (ulong)*(uint *)(*(long *)(in_x15 + -0x28) + 0xb) + (unaff_x28 << 0x20);
          *(long *)(in_x15 + -0x38) = lVar3;
          *extraout_x15_08 = *(undefined8 *)(unaff_x27 + 0x7910);
          extraout_x15_08[1] = lVar3;
          uVar2 = (**(code **)(unaff_x27 + 0x16c08))(extraout_x15_08[1]);
          if ((int)uVar2 == unaff_w22) {
            uVar2 = *(undefined8 *)(unaff_x27 + 0x900);
          }
          *(undefined8 *)(in_x15 + -0x40) = uVar2;
          uVar2 = *(undefined8 *)(in_x15 + -0x38);
          *extraout_x15_09 = *(undefined8 *)(unaff_x27 + 0x16a30);
          extraout_x15_09[1] = uVar2;
          uVar2 = (**(code **)(unaff_x27 + 0x16c18))(extraout_x15_09[1]);
          if ((int)uVar2 == unaff_w22) {
            uVar2 = *(undefined8 *)(unaff_x27 + 0x900);
          }
          *(undefined8 *)(in_x15 + -0x38) = uVar2;
          *extraout_x15_10 = *(undefined8 *)(in_x15 + -0x40);
          uVar1 = (**(code **)(unaff_x27 + 0x16c28))(*extraout_x15_10);
          uVar2 = extraout_x1_00;
          if ((uVar1 >> 4 & 1) == 0) {
            *extraout_x15_11 = *(undefined8 *)(in_x15 + -0x38);
            uVar1 = (**(code **)(unaff_x27 + 0x16c38))(*extraout_x15_11);
            uVar2 = extraout_x1_01;
            if ((uVar1 >> 4 & 1) == 0) {
              uVar4 = *(ulong *)(in_x15 + -0x40);
              uVar6 = 0x3c;
              if ((uVar4 & 1) != 0) {
                uVar6 = *(ulong *)(uVar4 - 1) >> 0xc & 0xfffff;
              }
              if (1 < uVar6 - 0x5e) {
                uVar4 = FUN_014ee320(*(undefined8 *)(unaff_x27 + 0x970));
              }
              uVar2 = FUN_00a1ae08(uVar4,*(undefined8 *)(in_x15 + -0x30),
                                   *(undefined8 *)(unaff_x27 + 0x7910),
                                   *(undefined8 *)(in_x15 + -0x40));
              *(undefined8 *)(in_x15 + -0x48) = uVar2;
              FUN_008f5c00();
              uVar4 = *(ulong *)(in_x15 + -0x38);
              uVar6 = 0x3c;
              if ((uVar4 & 1) != 0) {
                uVar6 = *(ulong *)(uVar4 - 1) >> 0xc & 0xfffff;
              }
              if (1 < uVar6 - 0x5e) {
                uVar4 = FUN_014ee320(*(undefined8 *)(unaff_x27 + 0x970));
              }
              uVar2 = FUN_00a1ae08(uVar4,*(undefined8 *)(in_x15 + -0x30),
                                   *(undefined8 *)(unaff_x27 + 0x16a30),
                                   *(undefined8 *)(in_x15 + -0x38));
              *(undefined8 *)(in_x15 + -0x48) = uVar2;
              uVar2 = FUN_008f5c00();
              uVar2 = FUN_00a20a4c(uVar2,*(undefined8 *)(in_x15 + -0x40));
              uVar5 = *(undefined8 *)(in_x15 + -0x38);
              *(undefined8 *)(in_x15 + -0x38) = uVar2;
              uVar2 = FUN_00a20a4c(uVar2,uVar5);
              *(undefined8 *)(in_x15 + -0x40) = uVar2;
              uVar4 = *(ulong *)(*(long *)(in_x15 + -0x38) + -1) >> 0xc & 0xfffff;
              uVar4 = (**(code **)(unaff_x21 + (uVar4 - 0xd48) * 8))
                                (uVar4,*(long *)(in_x15 + -0x38),
                                 *(undefined8 *)(unaff_x27 + 0x16b68));
              if ((int)uVar4 == unaff_w22) {
                uVar4 = 0;
              }
              *(ulong *)(in_x15 + -0x48) = uVar4;
              if (((uVar4 & 1) != 0) && (1 < (*(ulong *)(uVar4 - 1) >> 0xc & 0xfffff) - 0x3c)) {
                FUN_014ee980(*(undefined8 *)(unaff_x27 + 0x390));
              }
              uVar4 = *(ulong *)(in_x15 + -0x48);
              lVar3 = (long)(uVar4 << 0x20) >> 0x21;
              if ((uVar4 & 1) != 0) {
                lVar3 = *(long *)(uVar4 + 7);
              }
              uVar2 = FUN_00a1abd4(uVar4,*(undefined8 *)(in_x15 + -0x30),
                                   *(undefined8 *)(unaff_x27 + 0x16c78),lVar3);
              *(undefined8 *)(in_x15 + -0x48) = uVar2;
              FUN_008f5c00();
              uVar4 = *(ulong *)(*(long *)(in_x15 + -0x40) + -1) >> 0xc & 0xfffff;
              uVar4 = (**(code **)(unaff_x21 + (uVar4 - 0xd48) * 8))
                                (uVar4,*(long *)(in_x15 + -0x40),
                                 *(undefined8 *)(unaff_x27 + 0x16b68));
              if ((int)uVar4 == unaff_w22) {
                uVar4 = 0;
              }
              *(ulong *)(in_x15 + -0x40) = uVar4;
              if (((uVar4 & 1) != 0) && (1 < (*(ulong *)(uVar4 - 1) >> 0xc & 0xfffff) - 0x3c)) {
                FUN_014ee980(*(undefined8 *)(unaff_x27 + 0x390));
              }
              uVar4 = *(ulong *)(in_x15 + -0x40);
              lVar3 = (long)(uVar4 << 0x20) >> 0x21;
              if ((uVar4 & 1) != 0) {
                lVar3 = *(long *)(uVar4 + 7);
              }
              uVar2 = FUN_00a1abd4(uVar4,*(undefined8 *)(in_x15 + -0x30),
                                   *(undefined8 *)(unaff_x27 + 0x16c90),lVar3);
              *(undefined8 *)(in_x15 + -0x40) = uVar2;
              FUN_008f5c00();
              uVar4 = *(ulong *)(*(long *)(in_x15 + -0x38) + -1) >> 0xc & 0xfffff;
              uVar4 = (**(code **)(unaff_x21 + (uVar4 - 0xd48) * 8))
                                (uVar4,*(long *)(in_x15 + -0x38),
                                 *(undefined8 *)(unaff_x27 + 0x16c98));
              if ((int)uVar4 == unaff_w22) {
                uVar4 = *(ulong *)(unaff_x27 + 0x900);
              }
              *(ulong *)(in_x15 + -0x38) = uVar4;
              uVar6 = 0x3c;
              if ((uVar4 & 1) != 0) {
                uVar6 = *(ulong *)(uVar4 - 1) >> 0xc & 0xfffff;
              }
              if (1 < uVar6 - 0x5e) {
                uVar4 = FUN_014ee320(*(undefined8 *)(unaff_x27 + 0x970));
              }
              uVar2 = FUN_00a1ae08(uVar4,*(undefined8 *)(in_x15 + -0x30),
                                   *(undefined8 *)(unaff_x27 + 0x16c98),
                                   *(undefined8 *)(in_x15 + -0x38));
              *(undefined8 *)(in_x15 + -0x30) = uVar2;
              FUN_008f5c00();
              uVar2 = extraout_x1_02;
            }
          }
          uVar5 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
          if ((int)uVar5 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
            FUN_014dd9ec(uVar5,uVar2,*(undefined8 *)(unaff_x27 + 0x7998));
          }
          uVar2 = *(undefined8 *)(in_x15 + -0x28);
        }
        else {
          uVar2 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x2c88);
          if ((int)uVar2 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
            uVar2 = FUN_014dda54(uVar2,extraout_x1,*(undefined8 *)(unaff_x27 + 0x16a80));
          }
          uVar1 = FUN_00cafbf4(uVar2,uVar2,*(undefined8 *)(in_x15 + -0x20));
          if ((uVar1 >> 4 & 1) != 0) goto FUN_008f592c;
          *extraout_x15_12 = *(undefined8 *)(in_x15 + -0x20);
          extraout_x15_12[1] = 0x35a;
          uVar1 = FUN_013b7d64();
          if ((uVar1 >> 4 & 1) == 0) {
            uVar2 = FUN_009becf8(*(undefined8 *)(in_x15 + -0x20),
                                 *(undefined8 *)(unaff_x27 + 0x16cb0));
            uVar5 = *(undefined8 *)(unaff_x27 + 0x16cb8);
            *(undefined8 *)(in_x15 + -0x30) = uVar2;
            uVar2 = FUN_009becf8(uVar2,uVar5);
            *(undefined8 *)(in_x15 + -0x38) = uVar2;
            lVar3 = FUN_014df928();
            *(int *)(lVar3 + 0xf) = (int)*(undefined8 *)(in_x15 + -0x38);
            *(int *)(lVar3 + 0x13) = (int)*(undefined8 *)(unaff_x27 + 0xe38);
            *(int *)(lVar3 + 0x17) = (int)*(undefined8 *)(in_x15 + -0x20);
            *(int *)(lVar3 + 0x1b) = (int)*(undefined8 *)(unaff_x27 + 0xe60);
            *extraout_x15_13 = lVar3;
            uVar2 = FUN_008e1b8c();
            *(undefined8 *)(in_x15 + -0x20) = uVar2;
            uVar2 = FUN_00a1abc8();
            uVar5 = *(undefined8 *)(unaff_x27 + 0x16cc0);
            *(undefined8 *)(in_x15 + -0x38) = uVar2;
            uVar2 = FUN_00a19980(uVar2,uVar2,uVar5);
            *extraout_x15_14 = *(undefined8 *)(in_x15 + -0x38);
            FUN_00a1461c(uVar2,*(undefined8 *)(in_x15 + -0x30),*(undefined8 *)(in_x15 + -0x20));
          }
          uVar2 = *(undefined8 *)(in_x15 + -0x28);
        }
        *puVar7 = *puVar7;
        *(undefined8 *)(in_x15 + -8) = *(undefined8 *)(in_x15 + -8);
        *(undefined8 *)(in_x15 + -0x20) = uVar2;
        *(undefined8 *)(in_x15 + -0x18) = *(undefined8 *)(in_x15 + -0x18);
        (**(code **)(unaff_x26 + 0x640))();
        return;
      }
    }
  }
FUN_008f592c:
  *puVar7 = *puVar7;
  *(undefined8 *)(in_x15 + -8) = *(undefined8 *)(in_x15 + -8);
  *(ulong *)(in_x15 + -0x20) = CONCAT44(unaff_000040b4,unaff_w22);
  *(undefined8 *)(in_x15 + -0x18) = *(undefined8 *)(in_x15 + -0x18);
  (**(code **)(unaff_x26 + 0x648))();
  return;
}


```

## SessionMiddleware_performCheck

- Blutter address: `0x130f930`
- Ghidra address: `0x140f930`
- Blutter byte extent: `0x914` bytes (inclusive end `0x1410243`)
- Ghidra bounded disassembly command: `true`
- Ghidra function entry: `0x140f930`
- Ghidra body bytes: `2088`
- Ghidra body address ranges: `3`

```c

void SessionMiddleware_performCheck
               (undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  long lVar1;
  uint uVar2;
  long lVar3;
  undefined8 uVar4;
  long lVar5;
  ulong uVar6;
  undefined8 extraout_x1;
  undefined8 extraout_x1_00;
  undefined8 extraout_x1_01;
  undefined8 extraout_x1_02;
  undefined8 extraout_x1_03;
  long lVar7;
  undefined8 extraout_x1_04;
  ulong uVar8;
  undefined8 uVar9;
  long in_x15;
  undefined8 *puVar10;
  long *extraout_x15;
  long *extraout_x15_00;
  long *extraout_x15_01;
  long *extraout_x15_02;
  long *extraout_x15_03;
  undefined1 (*pauVar11) [16];
  undefined8 *extraout_x15_04;
  long *extraout_x15_05;
  ulong *extraout_x15_06;
  long extraout_x15_07;
  long *plVar12;
  long *extraout_x15_08;
  long lVar13;
  long lVar14;
  long unaff_x21;
  int unaff_w22;
  undefined4 unaff_000040b4;
  long unaff_x26;
  long unaff_x27;
  long unaff_x28;
  undefined8 unaff_x29;
  undefined8 unaff_x30;
  undefined1 auVar15 [16];
  double dVar16;
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];

  puVar10 = (undefined8 *)(in_x15 + -0x10);
  *puVar10 = unaff_x29;
  *(undefined8 *)(in_x15 + -8) = unaff_x30;
  *(ulong *)(in_x15 + -0x18) = CONCAT44(unaff_000040b4,unaff_w22);
  *(undefined8 *)(in_x15 + -0xe8) = param_2;
  *(undefined8 *)(in_x15 + -0xf0) = param_3;
  *(undefined8 *)(in_x15 + -0xf8) = param_4;
  if (in_x15 - 0x128U <= *(ulong *)(unaff_x26 + 0x48)) {
    FUN_014dfa34();
  }
  FUN_008f5e44(*(undefined8 *)(unaff_x27 + 0x2b8));
  lVar3 = *(long *)(in_x15 + -0xe8);
  lVar5 = (ulong)*(uint *)(lVar3 + 0xb) + (unaff_x28 << 0x20);
  if (((((uint)lVar5 >> 4 & 1) == 0) ||
      (lVar5 = (ulong)*(uint *)(lVar3 + 0xf) + (unaff_x28 << 0x20), ((uint)lVar5 >> 4 & 1) == 0)) ||
     ((int)*(long *)(in_x15 + -0xf0) == unaff_w22)) {
    uVar4 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
    if ((int)uVar4 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
      FUN_014dd9ec(uVar4,lVar5,*(undefined8 *)(unaff_x27 + 0x7998));
    }
    goto FUN_008f592c;
  }
  lVar5 = (ulong)*(uint *)(*(long *)(in_x15 + -0xf0) + 0x13) + (unaff_x28 << 0x20);
  uVar8 = *(ulong *)(lVar5 + -1) >> 0xc & 0xfffff;
  if ((uVar8 == 0xa44) || (uVar8 != 0xa46)) {
    lVar5 = (ulong)*(uint *)(lVar5 + 7) + (unaff_x28 << 0x20);
  }
  else {
    lVar5 = (ulong)*(uint *)(lVar5 + 0x6b) + (unaff_x28 << 0x20);
  }
  *(long *)(in_x15 + -0x100) = lVar5;
  if (((int)lVar5 != unaff_w22) &&
     (uVar2 = FUN_00caf414(lVar3,(ulong)*(uint *)(lVar3 + 7) + (unaff_x28 << 0x20),lVar5),
     (uVar2 >> 4 & 1) == 0)) {
    lVar5 = FUN_014df928(*(undefined8 *)(in_x15 + -0x100));
    *(int *)(lVar5 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x26d10);
    *(int *)(lVar5 + 0x13) = (int)*(undefined8 *)(in_x15 + -0x100);
    *extraout_x15 = lVar5;
    FUN_008e1b8c();
    uVar4 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
    if ((int)uVar4 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
      FUN_014dd9ec(uVar4,extraout_x1,*(undefined8 *)(unaff_x27 + 0x7998));
    }
    lVar5 = FUN_014df928();
    *(int *)(lVar5 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x26d18);
    *(int *)(lVar5 + 0x13) = (int)*(undefined8 *)(in_x15 + -0x100);
    *extraout_x15_00 = lVar5;
    FUN_008e1b8c();
    goto FUN_008f592c;
  }
  uVar8 = *(ulong *)(*(long *)(in_x15 + -0xf0) + -1) >> 0xc & 0xfffff;
  if (uVar8 - 0xa52 < 9) {
    lVar5 = FUN_014df928();
    *(int *)(lVar5 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x26d20);
    *(int *)(lVar5 + 0x13) = (int)*(undefined8 *)(in_x15 + -0x100);
    *(int *)(lVar5 + 0x17) = (int)*(undefined8 *)(unaff_x27 + 0x18738);
    *(int *)(lVar5 + 0x1b) = (int)*(undefined8 *)(in_x15 + -0xf0);
    *extraout_x15_01 = lVar5;
    FUN_008e1b8c();
    uVar4 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
    if ((int)uVar4 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
      FUN_014dd9ec(uVar4,extraout_x1_00,*(undefined8 *)(unaff_x27 + 0x7998));
    }
    goto FUN_008f592c;
  }
  if (uVar8 - 0xa5c < 7) {
    lVar5 = (ulong)*(uint *)(*(long *)(in_x15 + -0xf0) + 0xf) + (unaff_x28 << 0x20);
    if ((int)lVar5 == unaff_w22) {
      lVar5 = *(long *)(in_x15 + -0xf8);
      if ((int)lVar5 == unaff_w22) {
        lVar5 = CONCAT44(unaff_000040b4,unaff_w22);
      }
    }
    else {
      lVar5 = (ulong)*(uint *)(lVar5 + 0xf) + (unaff_x28 << 0x20);
      if ((int)lVar5 == unaff_w22) {
                    /* WARNING: Subroutine does not return */
        FUN_014e00c4();
      }
    }
  }
  else {
    lVar5 = CONCAT44(unaff_000040b4,unaff_w22);
  }
  *(long *)(in_x15 + -0xf0) = lVar5;
  if ((int)lVar5 == unaff_w22) {
    lVar5 = FUN_014df928();
    *(int *)(lVar5 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x26d28);
    *(int *)(lVar5 + 0x13) = (int)*(undefined8 *)(in_x15 + -0x100);
    *extraout_x15_02 = lVar5;
    FUN_008e1b8c();
    uVar4 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
    if ((int)uVar4 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
      FUN_014dd9ec(uVar4,extraout_x1_01,*(undefined8 *)(unaff_x27 + 0x7998));
    }
    goto FUN_008f592c;
  }
  *(int *)(*(long *)(in_x15 + -0xe8) + 0xb) = unaff_w22 + 0x20;
  uVar4 = FUN_009e8c80();
  *(undefined8 *)(in_x15 + -0xf8) = uVar4;
  uVar4 = FUN_008f5c00();
  uVar9 = *(undefined8 *)(unaff_x27 + 0x7910);
  *(undefined8 *)(in_x15 + -0xf8) = uVar4;
  uVar4 = FUN_009e8bf0(uVar4,uVar4,uVar9);
  if ((int)uVar4 == unaff_w22) {
    uVar4 = *(undefined8 *)(unaff_x27 + 0x900);
  }
  *(undefined8 *)(in_x15 + -0x100) = uVar4;
  lVar5 = FUN_009e8bf0(uVar4,*(undefined8 *)(in_x15 + -0xf8),*(undefined8 *)(unaff_x27 + 0x16a30));
  if ((int)lVar5 == unaff_w22) {
    lVar5 = *(long *)(unaff_x27 + 0x900);
  }
  lVar3 = *(long *)(in_x15 + -0x100);
  *(long *)(in_x15 + -0xf8) = lVar5;
  if (*(int *)(lVar3 + 7) == 0) {
    if (*(int *)(lVar5 + 7) == 0) {
      uVar4 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
      if ((int)uVar4 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
        uVar4 = FUN_014dd9ec(uVar4,0,*(undefined8 *)(unaff_x27 + 0x7998));
      }
      FUN_014104f4(uVar4,*(undefined8 *)(in_x15 + -0xe8));
      *(int *)(*(long *)(in_x15 + -0xe8) + 0xb) = unaff_w22 + 0x30;
      goto FUN_008f592c;
    }
    uVar4 = *(undefined8 *)(in_x15 + -0xe8);
  }
  else {
    uVar4 = *(undefined8 *)(in_x15 + -0xe8);
  }
  uVar4 = FUN_01410444(lVar3,uVar4,lVar3,lVar5,uVar4,CONCAT44(unaff_000040b4,unaff_w22) + 0x30);
  *(undefined8 *)(in_x15 + -0x108) = uVar4;
  uVar4 = FUN_01410444(uVar4,*(undefined8 *)(in_x15 + -0xe8),*(undefined8 *)(in_x15 + -0xf8));
  *(undefined8 *)(in_x15 + -0x110) = uVar4;
  lVar5 = FUN_009174b8();
  *(long *)(in_x15 + -0x118) = lVar5;
  *(int *)(lVar5 + 7) = unaff_w22 + 0x30;
  uVar8 = FUN_0099fe10();
  lVar5 = (long)(uVar8 << 0x20) >> 0x21;
  if ((uVar8 & 1) != 0) {
    lVar5 = *(long *)(uVar8 + 7);
  }
  lVar3 = *(long *)(in_x15 + -0x118);
  *(long *)(lVar3 + 0xb) = lVar5;
  lVar5 = FUN_00917430(lVar3,lVar3);
  lVar5 = *(long *)(lVar5 + 0xb);
  if (lVar5 < 0) {
    lVar3 = 999;
  }
  else {
    lVar3 = 0;
  }
  lVar13 = *(long *)(in_x15 + -0x110);
  dVar16 = *(double *)(unaff_x27 + 0x16a58);
  lVar14 = 1000;
  pauVar11 = (undefined1 (*) [16])(extraout_x15_03 + -2);
  *(undefined8 **)*pauVar11 = puVar10;
  extraout_x15_03[-1] = 0x140fcd0;
  *(code **)(unaff_x26 + 0x6c8) = *(code **)(unaff_x26 + 0x770);
  auVar15 = (**(code **)(unaff_x26 + 0x770))((double)((lVar5 - lVar3) / 1000) / dVar16);
  dVar16 = auVar15._0_8_;
  *(undefined8 *)(unaff_x26 + 0x6c8) = 8;
  puVar10 = *(undefined8 **)*pauVar11;
  lVar5 = extraout_x15_03[-1];
  if ((NAN(dVar16)) || (lVar3 = (long)dVar16, lVar3 >> 0x1e != lVar3 >> 0x3f)) {
    *pauVar11 = auVar15;
    extraout_x15_03[-4] = lVar13;
    extraout_x15_03[-3] = 1000;
    lVar5 = 0x14101b8;
    auVar15 = (**(code **)(*(long *)(unaff_x27 + 0x1b70) + 7))(0x4c);
    lVar13 = *extraout_x15_05;
    lVar14 = extraout_x15_05[1];
    plVar12 = extraout_x15_05 + 4;
    dVar16 = (double)extraout_x15_05[2];
  }
  else {
    auVar15._8_8_ = extraout_x1_02;
    auVar15._0_8_ = lVar3 << 1;
    plVar12 = extraout_x15_03;
  }
  uVar8 = auVar15._0_8_;
  if ((int)lVar13 == unaff_w22) {
    lVar3 = puVar10[-0x1f];
    if ((int)lVar3 == unaff_w22) {
      auVar17._4_4_ = unaff_000040b4;
      auVar17._0_4_ = unaff_w22;
      auVar17._8_8_ = auVar15._8_8_;
    }
    else {
      if (*(long *)(lVar3 + 0xb) < 0) {
        lVar13 = 999;
      }
      else {
        lVar13 = 0;
      }
      dVar16 = *(double *)(unaff_x27 + 0x16a58);
      lVar7 = 0;
      if (lVar14 != 0) {
        lVar7 = (*(long *)(lVar3 + 0xb) - lVar13) / lVar14;
      }
      pauVar11 = (undefined1 (*) [16])(plVar12 + -2);
      *(undefined8 **)*pauVar11 = puVar10;
      plVar12[-1] = lVar5;
      *(code **)(unaff_x26 + 0x6c8) = *(code **)(unaff_x26 + 0x770);
      auVar15 = (**(code **)(unaff_x26 + 0x770))((double)lVar7 / dVar16);
      dVar16 = auVar15._0_8_;
      *(undefined8 *)(unaff_x26 + 0x6c8) = 8;
      puVar10 = *(undefined8 **)*pauVar11;
      if ((NAN(dVar16)) || (lVar5 = (long)dVar16, lVar5 >> 0x1e != lVar5 >> 0x3f)) {
        *pauVar11 = auVar15;
        plVar12[-4] = uVar8;
        plVar12[-3] = lVar3;
        auVar17 = (**(code **)(*(long *)(unaff_x27 + 0x1b70) + 7))(0x4c);
        uVar8 = *extraout_x15_06;
        dVar16 = (double)extraout_x15_06[2];
      }
      else {
        auVar17._8_8_ = extraout_x1_03;
        auVar17._0_8_ = lVar5 << 1;
      }
    }
    lVar5 = auVar17._8_8_;
    uVar6 = auVar17._0_8_;
    if (auVar17._0_4_ != unaff_w22) {
      lVar5 = (long)(uVar8 << 0x20) >> 0x21;
      if ((uVar8 & 1) != 0) {
        lVar5 = *(long *)(uVar8 + 7);
      }
      lVar3 = (long)(uVar6 << 0x20) >> 0x21;
      if ((uVar6 & 1) != 0) {
        lVar3 = *(long *)(uVar6 + 7);
      }
      if (lVar5 <= lVar3) goto LAB_01410168;
    }
    uVar4 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
    if ((int)uVar4 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
      uVar4 = FUN_014dd9ec(dVar16,uVar4,lVar5,*(undefined8 *)(unaff_x27 + 0x7998));
    }
LAB_01410088:
    FUN_014104f4(uVar4,puVar10[-0x1b]);
  }
  else {
    lVar3 = puVar10[-0x1f];
    dVar16 = *(double *)(unaff_x27 + 0x16a58);
    if (*(long *)(lVar13 + 0xb) < 0) {
      lVar7 = 999;
    }
    else {
      lVar7 = 0;
    }
    lVar1 = 0;
    if (lVar14 != 0) {
      lVar1 = (*(long *)(lVar13 + 0xb) - lVar7) / lVar14;
    }
    pauVar11 = (undefined1 (*) [16])(plVar12 + -2);
    *(undefined8 **)*pauVar11 = puVar10;
    plVar12[-1] = lVar5;
    *(code **)(unaff_x26 + 0x6c8) = *(code **)(unaff_x26 + 0x770);
    auVar15 = (**(code **)(unaff_x26 + 0x770))((double)lVar1 / dVar16);
    dVar16 = auVar15._0_8_;
    *(undefined8 *)(unaff_x26 + 0x6c8) = 8;
    puVar10 = *(undefined8 **)*pauVar11;
    lVar5 = plVar12[-1];
    if ((NAN(dVar16)) || (lVar7 = (long)dVar16, lVar7 >> 0x1e != lVar7 >> 0x3f)) {
      *pauVar11 = auVar15;
      plVar12[-4] = uVar8;
      plVar12[-3] = lVar3;
      plVar12[-6] = lVar13;
      plVar12[-5] = lVar14;
      lVar5 = 0x1410208;
      uVar6 = (**(code **)(*(long *)(unaff_x27 + 0x1b70) + 7))(0x4c);
      lVar14 = *(long *)(extraout_x15_07 + 8);
      uVar8 = *(ulong *)(extraout_x15_07 + 0x10);
      lVar3 = *(long *)(extraout_x15_07 + 0x18);
      plVar12 = (long *)(extraout_x15_07 + 0x30);
      dVar16 = *(double *)(extraout_x15_07 + 0x20);
    }
    else {
      uVar6 = lVar7 << 1;
    }
    lVar13 = (long)(uVar8 << 0x20) >> 0x21;
    if ((uVar8 & 1) != 0) {
      lVar13 = *(long *)(uVar8 + 7);
    }
    lVar7 = (long)(uVar6 << 0x20) >> 0x21;
    if ((uVar6 & 1) != 0) {
      lVar7 = *(long *)(uVar6 + 7);
    }
    if (lVar7 < lVar13) {
      uVar4 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
      if ((int)uVar4 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
        uVar4 = FUN_014dd9ec(dVar16,uVar4,lVar7,*(undefined8 *)(unaff_x27 + 0x7998));
      }
      goto LAB_01410088;
    }
    if ((int)lVar3 == unaff_w22) {
      auVar18._4_4_ = unaff_000040b4;
      auVar18._0_4_ = unaff_w22;
      auVar18._8_8_ = lVar7;
    }
    else {
      if (*(long *)(lVar3 + 0xb) < 0) {
        lVar7 = 999;
      }
      else {
        lVar7 = 0;
      }
      dVar16 = *(double *)(unaff_x27 + 0x16a58);
      lVar1 = 0;
      if (lVar14 != 0) {
        lVar1 = (*(long *)(lVar3 + 0xb) - lVar7) / lVar14;
      }
      pauVar11 = (undefined1 (*) [16])(plVar12 + -2);
      *(undefined8 **)*pauVar11 = puVar10;
      plVar12[-1] = lVar5;
      *(code **)(unaff_x26 + 0x6c8) = *(code **)(unaff_x26 + 0x770);
      auVar15 = (**(code **)(unaff_x26 + 0x770))((double)lVar1 / dVar16);
      dVar16 = auVar15._0_8_;
      *(undefined8 *)(unaff_x26 + 0x6c8) = 8;
      puVar10 = *(undefined8 **)*pauVar11;
      if ((NAN(dVar16)) || (lVar5 = (long)dVar16, lVar5 >> 0x1e != lVar5 >> 0x3f)) {
        *pauVar11 = auVar15;
        plVar12[-4] = uVar8;
        plVar12[-3] = lVar3;
        plVar12[-5] = lVar13;
        auVar18 = (**(code **)(*(long *)(unaff_x27 + 0x1b70) + 7))(0x4c);
        lVar13 = *extraout_x15_08;
        dVar16 = (double)extraout_x15_08[3];
      }
      else {
        auVar18._8_8_ = extraout_x1_04;
        auVar18._0_8_ = lVar5 << 1;
      }
    }
    lVar5 = auVar18._8_8_;
    uVar8 = auVar18._0_8_;
    if (auVar18._0_4_ != unaff_w22) {
      lVar5 = (long)(uVar8 << 0x20) >> 0x21;
      if ((uVar8 & 1) != 0) {
        lVar5 = *(long *)(uVar8 + 7);
      }
      if (lVar13 <= lVar5) goto LAB_01410168;
    }
    uVar4 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
    if ((int)uVar4 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
      FUN_014dd9ec(dVar16,uVar4,lVar5,*(undefined8 *)(unaff_x27 + 0x7998));
    }
    if (*(int *)(puVar10[-0x1c] + 0x17) != unaff_w22) {
      uVar4 = FUN_00a1d5a0();
      puVar10[-0x1d] = uVar4;
      uVar4 = FUN_00a12154();
      uVar4 = FUN_0092f250(uVar4,uVar4,999999);
      uVar4 = OAuthController_refreshOAuth(uVar4,puVar10[-0x1d],puVar10[-0x1c]);
      puVar10[-0x1d] = uVar4;
      uVar8 = FUN_008f5c00();
      puVar10[-0x1d] = uVar8;
      if ((int)uVar8 == unaff_w22) {
LAB_0141007c:
        uVar4 = FUN_01410244(uVar8,puVar10[-0x1b],puVar10[-0x1c]);
        goto LAB_01410088;
      }
      uVar6 = 0x3c;
      if ((uVar8 & 1) != 0) {
        uVar6 = *(ulong *)(uVar8 - 1) >> 0xc & 0xfffff;
      }
      if (uVar6 == 0x473) {
        uVar8 = (ulong)*(uint *)((ulong)*(uint *)(uVar8 + 0xf) + (unaff_x28 << 0x20) + 0xb) +
                (unaff_x28 << 0x20);
        uVar6 = 0x3c;
        if ((uVar8 & 1) != 0) {
          uVar6 = *(ulong *)(uVar8 - 1) >> 0xc & 0xfffff;
        }
        *extraout_x15_04 = 400;
        extraout_x15_04[1] = uVar8;
        uVar8 = (**(code **)(unaff_x21 + uVar6 * 8))();
        if (((uint)uVar8 >> 4 & 1) != 0) goto LAB_0141007c;
      }
    }
  }
LAB_01410168:
  *(int *)(puVar10[-0x1b] + 0xb) = unaff_w22 + 0x30;
FUN_008f592c:
  *puVar10 = *puVar10;
  puVar10[1] = puVar10[1];
  puVar10[-2] = CONCAT44(unaff_000040b4,unaff_w22);
  puVar10[-1] = puVar10[-1];
  (**(code **)(unaff_x26 + 0x648))();
  return;
}


```

## AttendanceNetworkImpl_getConfirmationQRStudent

- Blutter address: `0xd4e500`
- Ghidra address: `0xe4e500`
- Blutter byte extent: `0x638` bytes (inclusive end `0xe4eb37`)
- Ghidra bounded disassembly command: `true`
- Ghidra function entry: `0xe4e500`
- Ghidra body bytes: `1232`
- Ghidra body address ranges: `2`

```c

void AttendanceNetworkImpl_getConfirmationQRStudent
               (undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  code *pcVar1;
  int iVar2;
  uint uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  ulong uVar6;
  ulong uVar7;
  undefined8 extraout_x1;
  long lVar8;
  long in_x15;
  undefined8 *puVar9;
  ulong extraout_x15;
  long *extraout_x15_00;
  long *extraout_x15_01;
  undefined8 *extraout_x15_02;
  long *extraout_x15_03;
  undefined8 *extraout_x15_04;
  undefined8 *extraout_x15_05;
  undefined8 *extraout_x15_06;
  undefined8 *extraout_x15_07;
  undefined8 *extraout_x15_08;
  undefined8 *extraout_x15_09;
  undefined8 *extraout_x15_10;
  undefined8 *extraout_x15_11;
  ulong *extraout_x15_12;
  undefined8 *extraout_x15_13;
  undefined8 *extraout_x15_14;
  long *extraout_x15_15;
  long *extraout_x15_16;
  long *extraout_x15_17;
  long *plVar10;
  ulong extraout_x15_18;
  undefined8 *extraout_x15_19;
  undefined8 *extraout_x15_20;
  long unaff_x21;
  int unaff_w22;
  undefined4 unaff_000040b4;
  long unaff_x26;
  long unaff_x27;
  long unaff_x28;
  undefined8 unaff_x29;
  undefined8 unaff_x30;
  undefined1 auVar11 [16];

  puVar9 = (undefined8 *)(in_x15 + -0x10);
  *puVar9 = unaff_x29;
  *(undefined8 *)(in_x15 + -8) = unaff_x30;
  *(ulong *)(in_x15 + -0x18) = CONCAT44(unaff_000040b4,unaff_w22);
  *(undefined8 *)(in_x15 + -0xa0) = param_2;
  *(undefined8 *)(in_x15 + -0xa8) = param_3;
  if (in_x15 - 0x100U <= *(ulong *)(unaff_x26 + 0x48)) {
    FUN_014dfa34();
  }
  FUN_008f5e44(*(undefined8 *)(unaff_x27 + 0x83b48));
  lVar8 = 0;
  uVar4 = CONCAT44(unaff_000040b4,unaff_w22);
  uVar5 = CONCAT44(unaff_000040b4,unaff_w22);
  uVar6 = extraout_x15;
  do {
    *(long *)(in_x15 + -0xb0) = lVar8;
    *(undefined8 *)(in_x15 + -0xa0) = uVar4;
    *(undefined8 *)(in_x15 + -0xb8) = uVar5;
    if (uVar6 <= *(ulong *)(unaff_x26 + 0x48)) {
      FUN_014dfa34(*(undefined8 *)(in_x15 + -0xa8));
    }
    if (2 < lVar8) {
      uVar4 = FUN_009eba04();
      *(undefined8 *)(in_x15 + -0xa0) = uVar4;
      *extraout_x15_19 = *(undefined8 *)(unaff_x27 + 0x83c28);
      FUN_009ea020(uVar4,uVar4);
      uVar4 = FUN_009ea014();
      *(undefined8 *)(in_x15 + -0xa8) = uVar4;
      uVar5 = *(undefined8 *)(unaff_x27 + 0x186e0);
      *extraout_x15_20 = *(undefined8 *)(unaff_x27 + 0x15ce0);
      extraout_x15_20[1] = uVar5;
      FUN_009e97ec(uVar4,uVar4,*(undefined8 *)(in_x15 + -0xa0));
      FUN_014ddb2c(*(undefined8 *)(in_x15 + -0xa8));
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0,0xe4eb24);
      (*pcVar1)();
    }
    uVar4 = FUN_00a1d664();
    *(undefined8 *)(in_x15 + -0xc0) = uVar4;
    uVar4 = FUN_008f5c00();
    *(undefined8 *)(in_x15 + -0xc0) = uVar4;
    lVar8 = FUN_014df928();
    *(int *)(lVar8 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x83b60);
    *(int *)(lVar8 + 0x13) = (int)*(undefined8 *)(in_x15 + -0xa8);
    *(int *)(lVar8 + 0x17) = (int)*(undefined8 *)(unaff_x27 + 0xe80);
    *(int *)(lVar8 + 0x1b) = (int)*(undefined8 *)(in_x15 + -0xc0);
    *extraout_x15_00 = lVar8;
    auVar11 = FUN_008e1b8c();
    uVar4 = auVar11._8_8_;
    *(long *)(in_x15 + -200) = auVar11._0_8_;
    uVar5 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
    if ((int)uVar5 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
      FUN_014dd9ec(uVar5,uVar4,*(undefined8 *)(unaff_x27 + 0x7998));
      uVar4 = extraout_x1;
    }
    uVar5 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1268);
    if ((int)uVar5 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
      uVar5 = FUN_014dd9ec(uVar5,uVar4,*(undefined8 *)(unaff_x27 + 0x15c50));
    }
    *(undefined8 *)(in_x15 + -200) = uVar5;
    lVar8 = FUN_014df928();
    *(int *)(lVar8 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x83b68);
    *(int *)(lVar8 + 0x13) = (int)*(undefined8 *)(in_x15 + -0xa8);
    *(int *)(lVar8 + 0x17) = (int)*(undefined8 *)(unaff_x27 + 0x83b70);
    *(int *)(lVar8 + 0x1b) = (int)*(undefined8 *)(in_x15 + -0xc0);
    *(int *)(lVar8 + 0x1f) = (int)*(undefined8 *)(unaff_x27 + 0x17890);
    *extraout_x15_01 = lVar8;
    uVar4 = FUN_008e1b8c();
    *(undefined8 *)(in_x15 + -0xd0) = uVar4;
    extraout_x15_02[2] = *(undefined8 *)(in_x15 + -200);
    extraout_x15_02[3] = CONCAT44(unaff_000040b4,unaff_w22);
    *extraout_x15_02 = *(undefined8 *)(unaff_x27 + 0x15c68);
    extraout_x15_02[1] = uVar4;
    uVar4 = BaseNetworking_post();
    *(undefined8 *)(in_x15 + -0xd8) = uVar4;
    uVar4 = FUN_008f5c00();
    *(undefined8 *)(in_x15 + -0xd8) = uVar4;
    lVar8 = FUN_014df928();
    *(int *)(lVar8 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x83b78);
    *(int *)(lVar8 + 0x13) = (int)*(undefined8 *)(in_x15 + -0xd8);
    *extraout_x15_03 = lVar8;
    FUN_008e1b8c();
    if ((*(int *)(*(long *)(in_x15 + -0xd8) + 0x13) == 400) &&
       (lVar8 = (ulong)*(uint *)(*(long *)(in_x15 + -0xd8) + 0xb) + (unaff_x28 << 0x20),
       (int)lVar8 != unaff_w22)) {
      *extraout_x15_04 = *(undefined8 *)(unaff_x27 + 0x15c70);
      extraout_x15_04[1] = lVar8;
      iVar2 = (**(code **)(unaff_x27 + 0x83b80))(extraout_x15_04[1]);
      if (iVar2 != unaff_w22) {
        uVar3 = *(uint *)(*(long *)(in_x15 + -0xd8) + 0xb);
        *extraout_x15_05 = *(undefined8 *)(unaff_x27 + 0x15c70);
        extraout_x15_05[1] = (ulong)uVar3 + (unaff_x28 << 0x20);
        uVar4 = (**(code **)(unaff_x27 + 0x83b90))(extraout_x15_05[1]);
        *extraout_x15_06 = uVar4;
        uVar3 = (**(code **)(unaff_x27 + 0x83ba0))(*extraout_x15_06);
        if ((uVar3 >> 4 & 1) == 0) {
          uVar3 = *(uint *)(*(long *)(in_x15 + -0xd8) + 0xb);
          *extraout_x15_07 = *(undefined8 *)(unaff_x27 + 0x15c70);
          extraout_x15_07[1] = (ulong)uVar3 + (unaff_x28 << 0x20);
          uVar4 = (**(code **)(unaff_x27 + 0x83bb0))(extraout_x15_07[1]);
          *extraout_x15_08 = 0;
          extraout_x15_08[1] = uVar4;
          uVar4 = (**(code **)(unaff_x27 + 0x83bc0))(extraout_x15_08[1]);
          *extraout_x15_09 = uVar4;
          uVar3 = (**(code **)(unaff_x27 + 0x83bd0))(*extraout_x15_09);
          if ((uVar3 >> 4 & 1) == 0) break;
        }
      }
    }
    *(long *)(in_x15 + -0xe0) = *(long *)(in_x15 + -0xb0) + 1;
    lVar8 = FUN_014df928(*(undefined8 *)(in_x15 + -0xd8));
    *(int *)(lVar8 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x18658);
    *(undefined4 *)(lVar8 + 0x13) = *(undefined4 *)(*(long *)(in_x15 + -0xd8) + 0x13);
    *(int *)(lVar8 + 0x17) = (int)*(undefined8 *)(unaff_x27 + 0x18660);
    uVar7 = *(ulong *)(in_x15 + -0xe0);
    uVar6 = -(uVar7 >> 0x1e & 1) & 0xffffffff00000000 | (uVar7 & 0x7fffffff) << 1;
    plVar10 = extraout_x15_16;
    if (uVar7 != (long)uVar6 >> 1) {
      uVar6 = FUN_014dfbb4();
      *(ulong *)(uVar6 + 7) = uVar7;
      plVar10 = extraout_x15_17;
    }
    *(int *)(lVar8 + 0x1b) = (int)uVar6;
    *(int *)(lVar8 + 0x1f) = (int)*(undefined8 *)(unaff_x27 + 0xfe0);
    *(undefined4 *)(lVar8 + 0x23) = 6;
    *(int *)(lVar8 + 0x27) = (int)*(undefined8 *)(unaff_x27 + 0xf98);
    *plVar10 = lVar8;
    FUN_008e1b8c();
    lVar8 = *(long *)(in_x15 + -0xe0);
    uVar4 = *(undefined8 *)(in_x15 + -0xa0);
    uVar5 = *(undefined8 *)(in_x15 + -0xb8);
    uVar6 = extraout_x15_18;
  } while( true );
  uVar3 = *(uint *)(*(long *)(in_x15 + -0xd8) + 0xb);
  *extraout_x15_10 = *(undefined8 *)(unaff_x27 + 0x15c70);
  extraout_x15_10[1] = (ulong)uVar3 + (unaff_x28 << 0x20);
  uVar4 = (**(code **)(unaff_x27 + 0x83be0))(extraout_x15_10[1]);
  *extraout_x15_11 = 0;
  extraout_x15_11[1] = uVar4;
  uVar6 = (**(code **)(unaff_x27 + 0x83bf0))(extraout_x15_11[1]);
  *(ulong *)(in_x15 + -0xc0) = uVar6;
  if ((int)uVar6 != unaff_w22) {
    uVar7 = 0x3c;
    if ((uVar6 & 1) != 0) {
      uVar7 = *(ulong *)(uVar6 - 1) >> 0xc & 0xfffff;
    }
    *extraout_x15_12 = uVar6;
    lVar8 = (**(code **)(unaff_x21 + (uVar7 + 0x91c1) * 8))();
    uVar6 = *(ulong *)(lVar8 + -1);
    *extraout_x15_13 = *(undefined8 *)(unaff_x27 + 0xcf48);
    extraout_x15_13[1] = lVar8;
    uVar3 = (**(code **)(unaff_x21 + (uVar6 >> 0xc & 0xfffff) * 8))();
    if ((uVar3 >> 4 & 1) != 0) {
      uVar4 = *(undefined8 *)(in_x15 + -0xc0);
      *extraout_x15_14 = 0;
      extraout_x15_14[1] = uVar4;
      uVar4 = (**(code **)(unaff_x27 + 0x83c08))(extraout_x15_14[1]);
      *(undefined8 *)(in_x15 + -200) = uVar4;
      uVar4 = FUN_0094f9a4(*(undefined8 *)(unaff_x27 + 0x3298));
      uVar4 = FUN_00e4eb38(uVar4,*(undefined8 *)(in_x15 + -200));
      goto FUN_008f592c;
    }
    uVar6 = *(ulong *)(in_x15 + -0xc0);
  }
  lVar8 = FUN_014df928(uVar6);
  *(int *)(lVar8 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x83c00);
  *(int *)(lVar8 + 0x13) = (int)*(undefined8 *)(in_x15 + -0xc0);
  *extraout_x15_15 = lVar8;
  FUN_008e1b8c();
  uVar4 = CONCAT44(unaff_000040b4,unaff_w22);
FUN_008f592c:
  *puVar9 = *puVar9;
  *(undefined8 *)(in_x15 + -8) = *(undefined8 *)(in_x15 + -8);
  *(undefined8 *)(in_x15 + -0x20) = uVar4;
  *(undefined8 *)(in_x15 + -0x18) = *(undefined8 *)(in_x15 + -0x18);
  (**(code **)(unaff_x26 + 0x648))();
  return;
}


```

## BaseNetworking_post

- Blutter address: `0x8ec50c`
- Ghidra address: `0x9ec50c`
- Blutter byte extent: `0x4b4` bytes (inclusive end `0x9ec9bf`)
- Ghidra bounded disassembly command: `true`
- Ghidra function entry: `0x9ec50c`
- Ghidra body bytes: `1204`
- Ghidra body address ranges: `1`

```c

void BaseNetworking_post(void)

{
  undefined8 uVar1;
  long lVar2;
  ulong uVar3;
  int iVar4;
  undefined8 extraout_x1;
  undefined8 uVar5;
  undefined8 extraout_x1_00;
  ulong uVar6;
  long in_x4;
  long in_x15;
  undefined8 *puVar7;
  ulong *extraout_x15;
  ulong *extraout_x15_00;
  long *extraout_x15_01;
  undefined8 *extraout_x15_02;
  long *extraout_x15_03;
  undefined8 *extraout_x15_04;
  undefined8 *extraout_x15_05;
  undefined8 *extraout_x15_06;
  long *extraout_x15_07;
  long lVar8;
  long unaff_x21;
  undefined8 unaff_x22;
  long unaff_x26;
  long unaff_x27;
  long unaff_x28;
  undefined8 unaff_x29;
  undefined8 unaff_x30;

  puVar7 = (undefined8 *)(in_x15 + -0x10);
  *puVar7 = unaff_x29;
  *(undefined8 *)(in_x15 + -8) = unaff_x30;
  *(undefined8 *)(in_x15 + -0x18) = unaff_x22;
  iVar4 = *(int *)(in_x4 + 0x13) + -6;
  *(undefined8 *)(in_x15 + -0x38) = *(undefined8 *)((long)puVar7 + (long)iVar4 * 4 + 0x20);
  *(undefined8 *)(in_x15 + -0x30) = *(undefined8 *)((long)puVar7 + (long)iVar4 * 4 + 0x18);
  *(undefined8 *)(in_x15 + -0x28) = *(undefined8 *)((long)puVar7 + (long)iVar4 * 4 + 0x10);
  uVar1 = unaff_x22;
  if (*(int *)(in_x4 + 0xf) != 0) {
    uVar1 = *(undefined8 *)((long)puVar7 + (long)*(int *)(in_x4 + 0x17) * 4 + 0x10);
  }
  *(undefined8 *)(in_x15 + -0x20) = uVar1;
  if (in_x15 - 0x80U <= *(ulong *)(unaff_x26 + 0x48)) {
    FUN_014dfa34();
  }
  uVar1 = FUN_008f5e44(*(undefined8 *)(unaff_x27 + 0x15e58));
  uVar1 = FUN_00a12a04(uVar1,*(undefined8 *)(in_x15 + -0x38));
  *(undefined8 *)(in_x15 + -0x40) = uVar1;
  lVar2 = FUN_008f5c00();
  *(long *)(in_x15 + -0x40) = lVar2;
  uVar3 = *(ulong *)(lVar2 + -1) >> 0xc & 0xfffff;
  (**(code **)(unaff_x21 + (uVar3 + 0x12862) * 8))(uVar3,lVar2,*(undefined8 *)(unaff_x27 + 0x15e60))
  ;
  lVar2 = *(long *)(*(long *)(unaff_x26 + 0x78) + 0x1278);
  if ((int)lVar2 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
    lVar2 = FUN_014dd9ec(lVar2,extraout_x1,*(undefined8 *)(unaff_x27 + 0x15e68));
  }
  *(long *)(in_x15 + -0x50) = lVar2;
  lVar2 = (ulong)*(uint *)(lVar2 + 7) + (unaff_x28 << 0x20);
  if ((int)lVar2 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
                    /* WARNING: Subroutine does not return */
    FUN_014e034c();
  }
  *(long *)(in_x15 + -0x48) = lVar2;
  uVar1 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1280);
  if ((int)uVar1 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
    uVar1 = FUN_014dd9ec(uVar1,lVar2,*(undefined8 *)(unaff_x27 + 0x15e70));
  }
  FUN_009ea9c0(uVar1,*(undefined8 *)(in_x15 + -0x48),uVar1);
  FUN_009eaf78(*(long *)(in_x15 + -0x50),
               (ulong)*(uint *)(*(long *)(in_x15 + -0x50) + 7) + (unaff_x28 << 0x20),
               *(undefined8 *)(in_x15 + -0x40));
  *(ulong *)(in_x15 + -0x48) = (ulong)*(uint *)(*(long *)(in_x15 + -0x50) + 7) + (unaff_x28 << 0x20)
  ;
  lVar2 = FUN_008dd0d0();
  *(undefined8 *)(lVar2 + 7) = 160000000;
  FUN_009ea958(160000000,*(undefined8 *)(in_x15 + -0x48),lVar2);
  *(ulong *)(in_x15 + -0x48) = (ulong)*(uint *)(*(long *)(in_x15 + -0x50) + 7) + (unaff_x28 << 0x20)
  ;
  lVar2 = FUN_008dd0d0();
  *(undefined8 *)(lVar2 + 7) = 155000000;
  FUN_00a129a4(155000000,*(undefined8 *)(in_x15 + -0x48),lVar2);
  lVar2 = *(long *)(in_x15 + -0x50);
  *(int *)((ulong)*(uint *)(lVar2 + 7) + (unaff_x28 << 0x20) + 0x4f) =
       (int)*(undefined8 *)(unaff_x27 + 0x15e60);
  uVar6 = *(ulong *)(in_x15 + -0x38);
  *(ulong *)(in_x15 + -0x48) = (ulong)*(uint *)(lVar2 + 0xb) + (unaff_x28 << 0x20);
  uVar3 = 0x3c;
  if ((uVar6 & 1) != 0) {
    uVar3 = *(ulong *)(uVar6 - 1) >> 0xc & 0xfffff;
  }
  *extraout_x15 = uVar6;
  uVar1 = (**(code **)(unaff_x21 + (uVar3 - 0xffb) * 8))();
  uVar5 = *(undefined8 *)(unaff_x27 + 0x15e78);
  *(undefined8 *)(in_x15 + -0x58) = uVar1;
  lVar2 = FUN_014dec0c(uVar1,uVar5);
  *(long *)(in_x15 + -0x60) = lVar2;
  *(int *)(lVar2 + 0xb) = (int)*(undefined8 *)(in_x15 + -0x20);
  uVar6 = *(ulong *)(in_x15 + -0x38);
  uVar3 = 0x3c;
  if ((uVar6 & 1) != 0) {
    uVar3 = *(ulong *)(uVar6 - 1) >> 0xc & 0xfffff;
  }
  *extraout_x15_00 = uVar6;
  uVar1 = (**(code **)(unaff_x21 + (uVar3 - 0xff9) * 8))();
  *(undefined8 *)(in_x15 + -0x68) = uVar1;
  lVar2 = FUN_00a12998();
  *(int *)(lVar2 + 7) = (int)*(undefined8 *)(in_x15 + -0x58);
  *(int *)(lVar2 + 0xb) = (int)*(undefined8 *)(in_x15 + -0x60);
  *(int *)(lVar2 + 0xf) = (int)*(undefined8 *)(in_x15 + -0x68);
  lVar8 = *(long *)(in_x15 + -0x48);
  *extraout_x15_01 = lVar2;
  extraout_x15_01[1] = lVar8;
  FUN_009d84a4();
  uVar1 = FUN_00a1298c();
  FUN_00a128c8(uVar1,uVar1);
  uVar1 = *(undefined8 *)(unaff_x27 + 0x21e0);
  *extraout_x15_02 = *(undefined8 *)(unaff_x26 + 0xa8);
  extraout_x15_02[1] = uVar1;
  lVar2 = FUN_008efee0();
  *(long *)(in_x15 + -0x48) = lVar2;
  uVar3 = *(ulong *)(lVar2 + -1) >> 0xc & 0xfffff;
  uVar1 = (**(code **)(unaff_x21 + (uVar3 - 0xd50) * 8))
                    (uVar3,lVar2,*(undefined8 *)(unaff_x27 + 0x15e80),
                     *(undefined8 *)(in_x15 + -0x30));
  uVar1 = FUN_00a12824(uVar1,*(undefined8 *)(in_x15 + -0x38),*(undefined8 *)(in_x15 + -0x30));
  FUN_014cd868(uVar1,*(undefined8 *)(in_x15 + -0x48),*(undefined8 *)(unaff_x27 + 0x15e88),uVar1);
  uVar1 = FUN_00a1298c();
  *(undefined8 *)(in_x15 + -0x30) = uVar1;
  FUN_00a11e40(uVar1,uVar1,*(undefined8 *)(in_x15 + -0x48));
  lVar2 = FUN_014df928();
  *(int *)(lVar2 + 0xf) = (int)*(undefined8 *)(unaff_x27 + 0x15e90);
  iVar4 = *(int *)((ulong)*(uint *)(*(long *)(in_x15 + -0x50) + 7) + (unaff_x28 << 0x20) + 0x4b);
  if (iVar4 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
                    /* WARNING: Subroutine does not return */
    FUN_014e034c();
  }
  *(int *)(lVar2 + 0x13) = iVar4;
  *(int *)(lVar2 + 0x17) = (int)*(undefined8 *)(in_x15 + -0x28);
  *(int *)(lVar2 + 0x1b) = (int)*(undefined8 *)(unaff_x27 + 0x15e98);
  lVar8 = *(long *)(in_x15 + -0x30);
  *(undefined4 *)(lVar2 + 0x1f) = *(undefined4 *)(lVar8 + 0x13);
  *(int *)(lVar2 + 0x23) = (int)*(undefined8 *)(unaff_x27 + 0x15ea0);
  *(undefined4 *)(lVar2 + 0x27) = *(undefined4 *)(lVar8 + 0x17);
  *(int *)(lVar2 + 0x2b) = (int)*(undefined8 *)(unaff_x27 + 0x7c28);
  *extraout_x15_03 = lVar2;
  FUN_008e1b8c();
  uVar1 = *(undefined8 *)(*(long *)(unaff_x26 + 0x78) + 0x1260);
  if ((int)uVar1 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
    FUN_014dd9ec(uVar1,extraout_x1_00,*(undefined8 *)(unaff_x27 + 0x7998));
  }
  lVar2 = FUN_00a11e34();
  *(int *)(lVar2 + 7) = (int)*(undefined8 *)(unaff_x27 + 0xbb40);
  *(int *)(lVar2 + 0xb) = (int)*(undefined8 *)(in_x15 + -0x40);
  *(int *)(lVar2 + 0x37) = (int)unaff_x22 + 0x30;
  uVar1 = FUN_00a117a4(*(long *)(in_x15 + -0x50),lVar2,
                       (ulong)*(uint *)(*(long *)(in_x15 + -0x50) + 7) + (unaff_x28 << 0x20),
                       *(undefined8 *)(in_x15 + -0x28),*(undefined8 *)(unaff_x27 + 0x1390),
                       *(undefined8 *)(in_x15 + -0x30),*(undefined8 *)(unaff_x27 + 0x15e60));
  uVar5 = *(undefined8 *)(in_x15 + -0x20);
  extraout_x15_04[1] = *(undefined8 *)(in_x15 + -0x38);
  extraout_x15_04[2] = uVar5;
  *extraout_x15_04 = uVar1;
  uVar1 = FUN_00a11664();
  lVar8 = *(long *)(in_x15 + -0x50);
  lVar2 = (ulong)*(uint *)((ulong)*(uint *)(lVar8 + 7) + (unaff_x28 << 0x20) + 0x4b) +
          (unaff_x28 << 0x20);
  if ((int)lVar2 == (int)*(undefined8 *)(unaff_x26 + 0x90)) {
                    /* WARNING: Subroutine does not return */
    FUN_014e034c(lVar8,uVar1);
  }
  uVar1 = FUN_00a11300(lVar8,uVar1,lVar2);
  uVar5 = *(undefined8 *)(unaff_x27 + 0xb0);
  extraout_x15_05[1] = *(undefined8 *)(in_x15 + -0x50);
  extraout_x15_05[2] = uVar5;
  *extraout_x15_05 = uVar1;
  uVar1 = FUN_009ec9c0();
  *(undefined8 *)(in_x15 + -0x20) = uVar1;
  uVar1 = FUN_008f5c00();
  *(undefined8 *)(in_x15 + -0x20) = uVar1;
  *extraout_x15_06 = *(undefined8 *)(in_x15 + -0x38);
  uVar1 = FUN_011fc4c4();
  *(undefined8 *)(in_x15 + -0x30) = uVar1;
  lVar2 = FUN_014df928();
  *(int *)(lVar2 + 0xf) = (int)*(undefined8 *)(in_x15 + -0x30);
  *(int *)(lVar2 + 0x13) = (int)*(undefined8 *)(unaff_x27 + 0x15ea8);
  *(int *)(lVar2 + 0x17) = (int)*(undefined8 *)(in_x15 + -0x28);
  *(int *)(lVar2 + 0x1b) = (int)*(undefined8 *)(unaff_x27 + 0x15eb0);
  *(int *)(lVar2 + 0x1f) = (int)*(undefined8 *)(in_x15 + -0x20);
  *extraout_x15_07 = lVar2;
  FUN_008e1b8c();
  *puVar7 = *puVar7;
  *(undefined8 *)(in_x15 + -8) = *(undefined8 *)(in_x15 + -8);
  *(undefined8 *)(in_x15 + -0x20) = *(undefined8 *)(in_x15 + -0x20);
  *(undefined8 *)(in_x15 + -0x18) = *(undefined8 *)(in_x15 + -0x18);
  (**(code **)(unaff_x26 + 0x640))();
  return;
}


```
