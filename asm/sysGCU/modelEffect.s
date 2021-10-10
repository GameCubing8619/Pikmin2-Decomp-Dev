.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global entry__15ModelEffectDataFv
entry__15ModelEffectDataFv:
/* 8043D49C 0043A3DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043D4A0 0043A3E0  7C 08 02 A6 */	mflr r0
/* 8043D4A4 0043A3E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043D4A8 0043A3E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043D4AC 0043A3EC  7C 7F 1B 78 */	mr r31, r3
/* 8043D4B0 0043A3F0  81 83 00 00 */	lwz r12, 0(r3)
/* 8043D4B4 0043A3F4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8043D4B8 0043A3F8  7D 89 03 A6 */	mtctr r12
/* 8043D4BC 0043A3FC  4E 80 04 21 */	bctrl 
/* 8043D4C0 0043A400  80 0D 9A 18 */	lwz r0, particleMgr@sda21(r13)
/* 8043D4C4 0043A404  28 00 00 00 */	cmplwi r0, 0
/* 8043D4C8 0043A408  40 82 00 20 */	bne lbl_8043D4E8
/* 8043D4CC 0043A40C  3C 60 80 4A */	lis r3, lbl_8049AC20@ha
/* 8043D4D0 0043A410  3C A0 80 4A */	lis r5, lbl_8049AC30@ha
/* 8043D4D4 0043A414  38 63 AC 20 */	addi r3, r3, lbl_8049AC20@l
/* 8043D4D8 0043A418  38 80 00 2C */	li r4, 0x2c
/* 8043D4DC 0043A41C  38 A5 AC 30 */	addi r5, r5, lbl_8049AC30@l
/* 8043D4E0 0043A420  4C C6 31 82 */	crclr 6
/* 8043D4E4 0043A424  4B BE D1 5D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8043D4E8:
/* 8043D4E8 0043A428  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 8043D4EC 0043A42C  7F E4 FB 78 */	mr r4, r31
/* 8043D4F0 0043A430  48 00 01 25 */	bl entryModelEffect__11ParticleMgrFP15ModelEffectData
/* 8043D4F4 0043A434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043D4F8 0043A438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043D4FC 0043A43C  7C 08 03 A6 */	mtlr r0
/* 8043D500 0043A440  38 21 00 10 */	addi r1, r1, 0x10
/* 8043D504 0043A444  4E 80 00 20 */	blr 

