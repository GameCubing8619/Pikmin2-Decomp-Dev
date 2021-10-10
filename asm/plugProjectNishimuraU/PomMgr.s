.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game3Pom3MgrFiUc
__ct__Q34Game3Pom3MgrFiUc:
/* 80253E8C 00250DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80253E90 00250DD0  7C 08 02 A6 */	mflr r0
/* 80253E94 00250DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80253E98 00250DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80253E9C 00250DDC  7C 7F 1B 78 */	mr r31, r3
/* 80253EA0 00250DE0  4B ED AD F5 */	bl __ct__Q24Game12EnemyMgrBaseFiUc
/* 80253EA4 00250DE4  3C 60 80 4C */	lis r3, __vt__Q34Game3Pom3Mgr@ha
/* 80253EA8 00250DE8  3C 80 80 48 */	lis r4, lbl_80484958@ha
/* 80253EAC 00250DEC  38 A3 1C 48 */	addi r5, r3, __vt__Q34Game3Pom3Mgr@l
/* 80253EB0 00250DF0  7F E3 FB 78 */	mr r3, r31
/* 80253EB4 00250DF4  90 BF 00 00 */	stw r5, 0(r31)
/* 80253EB8 00250DF8  38 A5 00 38 */	addi r5, r5, 0x38
/* 80253EBC 00250DFC  38 04 49 58 */	addi r0, r4, lbl_80484958@l
/* 80253EC0 00250E00  90 BF 00 04 */	stw r5, 4(r31)
/* 80253EC4 00250E04  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80253EC8 00250E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80253ECC 00250E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80253ED0 00250E10  7C 08 03 A6 */	mtlr r0
/* 80253ED4 00250E14  38 21 00 10 */	addi r1, r1, 0x10
/* 80253ED8 00250E18  4E 80 00 20 */	blr 

