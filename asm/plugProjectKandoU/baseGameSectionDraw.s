.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global lbl_80483D28
lbl_80483D28:
	.asciz "drct-post"
	.skip 2
.global lbl_80483D34
lbl_80483D34:
	.asciz "part-draw"
	.skip 2
.global lbl_80483D40
lbl_80483D40:
	.asciz "draw_calc"
	.skip 2

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global newdraw_draw3D_all__Q24Game15BaseGameSectionFR8Graphics
newdraw_draw3D_all__Q24Game15BaseGameSectionFR8Graphics:
/* 802398D8 00236818  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802398DC 0023681C  7C 08 02 A6 */	mflr r0
/* 802398E0 00236820  3C C0 80 4C */	lis r6, "__vt__22IDelegate1<P8Viewport>"@ha
/* 802398E4 00236824  3C A0 80 4C */	lis r5, lbl_804C159C@ha
/* 802398E8 00236828  90 01 00 34 */	stw r0, 0x34(r1)
/* 802398EC 0023682C  38 E5 15 9C */	addi r7, r5, lbl_804C159C@l
/* 802398F0 00236830  39 26 15 B4 */	addi r9, r6, "__vt__22IDelegate1<P8Viewport>"@l
/* 802398F4 00236834  3D 00 80 4C */	lis r8, "__vt__46Delegate1<Q24Game15BaseGameSection,P8Viewport>"@ha
/* 802398F8 00236838  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802398FC 0023683C  7C 9F 23 78 */	mr r31, r4
/* 80239900 00236840  38 81 00 08 */	addi r4, r1, 8
/* 80239904 00236844  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80239908 00236848  7C 7E 1B 78 */	mr r30, r3
/* 8023990C 0023684C  7F E3 FB 78 */	mr r3, r31
/* 80239910 00236850  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80239914 00236854  80 C7 00 00 */	lwz r6, 0(r7)
/* 80239918 00236858  80 A7 00 04 */	lwz r5, 4(r7)
/* 8023991C 0023685C  80 07 00 08 */	lwz r0, 8(r7)
/* 80239920 00236860  38 E8 15 A8 */	addi r7, r8, "__vt__46Delegate1<Q24Game15BaseGameSection,P8Viewport>"@l
/* 80239924 00236864  91 21 00 08 */	stw r9, 8(r1)
/* 80239928 00236868  90 E1 00 08 */	stw r7, 8(r1)
/* 8023992C 0023686C  93 C1 00 0C */	stw r30, 0xc(r1)
/* 80239930 00236870  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80239934 00236874  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80239938 00236878  90 01 00 18 */	stw r0, 0x18(r1)
/* 8023993C 0023687C  48 1E BC C5 */	bl "mapViewport__8GraphicsFP22IDelegate1<P8Viewport>"
/* 80239940 00236880  80 7E 01 2C */	lwz r3, 0x12c(r30)
/* 80239944 00236884  48 21 C2 0D */	bl frameInitAll__Q23Sys11DrawBuffersFv
/* 80239948 00236888  80 7E 01 30 */	lwz r3, 0x130(r30)
/* 8023994C 0023688C  48 21 C2 05 */	bl frameInitAll__Q23Sys11DrawBuffersFv
/* 80239950 00236890  80 8D 93 E8 */	lwz r4, gameSystem__4Game@sda21(r13)
/* 80239954 00236894  38 60 00 00 */	li r3, 0
/* 80239958 00236898  80 04 00 44 */	lwz r0, 0x44(r4)
/* 8023995C 0023689C  2C 00 00 01 */	cmpwi r0, 1
/* 80239960 002368A0  41 82 00 0C */	beq lbl_8023996C
/* 80239964 002368A4  2C 00 00 03 */	cmpwi r0, 3
/* 80239968 002368A8  40 82 00 08 */	bne lbl_80239970
lbl_8023996C:
/* 8023996C 002368AC  38 60 00 01 */	li r3, 1
lbl_80239970:
/* 80239970 002368B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80239974 002368B4  40 82 00 14 */	bne lbl_80239988
/* 80239978 002368B8  80 9E 01 54 */	lwz r4, 0x154(r30)
/* 8023997C 002368BC  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80239980 002368C0  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80239984 002368C4  48 18 1E 61 */	bl setXfb__11ParticleMgrFPC7ResTIMG
lbl_80239988:
/* 80239988 002368C8  80 CD 9A EC */	lwz r6, sys@sda21(r13)
/* 8023998C 002368CC  3C 60 80 48 */	lis r3, lbl_80483D34@ha
/* 80239990 002368D0  38 83 3D 34 */	addi r4, r3, lbl_80483D34@l
/* 80239994 002368D4  38 A0 00 01 */	li r5, 1
/* 80239998 002368D8  80 66 00 28 */	lwz r3, 0x28(r6)
/* 8023999C 002368DC  48 1F 11 5D */	bl _start__9SysTimersFPcb
/* 802399A0 002368E0  7F C3 F3 78 */	mr r3, r30
/* 802399A4 002368E4  7F E4 FB 78 */	mr r4, r31
/* 802399A8 002368E8  81 9E 00 00 */	lwz r12, 0(r30)
/* 802399AC 002368EC  38 A0 00 00 */	li r5, 0
/* 802399B0 002368F0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 802399B4 002368F4  7D 89 03 A6 */	mtctr r12
/* 802399B8 002368F8  4E 80 04 21 */	bctrl 
/* 802399BC 002368FC  7F C3 F3 78 */	mr r3, r30
/* 802399C0 00236900  7F E4 FB 78 */	mr r4, r31
/* 802399C4 00236904  81 9E 00 00 */	lwz r12, 0(r30)
/* 802399C8 00236908  38 A0 00 01 */	li r5, 1
/* 802399CC 0023690C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 802399D0 00236910  7D 89 03 A6 */	mtctr r12
/* 802399D4 00236914  4E 80 04 21 */	bctrl 
/* 802399D8 00236918  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 802399DC 0023691C  3C 60 80 48 */	lis r3, lbl_80483D34@ha
/* 802399E0 00236920  38 83 3D 34 */	addi r4, r3, lbl_80483D34@l
/* 802399E4 00236924  80 65 00 28 */	lwz r3, 0x28(r5)
/* 802399E8 00236928  48 1F 11 15 */	bl _stop__9SysTimersFPc
/* 802399EC 0023692C  80 CD 9A EC */	lwz r6, sys@sda21(r13)
/* 802399F0 00236930  3C 60 80 48 */	lis r3, lbl_80483D28@ha
/* 802399F4 00236934  38 83 3D 28 */	addi r4, r3, lbl_80483D28@l
/* 802399F8 00236938  38 A0 00 01 */	li r5, 1
/* 802399FC 0023693C  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80239A00 00236940  48 1F 10 F9 */	bl _start__9SysTimersFPcb
/* 80239A04 00236944  80 7E 01 28 */	lwz r3, 0x128(r30)
/* 80239A08 00236948  7F E4 FB 78 */	mr r4, r31
/* 80239A0C 0023694C  81 83 00 00 */	lwz r12, 0(r3)
/* 80239A10 00236950  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80239A14 00236954  7D 89 03 A6 */	mtctr r12
/* 80239A18 00236958  4E 80 04 21 */	bctrl 
/* 80239A1C 0023695C  7F E3 FB 78 */	mr r3, r31
/* 80239A20 00236960  38 80 00 00 */	li r4, 0
/* 80239A24 00236964  48 1E BB CD */	bl getViewport__8GraphicsFi
/* 80239A28 00236968  7C 7D 1B 79 */	or. r29, r3, r3
/* 80239A2C 0023696C  41 82 00 24 */	beq lbl_80239A50
/* 80239A30 00236970  48 1E B8 11 */	bl viewable__8ViewportFv
/* 80239A34 00236974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80239A38 00236978  41 82 00 18 */	beq lbl_80239A50
/* 80239A3C 0023697C  93 BF 02 5C */	stw r29, 0x25c(r31)
/* 80239A40 00236980  7F C3 F3 78 */	mr r3, r30
/* 80239A44 00236984  7F E4 FB 78 */	mr r4, r31
/* 80239A48 00236988  7F A5 EB 78 */	mr r5, r29
/* 80239A4C 0023698C  4B F1 5A 05 */	bl directDrawPost__Q24Game15BaseGameSectionFR8GraphicsP8Viewport
lbl_80239A50:
/* 80239A50 00236990  80 7E 01 28 */	lwz r3, 0x128(r30)
/* 80239A54 00236994  7F E4 FB 78 */	mr r4, r31
/* 80239A58 00236998  81 83 00 00 */	lwz r12, 0(r3)
/* 80239A5C 0023699C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80239A60 002369A0  7D 89 03 A6 */	mtctr r12
/* 80239A64 002369A4  4E 80 04 21 */	bctrl 
/* 80239A68 002369A8  7F E3 FB 78 */	mr r3, r31
/* 80239A6C 002369AC  38 80 00 01 */	li r4, 1
/* 80239A70 002369B0  48 1E BB 81 */	bl getViewport__8GraphicsFi
/* 80239A74 002369B4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80239A78 002369B8  41 82 00 24 */	beq lbl_80239A9C
/* 80239A7C 002369BC  48 1E B7 C5 */	bl viewable__8ViewportFv
/* 80239A80 002369C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80239A84 002369C4  41 82 00 18 */	beq lbl_80239A9C
/* 80239A88 002369C8  93 BF 02 5C */	stw r29, 0x25c(r31)
/* 80239A8C 002369CC  7F C3 F3 78 */	mr r3, r30
/* 80239A90 002369D0  7F E4 FB 78 */	mr r4, r31
/* 80239A94 002369D4  7F A5 EB 78 */	mr r5, r29
/* 80239A98 002369D8  4B F1 59 B9 */	bl directDrawPost__Q24Game15BaseGameSectionFR8GraphicsP8Viewport
lbl_80239A9C:
/* 80239A9C 002369DC  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 80239AA0 002369E0  3C 60 80 48 */	lis r3, lbl_80483D28@ha
/* 80239AA4 002369E4  38 83 3D 28 */	addi r4, r3, lbl_80483D28@l
/* 80239AA8 002369E8  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80239AAC 002369EC  48 1F 10 51 */	bl _stop__9SysTimersFPc
/* 80239AB0 002369F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80239AB4 002369F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80239AB8 002369F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80239ABC 002369FC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80239AC0 00236A00  7C 08 03 A6 */	mtlr r0
/* 80239AC4 00236A04  38 21 00 30 */	addi r1, r1, 0x30
/* 80239AC8 00236A08  4E 80 00 20 */	blr 