.global allocModelData__15ModelEffectDataFi
allocModelData__15ModelEffectDataFi:
/* 8043D508 0043A448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043D50C 0043A44C  7C 08 02 A6 */	mflr r0
/* 8043D510 0043A450  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043D514 0043A454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043D518 0043A458  7C 9F 23 78 */	mr r31, r4
/* 8043D51C 0043A45C  93 C1 00 08 */	stw r30, 8(r1)
/* 8043D520 0043A460  7C 7E 1B 78 */	mr r30, r3
/* 8043D524 0043A464  93 E3 00 18 */	stw r31, 0x18(r3)
/* 8043D528 0043A468  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8043D52C 0043A46C  54 03 10 3A */	slwi r3, r0, 2
/* 8043D530 0043A470  4B BE 6A 7D */	bl __nwa__FUl
/* 8043D534 0043A474  2C 1F 00 00 */	cmpwi r31, 0
/* 8043D538 0043A478  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8043D53C 0043A47C  39 80 00 00 */	li r12, 0
/* 8043D540 0043A480  40 81 00 BC */	ble lbl_8043D5FC
/* 8043D544 0043A484  2C 1F 00 08 */	cmpwi r31, 8
/* 8043D548 0043A488  38 7F FF F8 */	addi r3, r31, -8
/* 8043D54C 0043A48C  40 81 00 88 */	ble lbl_8043D5D4
/* 8043D550 0043A490  38 03 00 07 */	addi r0, r3, 7
/* 8043D554 0043A494  39 60 00 00 */	li r11, 0
/* 8043D558 0043A498  54 00 E8 FE */	srwi r0, r0, 3
/* 8043D55C 0043A49C  7C 09 03 A6 */	mtctr r0
/* 8043D560 0043A4A0  2C 03 00 00 */	cmpwi r3, 0
/* 8043D564 0043A4A4  40 81 00 70 */	ble lbl_8043D5D4
lbl_8043D568:
/* 8043D568 0043A4A8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8043D56C 0043A4AC  39 40 00 00 */	li r10, 0
/* 8043D570 0043A4B0  39 0B 00 04 */	addi r8, r11, 4
/* 8043D574 0043A4B4  38 EB 00 08 */	addi r7, r11, 8
/* 8043D578 0043A4B8  7D 43 59 2E */	stwx r10, r3, r11
/* 8043D57C 0043A4BC  38 CB 00 0C */	addi r6, r11, 0xc
/* 8043D580 0043A4C0  38 AB 00 10 */	addi r5, r11, 0x10
/* 8043D584 0043A4C4  38 8B 00 14 */	addi r4, r11, 0x14
/* 8043D588 0043A4C8  81 3E 00 1C */	lwz r9, 0x1c(r30)
/* 8043D58C 0043A4CC  38 6B 00 18 */	addi r3, r11, 0x18
/* 8043D590 0043A4D0  38 0B 00 1C */	addi r0, r11, 0x1c
/* 8043D594 0043A4D4  39 6B 00 20 */	addi r11, r11, 0x20
/* 8043D598 0043A4D8  7D 49 41 2E */	stwx r10, r9, r8
/* 8043D59C 0043A4DC  39 8C 00 08 */	addi r12, r12, 8
/* 8043D5A0 0043A4E0  81 1E 00 1C */	lwz r8, 0x1c(r30)
/* 8043D5A4 0043A4E4  7D 48 39 2E */	stwx r10, r8, r7
/* 8043D5A8 0043A4E8  80 FE 00 1C */	lwz r7, 0x1c(r30)
/* 8043D5AC 0043A4EC  7D 47 31 2E */	stwx r10, r7, r6
/* 8043D5B0 0043A4F0  80 DE 00 1C */	lwz r6, 0x1c(r30)
/* 8043D5B4 0043A4F4  7D 46 29 2E */	stwx r10, r6, r5
/* 8043D5B8 0043A4F8  80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 8043D5BC 0043A4FC  7D 45 21 2E */	stwx r10, r5, r4
/* 8043D5C0 0043A500  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8043D5C4 0043A504  7D 44 19 2E */	stwx r10, r4, r3
/* 8043D5C8 0043A508  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8043D5CC 0043A50C  7D 43 01 2E */	stwx r10, r3, r0
/* 8043D5D0 0043A510  42 00 FF 98 */	bdnz lbl_8043D568
lbl_8043D5D4:
/* 8043D5D4 0043A514  7C 0C F8 50 */	subf r0, r12, r31
/* 8043D5D8 0043A518  55 85 10 3A */	slwi r5, r12, 2
/* 8043D5DC 0043A51C  38 80 00 00 */	li r4, 0
/* 8043D5E0 0043A520  7C 09 03 A6 */	mtctr r0
/* 8043D5E4 0043A524  7C 0C F8 00 */	cmpw r12, r31
/* 8043D5E8 0043A528  40 80 00 14 */	bge lbl_8043D5FC
lbl_8043D5EC:
/* 8043D5EC 0043A52C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8043D5F0 0043A530  7C 83 29 2E */	stwx r4, r3, r5
/* 8043D5F4 0043A534  38 A5 00 04 */	addi r5, r5, 4
/* 8043D5F8 0043A538  42 00 FF F4 */	bdnz lbl_8043D5EC
lbl_8043D5FC:
/* 8043D5FC 0043A53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043D600 0043A540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043D604 0043A544  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043D608 0043A548  7C 08 03 A6 */	mtlr r0
/* 8043D60C 0043A54C  38 21 00 10 */	addi r1, r1, 0x10
/* 8043D610 0043A550  4E 80 00 20 */	blr 

.global entryModelEffect__11ParticleMgrFP15ModelEffectData
entryModelEffect__11ParticleMgrFP15ModelEffectData:
/* 8043D614 0043A554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043D618 0043A558  7C 08 02 A6 */	mflr r0
/* 8043D61C 0043A55C  38 63 00 60 */	addi r3, r3, 0x60
/* 8043D620 0043A560  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043D624 0043A564  4B FD 3D E5 */	bl add__5CNodeFP5CNode
/* 8043D628 0043A568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043D62C 0043A56C  7C 08 03 A6 */	mtlr r0
/* 8043D630 0043A570  38 21 00 10 */	addi r1, r1, 0x10
/* 8043D634 0043A574  4E 80 00 20 */	blr 

