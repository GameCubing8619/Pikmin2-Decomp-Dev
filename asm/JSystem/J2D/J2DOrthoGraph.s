.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__13J2DOrthoGraphFv
__ct__13J2DOrthoGraphFv:
/* 80035530 00032470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035534 00032474  7C 08 02 A6 */	mflr r0
/* 80035538 00032478  C0 22 84 20 */	lfs f1, lbl_80516780@sda21(r2)
/* 8003553C 0003247C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035540 00032480  FC 40 08 90 */	fmr f2, f1
/* 80035544 00032484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80035548 00032488  FC 60 08 90 */	fmr f3, f1
/* 8003554C 0003248C  FC 80 08 90 */	fmr f4, f1
/* 80035550 00032490  7C 7F 1B 78 */	mr r31, r3
/* 80035554 00032494  48 00 0B 21 */	bl __ct__14J2DGrafContextFffff
/* 80035558 00032498  3C 80 80 4A */	lis r4, __vt__13J2DOrthoGraph@ha
/* 8003555C 0003249C  7F E3 FB 78 */	mr r3, r31
/* 80035560 000324A0  38 04 06 00 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80035564 000324A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80035568 000324A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003556C 000324AC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80035570 000324B0  7D 89 03 A6 */	mtctr r12
/* 80035574 000324B4  4E 80 04 21 */	bctrl 
/* 80035578 000324B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003557C 000324BC  7F E3 FB 78 */	mr r3, r31
/* 80035580 000324C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035584 000324C4  7C 08 03 A6 */	mtlr r0
/* 80035588 000324C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003558C 000324CC  4E 80 00 20 */	blr 

.global __dt__14J2DGrafContextFv
__dt__14J2DGrafContextFv:
/* 80035590 000324D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035594 000324D4  7C 08 02 A6 */	mflr r0
/* 80035598 000324D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003559C 000324DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800355A0 000324E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800355A4 000324E4  41 82 00 1C */	beq lbl_800355C0
/* 800355A8 000324E8  3C A0 80 4A */	lis r5, __vt__14J2DGrafContext@ha
/* 800355AC 000324EC  7C 80 07 35 */	extsh. r0, r4
/* 800355B0 000324F0  38 05 06 50 */	addi r0, r5, __vt__14J2DGrafContext@l
/* 800355B4 000324F4  90 1F 00 00 */	stw r0, 0(r31)
/* 800355B8 000324F8  40 81 00 08 */	ble lbl_800355C0
/* 800355BC 000324FC  4B FE EA F9 */	bl __dl__FPv
lbl_800355C0:
/* 800355C0 00032500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800355C4 00032504  7F E3 FB 78 */	mr r3, r31
/* 800355C8 00032508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800355CC 0003250C  7C 08 03 A6 */	mtlr r0
/* 800355D0 00032510  38 21 00 10 */	addi r1, r1, 0x10
/* 800355D4 00032514  4E 80 00 20 */	blr 

.global __ct__13J2DOrthoGraphFffffff
__ct__13J2DOrthoGraphFffffff:
/* 800355D8 00032518  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800355DC 0003251C  7C 08 02 A6 */	mflr r0
/* 800355E0 00032520  90 01 00 64 */	stw r0, 0x64(r1)
/* 800355E4 00032524  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800355E8 00032528  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 800355EC 0003252C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 800355F0 00032530  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 800355F4 00032534  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 800355F8 00032538  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 800355FC 0003253C  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 80035600 00032540  F3 81 00 28 */	psq_st f28, 40(r1), 0, qr0
/* 80035604 00032544  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80035608 00032548  FF 80 18 90 */	fmr f28, f3
/* 8003560C 0003254C  7C 7F 1B 78 */	mr r31, r3
/* 80035610 00032550  FF A0 20 90 */	fmr f29, f4
/* 80035614 00032554  FF C0 28 90 */	fmr f30, f5
/* 80035618 00032558  FF E0 30 90 */	fmr f31, f6
/* 8003561C 0003255C  48 00 0A 59 */	bl __ct__14J2DGrafContextFffff
/* 80035620 00032560  C0 42 84 20 */	lfs f2, lbl_80516780@sda21(r2)
/* 80035624 00032564  3C 60 80 4A */	lis r3, __vt__13J2DOrthoGraph@ha
/* 80035628 00032568  38 03 06 00 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 8003562C 0003256C  D3 81 00 10 */	stfs f28, 0x10(r1)
/* 80035630 00032570  FC 20 F8 50 */	fneg f1, f31
/* 80035634 00032574  7F E3 FB 78 */	mr r3, r31
/* 80035638 00032578  D0 41 00 08 */	stfs f2, 8(r1)
/* 8003563C 0003257C  FC 00 F0 50 */	fneg f0, f30
/* 80035640 00032580  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80035644 00032584  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80035648 00032588  80 A1 00 08 */	lwz r5, 8(r1)
/* 8003564C 0003258C  90 1F 00 00 */	stw r0, 0(r31)
/* 80035650 00032590  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80035654 00032594  90 BF 00 BC */	stw r5, 0xbc(r31)
/* 80035658 00032598  D3 A1 00 14 */	stfs f29, 0x14(r1)
/* 8003565C 0003259C  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 80035660 000325A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035664 000325A4  90 9F 00 C4 */	stw r4, 0xc4(r31)
/* 80035668 000325A8  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8003566C 000325AC  D0 3F 00 CC */	stfs f1, 0xcc(r31)
/* 80035670 000325B0  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 80035674 000325B4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80035678 000325B8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8003567C 000325BC  7D 89 03 A6 */	mtctr r12
/* 80035680 000325C0  4E 80 04 21 */	bctrl 
/* 80035684 000325C4  7F E3 FB 78 */	mr r3, r31
/* 80035688 000325C8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8003568C 000325CC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80035690 000325D0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 80035694 000325D4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80035698 000325D8  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 8003569C 000325DC  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 800356A0 000325E0  E3 81 00 28 */	psq_l f28, 40(r1), 0, qr0
/* 800356A4 000325E4  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 800356A8 000325E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800356AC 000325EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800356B0 000325F0  7C 08 03 A6 */	mtlr r0
/* 800356B4 000325F4  38 21 00 60 */	addi r1, r1, 0x60
/* 800356B8 000325F8  4E 80 00 20 */	blr 