.global birth__Q34Game3Pom3MgrFRQ24Game13EnemyBirthArg
birth__Q34Game3Pom3MgrFRQ24Game13EnemyBirthArg:
/* 80253EDC 00250E1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80253EE0 00250E20  7C 08 02 A6 */	mflr r0
/* 80253EE4 00250E24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80253EE8 00250E28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80253EEC 00250E2C  7C 9F 23 78 */	mr r31, r4
/* 80253EF0 00250E30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80253EF4 00250E34  7C 7E 1B 78 */	mr r30, r3
/* 80253EF8 00250E38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80253EFC 00250E3C  80 AD 93 E8 */	lwz r5, gameSystem__4Game@sda21(r13)
/* 80253F00 00250E40  28 05 00 00 */	cmplwi r5, 0
/* 80253F04 00250E44  41 82 01 A4 */	beq lbl_802540A8
/* 80253F08 00250E48  88 05 00 48 */	lbz r0, 0x48(r5)
/* 80253F0C 00250E4C  28 00 00 00 */	cmplwi r0, 0
/* 80253F10 00250E50  41 82 01 98 */	beq lbl_802540A8
/* 80253F14 00250E54  80 05 00 44 */	lwz r0, 0x44(r5)
/* 80253F18 00250E58  2C 00 00 00 */	cmpwi r0, 0
/* 80253F1C 00250E5C  40 82 01 8C */	bne lbl_802540A8
/* 80253F20 00250E60  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80253F24 00250E64  2C 00 00 06 */	cmpwi r0, 6
/* 80253F28 00250E68  40 82 00 7C */	bne lbl_80253FA4
/* 80253F2C 00250E6C  83 A5 00 58 */	lwz r29, 0x58(r5)
/* 80253F30 00250E70  28 1D 00 00 */	cmplwi r29, 0
/* 80253F34 00250E74  41 82 01 74 */	beq lbl_802540A8
/* 80253F38 00250E78  7F A3 EB 78 */	mr r3, r29
/* 80253F3C 00250E7C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80253F40 00250E80  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 80253F44 00250E84  7D 89 03 A6 */	mtctr r12
/* 80253F48 00250E88  4E 80 04 21 */	bctrl 
/* 80253F4C 00250E8C  2C 03 00 02 */	cmpwi r3, 2
/* 80253F50 00250E90  41 80 00 24 */	blt lbl_80253F74
/* 80253F54 00250E94  7F A3 EB 78 */	mr r3, r29
/* 80253F58 00250E98  81 9D 00 00 */	lwz r12, 0(r29)
/* 80253F5C 00250E9C  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80253F60 00250EA0  7D 89 03 A6 */	mtctr r12
/* 80253F64 00250EA4  4E 80 04 21 */	bctrl 
/* 80253F68 00250EA8  3C 03 8B A1 */	addis r0, r3, 0x8ba1
/* 80253F6C 00250EAC  28 00 30 31 */	cmplwi r0, 0x3031
/* 80253F70 00250EB0  40 82 01 38 */	bne lbl_802540A8
lbl_80253F74:
/* 80253F74 00250EB4  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80253F78 00250EB8  38 80 00 03 */	li r4, 3
/* 80253F7C 00250EBC  38 63 00 60 */	addi r3, r3, 0x60
/* 80253F80 00250EC0  4B F9 D6 31 */	bl getColorSum__Q24Game13PikiContainerFi
/* 80253F84 00250EC4  7C 7D 1B 78 */	mr r29, r3
/* 80253F88 00250EC8  38 60 00 03 */	li r3, 3
/* 80253F8C 00250ECC  4B F7 CF B1 */	bl getAllPikmins__Q24Game8GameStatFi
/* 80253F90 00250ED0  7C 03 EA 14 */	add r0, r3, r29
/* 80253F94 00250ED4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80253F98 00250ED8  41 80 01 10 */	blt lbl_802540A8
/* 80253F9C 00250EDC  38 60 00 00 */	li r3, 0
/* 80253FA0 00250EE0  48 00 01 14 */	b lbl_802540B4
lbl_80253FA4:
/* 80253FA4 00250EE4  2C 00 00 07 */	cmpwi r0, 7
/* 80253FA8 00250EE8  40 82 00 B8 */	bne lbl_80254060
/* 80253FAC 00250EEC  83 A5 00 58 */	lwz r29, 0x58(r5)
/* 80253FB0 00250EF0  28 1D 00 00 */	cmplwi r29, 0
/* 80253FB4 00250EF4  41 82 00 F4 */	beq lbl_802540A8
/* 80253FB8 00250EF8  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80253FBC 00250EFC  38 80 00 04 */	li r4, 4
/* 80253FC0 00250F00  4B F9 30 E9 */	bl hasMetPikmin__Q24Game8PlayDataFi
/* 80253FC4 00250F04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80253FC8 00250F08  41 82 00 70 */	beq lbl_80254038
/* 80253FCC 00250F0C  7F A3 EB 78 */	mr r3, r29
/* 80253FD0 00250F10  81 9D 00 00 */	lwz r12, 0(r29)
/* 80253FD4 00250F14  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 80253FD8 00250F18  7D 89 03 A6 */	mtctr r12
/* 80253FDC 00250F1C  4E 80 04 21 */	bctrl 
/* 80253FE0 00250F20  2C 03 00 02 */	cmpwi r3, 2
/* 80253FE4 00250F24  41 80 00 24 */	blt lbl_80254008
/* 80253FE8 00250F28  7F A3 EB 78 */	mr r3, r29
/* 80253FEC 00250F2C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80253FF0 00250F30  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80253FF4 00250F34  7D 89 03 A6 */	mtctr r12
/* 80253FF8 00250F38  4E 80 04 21 */	bctrl 
/* 80253FFC 00250F3C  3C 03 99 A1 */	addis r0, r3, 0x99a1
/* 80254000 00250F40  28 00 30 32 */	cmplwi r0, 0x3032
/* 80254004 00250F44  40 82 00 A4 */	bne lbl_802540A8
lbl_80254008:
/* 80254008 00250F48  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 8025400C 00250F4C  38 80 00 04 */	li r4, 4
/* 80254010 00250F50  38 63 00 60 */	addi r3, r3, 0x60
/* 80254014 00250F54  4B F9 D5 9D */	bl getColorSum__Q24Game13PikiContainerFi
/* 80254018 00250F58  7C 7D 1B 78 */	mr r29, r3
/* 8025401C 00250F5C  38 60 00 04 */	li r3, 4
/* 80254020 00250F60  4B F7 CF 1D */	bl getAllPikmins__Q24Game8GameStatFi
/* 80254024 00250F64  7C 03 EA 14 */	add r0, r3, r29
/* 80254028 00250F68  2C 00 00 14 */	cmpwi r0, 0x14
/* 8025402C 00250F6C  41 80 00 7C */	blt lbl_802540A8
/* 80254030 00250F70  38 60 00 00 */	li r3, 0
/* 80254034 00250F74  48 00 00 80 */	b lbl_802540B4
lbl_80254038:
/* 80254038 00250F78  7F A3 EB 78 */	mr r3, r29
/* 8025403C 00250F7C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80254040 00250F80  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80254044 00250F84  7D 89 03 A6 */	mtctr r12
/* 80254048 00250F88  4E 80 04 21 */	bctrl 
/* 8025404C 00250F8C  3C 03 99 A1 */	addis r0, r3, 0x99a1
/* 80254050 00250F90  28 00 30 32 */	cmplwi r0, 0x3032
/* 80254054 00250F94  41 82 00 54 */	beq lbl_802540A8
/* 80254058 00250F98  38 60 00 00 */	li r3, 0
/* 8025405C 00250F9C  48 00 00 58 */	b lbl_802540B4
lbl_80254060:
/* 80254060 00250FA0  2C 00 00 03 */	cmpwi r0, 3
/* 80254064 00250FA4  40 82 00 20 */	bne lbl_80254084
/* 80254068 00250FA8  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 8025406C 00250FAC  38 80 00 00 */	li r4, 0
/* 80254070 00250FB0  4B F9 30 39 */	bl hasMetPikmin__Q24Game8PlayDataFi
/* 80254074 00250FB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80254078 00250FB8  40 82 00 30 */	bne lbl_802540A8
/* 8025407C 00250FBC  38 60 00 00 */	li r3, 0
/* 80254080 00250FC0  48 00 00 34 */	b lbl_802540B4
lbl_80254084:
/* 80254084 00250FC4  2C 00 00 05 */	cmpwi r0, 5
/* 80254088 00250FC8  40 82 00 20 */	bne lbl_802540A8
/* 8025408C 00250FCC  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80254090 00250FD0  38 80 00 02 */	li r4, 2
/* 80254094 00250FD4  4B F9 30 15 */	bl hasMetPikmin__Q24Game8PlayDataFi
/* 80254098 00250FD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025409C 00250FDC  40 82 00 0C */	bne lbl_802540A8
/* 802540A0 00250FE0  38 60 00 00 */	li r3, 0
/* 802540A4 00250FE4  48 00 00 10 */	b lbl_802540B4
lbl_802540A8:
/* 802540A8 00250FE8  7F C3 F3 78 */	mr r3, r30
/* 802540AC 00250FEC  7F E4 FB 78 */	mr r4, r31
/* 802540B0 00250FF0  4B ED B3 19 */	bl birth__Q24Game12EnemyMgrBaseFRQ24Game13EnemyBirthArg
lbl_802540B4:
/* 802540B4 00250FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802540B8 00250FF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802540BC 00250FFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802540C0 00251000  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802540C4 00251004  7C 08 03 A6 */	mtlr r0
/* 802540C8 00251008  38 21 00 20 */	addi r1, r1, 0x20
/* 802540CC 0025100C  4E 80 00 20 */	blr 