.global createModelEffect__11ParticleMgrFP20ModelEffectCreateArg
createModelEffect__11ParticleMgrFP20ModelEffectCreateArg:
/* 8043D638 0043A578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043D63C 0043A57C  7C 08 02 A6 */	mflr r0
/* 8043D640 0043A580  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043D644 0043A584  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043D648 0043A588  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8043D64C 0043A58C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8043D650 0043A590  7C 7D 1B 78 */	mr r29, r3
/* 8043D654 0043A594  93 81 00 10 */	stw r28, 0x10(r1)
/* 8043D658 0043A598  7C 9C 23 78 */	mr r28, r4
/* 8043D65C 0043A59C  7F 83 E3 78 */	mr r3, r28
/* 8043D660 0043A5A0  81 9C 00 00 */	lwz r12, 0(r28)
/* 8043D664 0043A5A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8043D668 0043A5A8  7D 89 03 A6 */	mtctr r12
/* 8043D66C 0043A5AC  4E 80 04 21 */	bctrl 
/* 8043D670 0043A5B0  83 BD 00 70 */	lwz r29, 0x70(r29)
/* 8043D674 0043A5B4  7C 9E 23 78 */	mr r30, r4
/* 8043D678 0043A5B8  7C 7F 1B 78 */	mr r31, r3
/* 8043D67C 0043A5BC  48 00 00 30 */	b lbl_8043D6AC
lbl_8043D680:
/* 8043D680 0043A5C0  7F A3 EB 78 */	mr r3, r29
/* 8043D684 0043A5C4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8043D688 0043A5C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8043D68C 0043A5CC  7D 89 03 A6 */	mtctr r12
/* 8043D690 0043A5D0  4E 80 04 21 */	bctrl 
/* 8043D694 0043A5D4  7F C4 22 78 */	xor r4, r30, r4
/* 8043D698 0043A5D8  7F E0 1A 78 */	xor r0, r31, r3
/* 8043D69C 0043A5DC  7C 80 03 79 */	or. r0, r4, r0
/* 8043D6A0 0043A5E0  40 82 00 08 */	bne lbl_8043D6A8
/* 8043D6A4 0043A5E4  48 00 00 14 */	b lbl_8043D6B8
lbl_8043D6A8:
/* 8043D6A8 0043A5E8  83 BD 00 04 */	lwz r29, 4(r29)
lbl_8043D6AC:
/* 8043D6AC 0043A5EC  28 1D 00 00 */	cmplwi r29, 0
/* 8043D6B0 0043A5F0  40 82 FF D0 */	bne lbl_8043D680
/* 8043D6B4 0043A5F4  3B A0 00 00 */	li r29, 0
lbl_8043D6B8:
/* 8043D6B8 0043A5F8  28 1D 00 00 */	cmplwi r29, 0
/* 8043D6BC 0043A5FC  41 82 00 74 */	beq lbl_8043D730
/* 8043D6C0 0043A600  7F A3 EB 78 */	mr r3, r29
/* 8043D6C4 0043A604  7F 84 E3 78 */	mr r4, r28
/* 8043D6C8 0043A608  81 9D 00 00 */	lwz r12, 0(r29)
/* 8043D6CC 0043A60C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8043D6D0 0043A610  7D 89 03 A6 */	mtctr r12
/* 8043D6D4 0043A614  4E 80 04 21 */	bctrl 
/* 8043D6D8 0043A618  7C 7D 1B 79 */	or. r29, r3, r3
/* 8043D6DC 0043A61C  41 82 00 4C */	beq lbl_8043D728
/* 8043D6E0 0043A620  38 60 00 1C */	li r3, 0x1c
/* 8043D6E4 0043A624  4B BE 67 C1 */	bl __nw__FUl
/* 8043D6E8 0043A628  7C 7E 1B 79 */	or. r30, r3, r3
/* 8043D6EC 0043A62C  41 82 00 18 */	beq lbl_8043D704
/* 8043D6F0 0043A630  4B FD 3C A1 */	bl __ct__5CNodeFv
/* 8043D6F4 0043A634  3C 60 80 4E */	lis r3, "__vt__26TObjectNode<11ModelEffect>"@ha
/* 8043D6F8 0043A638  38 03 76 D8 */	addi r0, r3, "__vt__26TObjectNode<11ModelEffect>"@l
/* 8043D6FC 0043A63C  90 1E 00 00 */	stw r0, 0(r30)
/* 8043D700 0043A640  93 BE 00 18 */	stw r29, 0x18(r30)
lbl_8043D704:
/* 8043D704 0043A644  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 8043D708 0043A648  7F C4 F3 78 */	mr r4, r30
/* 8043D70C 0043A64C  38 63 00 3C */	addi r3, r3, 0x3c
/* 8043D710 0043A650  4B FD 3C F9 */	bl add__5CNodeFP5CNode
/* 8043D714 0043A654  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8043D718 0043A658  81 83 00 00 */	lwz r12, 0(r3)
/* 8043D71C 0043A65C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8043D720 0043A660  7D 89 03 A6 */	mtctr r12
/* 8043D724 0043A664  4E 80 04 21 */	bctrl 
lbl_8043D728:
/* 8043D728 0043A668  7F A3 EB 78 */	mr r3, r29
/* 8043D72C 0043A66C  48 00 00 08 */	b lbl_8043D734
lbl_8043D730:
/* 8043D730 0043A670  38 60 00 00 */	li r3, 0
lbl_8043D734:
/* 8043D734 0043A674  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043D738 0043A678  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043D73C 0043A67C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8043D740 0043A680  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8043D744 0043A684  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8043D748 0043A688  7C 08 03 A6 */	mtlr r0
/* 8043D74C 0043A68C  38 21 00 20 */	addi r1, r1, 0x20
/* 8043D750 0043A690  4E 80 00 20 */	blr 