.global setPort__13J2DOrthoGraphFv
setPort__13J2DOrthoGraphFv:
/* 800356BC 000325FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800356C0 00032600  7C 08 02 A6 */	mflr r0
/* 800356C4 00032604  90 01 00 14 */	stw r0, 0x14(r1)
/* 800356C8 00032608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800356CC 0003260C  7C 7F 1B 78 */	mr r31, r3
/* 800356D0 00032610  48 00 0A 51 */	bl setPort__14J2DGrafContextFv
/* 800356D4 00032614  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 800356D8 00032618  38 7F 00 40 */	addi r3, r31, 0x40
/* 800356DC 0003261C  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 800356E0 00032620  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 800356E4 00032624  C0 9F 00 C4 */	lfs f4, 0xc4(r31)
/* 800356E8 00032628  C0 BF 00 CC */	lfs f5, 0xcc(r31)
/* 800356EC 0003262C  C0 DF 00 D0 */	lfs f6, 0xd0(r31)
/* 800356F0 00032630  48 0B 56 E9 */	bl C_MTXOrtho
/* 800356F4 00032634  38 7F 00 40 */	addi r3, r31, 0x40
/* 800356F8 00032638  38 80 00 01 */	li r4, 1
/* 800356FC 0003263C  48 0B 3D 4D */	bl GXSetProjection
/* 80035700 00032640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035704 00032644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035708 00032648  7C 08 03 A6 */	mtlr r0
/* 8003570C 0003264C  38 21 00 10 */	addi r1, r1, 0x10
/* 80035710 00032650  4E 80 00 20 */	blr 

.global "setOrtho__13J2DOrthoGraphFRCQ29JGeometry8TBox2<f>ff"
"setOrtho__13J2DOrthoGraphFRCQ29JGeometry8TBox2<f>ff":
/* 80035714 00032654  80 A4 00 00 */	lwz r5, 0(r4)
/* 80035718 00032658  FC 40 10 50 */	fneg f2, f2
/* 8003571C 0003265C  80 04 00 04 */	lwz r0, 4(r4)
/* 80035720 00032660  FC 00 08 50 */	fneg f0, f1
/* 80035724 00032664  90 A3 00 BC */	stw r5, 0xbc(r3)
/* 80035728 00032668  80 A4 00 08 */	lwz r5, 8(r4)
/* 8003572C 0003266C  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 80035730 00032670  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80035734 00032674  90 A3 00 C4 */	stw r5, 0xc4(r3)
/* 80035738 00032678  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 8003573C 0003267C  D0 43 00 CC */	stfs f2, 0xcc(r3)
/* 80035740 00032680  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80035744 00032684  4E 80 00 20 */	blr 

.global setLookat__13J2DOrthoGraphFv
setLookat__13J2DOrthoGraphFv:
/* 80035748 00032688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003574C 0003268C  7C 08 02 A6 */	mflr r0
/* 80035750 00032690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035754 00032694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80035758 00032698  7C 7F 1B 78 */	mr r31, r3
/* 8003575C 0003269C  38 7F 00 80 */	addi r3, r31, 0x80
/* 80035760 000326A0  48 0B 4B 41 */	bl PSMTXIdentity
/* 80035764 000326A4  38 7F 00 80 */	addi r3, r31, 0x80
/* 80035768 000326A8  38 80 00 00 */	li r4, 0
/* 8003576C 000326AC  48 0B 3E 0D */	bl GXLoadPosMtxImm
/* 80035770 000326B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035774 000326B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035778 000326B8  7C 08 03 A6 */	mtlr r0
/* 8003577C 000326BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80035780 000326C0  4E 80 00 20 */	blr 