.global doAlloc__Q34Game3Pom3MgrFv
doAlloc__Q34Game3Pom3MgrFv:
/* 802540D0 00251010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802540D4 00251014  7C 08 02 A6 */	mflr r0
/* 802540D8 00251018  90 01 00 14 */	stw r0, 0x14(r1)
/* 802540DC 0025101C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802540E0 00251020  7C 7F 1B 78 */	mr r31, r3
/* 802540E4 00251024  38 60 08 F8 */	li r3, 0x8f8
/* 802540E8 00251028  4B DC FD BD */	bl __nw__FUl
/* 802540EC 0025102C  7C 64 1B 79 */	or. r4, r3, r3
/* 802540F0 00251030  41 82 00 0C */	beq lbl_802540FC
/* 802540F4 00251034  48 00 00 25 */	bl __ct__Q34Game3Pom5ParmsFv
/* 802540F8 00251038  7C 64 1B 78 */	mr r4, r3
lbl_802540FC:
/* 802540FC 0025103C  7F E3 FB 78 */	mr r3, r31
/* 80254100 00251040  4B ED B7 9D */	bl init__Q24Game12EnemyMgrBaseFPQ24Game14EnemyParmsBase
/* 80254104 00251044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80254108 00251048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025410C 0025104C  7C 08 03 A6 */	mtlr r0
/* 80254110 00251050  38 21 00 10 */	addi r1, r1, 0x10
/* 80254114 00251054  4E 80 00 20 */	blr 