.global doAnimation__11ModelEffectFv
doAnimation__11ModelEffectFv:
/* 8043D754 0043A694  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8043D758 0043A698  7C 08 02 A6 */	mflr r0
/* 8043D75C 0043A69C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8043D760 0043A6A0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8043D764 0043A6A4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8043D768 0043A6A8  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8043D76C 0043A6AC  7C 7D 1B 78 */	mr r29, r3
/* 8043D770 0043A6B0  93 81 00 40 */	stw r28, 0x40(r1)
/* 8043D774 0043A6B4  80 83 00 04 */	lwz r4, 4(r3)
/* 8043D778 0043A6B8  38 7D 00 08 */	addi r3, r29, 8
/* 8043D77C 0043A6BC  80 84 00 08 */	lwz r4, 8(r4)
/* 8043D780 0043A6C0  38 84 00 24 */	addi r4, r4, 0x24
/* 8043D784 0043A6C4  4B CA CB 49 */	bl PSMTXCopy
/* 8043D788 0043A6C8  80 7D 00 04 */	lwz r3, 4(r29)
/* 8043D78C 0043A6CC  80 63 00 08 */	lwz r3, 8(r3)
/* 8043D790 0043A6D0  81 83 00 00 */	lwz r12, 0(r3)
/* 8043D794 0043A6D4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8043D798 0043A6D8  7D 89 03 A6 */	mtctr r12
/* 8043D79C 0043A6DC  4E 80 04 21 */	bctrl 
/* 8043D7A0 0043A6E0  88 1D 00 3A */	lbz r0, 0x3a(r29)
/* 8043D7A4 0043A6E4  28 00 00 00 */	cmplwi r0, 0
/* 8043D7A8 0043A6E8  41 82 00 34 */	beq lbl_8043D7DC
/* 8043D7AC 0043A6EC  38 A0 00 00 */	li r5, 0
/* 8043D7B0 0043A6F0  38 80 00 00 */	li r4, 0
/* 8043D7B4 0043A6F4  48 00 00 10 */	b lbl_8043D7C4
lbl_8043D7B8:
/* 8043D7B8 0043A6F8  38 05 00 38 */	addi r0, r5, 0x38
/* 8043D7BC 0043A6FC  38 A5 00 01 */	addi r5, r5, 1
/* 8043D7C0 0043A700  7C 9D 01 AE */	stbx r4, r29, r0
lbl_8043D7C4:
/* 8043D7C4 0043A704  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 8043D7C8 0043A708  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8043D7CC 0043A70C  80 03 02 64 */	lwz r0, 0x264(r3)
/* 8043D7D0 0043A710  7C 05 00 00 */	cmpw r5, r0
/* 8043D7D4 0043A714  41 80 FF E4 */	blt lbl_8043D7B8
/* 8043D7D8 0043A718  48 00 01 04 */	b lbl_8043D8DC
lbl_8043D7DC:
/* 8043D7DC 0043A71C  7F A3 EB 78 */	mr r3, r29
/* 8043D7E0 0043A720  38 81 00 08 */	addi r4, r1, 8
/* 8043D7E4 0043A724  81 9D 00 00 */	lwz r12, 0(r29)
/* 8043D7E8 0043A728  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8043D7EC 0043A72C  7D 89 03 A6 */	mtctr r12
/* 8043D7F0 0043A730  4E 80 04 21 */	bctrl 
/* 8043D7F4 0043A734  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 8043D7F8 0043A738  3B C0 00 00 */	li r30, 0
/* 8043D7FC 0043A73C  83 E3 00 24 */	lwz r31, 0x24(r3)
/* 8043D800 0043A740  48 00 00 D0 */	b lbl_8043D8D0
lbl_8043D804:
/* 8043D804 0043A744  7F E3 FB 78 */	mr r3, r31
/* 8043D808 0043A748  7F C4 F3 78 */	mr r4, r30
/* 8043D80C 0043A74C  4B FE 7D E5 */	bl getViewport__8GraphicsFi
/* 8043D810 0043A750  7C 7C 1B 78 */	mr r28, r3
/* 8043D814 0043A754  4B FE 7A 2D */	bl viewable__8ViewportFv
/* 8043D818 0043A758  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8043D81C 0043A75C  40 82 00 14 */	bne lbl_8043D830
/* 8043D820 0043A760  38 1E 00 38 */	addi r0, r30, 0x38
/* 8043D824 0043A764  38 60 00 00 */	li r3, 0
/* 8043D828 0043A768  7C 7D 01 AE */	stbx r3, r29, r0
/* 8043D82C 0043A76C  48 00 00 A0 */	b lbl_8043D8CC
lbl_8043D830:
/* 8043D830 0043A770  7F A3 EB 78 */	mr r3, r29
/* 8043D834 0043A774  83 9C 00 44 */	lwz r28, 0x44(r28)
/* 8043D838 0043A778  81 9D 00 00 */	lwz r12, 0(r29)
/* 8043D83C 0043A77C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8043D840 0043A780  7D 89 03 A6 */	mtctr r12
/* 8043D844 0043A784  4E 80 04 21 */	bctrl 
/* 8043D848 0043A788  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8043D84C 0043A78C  41 82 00 50 */	beq lbl_8043D89C
/* 8043D850 0043A790  7F A3 EB 78 */	mr r3, r29
/* 8043D854 0043A794  38 81 00 18 */	addi r4, r1, 0x18
/* 8043D858 0043A798  81 9D 00 00 */	lwz r12, 0(r29)
/* 8043D85C 0043A79C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8043D860 0043A7A0  7D 89 03 A6 */	mtctr r12
/* 8043D864 0043A7A4  4E 80 04 21 */	bctrl 
/* 8043D868 0043A7A8  7F 83 E3 78 */	mr r3, r28
/* 8043D86C 0043A7AC  38 81 00 18 */	addi r4, r1, 0x18
/* 8043D870 0043A7B0  4B FD C9 91 */	bl isCylinderVisible__9CullPlaneFRQ23Sys8Cylinder
/* 8043D874 0043A7B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8043D878 0043A7B8  41 82 00 14 */	beq lbl_8043D88C
/* 8043D87C 0043A7BC  38 1E 00 38 */	addi r0, r30, 0x38
/* 8043D880 0043A7C0  38 60 00 01 */	li r3, 1
/* 8043D884 0043A7C4  7C 7D 01 AE */	stbx r3, r29, r0
/* 8043D888 0043A7C8  48 00 00 44 */	b lbl_8043D8CC
lbl_8043D88C:
/* 8043D88C 0043A7CC  38 1E 00 38 */	addi r0, r30, 0x38
/* 8043D890 0043A7D0  38 60 00 00 */	li r3, 0
/* 8043D894 0043A7D4  7C 7D 01 AE */	stbx r3, r29, r0
/* 8043D898 0043A7D8  48 00 00 34 */	b lbl_8043D8CC
lbl_8043D89C:
/* 8043D89C 0043A7DC  7F 83 E3 78 */	mr r3, r28
/* 8043D8A0 0043A7E0  38 81 00 08 */	addi r4, r1, 8
/* 8043D8A4 0043A7E4  4B FD C8 ED */	bl isVisible__9CullPlaneFRQ23Sys6Sphere
/* 8043D8A8 0043A7E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8043D8AC 0043A7EC  41 82 00 14 */	beq lbl_8043D8C0
/* 8043D8B0 0043A7F0  38 1E 00 38 */	addi r0, r30, 0x38
/* 8043D8B4 0043A7F4  38 60 00 01 */	li r3, 1
/* 8043D8B8 0043A7F8  7C 7D 01 AE */	stbx r3, r29, r0
/* 8043D8BC 0043A7FC  48 00 00 10 */	b lbl_8043D8CC
lbl_8043D8C0:
/* 8043D8C0 0043A800  38 1E 00 38 */	addi r0, r30, 0x38
/* 8043D8C4 0043A804  38 60 00 00 */	li r3, 0
/* 8043D8C8 0043A808  7C 7D 01 AE */	stbx r3, r29, r0
lbl_8043D8CC:
/* 8043D8CC 0043A80C  3B DE 00 01 */	addi r30, r30, 1
lbl_8043D8D0:
/* 8043D8D0 0043A810  80 1F 02 64 */	lwz r0, 0x264(r31)
/* 8043D8D4 0043A814  7C 1E 00 00 */	cmpw r30, r0
/* 8043D8D8 0043A818  41 80 FF 2C */	blt lbl_8043D804
lbl_8043D8DC:
/* 8043D8DC 0043A81C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8043D8E0 0043A820  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8043D8E4 0043A824  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8043D8E8 0043A828  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8043D8EC 0043A82C  83 81 00 40 */	lwz r28, 0x40(r1)
/* 8043D8F0 0043A830  7C 08 03 A6 */	mtlr r0
/* 8043D8F4 0043A834  38 21 00 50 */	addi r1, r1, 0x50
/* 8043D8F8 0043A838  4E 80 00 20 */	blr 