.global "scissorBounds__13J2DOrthoGraphFPQ29JGeometry8TBox2<f>PCQ29JGeometry8TBox2<f>"
"scissorBounds__13J2DOrthoGraphFPQ29JGeometry8TBox2<f>PCQ29JGeometry8TBox2<f>":
/* 80035784 000326C4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80035788 000326C8  C0 C3 00 04 */	lfs f6, 4(r3)
/* 8003578C 000326CC  C0 23 00 C4 */	lfs f1, 0xc4(r3)
/* 80035790 000326D0  C1 03 00 BC */	lfs f8, 0xbc(r3)
/* 80035794 000326D4  EC 80 30 28 */	fsubs f4, f0, f6
/* 80035798 000326D8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8003579C 000326DC  C0 E3 00 08 */	lfs f7, 8(r3)
/* 800357A0 000326E0  EC 61 40 28 */	fsubs f3, f1, f8
/* 800357A4 000326E4  C0 23 00 C8 */	lfs f1, 0xc8(r3)
/* 800357A8 000326E8  C1 23 00 C0 */	lfs f9, 0xc0(r3)
/* 800357AC 000326EC  EC 40 38 28 */	fsubs f2, f0, f7
/* 800357B0 000326F0  EC 84 18 24 */	fdivs f4, f4, f3
/* 800357B4 000326F4  C0 02 84 20 */	lfs f0, lbl_80516780@sda21(r2)
/* 800357B8 000326F8  EC 21 48 28 */	fsubs f1, f1, f9
/* 800357BC 000326FC  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 800357C0 00032700  EC A2 08 24 */	fdivs f5, f2, f1
/* 800357C4 00032704  4C 41 13 82 */	cror 2, 1, 2
/* 800357C8 00032708  40 82 00 08 */	bne lbl_800357D0
/* 800357CC 0003270C  48 00 00 08 */	b lbl_800357D4
lbl_800357D0:
/* 800357D0 00032710  FC C0 00 90 */	fmr f6, f0
lbl_800357D4:
/* 800357D4 00032714  C0 02 84 20 */	lfs f0, lbl_80516780@sda21(r2)
/* 800357D8 00032718  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 800357DC 0003271C  4C 41 13 82 */	cror 2, 1, 2
/* 800357E0 00032720  40 82 00 08 */	bne lbl_800357E8
/* 800357E4 00032724  48 00 00 08 */	b lbl_800357EC
lbl_800357E8:
/* 800357E8 00032728  FC E0 00 90 */	fmr f7, f0
lbl_800357EC:
/* 800357EC 0003272C  C0 05 00 00 */	lfs f0, 0(r5)
/* 800357F0 00032730  C0 25 00 04 */	lfs f1, 4(r5)
/* 800357F4 00032734  EC 00 40 28 */	fsubs f0, f0, f8
/* 800357F8 00032738  C0 65 00 08 */	lfs f3, 8(r5)
/* 800357FC 0003273C  EC 41 48 28 */	fsubs f2, f1, f9
/* 80035800 00032740  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80035804 00032744  EC 63 40 28 */	fsubs f3, f3, f8
/* 80035808 00032748  EC 04 30 3A */	fmadds f0, f4, f0, f6
/* 8003580C 0003274C  EC 21 48 28 */	fsubs f1, f1, f9
/* 80035810 00032750  EC 45 38 BA */	fmadds f2, f5, f2, f7
/* 80035814 00032754  D0 04 00 00 */	stfs f0, 0(r4)
/* 80035818 00032758  EC 04 30 FA */	fmadds f0, f4, f3, f6
/* 8003581C 0003275C  EC 25 38 7A */	fmadds f1, f5, f1, f7
/* 80035820 00032760  D0 44 00 04 */	stfs f2, 4(r4)
/* 80035824 00032764  D0 04 00 08 */	stfs f0, 8(r4)
/* 80035828 00032768  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 8003582C 0003276C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80035830 00032770  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80035834 00032774  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80035838 00032778  4C 40 13 82 */	cror 2, 0, 2
/* 8003583C 0003277C  40 82 00 08 */	bne lbl_80035844
/* 80035840 00032780  D0 24 00 00 */	stfs f1, 0(r4)
lbl_80035844:
/* 80035844 00032784  C0 04 00 04 */	lfs f0, 4(r4)
/* 80035848 00032788  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8003584C 0003278C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80035850 00032790  4C 40 13 82 */	cror 2, 0, 2
/* 80035854 00032794  40 82 00 08 */	bne lbl_8003585C
/* 80035858 00032798  D0 24 00 04 */	stfs f1, 4(r4)
lbl_8003585C:
/* 8003585C 0003279C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80035860 000327A0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80035864 000327A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80035868 000327A8  4C 41 13 82 */	cror 2, 1, 2
/* 8003586C 000327AC  40 82 00 08 */	bne lbl_80035874
/* 80035870 000327B0  D0 24 00 08 */	stfs f1, 8(r4)
lbl_80035874:
/* 80035874 000327B4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80035878 000327B8  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 8003587C 000327BC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80035880 000327C0  4C 41 13 82 */	cror 2, 1, 2
/* 80035884 000327C4  4C 82 00 20 */	bnelr 
/* 80035888 000327C8  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 8003588C 000327CC  4E 80 00 20 */	blr 