.global __ct__Q34Game3Pom5ParmsFv
__ct__Q34Game3Pom5ParmsFv:
/* 80254118 00251058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025411C 0025105C  7C 08 02 A6 */	mflr r0
/* 80254120 00251060  3C 80 80 48 */	lis r4, lbl_80484940@ha
/* 80254124 00251064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80254128 00251068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025412C 0025106C  3B E4 49 40 */	addi r31, r4, lbl_80484940@l
/* 80254130 00251070  93 C1 00 08 */	stw r30, 8(r1)
/* 80254134 00251074  7C 7E 1B 78 */	mr r30, r3
/* 80254138 00251078  4B EB 56 65 */	bl __ct__Q24Game14EnemyParmsBaseFv
/* 8025413C 0025107C  3C 60 80 4C */	lis r3, __vt__Q34Game3Pom5Parms@ha
/* 80254140 00251080  3C A0 69 70 */	lis r5, 0x69703031@ha
/* 80254144 00251084  38 03 1C 3C */	addi r0, r3, __vt__Q34Game3Pom5Parms@l
/* 80254148 00251088  38 9E 08 F4 */	addi r4, r30, 0x8f4
/* 8025414C 0025108C  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 80254150 00251090  38 E0 00 00 */	li r7, 0
/* 80254154 00251094  38 1F 00 30 */	addi r0, r31, 0x30
/* 80254158 00251098  38 7E 08 04 */	addi r3, r30, 0x804
/* 8025415C 0025109C  90 9E 07 F8 */	stw r4, 0x7f8(r30)
/* 80254160 002510A0  38 9E 07 F8 */	addi r4, r30, 0x7f8
/* 80254164 002510A4  38 A5 30 31 */	addi r5, r5, 0x69703031@l
/* 80254168 002510A8  38 DF 00 40 */	addi r6, r31, 0x40
/* 8025416C 002510AC  90 FE 07 FC */	stw r7, 0x7fc(r30)
/* 80254170 002510B0  90 1E 08 00 */	stw r0, 0x800(r30)
/* 80254174 002510B4  48 1B F4 E5 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 80254178 002510B8  3C 60 80 4B */	lis r3, "__vt__7Parm<i>"@ha
/* 8025417C 002510BC  3C A0 69 70 */	lis r5, 0x69703131@ha
/* 80254180 002510C0  38 03 AC 90 */	addi r0, r3, "__vt__7Parm<i>"@l
/* 80254184 002510C4  38 80 00 05 */	li r4, 5
/* 80254188 002510C8  90 1E 08 04 */	stw r0, 0x804(r30)
/* 8025418C 002510CC  38 E0 00 01 */	li r7, 1
/* 80254190 002510D0  38 00 00 32 */	li r0, 0x32
/* 80254194 002510D4  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80254198 002510D8  90 9E 08 1C */	stw r4, 0x81c(r30)
/* 8025419C 002510DC  38 9E 07 F8 */	addi r4, r30, 0x7f8
/* 802541A0 002510E0  38 A5 31 31 */	addi r5, r5, 0x69703131@l
/* 802541A4 002510E4  38 DF 00 54 */	addi r6, r31, 0x54
/* 802541A8 002510E8  90 FE 08 24 */	stw r7, 0x824(r30)
/* 802541AC 002510EC  90 1E 08 28 */	stw r0, 0x828(r30)
/* 802541B0 002510F0  48 1B F4 A9 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 802541B4 002510F4  3C 60 80 4B */	lis r3, "__vt__7Parm<i>"@ha
/* 802541B8 002510F8  3C A0 69 70 */	lis r5, 0x69703133@ha
/* 802541BC 002510FC  38 03 AC 90 */	addi r0, r3, "__vt__7Parm<i>"@l
/* 802541C0 00251100  38 E0 00 01 */	li r7, 1
/* 802541C4 00251104  90 1E 08 2C */	stw r0, 0x82c(r30)
/* 802541C8 00251108  38 00 00 32 */	li r0, 0x32
/* 802541CC 0025110C  38 7E 08 54 */	addi r3, r30, 0x854
/* 802541D0 00251110  38 9E 07 F8 */	addi r4, r30, 0x7f8
/* 802541D4 00251114  90 FE 08 44 */	stw r7, 0x844(r30)
/* 802541D8 00251118  38 A5 31 33 */	addi r5, r5, 0x69703133@l
/* 802541DC 0025111C  38 DF 00 68 */	addi r6, r31, 0x68
/* 802541E0 00251120  90 FE 08 4C */	stw r7, 0x84c(r30)
/* 802541E4 00251124  90 1E 08 50 */	stw r0, 0x850(r30)
/* 802541E8 00251128  48 1B F4 71 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 802541EC 0025112C  3C 60 80 4B */	lis r3, "__vt__7Parm<i>"@ha
/* 802541F0 00251130  3C A0 66 70 */	lis r5, 0x66703031@ha
/* 802541F4 00251134  38 03 AC 90 */	addi r0, r3, "__vt__7Parm<i>"@l
/* 802541F8 00251138  38 80 00 05 */	li r4, 5
/* 802541FC 0025113C  90 1E 08 54 */	stw r0, 0x854(r30)
/* 80254200 00251140  38 E0 00 01 */	li r7, 1
/* 80254204 00251144  38 00 00 32 */	li r0, 0x32
/* 80254208 00251148  38 7E 08 7C */	addi r3, r30, 0x87c
/* 8025420C 0025114C  90 9E 08 6C */	stw r4, 0x86c(r30)
/* 80254210 00251150  38 9E 07 F8 */	addi r4, r30, 0x7f8
/* 80254214 00251154  38 A5 30 31 */	addi r5, r5, 0x66703031@l
/* 80254218 00251158  38 DF 00 7C */	addi r6, r31, 0x7c
/* 8025421C 0025115C  90 FE 08 74 */	stw r7, 0x874(r30)
/* 80254220 00251160  90 1E 08 78 */	stw r0, 0x878(r30)
/* 80254224 00251164  48 1B F4 35 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 80254228 00251168  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 8025422C 0025116C  3C A0 66 70 */	lis r5, 0x66703032@ha
/* 80254230 00251170  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 80254234 00251174  C0 02 C6 30 */	lfs f0, lbl_8051A990@sda21(r2)
/* 80254238 00251178  90 1E 08 7C */	stw r0, 0x87c(r30)
/* 8025423C 0025117C  38 7E 08 A4 */	addi r3, r30, 0x8a4
/* 80254240 00251180  C0 22 C6 34 */	lfs f1, lbl_8051A994@sda21(r2)
/* 80254244 00251184  38 9E 07 F8 */	addi r4, r30, 0x7f8
/* 80254248 00251188  D0 1E 08 94 */	stfs f0, 0x894(r30)
/* 8025424C 0025118C  38 A5 30 32 */	addi r5, r5, 0x66703032@l
/* 80254250 00251190  C0 02 C6 38 */	lfs f0, lbl_8051A998@sda21(r2)
/* 80254254 00251194  38 DF 00 88 */	addi r6, r31, 0x88
/* 80254258 00251198  D0 3E 08 9C */	stfs f1, 0x89c(r30)
/* 8025425C 0025119C  D0 1E 08 A0 */	stfs f0, 0x8a0(r30)
/* 80254260 002511A0  48 1B F3 F9 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 80254264 002511A4  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 80254268 002511A8  3C A0 66 70 */	lis r5, 0x66703033@ha
/* 8025426C 002511AC  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 80254270 002511B0  C0 02 C6 3C */	lfs f0, lbl_8051A99C@sda21(r2)
/* 80254274 002511B4  90 1E 08 A4 */	stw r0, 0x8a4(r30)
/* 80254278 002511B8  38 7E 08 CC */	addi r3, r30, 0x8cc
/* 8025427C 002511BC  C0 22 C6 34 */	lfs f1, lbl_8051A994@sda21(r2)
/* 80254280 002511C0  38 9E 07 F8 */	addi r4, r30, 0x7f8
/* 80254284 002511C4  D0 1E 08 BC */	stfs f0, 0x8bc(r30)
/* 80254288 002511C8  38 A5 30 33 */	addi r5, r5, 0x66703033@l
/* 8025428C 002511CC  C0 02 C6 38 */	lfs f0, lbl_8051A998@sda21(r2)
/* 80254290 002511D0  38 DF 00 94 */	addi r6, r31, 0x94
/* 80254294 002511D4  D0 3E 08 C4 */	stfs f1, 0x8c4(r30)
/* 80254298 002511D8  D0 1E 08 C8 */	stfs f0, 0x8c8(r30)
/* 8025429C 002511DC  48 1B F3 BD */	bl __ct__8BaseParmFP10ParametersUlPc
/* 802542A0 002511E0  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 802542A4 002511E4  C0 42 C6 40 */	lfs f2, lbl_8051A9A0@sda21(r2)
/* 802542A8 002511E8  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 802542AC 002511EC  C0 22 C6 34 */	lfs f1, lbl_8051A994@sda21(r2)
/* 802542B0 002511F0  90 1E 08 CC */	stw r0, 0x8cc(r30)
/* 802542B4 002511F4  7F C3 F3 78 */	mr r3, r30
/* 802542B8 002511F8  C0 02 C6 44 */	lfs f0, lbl_8051A9A4@sda21(r2)
/* 802542BC 002511FC  D0 5E 08 E4 */	stfs f2, 0x8e4(r30)
/* 802542C0 00251200  D0 3E 08 EC */	stfs f1, 0x8ec(r30)
/* 802542C4 00251204  D0 1E 08 F0 */	stfs f0, 0x8f0(r30)
/* 802542C8 00251208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802542CC 0025120C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802542D0 00251210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802542D4 00251214  7C 08 03 A6 */	mtlr r0
/* 802542D8 00251218  38 21 00 10 */	addi r1, r1, 0x10
/* 802542DC 0025121C  4E 80 00 20 */	blr 

