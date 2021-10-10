.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game15WalkSmokeEffect3ObjFv
__ct__Q34Game15WalkSmokeEffect3ObjFv:
/* 8012A320 00127260  38 00 00 00 */	li r0, 0
/* 8012A324 00127264  C0 02 9C E8 */	lfs f0, lbl_80518048@sda21(r2)
/* 8012A328 00127268  98 03 00 00 */	stb r0, 0(r3)
/* 8012A32C 0012726C  3C 80 80 51 */	lis r4, "zero__10Vector3<f>"@ha
/* 8012A330 00127270  90 03 00 04 */	stw r0, 4(r3)
/* 8012A334 00127274  D0 03 00 08 */	stfs f0, 8(r3)
/* 8012A338 00127278  C4 04 41 E4 */	lfsu f0, "zero__10Vector3<f>"@l(r4)
/* 8012A33C 0012727C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8012A340 00127280  C0 04 00 04 */	lfs f0, 4(r4)
/* 8012A344 00127284  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8012A348 00127288  C0 04 00 08 */	lfs f0, 8(r4)
/* 8012A34C 0012728C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8012A350 00127290  4E 80 00 20 */	blr 

.global __ct__Q34Game15WalkSmokeEffect3MgrFv
__ct__Q34Game15WalkSmokeEffect3MgrFv:
/* 8012A354 00127294  38 00 00 00 */	li r0, 0
/* 8012A358 00127298  90 03 00 00 */	stw r0, 0(r3)
/* 8012A35C 0012729C  90 03 00 04 */	stw r0, 4(r3)
/* 8012A360 001272A0  4E 80 00 20 */	blr 

.global alloc__Q34Game15WalkSmokeEffect3MgrFi
alloc__Q34Game15WalkSmokeEffect3MgrFi:
/* 8012A364 001272A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012A368 001272A8  7C 08 02 A6 */	mflr r0
/* 8012A36C 001272AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012A370 001272B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012A374 001272B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8012A378 001272B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8012A37C 001272BC  7C 7D 1B 78 */	mr r29, r3
/* 8012A380 001272C0  3C 60 80 48 */	lis r3, lbl_8047BF30@ha
/* 8012A384 001272C4  80 1D 00 04 */	lwz r0, 4(r29)
/* 8012A388 001272C8  3B E3 BF 30 */	addi r31, r3, lbl_8047BF30@l
/* 8012A38C 001272CC  28 00 00 00 */	cmplwi r0, 0
/* 8012A390 001272D0  40 82 00 58 */	bne lbl_8012A3E8
/* 8012A394 001272D4  90 9D 00 00 */	stw r4, 0(r29)
/* 8012A398 001272D8  83 DD 00 00 */	lwz r30, 0(r29)
/* 8012A39C 001272DC  1C 7E 00 18 */	mulli r3, r30, 0x18
/* 8012A3A0 001272E0  38 63 00 10 */	addi r3, r3, 0x10
/* 8012A3A4 001272E4  4B EF 9C 09 */	bl __nwa__FUl
/* 8012A3A8 001272E8  3C 80 80 13 */	lis r4, __ct__Q34Game15WalkSmokeEffect3ObjFv@ha
/* 8012A3AC 001272EC  7F C7 F3 78 */	mr r7, r30
/* 8012A3B0 001272F0  38 84 A3 20 */	addi r4, r4, __ct__Q34Game15WalkSmokeEffect3ObjFv@l
/* 8012A3B4 001272F4  38 A0 00 00 */	li r5, 0
/* 8012A3B8 001272F8  38 C0 00 18 */	li r6, 0x18
/* 8012A3BC 001272FC  4B F9 76 35 */	bl __construct_new_array
/* 8012A3C0 00127300  90 7D 00 04 */	stw r3, 4(r29)
/* 8012A3C4 00127304  80 1D 00 04 */	lwz r0, 4(r29)
/* 8012A3C8 00127308  28 00 00 00 */	cmplwi r0, 0
/* 8012A3CC 0012730C  40 82 00 30 */	bne lbl_8012A3FC
/* 8012A3D0 00127310  38 7F 00 0C */	addi r3, r31, 0xc
/* 8012A3D4 00127314  38 BF 00 20 */	addi r5, r31, 0x20
/* 8012A3D8 00127318  38 80 00 A8 */	li r4, 0xa8
/* 8012A3DC 0012731C  4C C6 31 82 */	crclr 6
/* 8012A3E0 00127320  4B F0 02 61 */	bl panic_f__12JUTExceptionFPCciPCce
/* 8012A3E4 00127324  48 00 00 18 */	b lbl_8012A3FC
lbl_8012A3E8:
/* 8012A3E8 00127328  38 7F 00 0C */	addi r3, r31, 0xc
/* 8012A3EC 0012732C  38 BF 00 30 */	addi r5, r31, 0x30
/* 8012A3F0 00127330  38 80 00 AD */	li r4, 0xad
/* 8012A3F4 00127334  4C C6 31 82 */	crclr 6
/* 8012A3F8 00127338  4B F0 02 49 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8012A3FC:
/* 8012A3FC 0012733C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012A400 00127340  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012A404 00127344  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8012A408 00127348  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8012A40C 0012734C  7C 08 03 A6 */	mtlr r0
/* 8012A410 00127350  38 21 00 20 */	addi r1, r1, 0x20
/* 8012A414 00127354  4E 80 00 20 */	blr 