.global getLODCylinder__11ModelEffectFRQ23Sys8Cylinder
getLODCylinder__11ModelEffectFRQ23Sys8Cylinder:
/* 8043D8FC 0043A83C  4E 80 00 20 */	blr 

.global useCylinderLOD__11ModelEffectFv
useCylinderLOD__11ModelEffectFv:
/* 8043D900 0043A840  38 60 00 00 */	li r3, 0
/* 8043D904 0043A844  4E 80 00 20 */	blr 

.global doEntry__11ModelEffectFv
doEntry__11ModelEffectFv:
/* 8043D908 0043A848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043D90C 0043A84C  7C 08 02 A6 */	mflr r0
/* 8043D910 0043A850  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043D914 0043A854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043D918 0043A858  7C 7F 1B 78 */	mr r31, r3
/* 8043D91C 0043A85C  88 03 00 38 */	lbz r0, 0x38(r3)
/* 8043D920 0043A860  28 00 00 00 */	cmplwi r0, 0
/* 8043D924 0043A864  40 82 00 10 */	bne lbl_8043D934
/* 8043D928 0043A868  88 1F 00 39 */	lbz r0, 0x39(r31)
/* 8043D92C 0043A86C  28 00 00 00 */	cmplwi r0, 0
/* 8043D930 0043A870  41 82 00 1C */	beq lbl_8043D94C
lbl_8043D934:
/* 8043D934 0043A874  80 7F 00 04 */	lwz r3, 4(r31)
/* 8043D938 0043A878  81 83 00 00 */	lwz r12, 0(r3)
/* 8043D93C 0043A87C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8043D940 0043A880  7D 89 03 A6 */	mtctr r12
/* 8043D944 0043A884  4E 80 04 21 */	bctrl 
/* 8043D948 0043A888  48 00 00 18 */	b lbl_8043D960
lbl_8043D94C:
/* 8043D94C 0043A88C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8043D950 0043A890  81 83 00 00 */	lwz r12, 0(r3)
/* 8043D954 0043A894  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8043D958 0043A898  7D 89 03 A6 */	mtctr r12
/* 8043D95C 0043A89C  4E 80 04 21 */	bctrl 
lbl_8043D960:
/* 8043D960 0043A8A0  7F E3 FB 78 */	mr r3, r31
/* 8043D964 0043A8A4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8043D968 0043A8A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8043D96C 0043A8AC  7D 89 03 A6 */	mtctr r12
/* 8043D970 0043A8B0  4E 80 04 21 */	bctrl 
/* 8043D974 0043A8B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8043D978 0043A8B8  80 63 00 08 */	lwz r3, 8(r3)
/* 8043D97C 0043A8BC  81 83 00 00 */	lwz r12, 0(r3)
/* 8043D980 0043A8C0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8043D984 0043A8C4  7D 89 03 A6 */	mtctr r12
/* 8043D988 0043A8C8  4E 80 04 21 */	bctrl 
/* 8043D98C 0043A8CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043D990 0043A8D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043D994 0043A8D4  7C 08 03 A6 */	mtlr r0
/* 8043D998 0043A8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8043D99C 0043A8DC  4E 80 00 20 */	blr 