.global createObj__Q34Game3Pom3MgrFi
createObj__Q34Game3Pom3MgrFi:
/* 802542E0 00251220  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802542E4 00251224  7C 08 02 A6 */	mflr r0
/* 802542E8 00251228  90 01 00 34 */	stw r0, 0x34(r1)
/* 802542EC 0025122C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802542F0 00251230  7C 7F 1B 78 */	mr r31, r3
/* 802542F4 00251234  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802542F8 00251238  7C 9E 23 78 */	mr r30, r4
/* 802542FC 0025123C  1C 7E 03 00 */	mulli r3, r30, 0x300
/* 80254300 00251240  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80254304 00251244  93 81 00 20 */	stw r28, 0x20(r1)
/* 80254308 00251248  38 63 00 10 */	addi r3, r3, 0x10
/* 8025430C 0025124C  4B DC FC A1 */	bl __nwa__FUl
/* 80254310 00251250  3C 80 80 25 */	lis r4, __ct__Q34Game3Pom3ObjFv@ha
/* 80254314 00251254  3C A0 80 25 */	lis r5, __dt__Q34Game3Pom3ObjFv@ha
/* 80254318 00251258  38 84 47 A4 */	addi r4, r4, __ct__Q34Game3Pom3ObjFv@l
/* 8025431C 0025125C  7F C7 F3 78 */	mr r7, r30
/* 80254320 00251260  38 A5 44 68 */	addi r5, r5, __dt__Q34Game3Pom3ObjFv@l
/* 80254324 00251264  38 C0 03 00 */	li r6, 0x300
/* 80254328 00251268  4B E6 D6 C9 */	bl __construct_new_array
/* 8025432C 0025126C  3C 80 80 48 */	lis r4, lbl_80484C98@ha
/* 80254330 00251270  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80254334 00251274  39 04 4C 98 */	addi r8, r4, lbl_80484C98@l
/* 80254338 00251278  3B C1 00 08 */	addi r30, r1, 8
/* 8025433C 0025127C  80 E8 00 00 */	lwz r7, 0(r8)
/* 80254340 00251280  3B 80 00 00 */	li r28, 0
/* 80254344 00251284  80 C8 00 04 */	lwz r6, 4(r8)
/* 80254348 00251288  3B A0 00 00 */	li r29, 0
/* 8025434C 0025128C  80 A8 00 08 */	lwz r5, 8(r8)
/* 80254350 00251290  80 88 00 0C */	lwz r4, 0xc(r8)
/* 80254354 00251294  80 68 00 10 */	lwz r3, 0x10(r8)
/* 80254358 00251298  80 08 00 14 */	lwz r0, 0x14(r8)
/* 8025435C 0025129C  90 E1 00 08 */	stw r7, 8(r1)
/* 80254360 002512A0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80254364 002512A4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80254368 002512A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8025436C 002512AC  90 61 00 18 */	stw r3, 0x18(r1)
/* 80254370 002512B0  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_80254374:
/* 80254374 002512B4  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 80254378 002512B8  38 A0 00 00 */	li r5, 0
/* 8025437C 002512BC  80 9E 00 00 */	lwz r4, 0(r30)
/* 80254380 002512C0  4B EB 97 01 */	bl getEnemyNum__Q24Game15GeneralEnemyMgrFib
/* 80254384 002512C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80254388 002512C8  7F A6 EB 78 */	mr r6, r29
/* 8025438C 002512CC  7C 03 03 78 */	mr r3, r0
/* 80254390 002512D0  40 81 00 A8 */	ble lbl_80254438
/* 80254394 002512D4  54 00 E8 FF */	rlwinm. r0, r0, 0x1d, 3, 0x1f
/* 80254398 002512D8  7C 09 03 A6 */	mtctr r0
/* 8025439C 002512DC  41 82 00 7C */	beq lbl_80254418
lbl_802543A0:
/* 802543A0 002512E0  80 BE 00 00 */	lwz r5, 0(r30)
/* 802543A4 002512E4  38 06 02 EC */	addi r0, r6, 0x2ec
/* 802543A8 002512E8  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802543AC 002512EC  3B BD 18 00 */	addi r29, r29, 0x1800
/* 802543B0 002512F0  7C A4 01 2E */	stwx r5, r4, r0
/* 802543B4 002512F4  38 06 05 EC */	addi r0, r6, 0x5ec
/* 802543B8 002512F8  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802543BC 002512FC  7C A4 01 2E */	stwx r5, r4, r0
/* 802543C0 00251300  38 06 08 EC */	addi r0, r6, 0x8ec
/* 802543C4 00251304  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802543C8 00251308  7C A4 01 2E */	stwx r5, r4, r0
/* 802543CC 0025130C  38 06 0B EC */	addi r0, r6, 0xbec
/* 802543D0 00251310  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802543D4 00251314  7C A4 01 2E */	stwx r5, r4, r0
/* 802543D8 00251318  38 06 0E EC */	addi r0, r6, 0xeec
/* 802543DC 0025131C  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802543E0 00251320  7C A4 01 2E */	stwx r5, r4, r0
/* 802543E4 00251324  38 06 11 EC */	addi r0, r6, 0x11ec
/* 802543E8 00251328  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802543EC 0025132C  7C A4 01 2E */	stwx r5, r4, r0
/* 802543F0 00251330  38 06 14 EC */	addi r0, r6, 0x14ec
/* 802543F4 00251334  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802543F8 00251338  7C A4 01 2E */	stwx r5, r4, r0
/* 802543FC 0025133C  38 06 17 EC */	addi r0, r6, 0x17ec
/* 80254400 00251340  38 C6 18 00 */	addi r6, r6, 0x1800
/* 80254404 00251344  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80254408 00251348  7C A4 01 2E */	stwx r5, r4, r0
/* 8025440C 0025134C  42 00 FF 94 */	bdnz lbl_802543A0
/* 80254410 00251350  70 63 00 07 */	andi. r3, r3, 7
/* 80254414 00251354  41 82 00 24 */	beq lbl_80254438
lbl_80254418:
/* 80254418 00251358  7C 69 03 A6 */	mtctr r3
lbl_8025441C:
/* 8025441C 0025135C  80 BE 00 00 */	lwz r5, 0(r30)
/* 80254420 00251360  38 06 02 EC */	addi r0, r6, 0x2ec
/* 80254424 00251364  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80254428 00251368  38 C6 03 00 */	addi r6, r6, 0x300
/* 8025442C 0025136C  3B BD 03 00 */	addi r29, r29, 0x300
/* 80254430 00251370  7C A4 01 2E */	stwx r5, r4, r0
/* 80254434 00251374  42 00 FF E8 */	bdnz lbl_8025441C
lbl_80254438:
/* 80254438 00251378  3B 9C 00 01 */	addi r28, r28, 1
/* 8025443C 0025137C  3B DE 00 04 */	addi r30, r30, 4
/* 80254440 00251380  2C 1C 00 06 */	cmpwi r28, 6
/* 80254444 00251384  41 80 FF 30 */	blt lbl_80254374
/* 80254448 00251388  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025444C 0025138C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80254450 00251390  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80254454 00251394  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80254458 00251398  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8025445C 0025139C  7C 08 03 A6 */	mtlr r0
/* 80254460 002513A0  38 21 00 30 */	addi r1, r1, 0x30
/* 80254464 002513A4  4E 80 00 20 */	blr 