.global J2DDrawLine__FffffQ28JUtility6TColori
J2DDrawLine__FffffQ28JUtility6TColori:
/* 80035890 000327D0  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80035894 000327D4  7C 08 02 A6 */	mflr r0
/* 80035898 000327D8  90 01 01 64 */	stw r0, 0x164(r1)
/* 8003589C 000327DC  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 800358A0 000327E0  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 800358A4 000327E4  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 800358A8 000327E8  F3 C1 01 48 */	psq_st f30, 328(r1), 0, qr0
/* 800358AC 000327EC  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 800358B0 000327F0  F3 A1 01 38 */	psq_st f29, 312(r1), 0, qr0
/* 800358B4 000327F4  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 800358B8 000327F8  F3 81 01 28 */	psq_st f28, 296(r1), 0, qr0
/* 800358BC 000327FC  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 800358C0 00032800  93 C1 01 18 */	stw r30, 0x118(r1)
/* 800358C4 00032804  93 A1 01 14 */	stw r29, 0x114(r1)
/* 800358C8 00032808  FF 80 08 90 */	fmr f28, f1
/* 800358CC 0003280C  C0 22 84 20 */	lfs f1, lbl_80516780@sda21(r2)
/* 800358D0 00032810  FF A0 10 90 */	fmr f29, f2
/* 800358D4 00032814  3B A1 00 3C */	addi r29, r1, 0x3c
/* 800358D8 00032818  FF C0 18 90 */	fmr f30, f3
/* 800358DC 0003281C  7C 7E 1B 78 */	mr r30, r3
/* 800358E0 00032820  FF E0 20 90 */	fmr f31, f4
/* 800358E4 00032824  7C 9F 23 78 */	mr r31, r4
/* 800358E8 00032828  FC 40 08 90 */	fmr f2, f1
/* 800358EC 0003282C  7F A3 EB 78 */	mr r3, r29
/* 800358F0 00032830  FC 60 08 90 */	fmr f3, f1
/* 800358F4 00032834  FC 80 08 90 */	fmr f4, f1
/* 800358F8 00032838  48 00 07 7D */	bl __ct__14J2DGrafContextFffff
/* 800358FC 0003283C  3C 80 80 4A */	lis r4, __vt__13J2DOrthoGraph@ha
/* 80035900 00032840  7F A3 EB 78 */	mr r3, r29
/* 80035904 00032844  38 04 06 00 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80035908 00032848  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8003590C 0003284C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80035910 00032850  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80035914 00032854  7D 89 03 A6 */	mtctr r12
/* 80035918 00032858  4E 80 04 21 */	bctrl 
/* 8003591C 0003285C  7F A3 EB 78 */	mr r3, r29
/* 80035920 00032860  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 80035924 00032864  48 00 0E 85 */	bl setLineWidth__14J2DGrafContextFUc
/* 80035928 00032868  80 1E 00 00 */	lwz r0, 0(r30)
/* 8003592C 0003286C  7F A3 EB 78 */	mr r3, r29
/* 80035930 00032870  38 81 00 08 */	addi r4, r1, 8
/* 80035934 00032874  38 A1 00 0C */	addi r5, r1, 0xc
/* 80035938 00032878  90 01 00 18 */	stw r0, 0x18(r1)
/* 8003593C 0003287C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80035940 00032880  38 E1 00 14 */	addi r7, r1, 0x14
/* 80035944 00032884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035948 00032888  90 01 00 10 */	stw r0, 0x10(r1)
/* 8003594C 0003288C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80035950 00032890  90 01 00 08 */	stw r0, 8(r1)
/* 80035954 00032894  48 00 0D 39 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80035958 00032898  D3 81 00 34 */	stfs f28, 0x34(r1)
/* 8003595C 0003289C  7F A3 EB 78 */	mr r3, r29
/* 80035960 000328A0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80035964 000328A4  D3 A1 00 38 */	stfs f29, 0x38(r1)
/* 80035968 000328A8  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8003596C 000328AC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80035970 000328B0  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80035974 000328B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80035978 000328B8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8003597C 000328BC  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 80035980 000328C0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80035984 000328C4  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80035988 000328C8  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8003598C 000328CC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80035990 000328D0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80035994 000328D4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80035998 000328D8  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8003599C 000328DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 800359A0 000328E0  48 00 10 41 */	bl "lineTo__14J2DGrafContextFQ29JGeometry8TVec2<f>"
/* 800359A4 000328E4  3C 80 80 4A */	lis r4, __vt__13J2DOrthoGraph@ha
/* 800359A8 000328E8  3C 60 80 4A */	lis r3, __vt__14J2DGrafContext@ha
/* 800359AC 000328EC  38 04 06 00 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 800359B0 000328F0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800359B4 000328F4  38 03 06 50 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 800359B8 000328F8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800359BC 000328FC  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 800359C0 00032900  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 800359C4 00032904  E3 C1 01 48 */	psq_l f30, 328(r1), 0, qr0
/* 800359C8 00032908  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 800359CC 0003290C  E3 A1 01 38 */	psq_l f29, 312(r1), 0, qr0
/* 800359D0 00032910  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 800359D4 00032914  E3 81 01 28 */	psq_l f28, 296(r1), 0, qr0
/* 800359D8 00032918  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 800359DC 0003291C  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 800359E0 00032920  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 800359E4 00032924  80 01 01 64 */	lwz r0, 0x164(r1)
/* 800359E8 00032928  83 A1 01 14 */	lwz r29, 0x114(r1)
/* 800359EC 0003292C  7C 08 03 A6 */	mtlr r0
/* 800359F0 00032930  38 21 01 60 */	addi r1, r1, 0x160
/* 800359F4 00032934  4E 80 00 20 */	blr 