.global changeMaterial__11ModelEffectFv
changeMaterial__11ModelEffectFv:
/* 8043D9A0 0043A8E0  4E 80 00 20 */	blr 

.global doSetView__11ModelEffectFi
doSetView__11ModelEffectFi:
/* 8043D9A4 0043A8E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043D9A8 0043A8E8  7C 08 02 A6 */	mflr r0
/* 8043D9AC 0043A8EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043D9B0 0043A8F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043D9B4 0043A8F4  7C 9F 23 78 */	mr r31, r4
/* 8043D9B8 0043A8F8  93 C1 00 08 */	stw r30, 8(r1)
/* 8043D9BC 0043A8FC  7C 7E 1B 78 */	mr r30, r3
/* 8043D9C0 0043A900  80 63 00 04 */	lwz r3, 4(r3)
/* 8043D9C4 0043A904  48 00 16 FD */	bl setCurrentViewNo__Q28SysShape5ModelFUl
/* 8043D9C8 0043A908  7C 7E FA 14 */	add r3, r30, r31
/* 8043D9CC 0043A90C  88 03 00 38 */	lbz r0, 0x38(r3)
/* 8043D9D0 0043A910  28 00 00 00 */	cmplwi r0, 0
/* 8043D9D4 0043A914  41 82 00 1C */	beq lbl_8043D9F0
/* 8043D9D8 0043A918  80 7E 00 04 */	lwz r3, 4(r30)
/* 8043D9DC 0043A91C  81 83 00 00 */	lwz r12, 0(r3)
/* 8043D9E0 0043A920  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8043D9E4 0043A924  7D 89 03 A6 */	mtctr r12
/* 8043D9E8 0043A928  4E 80 04 21 */	bctrl 
/* 8043D9EC 0043A92C  48 00 00 18 */	b lbl_8043DA04
lbl_8043D9F0:
/* 8043D9F0 0043A930  80 7E 00 04 */	lwz r3, 4(r30)
/* 8043D9F4 0043A934  81 83 00 00 */	lwz r12, 0(r3)
/* 8043D9F8 0043A938  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8043D9FC 0043A93C  7D 89 03 A6 */	mtctr r12
/* 8043DA00 0043A940  4E 80 04 21 */	bctrl 
lbl_8043DA04:
/* 8043DA04 0043A944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043DA08 0043A948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043DA0C 0043A94C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043DA10 0043A950  7C 08 03 A6 */	mtlr r0
/* 8043DA14 0043A954  38 21 00 10 */	addi r1, r1, 0x10
/* 8043DA18 0043A958  4E 80 00 20 */	blr 