.global update__Q34Game15WalkSmokeEffect3MgrFPQ24Game9EnemyBase
update__Q34Game15WalkSmokeEffect3MgrFPQ24Game9EnemyBase:
/* 8012A418 00127358  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8012A41C 0012735C  7C 08 02 A6 */	mflr r0
/* 8012A420 00127360  90 01 00 74 */	stw r0, 0x74(r1)
/* 8012A424 00127364  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8012A428 00127368  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8012A42C 0012736C  BF 61 00 4C */	stmw r27, 0x4c(r1)
/* 8012A430 00127370  7C 7B 1B 78 */	mr r27, r3
/* 8012A434 00127374  7C 9C 23 78 */	mr r28, r4
/* 8012A438 00127378  3B A0 00 00 */	li r29, 0
/* 8012A43C 0012737C  3B C0 00 00 */	li r30, 0
/* 8012A440 00127380  48 00 01 78 */	b lbl_8012A5B8
lbl_8012A444:
/* 8012A444 00127384  80 1B 00 04 */	lwz r0, 4(r27)
/* 8012A448 00127388  7F E0 F2 14 */	add r31, r0, r30
/* 8012A44C 0012738C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8012A450 00127390  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8012A454 00127394  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8012A458 00127398  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8012A45C 0012739C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8012A460 001273A0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8012A464 001273A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8012A468 001273A8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8012A46C 001273AC  EC 41 00 28 */	fsubs f2, f1, f0
/* 8012A470 001273B0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8012A474 001273B4  88 1F 00 00 */	lbz r0, 0(r31)
/* 8012A478 001273B8  28 00 00 00 */	cmplwi r0, 0
/* 8012A47C 001273BC  40 82 00 F0 */	bne lbl_8012A56C
/* 8012A480 001273C0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8012A484 001273C4  C0 02 9C E8 */	lfs f0, lbl_80518048@sda21(r2)
/* 8012A488 001273C8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8012A48C 001273CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012A490 001273D0  40 80 01 08 */	bge lbl_8012A598
/* 8012A494 001273D4  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 8012A498 001273D8  38 81 00 0C */	addi r4, r1, 0xc
/* 8012A49C 001273DC  81 83 00 04 */	lwz r12, 4(r3)
/* 8012A4A0 001273E0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8012A4A4 001273E4  7D 89 03 A6 */	mtctr r12
/* 8012A4A8 001273E8  4E 80 04 21 */	bctrl 
/* 8012A4AC 001273EC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8012A4B0 001273F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8012A4B4 001273F4  40 80 00 E4 */	bge lbl_8012A598
/* 8012A4B8 001273F8  7F 83 E3 78 */	mr r3, r28
/* 8012A4BC 001273FC  81 9C 00 00 */	lwz r12, 0(r28)
/* 8012A4C0 00127400  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8012A4C4 00127404  7D 89 03 A6 */	mtctr r12
/* 8012A4C8 00127408  4E 80 04 21 */	bctrl 
/* 8012A4CC 0012740C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012A4D0 00127410  40 82 00 90 */	bne lbl_8012A560
/* 8012A4D4 00127414  7F 83 E3 78 */	mr r3, r28
/* 8012A4D8 00127418  C3 FC 01 F8 */	lfs f31, 0x1f8(r28)
/* 8012A4DC 0012741C  81 9C 00 00 */	lwz r12, 0(r28)
/* 8012A4E0 00127420  81 8C 02 58 */	lwz r12, 0x258(r12)
/* 8012A4E4 00127424  7D 89 03 A6 */	mtctr r12
/* 8012A4E8 00127428  4E 80 04 21 */	bctrl 
/* 8012A4EC 0012742C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8012A4F0 00127430  3C A0 80 4B */	lis r5, __vt__Q23efx3Arg@ha
/* 8012A4F4 00127434  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8012A4F8 00127438  3C 80 80 4B */	lis r4, __vt__Q23efx5TBase@ha
/* 8012A4FC 0012743C  81 01 00 14 */	lwz r8, 0x14(r1)
/* 8012A500 00127440  38 E5 A7 EC */	addi r7, r5, __vt__Q23efx3Arg@l
/* 8012A504 00127444  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8012A508 00127448  38 A4 A7 F8 */	addi r5, r4, __vt__Q23efx5TBase@l
/* 8012A50C 0012744C  3C C0 80 4B */	lis r6, __vt__Q23efx12ArgEnemyType@ha
/* 8012A510 00127450  3C 80 80 4F */	lis r4, __vt__Q23efx15TEnemyWalkSmoke@ha
/* 8012A514 00127454  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8012A518 00127458  38 C6 A7 E0 */	addi r6, r6, __vt__Q23efx12ArgEnemyType@l
/* 8012A51C 0012745C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8012A520 00127460  38 04 86 4C */	addi r0, r4, __vt__Q23efx15TEnemyWalkSmoke@l
/* 8012A524 00127464  91 01 00 20 */	stw r8, 0x20(r1)
/* 8012A528 00127468  38 81 00 24 */	addi r4, r1, 0x24
/* 8012A52C 0012746C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8012A530 00127470  90 E1 00 24 */	stw r7, 0x24(r1)
/* 8012A534 00127474  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8012A538 00127478  90 A1 00 08 */	stw r5, 8(r1)
/* 8012A53C 0012747C  90 61 00 34 */	stw r3, 0x34(r1)
/* 8012A540 00127480  38 61 00 08 */	addi r3, r1, 8
/* 8012A544 00127484  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8012A548 00127488  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8012A54C 0012748C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8012A550 00127490  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8012A554 00127494  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 8012A558 00127498  90 01 00 08 */	stw r0, 8(r1)
/* 8012A55C 0012749C  48 29 DD 9D */	bl create__Q23efx15TEnemyWalkSmokeFPQ23efx3Arg
lbl_8012A560:
/* 8012A560 001274A0  38 00 00 01 */	li r0, 1
/* 8012A564 001274A4  98 1F 00 00 */	stb r0, 0(r31)
/* 8012A568 001274A8  48 00 00 30 */	b lbl_8012A598
lbl_8012A56C:
/* 8012A56C 001274AC  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 8012A570 001274B0  38 81 00 0C */	addi r4, r1, 0xc
/* 8012A574 001274B4  81 83 00 04 */	lwz r12, 4(r3)
/* 8012A578 001274B8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8012A57C 001274BC  7D 89 03 A6 */	mtctr r12
/* 8012A580 001274C0  4E 80 04 21 */	bctrl 
/* 8012A584 001274C4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8012A588 001274C8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8012A58C 001274CC  40 81 00 0C */	ble lbl_8012A598
/* 8012A590 001274D0  38 00 00 00 */	li r0, 0
/* 8012A594 001274D4  98 1F 00 00 */	stb r0, 0(r31)
lbl_8012A598:
/* 8012A598 001274D8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8012A59C 001274DC  3B DE 00 18 */	addi r30, r30, 0x18
/* 8012A5A0 001274E0  3B BD 00 01 */	addi r29, r29, 1
/* 8012A5A4 001274E4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8012A5A8 001274E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8012A5AC 001274EC  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8012A5B0 001274F0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8012A5B4 001274F4  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_8012A5B8:
/* 8012A5B8 001274F8  80 1B 00 00 */	lwz r0, 0(r27)
/* 8012A5BC 001274FC  7C 1D 00 00 */	cmpw r29, r0
/* 8012A5C0 00127500  41 80 FE 84 */	blt lbl_8012A444
/* 8012A5C4 00127504  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8012A5C8 00127508  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8012A5CC 0012750C  BB 61 00 4C */	lmw r27, 0x4c(r1)
/* 8012A5D0 00127510  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8012A5D4 00127514  7C 08 03 A6 */	mtlr r0
/* 8012A5D8 00127518  38 21 00 70 */	addi r1, r1, 0x70
/* 8012A5DC 0012751C  4E 80 00 20 */	blr 