.global J2DFillBox__FffffQ28JUtility6TColor
J2DFillBox__FffffQ28JUtility6TColor:
/* 800359F8 00032938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800359FC 0003293C  7C 08 02 A6 */	mflr r0
/* 80035A00 00032940  EC 61 18 2A */	fadds f3, f1, f3
/* 80035A04 00032944  90 01 00 24 */	stw r0, 0x24(r1)
/* 80035A08 00032948  EC 02 20 2A */	fadds f0, f2, f4
/* 80035A0C 0003294C  80 03 00 00 */	lwz r0, 0(r3)
/* 80035A10 00032950  38 61 00 0C */	addi r3, r1, 0xc
/* 80035A14 00032954  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80035A18 00032958  38 81 00 08 */	addi r4, r1, 8
/* 80035A1C 0003295C  90 01 00 08 */	stw r0, 8(r1)
/* 80035A20 00032960  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80035A24 00032964  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80035A28 00032968  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80035A2C 0003296C  48 00 00 15 */	bl "J2DFillBox__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColor"
/* 80035A30 00032970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80035A34 00032974  7C 08 03 A6 */	mtlr r0
/* 80035A38 00032978  38 21 00 20 */	addi r1, r1, 0x20
/* 80035A3C 0003297C  4E 80 00 20 */	blr 

.global "J2DFillBox__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColor"
"J2DFillBox__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColor":
/* 80035A40 00032980  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80035A44 00032984  7C 08 02 A6 */	mflr r0
/* 80035A48 00032988  C0 22 84 20 */	lfs f1, lbl_80516780@sda21(r2)
/* 80035A4C 0003298C  90 01 01 04 */	stw r0, 0x104(r1)
/* 80035A50 00032990  FC 40 08 90 */	fmr f2, f1
/* 80035A54 00032994  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 80035A58 00032998  FC 60 08 90 */	fmr f3, f1
/* 80035A5C 0003299C  FC 80 08 90 */	fmr f4, f1
/* 80035A60 000329A0  7C 9F 23 78 */	mr r31, r4
/* 80035A64 000329A4  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 80035A68 000329A8  7C 7E 1B 78 */	mr r30, r3
/* 80035A6C 000329AC  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 80035A70 000329B0  3B A1 00 1C */	addi r29, r1, 0x1c
/* 80035A74 000329B4  7F A3 EB 78 */	mr r3, r29
/* 80035A78 000329B8  48 00 05 FD */	bl __ct__14J2DGrafContextFffff
/* 80035A7C 000329BC  3C 80 80 4A */	lis r4, __vt__13J2DOrthoGraph@ha
/* 80035A80 000329C0  7F A3 EB 78 */	mr r3, r29
/* 80035A84 000329C4  38 04 06 00 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80035A88 000329C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80035A8C 000329CC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80035A90 000329D0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80035A94 000329D4  7D 89 03 A6 */	mtctr r12
/* 80035A98 000329D8  4E 80 04 21 */	bctrl 
/* 80035A9C 000329DC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80035AA0 000329E0  7F A3 EB 78 */	mr r3, r29
/* 80035AA4 000329E4  38 81 00 08 */	addi r4, r1, 8
/* 80035AA8 000329E8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80035AAC 000329EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80035AB0 000329F0  38 C1 00 10 */	addi r6, r1, 0x10
/* 80035AB4 000329F4  38 E1 00 14 */	addi r7, r1, 0x14
/* 80035AB8 000329F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035ABC 000329FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80035AC0 00032A00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80035AC4 00032A04  90 01 00 08 */	stw r0, 8(r1)
/* 80035AC8 00032A08  48 00 0B C5 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80035ACC 00032A0C  7F C4 F3 78 */	mr r4, r30
/* 80035AD0 00032A10  7F A3 EB 78 */	mr r3, r29
/* 80035AD4 00032A14  48 00 0D 01 */	bl "fillBox__14J2DGrafContextFRCQ29JGeometry8TBox2<f>"
/* 80035AD8 00032A18  3C 80 80 4A */	lis r4, __vt__13J2DOrthoGraph@ha
/* 80035ADC 00032A1C  3C 60 80 4A */	lis r3, __vt__14J2DGrafContext@ha
/* 80035AE0 00032A20  38 04 06 00 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80035AE4 00032A24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80035AE8 00032A28  38 03 06 50 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 80035AEC 00032A2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80035AF0 00032A30  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 80035AF4 00032A34  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 80035AF8 00032A38  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 80035AFC 00032A3C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80035B00 00032A40  7C 08 03 A6 */	mtlr r0
/* 80035B04 00032A44  38 21 01 00 */	addi r1, r1, 0x100
/* 80035B08 00032A48  4E 80 00 20 */	blr 