.global __dt__Q34Game3Pom3ObjFv
__dt__Q34Game3Pom3ObjFv:
/* 80254468 002513A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025446C 002513AC  7C 08 02 A6 */	mflr r0
/* 80254470 002513B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80254474 002513B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80254478 002513B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025447C 002513BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80254480 002513C0  7C 9E 23 78 */	mr r30, r4
/* 80254484 002513C4  41 82 00 84 */	beq lbl_80254508
/* 80254488 002513C8  3C 60 80 4C */	lis r3, __vt__Q34Game3Pom3Obj@ha
/* 8025448C 002513CC  38 1F 02 F0 */	addi r0, r31, 0x2f0
/* 80254490 002513D0  38 83 1D 3C */	addi r4, r3, __vt__Q34Game3Pom3Obj@l
/* 80254494 002513D4  90 9F 00 00 */	stw r4, 0(r31)
/* 80254498 002513D8  38 64 01 B0 */	addi r3, r4, 0x1b0
/* 8025449C 002513DC  38 84 02 FC */	addi r4, r4, 0x2fc
/* 802544A0 002513E0  90 7F 01 78 */	stw r3, 0x178(r31)
/* 802544A4 002513E4  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 802544A8 002513E8  90 83 00 00 */	stw r4, 0(r3)
/* 802544AC 002513EC  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 802544B0 002513F0  7C 03 00 50 */	subf r0, r3, r0
/* 802544B4 002513F4  90 03 00 0C */	stw r0, 0xc(r3)
/* 802544B8 002513F8  41 82 00 40 */	beq lbl_802544F8
/* 802544BC 002513FC  3C 60 80 4B */	lis r3, __vt__Q24Game9EnemyBase@ha
/* 802544C0 00251400  38 1F 02 BC */	addi r0, r31, 0x2bc
/* 802544C4 00251404  38 83 A3 24 */	addi r4, r3, __vt__Q24Game9EnemyBase@l
/* 802544C8 00251408  38 7F 02 90 */	addi r3, r31, 0x290
/* 802544CC 0025140C  90 9F 00 00 */	stw r4, 0(r31)
/* 802544D0 00251410  38 A4 01 B0 */	addi r5, r4, 0x1b0
/* 802544D4 00251414  38 C4 02 F8 */	addi r6, r4, 0x2f8
/* 802544D8 00251418  38 80 FF FF */	li r4, -1
/* 802544DC 0025141C  90 BF 01 78 */	stw r5, 0x178(r31)
/* 802544E0 00251420  80 BF 01 7C */	lwz r5, 0x17c(r31)
/* 802544E4 00251424  90 C5 00 00 */	stw r6, 0(r5)
/* 802544E8 00251428  80 BF 01 7C */	lwz r5, 0x17c(r31)
/* 802544EC 0025142C  7C 05 00 50 */	subf r0, r5, r0
/* 802544F0 00251430  90 05 00 0C */	stw r0, 0xc(r5)
/* 802544F4 00251434  48 1B D0 95 */	bl __dt__5CNodeFv
lbl_802544F8:
/* 802544F8 00251438  7F C0 07 35 */	extsh. r0, r30
/* 802544FC 0025143C  40 81 00 0C */	ble lbl_80254508
/* 80254500 00251440  7F E3 FB 78 */	mr r3, r31
/* 80254504 00251444  4B DC FB B1 */	bl __dl__FPv
lbl_80254508:
/* 80254508 00251448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025450C 0025144C  7F E3 FB 78 */	mr r3, r31
/* 80254510 00251450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80254514 00251454  83 C1 00 08 */	lwz r30, 8(r1)
/* 80254518 00251458  7C 08 03 A6 */	mtlr r0
/* 8025451C 0025145C  38 21 00 10 */	addi r1, r1, 0x10
/* 80254520 00251460  4E 80 00 20 */	blr 

.global getEnemy__Q34Game3Pom3MgrFi
getEnemy__Q34Game3Pom3MgrFi:
/* 80254524 00251464  1C 04 03 00 */	mulli r0, r4, 0x300
/* 80254528 00251468  80 63 00 44 */	lwz r3, 0x44(r3)
/* 8025452C 0025146C  7C 63 02 14 */	add r3, r3, r0
/* 80254530 00251470  4E 80 00 20 */	blr 