.global newdraw_drawAll__Q24Game15BaseGameSectionFP8Viewport
newdraw_drawAll__Q24Game15BaseGameSectionFP8Viewport:
/* 80239ACC 00236A0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80239AD0 00236A10  7C 08 02 A6 */	mflr r0
/* 80239AD4 00236A14  3C A0 80 48 */	lis r5, lbl_80483D40@ha
/* 80239AD8 00236A18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80239ADC 00236A1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80239AE0 00236A20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80239AE4 00236A24  7C 9E 23 78 */	mr r30, r4
/* 80239AE8 00236A28  38 85 3D 40 */	addi r4, r5, lbl_80483D40@l
/* 80239AEC 00236A2C  38 A0 00 01 */	li r5, 1
/* 80239AF0 00236A30  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80239AF4 00236A34  7C 7D 1B 78 */	mr r29, r3
/* 80239AF8 00236A38  80 CD 9A EC */	lwz r6, sys@sda21(r13)
/* 80239AFC 00236A3C  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80239B00 00236A40  48 1F 0F F9 */	bl _start__9SysTimersFPcb
/* 80239B04 00236A44  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 80239B08 00236A48  7F A3 EB 78 */	mr r3, r29
/* 80239B0C 00236A4C  A0 9E 00 18 */	lhz r4, 0x18(r30)
/* 80239B10 00236A50  83 E5 00 24 */	lwz r31, 0x24(r5)
/* 80239B14 00236A54  4B F1 5D 55 */	bl doSetView__Q24Game15BaseGameSectionFi
/* 80239B18 00236A58  7F C3 F3 78 */	mr r3, r30
/* 80239B1C 00236A5C  38 80 00 01 */	li r4, 1
/* 80239B20 00236A60  48 1E B9 F9 */	bl setJ3DViewMtx__8ViewportFb
/* 80239B24 00236A64  48 20 55 1D */	bl setViewCalcModeImm__Q28SysShape5ModelFv
/* 80239B28 00236A68  7F A3 EB 78 */	mr r3, r29
/* 80239B2C 00236A6C  4B F1 5E 3D */	bl doViewCalc__Q24Game15BaseGameSectionFv
/* 80239B30 00236A70  7F C3 F3 78 */	mr r3, r30
/* 80239B34 00236A74  48 1E B9 11 */	bl setViewport__8ViewportFv
/* 80239B38 00236A78  7F C3 F3 78 */	mr r3, r30
/* 80239B3C 00236A7C  48 1E B6 65 */	bl setProjection__8ViewportFv
/* 80239B40 00236A80  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 80239B44 00236A84  3C 60 80 48 */	lis r3, lbl_80483D40@ha
/* 80239B48 00236A88  38 83 3D 40 */	addi r4, r3, lbl_80483D40@l
/* 80239B4C 00236A8C  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80239B50 00236A90  48 1F 0F AD */	bl _stop__9SysTimersFPc
/* 80239B54 00236A94  3C 60 80 51 */	lis r3, j3dSys@ha
/* 80239B58 00236A98  38 63 F2 30 */	addi r3, r3, j3dSys@l
/* 80239B5C 00236A9C  4B E2 40 B1 */	bl drawInit__6J3DSysFv
/* 80239B60 00236AA0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80239B64 00236AA4  38 82 C1 C0 */	addi r4, r2, lbl_8051A520@sda21
/* 80239B68 00236AA8  38 A0 00 01 */	li r5, 1
/* 80239B6C 00236AAC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80239B70 00236AB0  48 1F 0F 89 */	bl _start__9SysTimersFPcb
/* 80239B74 00236AB4  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 80239B78 00236AB8  7F E4 FB 78 */	mr r4, r31
/* 80239B7C 00236ABC  81 83 00 00 */	lwz r12, 0(r3)
/* 80239B80 00236AC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80239B84 00236AC4  7D 89 03 A6 */	mtctr r12
/* 80239B88 00236AC8  4E 80 04 21 */	bctrl 
/* 80239B8C 00236ACC  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 80239B90 00236AD0  38 80 00 06 */	li r4, 6
/* 80239B94 00236AD4  48 21 BF 31 */	bl get__Q23Sys11DrawBuffersFi
/* 80239B98 00236AD8  48 21 BD 01 */	bl draw__Q23Sys10DrawBufferFv
/* 80239B9C 00236ADC  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 80239BA0 00236AE0  38 80 00 02 */	li r4, 2
/* 80239BA4 00236AE4  48 21 BF 21 */	bl get__Q23Sys11DrawBuffersFi
/* 80239BA8 00236AE8  48 21 BC F1 */	bl draw__Q23Sys10DrawBufferFv
/* 80239BAC 00236AEC  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 80239BB0 00236AF0  38 80 00 09 */	li r4, 9
/* 80239BB4 00236AF4  48 21 BF 11 */	bl get__Q23Sys11DrawBuffersFi
/* 80239BB8 00236AF8  48 21 BC E1 */	bl draw__Q23Sys10DrawBufferFv
/* 80239BBC 00236AFC  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 80239BC0 00236B00  38 80 00 03 */	li r4, 3
/* 80239BC4 00236B04  48 21 BF 01 */	bl get__Q23Sys11DrawBuffersFi
/* 80239BC8 00236B08  48 21 BC D1 */	bl draw__Q23Sys10DrawBufferFv
/* 80239BCC 00236B0C  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 80239BD0 00236B10  38 80 00 00 */	li r4, 0
/* 80239BD4 00236B14  48 21 BE F1 */	bl get__Q23Sys11DrawBuffersFi
/* 80239BD8 00236B18  48 21 BC C1 */	bl draw__Q23Sys10DrawBufferFv
/* 80239BDC 00236B1C  7F A3 EB 78 */	mr r3, r29
/* 80239BE0 00236B20  7F C4 F3 78 */	mr r4, r30
/* 80239BE4 00236B24  4B F1 59 69 */	bl doSimpleDraw__Q24Game15BaseGameSectionFP8Viewport
/* 80239BE8 00236B28  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 80239BEC 00236B2C  7F E4 FB 78 */	mr r4, r31
/* 80239BF0 00236B30  81 83 00 00 */	lwz r12, 0(r3)
/* 80239BF4 00236B34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80239BF8 00236B38  7D 89 03 A6 */	mtctr r12
/* 80239BFC 00236B3C  4E 80 04 21 */	bctrl 
/* 80239C00 00236B40  80 7D 01 30 */	lwz r3, 0x130(r29)
/* 80239C04 00236B44  38 80 00 03 */	li r4, 3
/* 80239C08 00236B48  48 21 BE BD */	bl get__Q23Sys11DrawBuffersFi
/* 80239C0C 00236B4C  48 21 BC 8D */	bl draw__Q23Sys10DrawBufferFv
/* 80239C10 00236B50  80 7D 01 30 */	lwz r3, 0x130(r29)
/* 80239C14 00236B54  38 80 00 00 */	li r4, 0
/* 80239C18 00236B58  48 21 BE AD */	bl get__Q23Sys11DrawBuffersFi
/* 80239C1C 00236B5C  48 21 BC 7D */	bl draw__Q23Sys10DrawBufferFv
/* 80239C20 00236B60  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 80239C24 00236B64  7F E4 FB 78 */	mr r4, r31
/* 80239C28 00236B68  80 63 23 44 */	lwz r3, 0x2344(r3)
/* 80239C2C 00236B6C  48 1F 8D 91 */	bl off__6FogMgrFR8Graphics
/* 80239C30 00236B70  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 80239C34 00236B74  38 80 00 01 */	li r4, 1
/* 80239C38 00236B78  48 21 BE 8D */	bl get__Q23Sys11DrawBuffersFi
/* 80239C3C 00236B7C  48 21 BC 5D */	bl draw__Q23Sys10DrawBufferFv
/* 80239C40 00236B80  80 7D 01 30 */	lwz r3, 0x130(r29)
/* 80239C44 00236B84  38 80 00 01 */	li r4, 1
/* 80239C48 00236B88  48 21 BE 7D */	bl get__Q23Sys11DrawBuffersFi
/* 80239C4C 00236B8C  48 21 BC 4D */	bl draw__Q23Sys10DrawBufferFv
/* 80239C50 00236B90  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 80239C54 00236B94  7F E4 FB 78 */	mr r4, r31
/* 80239C58 00236B98  80 63 23 44 */	lwz r3, 0x2344(r3)
/* 80239C5C 00236B9C  48 1F 8D A1 */	bl set__6FogMgrFR8Graphics
/* 80239C60 00236BA0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80239C64 00236BA4  38 82 C1 C0 */	addi r4, r2, lbl_8051A520@sda21
/* 80239C68 00236BA8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80239C6C 00236BAC  48 1F 0E 91 */	bl _stop__9SysTimersFPc
/* 80239C70 00236BB0  7F E3 FB 78 */	mr r3, r31
/* 80239C74 00236BB4  38 82 C1 C8 */	addi r4, r2, lbl_8051A528@sda21
/* 80239C78 00236BB8  48 1E BA 99 */	bl setToken__8GraphicsFPc
/* 80239C7C 00236BBC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80239C80 00236BC0  38 82 C1 C8 */	addi r4, r2, lbl_8051A528@sda21
/* 80239C84 00236BC4  38 A0 00 01 */	li r5, 1
/* 80239C88 00236BC8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80239C8C 00236BCC  48 1F 0E 6D */	bl _start__9SysTimersFPcb
/* 80239C90 00236BD0  3C 60 80 51 */	lis r3, j3dSys@ha
/* 80239C94 00236BD4  38 63 F2 30 */	addi r3, r3, j3dSys@l
/* 80239C98 00236BD8  4B E2 3F 75 */	bl drawInit__6J3DSysFv
/* 80239C9C 00236BDC  7F A3 EB 78 */	mr r3, r29
/* 80239CA0 00236BE0  7F E4 FB 78 */	mr r4, r31
/* 80239CA4 00236BE4  7F C5 F3 78 */	mr r5, r30
/* 80239CA8 00236BE8  4B F1 56 F1 */	bl directDraw__Q24Game15BaseGameSectionFR8GraphicsP8Viewport
/* 80239CAC 00236BEC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80239CB0 00236BF0  38 82 C1 C8 */	addi r4, r2, lbl_8051A528@sda21
/* 80239CB4 00236BF4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80239CB8 00236BF8  48 1F 0E 45 */	bl _stop__9SysTimersFPc
/* 80239CBC 00236BFC  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80239CC0 00236C00  7F E4 FB 78 */	mr r4, r31
/* 80239CC4 00236C04  A0 BE 00 18 */	lhz r5, 0x18(r30)
/* 80239CC8 00236C08  48 00 7C 49 */	bl draw__Q24Game9ShadowMgrFR8Graphicsi
/* 80239CCC 00236C0C  7F C3 F3 78 */	mr r3, r30
/* 80239CD0 00236C10  48 1E B7 75 */	bl setViewport__8ViewportFv
/* 80239CD4 00236C14  7F C3 F3 78 */	mr r3, r30
/* 80239CD8 00236C18  48 1E B4 C9 */	bl setProjection__8ViewportFv
/* 80239CDC 00236C1C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80239CE0 00236C20  38 82 C1 D0 */	addi r4, r2, lbl_8051A530@sda21
/* 80239CE4 00236C24  38 A0 00 01 */	li r5, 1
/* 80239CE8 00236C28  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80239CEC 00236C2C  48 1F 0E 0D */	bl _start__9SysTimersFPcb
/* 80239CF0 00236C30  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 80239CF4 00236C34  38 80 00 07 */	li r4, 7
/* 80239CF8 00236C38  48 21 BD CD */	bl get__Q23Sys11DrawBuffersFi
/* 80239CFC 00236C3C  48 21 BB 9D */	bl draw__Q23Sys10DrawBufferFv
/* 80239D00 00236C40  80 7D 01 30 */	lwz r3, 0x130(r29)
/* 80239D04 00236C44  38 80 00 07 */	li r4, 7
/* 80239D08 00236C48  48 21 BD BD */	bl get__Q23Sys11DrawBuffersFi
/* 80239D0C 00236C4C  48 21 BB 8D */	bl draw__Q23Sys10DrawBufferFv
/* 80239D10 00236C50  80 1D 01 68 */	lwz r0, 0x168(r29)
/* 80239D14 00236C54  28 00 00 00 */	cmplwi r0, 0
/* 80239D18 00236C58  40 82 00 2C */	bne lbl_80239D44
/* 80239D1C 00236C5C  88 1D 01 64 */	lbz r0, 0x164(r29)
/* 80239D20 00236C60  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80239D24 00236C64  40 82 00 20 */	bne lbl_80239D44
/* 80239D28 00236C68  80 7D 01 54 */	lwz r3, 0x154(r29)
/* 80239D2C 00236C6C  38 C0 00 04 */	li r6, 4
/* 80239D30 00236C70  80 9D 01 5C */	lwz r4, 0x15c(r29)
/* 80239D34 00236C74  38 E0 00 01 */	li r7, 1
/* 80239D38 00236C78  80 BD 01 60 */	lwz r5, 0x160(r29)
/* 80239D3C 00236C7C  39 00 00 00 */	li r8, 0
/* 80239D40 00236C80  4B DF 99 41 */	bl capture__10JUTTextureFii9_GXTexFmtbUc
lbl_80239D44:
/* 80239D44 00236C84  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 80239D48 00236C88  7F E4 FB 78 */	mr r4, r31
/* 80239D4C 00236C8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80239D50 00236C90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80239D54 00236C94  7D 89 03 A6 */	mtctr r12
/* 80239D58 00236C98  4E 80 04 21 */	bctrl 
/* 80239D5C 00236C9C  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 80239D60 00236CA0  7F E4 FB 78 */	mr r4, r31
/* 80239D64 00236CA4  80 63 23 44 */	lwz r3, 0x2344(r3)
/* 80239D68 00236CA8  48 1F 8C 55 */	bl off__6FogMgrFR8Graphics
/* 80239D6C 00236CAC  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 80239D70 00236CB0  38 80 00 08 */	li r4, 8
/* 80239D74 00236CB4  48 21 BD 51 */	bl get__Q23Sys11DrawBuffersFi
/* 80239D78 00236CB8  48 21 BB 21 */	bl draw__Q23Sys10DrawBufferFv
/* 80239D7C 00236CBC  80 7D 01 30 */	lwz r3, 0x130(r29)
/* 80239D80 00236CC0  38 80 00 08 */	li r4, 8
/* 80239D84 00236CC4  48 21 BD 41 */	bl get__Q23Sys11DrawBuffersFi
/* 80239D88 00236CC8  48 21 BB 11 */	bl draw__Q23Sys10DrawBufferFv
/* 80239D8C 00236CCC  7F C3 F3 78 */	mr r3, r30
/* 80239D90 00236CD0  38 80 00 01 */	li r4, 1
/* 80239D94 00236CD4  48 1E B7 85 */	bl setJ3DViewMtx__8ViewportFb
/* 80239D98 00236CD8  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 80239D9C 00236CDC  7F E4 FB 78 */	mr r4, r31
/* 80239DA0 00236CE0  80 63 23 44 */	lwz r3, 0x2344(r3)
/* 80239DA4 00236CE4  48 1F 8C 19 */	bl off__6FogMgrFR8Graphics
/* 80239DA8 00236CE8  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 80239DAC 00236CEC  38 80 00 04 */	li r4, 4
/* 80239DB0 00236CF0  48 21 BD 15 */	bl get__Q23Sys11DrawBuffersFi
/* 80239DB4 00236CF4  48 21 BA E5 */	bl draw__Q23Sys10DrawBufferFv
/* 80239DB8 00236CF8  80 7D 01 30 */	lwz r3, 0x130(r29)
/* 80239DBC 00236CFC  38 80 00 04 */	li r4, 4
/* 80239DC0 00236D00  48 21 BD 05 */	bl get__Q23Sys11DrawBuffersFi
/* 80239DC4 00236D04  48 21 BA D5 */	bl draw__Q23Sys10DrawBufferFv
/* 80239DC8 00236D08  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 80239DCC 00236D0C  7F E4 FB 78 */	mr r4, r31
/* 80239DD0 00236D10  80 63 23 44 */	lwz r3, 0x2344(r3)
/* 80239DD4 00236D14  48 1F 8C 29 */	bl set__6FogMgrFR8Graphics
/* 80239DD8 00236D18  7F C3 F3 78 */	mr r3, r30
/* 80239DDC 00236D1C  38 80 00 01 */	li r4, 1
/* 80239DE0 00236D20  48 1E B7 39 */	bl setJ3DViewMtx__8ViewportFb
/* 80239DE4 00236D24  80 7D 01 30 */	lwz r3, 0x130(r29)
/* 80239DE8 00236D28  38 80 00 02 */	li r4, 2
/* 80239DEC 00236D2C  48 21 BC D9 */	bl get__Q23Sys11DrawBuffersFi
/* 80239DF0 00236D30  48 21 BA A9 */	bl draw__Q23Sys10DrawBufferFv
/* 80239DF4 00236D34  7F C3 F3 78 */	mr r3, r30
/* 80239DF8 00236D38  38 80 00 00 */	li r4, 0
/* 80239DFC 00236D3C  48 1E B7 1D */	bl setJ3DViewMtx__8ViewportFb
/* 80239E00 00236D40  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80239E04 00236D44  38 82 C1 D0 */	addi r4, r2, lbl_8051A530@sda21
/* 80239E08 00236D48  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80239E0C 00236D4C  48 1F 0C F1 */	bl _stop__9SysTimersFPc
/* 80239E10 00236D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80239E14 00236D54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80239E18 00236D58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80239E1C 00236D5C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80239E20 00236D60  7C 08 03 A6 */	mtlr r0
/* 80239E24 00236D64  38 21 00 20 */	addi r1, r1, 0x20
/* 80239E28 00236D68  4E 80 00 20 */	blr 