.global J2DFillBox__FffffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
J2DFillBox__FffffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor:
/* 80035B0C 00032A4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80035B10 00032A50  7C 08 02 A6 */	mflr r0
/* 80035B14 00032A54  EC 61 18 2A */	fadds f3, f1, f3
/* 80035B18 00032A58  81 25 00 00 */	lwz r9, 0(r5)
/* 80035B1C 00032A5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80035B20 00032A60  EC 02 20 2A */	fadds f0, f2, f4
/* 80035B24 00032A64  81 04 00 00 */	lwz r8, 0(r4)
/* 80035B28 00032A68  38 81 00 14 */	addi r4, r1, 0x14
/* 80035B2C 00032A6C  80 03 00 00 */	lwz r0, 0(r3)
/* 80035B30 00032A70  38 61 00 18 */	addi r3, r1, 0x18
/* 80035B34 00032A74  80 C6 00 00 */	lwz r6, 0(r6)
/* 80035B38 00032A78  38 A1 00 10 */	addi r5, r1, 0x10
/* 80035B3C 00032A7C  91 21 00 0C */	stw r9, 0xc(r1)
/* 80035B40 00032A80  38 E1 00 08 */	addi r7, r1, 8
/* 80035B44 00032A84  90 C1 00 08 */	stw r6, 8(r1)
/* 80035B48 00032A88  38 C1 00 0C */	addi r6, r1, 0xc
/* 80035B4C 00032A8C  91 01 00 10 */	stw r8, 0x10(r1)
/* 80035B50 00032A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035B54 00032A94  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80035B58 00032A98  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80035B5C 00032A9C  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80035B60 00032AA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80035B64 00032AA4  48 00 00 15 */	bl "J2DFillBox__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor"
/* 80035B68 00032AA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80035B6C 00032AAC  7C 08 03 A6 */	mtlr r0
/* 80035B70 00032AB0  38 21 00 30 */	addi r1, r1, 0x30
/* 80035B74 00032AB4  4E 80 00 20 */	blr 