.global doViewCalc__11ModelEffectFv
doViewCalc__11ModelEffectFv:
/* 8043DA1C 0043A95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043DA20 0043A960  7C 08 02 A6 */	mflr r0
/* 8043DA24 0043A964  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043DA28 0043A968  80 63 00 04 */	lwz r3, 4(r3)
/* 8043DA2C 0043A96C  48 00 16 2D */	bl viewCalc__Q28SysShape5ModelFv
/* 8043DA30 0043A970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043DA34 0043A974  7C 08 03 A6 */	mtlr r0
/* 8043DA38 0043A978  38 21 00 10 */	addi r1, r1, 0x10
/* 8043DA3C 0043A97C  4E 80 00 20 */	blr 

.global doAnimation__11ParticleMgrFv
doAnimation__11ParticleMgrFv:
/* 8043DA40 0043A980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043DA44 0043A984  7C 08 02 A6 */	mflr r0
/* 8043DA48 0043A988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043DA4C 0043A98C  85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8043DA50 0043A990  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8043DA54 0043A994  7D 89 03 A6 */	mtctr r12
/* 8043DA58 0043A998  4E 80 04 21 */	bctrl 
/* 8043DA5C 0043A99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043DA60 0043A9A0  7C 08 03 A6 */	mtlr r0
/* 8043DA64 0043A9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8043DA68 0043A9A8  4E 80 00 20 */	blr 