.global createModel__Q34Game3Pom3MgrFv
createModel__Q34Game3Pom3MgrFv:
/* 80254534 00251474  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80254538 00251478  7C 08 02 A6 */	mflr r0
/* 8025453C 0025147C  3C 80 80 48 */	lis r4, lbl_80484940@ha
/* 80254540 00251480  90 01 00 54 */	stw r0, 0x54(r1)
/* 80254544 00251484  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80254548 00251488  3B E4 49 40 */	addi r31, r4, lbl_80484940@l
/* 8025454C 0025148C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80254550 00251490  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80254554 00251494  93 81 00 40 */	stw r28, 0x40(r1)
/* 80254558 00251498  7C 7C 1B 78 */	mr r28, r3
/* 8025455C 0025149C  38 60 00 14 */	li r3, 0x14
/* 80254560 002514A0  4B DC F9 45 */	bl __nw__FUl
/* 80254564 002514A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80254568 002514A8  41 82 00 18 */	beq lbl_80254580
/* 8025456C 002514AC  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 80254570 002514B0  3C A0 00 08 */	lis r5, 8
/* 80254574 002514B4  88 DC 00 24 */	lbz r6, 0x24(r28)
/* 80254578 002514B8  48 1E 9C 61 */	bl __ct__Q28SysShape5ModelFP12J3DModelDataUlUl
/* 8025457C 002514BC  7C 7E 1B 78 */	mr r30, r3
lbl_80254580:
/* 80254580 002514C0  28 1E 00 00 */	cmplwi r30, 0
/* 80254584 002514C4  40 82 00 18 */	bne lbl_8025459C
/* 80254588 002514C8  38 7F 03 70 */	addi r3, r31, 0x370
/* 8025458C 002514CC  38 BF 03 7C */	addi r5, r31, 0x37c
/* 80254590 002514D0  38 80 00 B6 */	li r4, 0xb6
/* 80254594 002514D4  4C C6 31 82 */	crclr 6
/* 80254598 002514D8  4B DD 60 A9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8025459C:
/* 8025459C 002514DC  3B A0 00 00 */	li r29, 0
/* 802545A0 002514E0  48 00 00 40 */	b lbl_802545E0
lbl_802545A4:
/* 802545A4 002514E4  80 64 00 64 */	lwz r3, 0x64(r4)
/* 802545A8 002514E8  7F A4 EB 78 */	mr r4, r29
/* 802545AC 002514EC  4B DD A8 71 */	bl getName__10JUTNameTabCFUs
/* 802545B0 002514F0  38 9F 03 88 */	addi r4, r31, 0x388
/* 802545B4 002514F4  4B E7 61 0D */	bl strcmp
/* 802545B8 002514F8  2C 03 00 00 */	cmpwi r3, 0
/* 802545BC 002514FC  40 82 00 20 */	bne lbl_802545DC
/* 802545C0 00251500  80 9E 00 08 */	lwz r4, 8(r30)
/* 802545C4 00251504  57 A3 32 B2 */	rlwinm r3, r29, 6, 0xa, 0x19
/* 802545C8 00251508  38 03 00 2C */	addi r0, r3, 0x2c
/* 802545CC 0025150C  80 64 00 C0 */	lwz r3, 0xc0(r4)
/* 802545D0 00251510  3C 80 01 00 */	lis r4, 0x100
/* 802545D4 00251514  7C 63 00 2E */	lwzx r3, r3, r0
/* 802545D8 00251518  4B E0 BD 01 */	bl newDifferedDisplayList__14J3DShapePacketFUl
lbl_802545DC:
/* 802545DC 0025151C  3B BD 00 01 */	addi r29, r29, 1
lbl_802545E0:
/* 802545E0 00251520  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 802545E4 00251524  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 802545E8 00251528  A0 64 00 5C */	lhz r3, 0x5c(r4)
/* 802545EC 0025152C  7C 00 18 40 */	cmplw r0, r3
/* 802545F0 00251530  41 80 FF B4 */	blt lbl_802545A4
/* 802545F4 00251534  38 61 00 08 */	addi r3, r1, 8
/* 802545F8 00251538  4B E9 5C A9 */	bl PSMTXIdentity
/* 802545FC 0025153C  3C 80 80 51 */	lis r4, j3dSys@ha
/* 80254600 00251540  38 61 00 08 */	addi r3, r1, 8
/* 80254604 00251544  38 84 F2 30 */	addi r4, r4, j3dSys@l
/* 80254608 00251548  4B E9 5C C5 */	bl PSMTXCopy
/* 8025460C 0025154C  83 FE 00 08 */	lwz r31, 8(r30)
/* 80254610 00251550  7F E3 FB 78 */	mr r3, r31
/* 80254614 00251554  81 9F 00 00 */	lwz r12, 0(r31)
/* 80254618 00251558  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8025461C 0025155C  7D 89 03 A6 */	mtctr r12
/* 80254620 00251560  4E 80 04 21 */	bctrl 
/* 80254624 00251564  7F E3 FB 78 */	mr r3, r31
/* 80254628 00251568  81 9F 00 00 */	lwz r12, 0(r31)
/* 8025462C 0025156C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80254630 00251570  7D 89 03 A6 */	mtctr r12
/* 80254634 00251574  4E 80 04 21 */	bctrl 
/* 80254638 00251578  7F E3 FB 78 */	mr r3, r31
/* 8025463C 0025157C  4B E1 22 E9 */	bl makeDL__8J3DModelFv
/* 80254640 00251580  7F E3 FB 78 */	mr r3, r31
/* 80254644 00251584  4B E1 21 B1 */	bl lock__8J3DModelFv
/* 80254648 00251588  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8025464C 0025158C  7F C3 F3 78 */	mr r3, r30
/* 80254650 00251590  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80254654 00251594  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80254658 00251598  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8025465C 0025159C  83 81 00 40 */	lwz r28, 0x40(r1)
/* 80254660 002515A0  7C 08 03 A6 */	mtlr r0
/* 80254664 002515A4  38 21 00 50 */	addi r1, r1, 0x50
/* 80254668 002515A8  4E 80 00 20 */	blr 