.global "J2DFillBox__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor"
"J2DFillBox__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor":
/* 80035B78 00032AB8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80035B7C 00032ABC  7C 08 02 A6 */	mflr r0
/* 80035B80 00032AC0  C0 22 84 20 */	lfs f1, lbl_80516780@sda21(r2)
/* 80035B84 00032AC4  90 01 01 14 */	stw r0, 0x114(r1)
/* 80035B88 00032AC8  FC 40 08 90 */	fmr f2, f1
/* 80035B8C 00032ACC  BF 41 00 F8 */	stmw r26, 0xf8(r1)
/* 80035B90 00032AD0  FC 60 08 90 */	fmr f3, f1
/* 80035B94 00032AD4  FC 80 08 90 */	fmr f4, f1
/* 80035B98 00032AD8  3B 41 00 18 */	addi r26, r1, 0x18
/* 80035B9C 00032ADC  7C 7B 1B 78 */	mr r27, r3
/* 80035BA0 00032AE0  7C 9C 23 78 */	mr r28, r4
/* 80035BA4 00032AE4  7C BD 2B 78 */	mr r29, r5
/* 80035BA8 00032AE8  7C DE 33 78 */	mr r30, r6
/* 80035BAC 00032AEC  7C FF 3B 78 */	mr r31, r7
/* 80035BB0 00032AF0  7F 43 D3 78 */	mr r3, r26
/* 80035BB4 00032AF4  48 00 04 C1 */	bl __ct__14J2DGrafContextFffff
/* 80035BB8 00032AF8  3C 80 80 4A */	lis r4, __vt__13J2DOrthoGraph@ha
/* 80035BBC 00032AFC  7F 43 D3 78 */	mr r3, r26
/* 80035BC0 00032B00  38 04 06 00 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80035BC4 00032B04  90 01 00 18 */	stw r0, 0x18(r1)
/* 80035BC8 00032B08  81 9A 00 00 */	lwz r12, 0(r26)
/* 80035BCC 00032B0C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80035BD0 00032B10  7D 89 03 A6 */	mtctr r12
/* 80035BD4 00032B14  4E 80 04 21 */	bctrl 
/* 80035BD8 00032B18  80 FF 00 00 */	lwz r7, 0(r31)
/* 80035BDC 00032B1C  7F 43 D3 78 */	mr r3, r26
/* 80035BE0 00032B20  81 3E 00 00 */	lwz r9, 0(r30)
/* 80035BE4 00032B24  38 81 00 14 */	addi r4, r1, 0x14
/* 80035BE8 00032B28  81 1D 00 00 */	lwz r8, 0(r29)
/* 80035BEC 00032B2C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80035BF0 00032B30  80 1C 00 00 */	lwz r0, 0(r28)
/* 80035BF4 00032B34  38 C1 00 0C */	addi r6, r1, 0xc
/* 80035BF8 00032B38  90 E1 00 08 */	stw r7, 8(r1)
/* 80035BFC 00032B3C  38 E1 00 08 */	addi r7, r1, 8
/* 80035C00 00032B40  91 21 00 0C */	stw r9, 0xc(r1)
/* 80035C04 00032B44  91 01 00 10 */	stw r8, 0x10(r1)
/* 80035C08 00032B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035C0C 00032B4C  48 00 0A 81 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80035C10 00032B50  7F 64 DB 78 */	mr r4, r27
/* 80035C14 00032B54  7F 43 D3 78 */	mr r3, r26
/* 80035C18 00032B58  48 00 0B BD */	bl "fillBox__14J2DGrafContextFRCQ29JGeometry8TBox2<f>"
/* 80035C1C 00032B5C  3C 80 80 4A */	lis r4, __vt__13J2DOrthoGraph@ha
/* 80035C20 00032B60  3C 60 80 4A */	lis r3, __vt__14J2DGrafContext@ha
/* 80035C24 00032B64  38 04 06 00 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80035C28 00032B68  90 01 00 18 */	stw r0, 0x18(r1)
/* 80035C2C 00032B6C  38 03 06 50 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 80035C30 00032B70  90 01 00 18 */	stw r0, 0x18(r1)
/* 80035C34 00032B74  BB 41 00 F8 */	lmw r26, 0xf8(r1)
/* 80035C38 00032B78  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80035C3C 00032B7C  7C 08 03 A6 */	mtlr r0
/* 80035C40 00032B80  38 21 01 10 */	addi r1, r1, 0x110
/* 80035C44 00032B84  4E 80 00 20 */	blr 

.global J2DDrawFrame__FffffQ28JUtility6TColorUc
J2DDrawFrame__FffffQ28JUtility6TColorUc:
/* 80035C48 00032B88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80035C4C 00032B8C  7C 08 02 A6 */	mflr r0
/* 80035C50 00032B90  EC 61 18 2A */	fadds f3, f1, f3
/* 80035C54 00032B94  7C 85 23 78 */	mr r5, r4
/* 80035C58 00032B98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80035C5C 00032B9C  EC 02 20 2A */	fadds f0, f2, f4
/* 80035C60 00032BA0  80 03 00 00 */	lwz r0, 0(r3)
/* 80035C64 00032BA4  38 61 00 0C */	addi r3, r1, 0xc
/* 80035C68 00032BA8  90 01 00 08 */	stw r0, 8(r1)
/* 80035C6C 00032BAC  38 81 00 08 */	addi r4, r1, 8
/* 80035C70 00032BB0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80035C74 00032BB4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80035C78 00032BB8  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80035C7C 00032BBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80035C80 00032BC0  48 00 00 15 */	bl "J2DDrawFrame__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColorUc"
/* 80035C84 00032BC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80035C88 00032BC8  7C 08 03 A6 */	mtlr r0
/* 80035C8C 00032BCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80035C90 00032BD0  4E 80 00 20 */	blr 