.global "invoke__46Delegate1<Q24Game15BaseGameSection,P8Viewport>FP8Viewport"
"invoke__46Delegate1<Q24Game15BaseGameSection,P8Viewport>FP8Viewport":
/* 80239E2C 00236D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80239E30 00236D70  7C 08 02 A6 */	mflr r0
/* 80239E34 00236D74  7C 65 1B 78 */	mr r5, r3
/* 80239E38 00236D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80239E3C 00236D7C  39 85 00 08 */	addi r12, r5, 8
/* 80239E40 00236D80  80 63 00 04 */	lwz r3, 4(r3)
/* 80239E44 00236D84  4B E8 7C E1 */	bl __ptmf_scall
/* 80239E48 00236D88  60 00 00 00 */	nop 
/* 80239E4C 00236D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80239E50 00236D90  7C 08 03 A6 */	mtlr r0
/* 80239E54 00236D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80239E58 00236D98  4E 80 00 20 */	blr 

.global __sinit_baseGameSectionDraw_cpp
__sinit_baseGameSectionDraw_cpp:
/* 80239E5C 00236D9C  3C 80 80 51 */	lis r4, __float_nan@ha
/* 80239E60 00236DA0  38 00 FF FF */	li r0, -1
/* 80239E64 00236DA4  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 80239E68 00236DA8  3C 60 80 4C */	lis r3, lbl_804C1590@ha
/* 80239E6C 00236DAC  90 0D 96 30 */	stw r0, lbl_80515CB0@sda21(r13)
/* 80239E70 00236DB0  D4 03 15 90 */	stfsu f0, lbl_804C1590@l(r3)
/* 80239E74 00236DB4  D0 0D 96 34 */	stfs f0, lbl_80515CB4@sda21(r13)
/* 80239E78 00236DB8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80239E7C 00236DBC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80239E80 00236DC0  4E 80 00 20 */	blr 