.global read__Q34Game3Pom5ParmsFR6Stream
read__Q34Game3Pom5ParmsFR6Stream:
/* 8025466C 002515AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80254670 002515B0  7C 08 02 A6 */	mflr r0
/* 80254674 002515B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80254678 002515B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025467C 002515BC  7C 9F 23 78 */	mr r31, r4
/* 80254680 002515C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80254684 002515C4  7C 7E 1B 78 */	mr r30, r3
/* 80254688 002515C8  48 1B F1 6D */	bl read__10ParametersFR6Stream
/* 8025468C 002515CC  7F E4 FB 78 */	mr r4, r31
/* 80254690 002515D0  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 80254694 002515D4  48 1B F1 61 */	bl read__10ParametersFR6Stream
/* 80254698 002515D8  7F E4 FB 78 */	mr r4, r31
/* 8025469C 002515DC  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 802546A0 002515E0  48 1B F1 55 */	bl read__10ParametersFR6Stream
/* 802546A4 002515E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802546A8 002515E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802546AC 002515EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802546B0 002515F0  7C 08 03 A6 */	mtlr r0
/* 802546B4 002515F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802546B8 002515F8  4E 80 00 20 */	blr 

.global __dt__Q34Game3Pom3MgrFv
__dt__Q34Game3Pom3MgrFv:
/* 802546BC 002515FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802546C0 00251600  7C 08 02 A6 */	mflr r0
/* 802546C4 00251604  90 01 00 14 */	stw r0, 0x14(r1)
/* 802546C8 00251608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802546CC 0025160C  7C 9F 23 78 */	mr r31, r4
/* 802546D0 00251610  93 C1 00 08 */	stw r30, 8(r1)
/* 802546D4 00251614  7C 7E 1B 79 */	or. r30, r3, r3
/* 802546D8 00251618  41 82 00 78 */	beq lbl_80254750
/* 802546DC 0025161C  3C 60 80 4C */	lis r3, __vt__Q34Game3Pom3Mgr@ha
/* 802546E0 00251620  38 63 1C 48 */	addi r3, r3, __vt__Q34Game3Pom3Mgr@l
/* 802546E4 00251624  90 7E 00 00 */	stw r3, 0(r30)
/* 802546E8 00251628  38 03 00 38 */	addi r0, r3, 0x38
/* 802546EC 0025162C  90 1E 00 04 */	stw r0, 4(r30)
/* 802546F0 00251630  41 82 00 50 */	beq lbl_80254740
/* 802546F4 00251634  3C 60 80 4B */	lis r3, __vt__Q24Game12EnemyMgrBase@ha
/* 802546F8 00251638  38 63 F8 A0 */	addi r3, r3, __vt__Q24Game12EnemyMgrBase@l
/* 802546FC 0025163C  90 7E 00 00 */	stw r3, 0(r30)
/* 80254700 00251640  38 03 00 38 */	addi r0, r3, 0x38
/* 80254704 00251644  90 1E 00 04 */	stw r0, 4(r30)
/* 80254708 00251648  41 82 00 38 */	beq lbl_80254740
/* 8025470C 0025164C  3C 60 80 4B */	lis r3, __vt__Q24Game13IEnemyMgrBase@ha
/* 80254710 00251650  34 1E 00 04 */	addic. r0, r30, 4
/* 80254714 00251654  38 63 AC FC */	addi r3, r3, __vt__Q24Game13IEnemyMgrBase@l
/* 80254718 00251658  90 7E 00 00 */	stw r3, 0(r30)
/* 8025471C 0025165C  38 03 00 38 */	addi r0, r3, 0x38
/* 80254720 00251660  90 1E 00 04 */	stw r0, 4(r30)
/* 80254724 00251664  41 82 00 1C */	beq lbl_80254740
/* 80254728 00251668  3C 80 80 4B */	lis r4, __vt__16GenericContainer@ha
/* 8025472C 0025166C  38 7E 00 04 */	addi r3, r30, 4
/* 80254730 00251670  38 04 AC DC */	addi r0, r4, __vt__16GenericContainer@l
/* 80254734 00251674  38 80 00 00 */	li r4, 0
/* 80254738 00251678  90 1E 00 04 */	stw r0, 4(r30)
/* 8025473C 0025167C  48 1B CE 4D */	bl __dt__5CNodeFv
lbl_80254740:
/* 80254740 00251680  7F E0 07 35 */	extsh. r0, r31
/* 80254744 00251684  40 81 00 0C */	ble lbl_80254750
/* 80254748 00251688  7F C3 F3 78 */	mr r3, r30
/* 8025474C 0025168C  4B DC F9 69 */	bl __dl__FPv
lbl_80254750:
/* 80254750 00251690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80254754 00251694  7F C3 F3 78 */	mr r3, r30
/* 80254758 00251698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025475C 0025169C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80254760 002516A0  7C 08 03 A6 */	mtlr r0
/* 80254764 002516A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80254768 002516A8  4E 80 00 20 */	blr 

.global getEnemyTypeID__Q34Game3Pom3MgrFv
getEnemyTypeID__Q34Game3Pom3MgrFv:
/* 8025476C 002516AC  38 60 00 52 */	li r3, 0x52
/* 80254770 002516B0  4E 80 00 20 */	blr 

.global __sinit_PomMgr_cpp
__sinit_PomMgr_cpp:
/* 80254774 002516B4  3C 80 80 51 */	lis r4, __float_nan@ha
/* 80254778 002516B8  38 00 FF FF */	li r0, -1
/* 8025477C 002516BC  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 80254780 002516C0  3C 60 80 4C */	lis r3, lbl_804C1C30@ha
/* 80254784 002516C4  90 0D 96 B0 */	stw r0, lbl_80515D30@sda21(r13)
/* 80254788 002516C8  D4 03 1C 30 */	stfsu f0, lbl_804C1C30@l(r3)
/* 8025478C 002516CC  D0 0D 96 B4 */	stfs f0, lbl_80515D34@sda21(r13)
/* 80254790 002516D0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80254794 002516D4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80254798 002516D8  4E 80 00 20 */	blr 

.global "@4@__dt__Q34Game3Pom3MgrFv"
"@4@__dt__Q34Game3Pom3MgrFv":
/* 8025479C 002516DC  38 63 FF FC */	addi r3, r3, -4
/* 802547A0 002516E0  4B FF FF 1C */	b __dt__Q34Game3Pom3MgrFv