.global "J2DDrawFrame__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColorUc"
"J2DDrawFrame__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColorUc":
/* 80035C94 00032BD4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80035C98 00032BD8  7C 08 02 A6 */	mflr r0
/* 80035C9C 00032BDC  C0 22 84 20 */	lfs f1, lbl_80516780@sda21(r2)
/* 80035CA0 00032BE0  90 01 01 04 */	stw r0, 0x104(r1)
/* 80035CA4 00032BE4  FC 40 08 90 */	fmr f2, f1
/* 80035CA8 00032BE8  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 80035CAC 00032BEC  FC 60 08 90 */	fmr f3, f1
/* 80035CB0 00032BF0  FC 80 08 90 */	fmr f4, f1
/* 80035CB4 00032BF4  7C BF 2B 78 */	mr r31, r5
/* 80035CB8 00032BF8  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 80035CBC 00032BFC  7C 9E 23 78 */	mr r30, r4
/* 80035CC0 00032C00  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 80035CC4 00032C04  7C 7D 1B 78 */	mr r29, r3
/* 80035CC8 00032C08  93 81 00 F0 */	stw r28, 0xf0(r1)
/* 80035CCC 00032C0C  3B 81 00 1C */	addi r28, r1, 0x1c
/* 80035CD0 00032C10  7F 83 E3 78 */	mr r3, r28
/* 80035CD4 00032C14  48 00 03 A1 */	bl __ct__14J2DGrafContextFffff
/* 80035CD8 00032C18  3C 80 80 4A */	lis r4, __vt__13J2DOrthoGraph@ha
/* 80035CDC 00032C1C  7F 83 E3 78 */	mr r3, r28
/* 80035CE0 00032C20  38 04 06 00 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80035CE4 00032C24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80035CE8 00032C28  81 9C 00 00 */	lwz r12, 0(r28)
/* 80035CEC 00032C2C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80035CF0 00032C30  7D 89 03 A6 */	mtctr r12
/* 80035CF4 00032C34  4E 80 04 21 */	bctrl 
/* 80035CF8 00032C38  80 1E 00 00 */	lwz r0, 0(r30)
/* 80035CFC 00032C3C  7F 83 E3 78 */	mr r3, r28
/* 80035D00 00032C40  38 81 00 08 */	addi r4, r1, 8
/* 80035D04 00032C44  38 A1 00 0C */	addi r5, r1, 0xc
/* 80035D08 00032C48  90 01 00 18 */	stw r0, 0x18(r1)
/* 80035D0C 00032C4C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80035D10 00032C50  38 E1 00 14 */	addi r7, r1, 0x14
/* 80035D14 00032C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035D18 00032C58  90 01 00 10 */	stw r0, 0x10(r1)
/* 80035D1C 00032C5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80035D20 00032C60  90 01 00 08 */	stw r0, 8(r1)
/* 80035D24 00032C64  48 00 09 69 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80035D28 00032C68  7F E4 FB 78 */	mr r4, r31
/* 80035D2C 00032C6C  7F 83 E3 78 */	mr r3, r28
/* 80035D30 00032C70  48 00 0A 79 */	bl setLineWidth__14J2DGrafContextFUc
/* 80035D34 00032C74  7F A4 EB 78 */	mr r4, r29
/* 80035D38 00032C78  7F 83 E3 78 */	mr r3, r28
/* 80035D3C 00032C7C  48 00 0B 95 */	bl "drawFrame__14J2DGrafContextFRCQ29JGeometry8TBox2<f>"
/* 80035D40 00032C80  3C 80 80 4A */	lis r4, __vt__13J2DOrthoGraph@ha
/* 80035D44 00032C84  3C 60 80 4A */	lis r3, __vt__14J2DGrafContext@ha
/* 80035D48 00032C88  38 04 06 00 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80035D4C 00032C8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80035D50 00032C90  38 03 06 50 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 80035D54 00032C94  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80035D58 00032C98  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 80035D5C 00032C9C  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 80035D60 00032CA0  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 80035D64 00032CA4  83 81 00 F0 */	lwz r28, 0xf0(r1)
/* 80035D68 00032CA8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80035D6C 00032CAC  7C 08 03 A6 */	mtlr r0
/* 80035D70 00032CB0  38 21 01 00 */	addi r1, r1, 0x100
/* 80035D74 00032CB4  4E 80 00 20 */	blr 

.global getGrafType__13J2DOrthoGraphCFv
getGrafType__13J2DOrthoGraphCFv:
/* 80035D78 00032CB8  38 60 00 01 */	li r3, 1
/* 80035D7C 00032CBC  4E 80 00 20 */	blr 

.global place__14J2DGrafContextFffff
place__14J2DGrafContextFffff:
/* 80035D80 00032CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80035D84 00032CC4  7C 08 02 A6 */	mflr r0
/* 80035D88 00032CC8  EC 61 18 2A */	fadds f3, f1, f3
/* 80035D8C 00032CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80035D90 00032CD0  EC 02 20 2A */	fadds f0, f2, f4
/* 80035D94 00032CD4  38 81 00 08 */	addi r4, r1, 8
/* 80035D98 00032CD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80035D9C 00032CDC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80035DA0 00032CE0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80035DA4 00032CE4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80035DA8 00032CE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80035DAC 00032CEC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80035DB0 00032CF0  7D 89 03 A6 */	mtctr r12
/* 80035DB4 00032CF4  4E 80 04 21 */	bctrl 
/* 80035DB8 00032CF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80035DBC 00032CFC  7C 08 03 A6 */	mtlr r0
/* 80035DC0 00032D00  38 21 00 20 */	addi r1, r1, 0x20
/* 80035DC4 00032D04  4E 80 00 20 */	blr 