.global setup__Q34Game15WalkSmokeEffect3MgrFiPQ28SysShape5ModelPcf
setup__Q34Game15WalkSmokeEffect3MgrFiPQ28SysShape5ModelPcf:
/* 8012A5E0 00127520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012A5E4 00127524  7C 08 02 A6 */	mflr r0
/* 8012A5E8 00127528  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012A5EC 0012752C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8012A5F0 00127530  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8012A5F4 00127534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012A5F8 00127538  93 C1 00 08 */	stw r30, 8(r1)
/* 8012A5FC 0012753C  FF E0 08 90 */	fmr f31, f1
/* 8012A600 00127540  7C 7E 1B 78 */	mr r30, r3
/* 8012A604 00127544  7C 9F 23 78 */	mr r31, r4
/* 8012A608 00127548  7C A3 2B 78 */	mr r3, r5
/* 8012A60C 0012754C  7C C4 33 78 */	mr r4, r6
/* 8012A610 00127550  48 31 49 D5 */	bl getJoint__Q28SysShape5ModelFPc
/* 8012A614 00127554  48 2F F2 8D */	bl getWorldMatrix__Q28SysShape5JointFv
/* 8012A618 00127558  1C 9F 00 18 */	mulli r4, r31, 0x18
/* 8012A61C 0012755C  80 BE 00 04 */	lwz r5, 4(r30)
/* 8012A620 00127560  38 00 00 01 */	li r0, 1
/* 8012A624 00127564  7C 85 22 14 */	add r4, r5, r4
/* 8012A628 00127568  90 64 00 04 */	stw r3, 4(r4)
/* 8012A62C 0012756C  D3 E4 00 08 */	stfs f31, 8(r4)
/* 8012A630 00127570  80 64 00 04 */	lwz r3, 4(r4)
/* 8012A634 00127574  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8012A638 00127578  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 8012A63C 0012757C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8012A640 00127580  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 8012A644 00127584  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8012A648 00127588  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 8012A64C 0012758C  98 04 00 00 */	stb r0, 0(r4)
/* 8012A650 00127590  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8012A654 00127594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012A658 00127598  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8012A65C 0012759C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012A660 001275A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012A664 001275A4  7C 08 03 A6 */	mtlr r0
/* 8012A668 001275A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8012A66C 001275AC  4E 80 00 20 */	blr 