.global doEntry__11ParticleMgrFv
doEntry__11ParticleMgrFv:
/* 8043DA6C 0043A9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043DA70 0043A9B0  7C 08 02 A6 */	mflr r0
/* 8043DA74 0043A9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043DA78 0043A9B8  85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8043DA7C 0043A9BC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8043DA80 0043A9C0  7D 89 03 A6 */	mtctr r12
/* 8043DA84 0043A9C4  4E 80 04 21 */	bctrl 
/* 8043DA88 0043A9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043DA8C 0043A9CC  7C 08 03 A6 */	mtlr r0
/* 8043DA90 0043A9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8043DA94 0043A9D4  4E 80 00 20 */	blr 

.global doSetView__11ParticleMgrFi
doSetView__11ParticleMgrFi:
/* 8043DA98 0043A9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043DA9C 0043A9DC  7C 08 02 A6 */	mflr r0
/* 8043DAA0 0043A9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043DAA4 0043A9E4  85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8043DAA8 0043A9E8  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8043DAAC 0043A9EC  7D 89 03 A6 */	mtctr r12
/* 8043DAB0 0043A9F0  4E 80 04 21 */	bctrl 
/* 8043DAB4 0043A9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043DAB8 0043A9F8  7C 08 03 A6 */	mtlr r0
/* 8043DABC 0043A9FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8043DAC0 0043AA00  4E 80 00 20 */	blr 

.global doViewCalc__11ParticleMgrFv
doViewCalc__11ParticleMgrFv:
/* 8043DAC4 0043AA04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043DAC8 0043AA08  7C 08 02 A6 */	mflr r0
/* 8043DACC 0043AA0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043DAD0 0043AA10  85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8043DAD4 0043AA14  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8043DAD8 0043AA18  7D 89 03 A6 */	mtctr r12
/* 8043DADC 0043AA1C  4E 80 04 21 */	bctrl 
/* 8043DAE0 0043AA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043DAE4 0043AA24  7C 08 03 A6 */	mtlr r0
/* 8043DAE8 0043AA28  38 21 00 10 */	addi r1, r1, 0x10
/* 8043DAEC 0043AA2C  4E 80 00 20 */	blr 

.global __sinit_modelEffect_cpp
__sinit_modelEffect_cpp:
/* 8043DAF0 0043AA30  3C 80 80 51 */	lis r4, __float_nan@ha
/* 8043DAF4 0043AA34  38 00 FF FF */	li r0, -1
/* 8043DAF8 0043AA38  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 8043DAFC 0043AA3C  3C 60 80 4F */	lis r3, lbl_804ECBA0@ha
/* 8043DB00 0043AA40  90 0D 9B E0 */	stw r0, lbl_80516260@sda21(r13)
/* 8043DB04 0043AA44  D4 03 CB A0 */	stfsu f0, lbl_804ECBA0@l(r3)
/* 8043DB08 0043AA48  D0 0D 9B E4 */	stfs f0, lbl_80516264@sda21(r13)
/* 8043DB0C 0043AA4C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8043DB10 0043AA50  D0 03 00 08 */	stfs f0, 8(r3)
/* 8043DB14 0043AA54  4E 80 00 20 */	blr 
