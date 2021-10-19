.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global lbl_80480800
lbl_80480800:
	.skip 0xC
	.4byte 0x6974656D
	.4byte 0x50696B69
	.4byte 0x68656164
	.4byte 0x00000000
.global lbl_8048081C
lbl_8048081C:
	.4byte 0x68617070
	.4byte 0x616A6E74
	.4byte 0x33000000
.global lbl_80480828
lbl_80480828:
	.4byte 0x6974656D
	.4byte 0x50696B69
	.4byte 0x68656164
	.4byte 0x2E637070
	.4byte 0x00000000
.global lbl_8048083C
lbl_8048083C:
	.4byte 0x65786974
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x21210A00
.global lbl_8048084C
lbl_8048084C:
	.asciz "P2Assert"
	.skip 3
.global lbl_80480858
lbl_80480858:
	.4byte 0x50696B69
	.4byte 0x48656164
	.4byte 0x00000000
.global lbl_80480864
lbl_80480864:
	.4byte 0x75736572
	.4byte 0x2F4B616E
	.4byte 0x646F2F6F
	.4byte 0x626A6563
	.4byte 0x74732F70
	.4byte 0x696B6968
	.4byte 0x65616400
	.4byte 0x70696B69
	.4byte 0x68656164
	.4byte 0x2E626D64
	.4byte 0x00000000
	.4byte 0x74657874
	.4byte 0x732E737A
	.4byte 0x73000000
	.4byte 0x70696B69
	.4byte 0x68656164
	.4byte 0x416E696D
	.4byte 0x4D67722E
	.4byte 0x74787400
.global lbl_804808B0
lbl_804808B0:
	.4byte 0x82B182EA
	.4byte 0x82CD82A0
	.4byte 0x82E882A6
	.4byte 0x82C882A2
	.4byte 0x82E60A00
.global lbl_804808C4
lbl_804808C4:
	.4byte 0x50696B69
	.4byte 0x68656164
	.4byte 0x00000000
	.4byte 0x41726753
	.4byte 0x63616C65
	.4byte 0x00000000
	.4byte 0x43726561
	.4byte 0x74757265
	.4byte 0x4B696C6C
	.4byte 0x41726700
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global init__Q34Game12ItemPikihead3FSMFPQ34Game12ItemPikihead4Item
init__Q34Game12ItemPikihead3FSMFPQ34Game12ItemPikihead4Item:
/* 801D8ABC 001D59FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8AC0 001D5A00  7C 08 02 A6 */	mflr r0
/* 801D8AC4 001D5A04  38 80 00 07 */	li r4, 7
/* 801D8AC8 001D5A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8ACC 001D5A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D8AD0 001D5A10  7C 7F 1B 78 */	mr r31, r3
/* 801D8AD4 001D5A14  48 00 2A 41 */	bl "create__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>Fi"
/* 801D8AD8 001D5A18  38 60 00 18 */	li r3, 0x18
/* 801D8ADC 001D5A1C  4B E4 B3 C9 */	bl __nw__FUl
/* 801D8AE0 001D5A20  7C 64 1B 79 */	or. r4, r3, r3
/* 801D8AE4 001D5A24  41 82 00 40 */	beq lbl_801D8B24
/* 801D8AE8 001D5A28  3C 60 80 4C */	lis r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8AEC 001D5A2C  3C C0 80 4C */	lis r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8AF0 001D5A30  38 03 8F C0 */	addi r0, r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@l
/* 801D8AF4 001D5A34  3C A0 80 4C */	lis r5, __vt__Q34Game12ItemPikihead5State@ha
/* 801D8AF8 001D5A38  90 04 00 00 */	stw r0, 0(r4)
/* 801D8AFC 001D5A3C  38 E0 00 00 */	li r7, 0
/* 801D8B00 001D5A40  3C 60 80 4C */	lis r3, __vt__Q34Game12ItemPikihead9FallState@ha
/* 801D8B04 001D5A44  38 C6 8F 8C */	addi r6, r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@l
/* 801D8B08 001D5A48  90 E4 00 04 */	stw r7, 4(r4)
/* 801D8B0C 001D5A4C  38 A5 8F 58 */	addi r5, r5, __vt__Q34Game12ItemPikihead5State@l
/* 801D8B10 001D5A50  38 03 8F 24 */	addi r0, r3, __vt__Q34Game12ItemPikihead9FallState@l
/* 801D8B14 001D5A54  90 E4 00 08 */	stw r7, 8(r4)
/* 801D8B18 001D5A58  90 C4 00 00 */	stw r6, 0(r4)
/* 801D8B1C 001D5A5C  90 A4 00 00 */	stw r5, 0(r4)
/* 801D8B20 001D5A60  90 04 00 00 */	stw r0, 0(r4)
lbl_801D8B24:
/* 801D8B24 001D5A64  7F E3 FB 78 */	mr r3, r31
/* 801D8B28 001D5A68  48 00 3C 59 */	bl "registerState__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ24Game36FSMState<Q34Game12ItemPikihead4Item>"
/* 801D8B2C 001D5A6C  38 60 00 18 */	li r3, 0x18
/* 801D8B30 001D5A70  4B E4 B3 75 */	bl __nw__FUl
/* 801D8B34 001D5A74  7C 64 1B 79 */	or. r4, r3, r3
/* 801D8B38 001D5A78  41 82 00 44 */	beq lbl_801D8B7C
/* 801D8B3C 001D5A7C  3C 60 80 4C */	lis r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8B40 001D5A80  3C C0 80 4C */	lis r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8B44 001D5A84  38 03 8F C0 */	addi r0, r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@l
/* 801D8B48 001D5A88  3C A0 80 4C */	lis r5, __vt__Q34Game12ItemPikihead5State@ha
/* 801D8B4C 001D5A8C  90 04 00 00 */	stw r0, 0(r4)
/* 801D8B50 001D5A90  38 00 00 01 */	li r0, 1
/* 801D8B54 001D5A94  3C 60 80 4C */	lis r3, __vt__Q34Game12ItemPikihead9BuryState@ha
/* 801D8B58 001D5A98  38 E0 00 00 */	li r7, 0
/* 801D8B5C 001D5A9C  90 04 00 04 */	stw r0, 4(r4)
/* 801D8B60 001D5AA0  38 C6 8F 8C */	addi r6, r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@l
/* 801D8B64 001D5AA4  38 A5 8F 58 */	addi r5, r5, __vt__Q34Game12ItemPikihead5State@l
/* 801D8B68 001D5AA8  38 03 8E F0 */	addi r0, r3, __vt__Q34Game12ItemPikihead9BuryState@l
/* 801D8B6C 001D5AAC  90 E4 00 08 */	stw r7, 8(r4)
/* 801D8B70 001D5AB0  90 C4 00 00 */	stw r6, 0(r4)
/* 801D8B74 001D5AB4  90 A4 00 00 */	stw r5, 0(r4)
/* 801D8B78 001D5AB8  90 04 00 00 */	stw r0, 0(r4)
lbl_801D8B7C:
/* 801D8B7C 001D5ABC  7F E3 FB 78 */	mr r3, r31
/* 801D8B80 001D5AC0  48 00 3C 01 */	bl "registerState__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ24Game36FSMState<Q34Game12ItemPikihead4Item>"
/* 801D8B84 001D5AC4  38 60 00 14 */	li r3, 0x14
/* 801D8B88 001D5AC8  4B E4 B3 1D */	bl __nw__FUl
/* 801D8B8C 001D5ACC  7C 64 1B 79 */	or. r4, r3, r3
/* 801D8B90 001D5AD0  41 82 00 44 */	beq lbl_801D8BD4
/* 801D8B94 001D5AD4  3C 60 80 4C */	lis r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8B98 001D5AD8  3C C0 80 4C */	lis r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8B9C 001D5ADC  38 03 8F C0 */	addi r0, r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@l
/* 801D8BA0 001D5AE0  3C A0 80 4C */	lis r5, __vt__Q34Game12ItemPikihead5State@ha
/* 801D8BA4 001D5AE4  90 04 00 00 */	stw r0, 0(r4)
/* 801D8BA8 001D5AE8  38 00 00 02 */	li r0, 2
/* 801D8BAC 001D5AEC  3C 60 80 4C */	lis r3, __vt__Q34Game12ItemPikihead9WaitState@ha
/* 801D8BB0 001D5AF0  38 E0 00 00 */	li r7, 0
/* 801D8BB4 001D5AF4  90 04 00 04 */	stw r0, 4(r4)
/* 801D8BB8 001D5AF8  38 C6 8F 8C */	addi r6, r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@l
/* 801D8BBC 001D5AFC  38 A5 8F 58 */	addi r5, r5, __vt__Q34Game12ItemPikihead5State@l
/* 801D8BC0 001D5B00  38 03 8E 54 */	addi r0, r3, __vt__Q34Game12ItemPikihead9WaitState@l
/* 801D8BC4 001D5B04  90 E4 00 08 */	stw r7, 8(r4)
/* 801D8BC8 001D5B08  90 C4 00 00 */	stw r6, 0(r4)
/* 801D8BCC 001D5B0C  90 A4 00 00 */	stw r5, 0(r4)
/* 801D8BD0 001D5B10  90 04 00 00 */	stw r0, 0(r4)
lbl_801D8BD4:
/* 801D8BD4 001D5B14  7F E3 FB 78 */	mr r3, r31
/* 801D8BD8 001D5B18  48 00 3B A9 */	bl "registerState__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ24Game36FSMState<Q34Game12ItemPikihead4Item>"
/* 801D8BDC 001D5B1C  38 60 00 18 */	li r3, 0x18
/* 801D8BE0 001D5B20  4B E4 B2 C5 */	bl __nw__FUl
/* 801D8BE4 001D5B24  7C 64 1B 79 */	or. r4, r3, r3
/* 801D8BE8 001D5B28  41 82 00 44 */	beq lbl_801D8C2C
/* 801D8BEC 001D5B2C  3C 60 80 4C */	lis r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8BF0 001D5B30  3C C0 80 4C */	lis r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8BF4 001D5B34  38 03 8F C0 */	addi r0, r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@l
/* 801D8BF8 001D5B38  3C A0 80 4C */	lis r5, __vt__Q34Game12ItemPikihead5State@ha
/* 801D8BFC 001D5B3C  90 04 00 00 */	stw r0, 0(r4)
/* 801D8C00 001D5B40  38 00 00 03 */	li r0, 3
/* 801D8C04 001D5B44  3C 60 80 4C */	lis r3, __vt__Q34Game12ItemPikihead9TaneState@ha
/* 801D8C08 001D5B48  38 E0 00 00 */	li r7, 0
/* 801D8C0C 001D5B4C  90 04 00 04 */	stw r0, 4(r4)
/* 801D8C10 001D5B50  38 C6 8F 8C */	addi r6, r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@l
/* 801D8C14 001D5B54  38 A5 8F 58 */	addi r5, r5, __vt__Q34Game12ItemPikihead5State@l
/* 801D8C18 001D5B58  38 03 8E BC */	addi r0, r3, __vt__Q34Game12ItemPikihead9TaneState@l
/* 801D8C1C 001D5B5C  90 E4 00 08 */	stw r7, 8(r4)
/* 801D8C20 001D5B60  90 C4 00 00 */	stw r6, 0(r4)
/* 801D8C24 001D5B64  90 A4 00 00 */	stw r5, 0(r4)
/* 801D8C28 001D5B68  90 04 00 00 */	stw r0, 0(r4)
lbl_801D8C2C:
/* 801D8C2C 001D5B6C  7F E3 FB 78 */	mr r3, r31
/* 801D8C30 001D5B70  48 00 3B 51 */	bl "registerState__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ24Game36FSMState<Q34Game12ItemPikihead4Item>"
/* 801D8C34 001D5B74  38 60 00 10 */	li r3, 0x10
/* 801D8C38 001D5B78  4B E4 B2 6D */	bl __nw__FUl
/* 801D8C3C 001D5B7C  7C 64 1B 79 */	or. r4, r3, r3
/* 801D8C40 001D5B80  41 82 00 44 */	beq lbl_801D8C84
/* 801D8C44 001D5B84  3C 60 80 4C */	lis r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8C48 001D5B88  3C C0 80 4C */	lis r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8C4C 001D5B8C  38 03 8F C0 */	addi r0, r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@l
/* 801D8C50 001D5B90  3C A0 80 4C */	lis r5, __vt__Q34Game12ItemPikihead5State@ha
/* 801D8C54 001D5B94  90 04 00 00 */	stw r0, 0(r4)
/* 801D8C58 001D5B98  38 00 00 04 */	li r0, 4
/* 801D8C5C 001D5B9C  3C 60 80 4C */	lis r3, __vt__Q34Game12ItemPikihead11HatugaState@ha
/* 801D8C60 001D5BA0  38 E0 00 00 */	li r7, 0
/* 801D8C64 001D5BA4  90 04 00 04 */	stw r0, 4(r4)
/* 801D8C68 001D5BA8  38 C6 8F 8C */	addi r6, r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@l
/* 801D8C6C 001D5BAC  38 A5 8F 58 */	addi r5, r5, __vt__Q34Game12ItemPikihead5State@l
/* 801D8C70 001D5BB0  38 03 8E 88 */	addi r0, r3, __vt__Q34Game12ItemPikihead11HatugaState@l
/* 801D8C74 001D5BB4  90 E4 00 08 */	stw r7, 8(r4)
/* 801D8C78 001D5BB8  90 C4 00 00 */	stw r6, 0(r4)
/* 801D8C7C 001D5BBC  90 A4 00 00 */	stw r5, 0(r4)
/* 801D8C80 001D5BC0  90 04 00 00 */	stw r0, 0(r4)
lbl_801D8C84:
/* 801D8C84 001D5BC4  7F E3 FB 78 */	mr r3, r31
/* 801D8C88 001D5BC8  48 00 3A F9 */	bl "registerState__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ24Game36FSMState<Q34Game12ItemPikihead4Item>"
/* 801D8C8C 001D5BCC  38 60 00 10 */	li r3, 0x10
/* 801D8C90 001D5BD0  4B E4 B2 15 */	bl __nw__FUl
/* 801D8C94 001D5BD4  7C 64 1B 79 */	or. r4, r3, r3
/* 801D8C98 001D5BD8  41 82 00 44 */	beq lbl_801D8CDC
/* 801D8C9C 001D5BDC  3C 60 80 4C */	lis r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8CA0 001D5BE0  3C C0 80 4C */	lis r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8CA4 001D5BE4  38 03 8F C0 */	addi r0, r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@l
/* 801D8CA8 001D5BE8  3C A0 80 4C */	lis r5, __vt__Q34Game12ItemPikihead5State@ha
/* 801D8CAC 001D5BEC  90 04 00 00 */	stw r0, 0(r4)
/* 801D8CB0 001D5BF0  38 00 00 05 */	li r0, 5
/* 801D8CB4 001D5BF4  3C 60 80 4C */	lis r3, __vt__Q34Game12ItemPikihead9GrowState@ha
/* 801D8CB8 001D5BF8  38 E0 00 00 */	li r7, 0
/* 801D8CBC 001D5BFC  90 04 00 04 */	stw r0, 4(r4)
/* 801D8CC0 001D5C00  38 C6 8F 8C */	addi r6, r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@l
/* 801D8CC4 001D5C04  38 A5 8F 58 */	addi r5, r5, __vt__Q34Game12ItemPikihead5State@l
/* 801D8CC8 001D5C08  38 03 8E 20 */	addi r0, r3, __vt__Q34Game12ItemPikihead9GrowState@l
/* 801D8CCC 001D5C0C  90 E4 00 08 */	stw r7, 8(r4)
/* 801D8CD0 001D5C10  90 C4 00 00 */	stw r6, 0(r4)
/* 801D8CD4 001D5C14  90 A4 00 00 */	stw r5, 0(r4)
/* 801D8CD8 001D5C18  90 04 00 00 */	stw r0, 0(r4)
lbl_801D8CDC:
/* 801D8CDC 001D5C1C  7F E3 FB 78 */	mr r3, r31
/* 801D8CE0 001D5C20  48 00 3A A1 */	bl "registerState__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ24Game36FSMState<Q34Game12ItemPikihead4Item>"
/* 801D8CE4 001D5C24  38 60 00 18 */	li r3, 0x18
/* 801D8CE8 001D5C28  4B E4 B1 BD */	bl __nw__FUl
/* 801D8CEC 001D5C2C  7C 64 1B 79 */	or. r4, r3, r3
/* 801D8CF0 001D5C30  41 82 00 44 */	beq lbl_801D8D34
/* 801D8CF4 001D5C34  3C 60 80 4C */	lis r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8CF8 001D5C38  3C C0 80 4C */	lis r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@ha
/* 801D8CFC 001D5C3C  38 03 8F C0 */	addi r0, r3, "__vt__Q24Game36FSMState<Q34Game12ItemPikihead4Item>"@l
/* 801D8D00 001D5C40  3C A0 80 4C */	lis r5, __vt__Q34Game12ItemPikihead5State@ha
/* 801D8D04 001D5C44  90 04 00 00 */	stw r0, 0(r4)
/* 801D8D08 001D5C48  38 00 00 06 */	li r0, 6
/* 801D8D0C 001D5C4C  3C 60 80 4C */	lis r3, __vt__Q34Game12ItemPikihead10SioreState@ha
/* 801D8D10 001D5C50  38 E0 00 00 */	li r7, 0
/* 801D8D14 001D5C54  90 04 00 04 */	stw r0, 4(r4)
/* 801D8D18 001D5C58  38 C6 8F 8C */	addi r6, r6, "__vt__Q24Game37ItemState<Q34Game12ItemPikihead4Item>"@l
/* 801D8D1C 001D5C5C  38 A5 8F 58 */	addi r5, r5, __vt__Q34Game12ItemPikihead5State@l
/* 801D8D20 001D5C60  38 03 8D EC */	addi r0, r3, __vt__Q34Game12ItemPikihead10SioreState@l
/* 801D8D24 001D5C64  90 E4 00 08 */	stw r7, 8(r4)
/* 801D8D28 001D5C68  90 C4 00 00 */	stw r6, 0(r4)
/* 801D8D2C 001D5C6C  90 A4 00 00 */	stw r5, 0(r4)
/* 801D8D30 001D5C70  90 04 00 00 */	stw r0, 0(r4)
lbl_801D8D34:
/* 801D8D34 001D5C74  7F E3 FB 78 */	mr r3, r31
/* 801D8D38 001D5C78  48 00 3A 49 */	bl "registerState__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ24Game36FSMState<Q34Game12ItemPikihead4Item>"
/* 801D8D3C 001D5C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8D40 001D5C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D8D44 001D5C84  7C 08 03 A6 */	mtlr r0
/* 801D8D48 001D5C88  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8D4C 001D5C8C  4E 80 00 20 */	blr 

.global init__Q34Game12ItemPikihead9FallStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg
init__Q34Game12ItemPikihead9FallStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg:
/* 801D8D50 001D5C90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D8D54 001D5C94  7C 08 02 A6 */	mflr r0
/* 801D8D58 001D5C98  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D8D5C 001D5C9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D8D60 001D5CA0  7C 9F 23 78 */	mr r31, r4
/* 801D8D64 001D5CA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D8D68 001D5CA8  7C 7E 1B 78 */	mr r30, r3
/* 801D8D6C 001D5CAC  4B EF 08 35 */	bl rand
/* 801D8D70 001D5CB0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801D8D74 001D5CB4  3C 00 43 30 */	lis r0, 0x4330
/* 801D8D78 001D5CB8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801D8D7C 001D5CBC  C8 22 B4 60 */	lfd f1, lbl_805197C0@sda21(r2)
/* 801D8D80 001D5CC0  90 01 00 08 */	stw r0, 8(r1)
/* 801D8D84 001D5CC4  C0 62 B4 50 */	lfs f3, lbl_805197B0@sda21(r2)
/* 801D8D88 001D5CC8  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D8D8C 001D5CCC  C0 42 B4 58 */	lfs f2, lbl_805197B8@sda21(r2)
/* 801D8D90 001D5CD0  EC 80 08 28 */	fsubs f4, f0, f1
/* 801D8D94 001D5CD4  C0 02 B4 54 */	lfs f0, lbl_805197B4@sda21(r2)
/* 801D8D98 001D5CD8  C0 22 B4 5C */	lfs f1, lbl_805197BC@sda21(r2)
/* 801D8D9C 001D5CDC  EC 64 18 24 */	fdivs f3, f4, f3
/* 801D8DA0 001D5CE0  EC 02 00 FC */	fnmsubs f0, f2, f3, f0
/* 801D8DA4 001D5CE4  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 801D8DA8 001D5CE8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 801D8DAC 001D5CEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D8DB0 001D5CF0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 801D8DB4 001D5CF4  80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 801D8DB8 001D5CF8  80 83 00 04 */	lwz r4, 4(r3)
/* 801D8DBC 001D5CFC  48 1E 00 C5 */	bl "createTanekira___Q23efx13TPkEffectTaneFP10Vector3<f>"
/* 801D8DC0 001D5D00  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 801D8DC4 001D5D04  38 80 00 04 */	li r4, 4
/* 801D8DC8 001D5D08  38 A0 00 00 */	li r5, 0
/* 801D8DCC 001D5D0C  48 24 FE BD */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801D8DD0 001D5D10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D8DD4 001D5D14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D8DD8 001D5D18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D8DDC 001D5D1C  7C 08 03 A6 */	mtlr r0
/* 801D8DE0 001D5D20  38 21 00 20 */	addi r1, r1, 0x20
/* 801D8DE4 001D5D24  4E 80 00 20 */	blr 

.global exec__Q34Game12ItemPikihead9FallStateFPQ34Game12ItemPikihead4Item
exec__Q34Game12ItemPikihead9FallStateFPQ34Game12ItemPikihead4Item:
/* 801D8DE8 001D5D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8DEC 001D5D2C  7C 08 02 A6 */	mflr r0
/* 801D8DF0 001D5D30  7C 66 1B 78 */	mr r6, r3
/* 801D8DF4 001D5D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8DF8 001D5D38  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 801D8DFC 001D5D3C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 801D8E00 001D5D40  7C 83 23 78 */	mr r3, r4
/* 801D8E04 001D5D44  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 801D8E08 001D5D48  C0 66 00 14 */	lfs f3, 0x14(r6)
/* 801D8E0C 001D5D4C  4B F6 29 99 */	bl applyAirDrag__Q24Game8CreatureFfff
/* 801D8E10 001D5D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8E14 001D5D54  7C 08 03 A6 */	mtlr r0
/* 801D8E18 001D5D58  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8E1C 001D5D5C  4E 80 00 20 */	blr 

.global cleanup__Q34Game12ItemPikihead9FallStateFPQ34Game12ItemPikihead4Item
cleanup__Q34Game12ItemPikihead9FallStateFPQ34Game12ItemPikihead4Item:
/* 801D8E20 001D5D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8E24 001D5D64  7C 08 02 A6 */	mflr r0
/* 801D8E28 001D5D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8E2C 001D5D6C  80 64 01 E0 */	lwz r3, 0x1e0(r4)
/* 801D8E30 001D5D70  48 1E 00 B1 */	bl killTanekira___Q23efx13TPkEffectTaneFv
/* 801D8E34 001D5D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8E38 001D5D78  7C 08 03 A6 */	mtlr r0
/* 801D8E3C 001D5D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8E40 001D5D80  4E 80 00 20 */	blr 

.global onPlatCollision__Q34Game12ItemPikihead9FallStateFPQ34Game12ItemPikihead4ItemRQ24Game9PlatEvent
onPlatCollision__Q34Game12ItemPikihead9FallStateFPQ34Game12ItemPikihead4ItemRQ24Game9PlatEvent:
/* 801D8E44 001D5D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8E48 001D5D88  7C 08 02 A6 */	mflr r0
/* 801D8E4C 001D5D8C  7C 83 23 78 */	mr r3, r4
/* 801D8E50 001D5D90  38 80 00 00 */	li r4, 0
/* 801D8E54 001D5D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8E58 001D5D98  4B F6 22 99 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
/* 801D8E5C 001D5D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8E60 001D5DA0  7C 08 03 A6 */	mtlr r0
/* 801D8E64 001D5DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8E68 001D5DA8  4E 80 00 20 */	blr 

.global onBounce__Q34Game12ItemPikihead9FallStateFPQ34Game12ItemPikihead4ItemPQ23Sys8Triangle
onBounce__Q34Game12ItemPikihead9FallStateFPQ34Game12ItemPikihead4ItemPQ23Sys8Triangle:
/* 801D8E6C 001D5DAC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801D8E70 001D5DB0  7C 08 02 A6 */	mflr r0
/* 801D8E74 001D5DB4  90 01 01 04 */	stw r0, 0x104(r1)
/* 801D8E78 001D5DB8  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 801D8E7C 001D5DBC  7C 9F 23 78 */	mr r31, r4
/* 801D8E80 001D5DC0  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 801D8E84 001D5DC4  7C 7E 1B 78 */	mr r30, r3
/* 801D8E88 001D5DC8  7F E3 FB 78 */	mr r3, r31
/* 801D8E8C 001D5DCC  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 801D8E90 001D5DD0  7C BD 2B 78 */	mr r29, r5
/* 801D8E94 001D5DD4  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D8E98 001D5DD8  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 801D8E9C 001D5DDC  7D 89 03 A6 */	mtctr r12
/* 801D8EA0 001D5DE0  4E 80 04 21 */	bctrl 
/* 801D8EA4 001D5DE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D8EA8 001D5DE8  41 82 02 98 */	beq lbl_801D9140
/* 801D8EAC 001D5DEC  7F E4 FB 78 */	mr r4, r31
/* 801D8EB0 001D5DF0  38 61 00 20 */	addi r3, r1, 0x20
/* 801D8EB4 001D5DF4  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D8EB8 001D5DF8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D8EBC 001D5DFC  7D 89 03 A6 */	mtctr r12
/* 801D8EC0 001D5E00  4E 80 04 21 */	bctrl 
/* 801D8EC4 001D5E04  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801D8EC8 001D5E08  28 1D 00 00 */	cmplwi r29, 0
/* 801D8ECC 001D5E0C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801D8ED0 001D5E10  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801D8ED4 001D5E14  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801D8ED8 001D5E18  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801D8EDC 001D5E1C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801D8EE0 001D5E20  41 82 00 24 */	beq lbl_801D8F04
/* 801D8EE4 001D5E24  38 7D 00 5C */	addi r3, r29, 0x5c
/* 801D8EE8 001D5E28  48 24 35 65 */	bl isBald__Q27MapCode4CodeFv
/* 801D8EEC 001D5E2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D8EF0 001D5E30  41 82 00 14 */	beq lbl_801D8F04
/* 801D8EF4 001D5E34  7F E3 FB 78 */	mr r3, r31
/* 801D8EF8 001D5E38  38 80 00 00 */	li r4, 0
/* 801D8EFC 001D5E3C  4B F6 21 F5 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
/* 801D8F00 001D5E40  48 00 02 40 */	b lbl_801D9140
lbl_801D8F04:
/* 801D8F04 001D5E44  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 801D8F08 001D5E48  38 61 00 7C */	addi r3, r1, 0x7c
/* 801D8F0C 001D5E4C  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 801D8F10 001D5E50  38 81 00 4C */	addi r4, r1, 0x4c
/* 801D8F14 001D5E54  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 801D8F18 001D5E58  C0 02 B4 68 */	lfs f0, lbl_805197C8@sda21(r2)
/* 801D8F1C 001D5E5C  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801D8F20 001D5E60  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801D8F24 001D5E64  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801D8F28 001D5E68  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801D8F2C 001D5E6C  48 05 54 75 */	bl __ct__Q24Game15CellIteratorArgFRQ23Sys6Sphere
/* 801D8F30 001D5E70  38 61 00 9C */	addi r3, r1, 0x9c
/* 801D8F34 001D5E74  38 81 00 7C */	addi r4, r1, 0x7c
/* 801D8F38 001D5E78  48 05 54 A9 */	bl __ct__Q24Game12CellIteratorFRQ24Game15CellIteratorArg
/* 801D8F3C 001D5E7C  38 61 00 9C */	addi r3, r1, 0x9c
/* 801D8F40 001D5E80  48 05 55 1D */	bl first__Q24Game12CellIteratorFv
/* 801D8F44 001D5E84  48 00 00 BC */	b lbl_801D9000
lbl_801D8F48:
/* 801D8F48 001D5E88  38 61 00 9C */	addi r3, r1, 0x9c
/* 801D8F4C 001D5E8C  48 05 55 F9 */	bl __ml__Q24Game12CellIteratorFv
/* 801D8F50 001D5E90  A0 03 01 28 */	lhz r0, 0x128(r3)
/* 801D8F54 001D5E94  28 00 04 0A */	cmplwi r0, 0x40a
/* 801D8F58 001D5E98  41 82 00 14 */	beq lbl_801D8F6C
/* 801D8F5C 001D5E9C  28 00 04 0C */	cmplwi r0, 0x40c
/* 801D8F60 001D5EA0  41 82 00 0C */	beq lbl_801D8F6C
/* 801D8F64 001D5EA4  28 00 04 05 */	cmplwi r0, 0x405
/* 801D8F68 001D5EA8  40 82 00 90 */	bne lbl_801D8FF8
lbl_801D8F6C:
/* 801D8F6C 001D5EAC  7C 64 1B 78 */	mr r4, r3
/* 801D8F70 001D5EB0  38 61 00 14 */	addi r3, r1, 0x14
/* 801D8F74 001D5EB4  81 84 00 00 */	lwz r12, 0(r4)
/* 801D8F78 001D5EB8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D8F7C 001D5EBC  7D 89 03 A6 */	mtctr r12
/* 801D8F80 001D5EC0  4E 80 04 21 */	bctrl 
/* 801D8F84 001D5EC4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801D8F88 001D5EC8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801D8F8C 001D5ECC  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 801D8F90 001D5ED0  EC 81 00 28 */	fsubs f4, f1, f0
/* 801D8F94 001D5ED4  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 801D8F98 001D5ED8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801D8F9C 001D5EDC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801D8FA0 001D5EE0  EC 63 10 28 */	fsubs f3, f3, f2
/* 801D8FA4 001D5EE4  EC 84 01 32 */	fmuls f4, f4, f4
/* 801D8FA8 001D5EE8  EC 41 00 28 */	fsubs f2, f1, f0
/* 801D8FAC 001D5EEC  C0 02 B4 6C */	lfs f0, lbl_805197CC@sda21(r2)
/* 801D8FB0 001D5EF0  EC 23 20 FA */	fmadds f1, f3, f3, f4
/* 801D8FB4 001D5EF4  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801D8FB8 001D5EF8  EC 22 08 2A */	fadds f1, f2, f1
/* 801D8FBC 001D5EFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D8FC0 001D5F00  40 81 00 14 */	ble lbl_801D8FD4
/* 801D8FC4 001D5F04  40 81 00 14 */	ble lbl_801D8FD8
/* 801D8FC8 001D5F08  FC 00 08 34 */	frsqrte f0, f1
/* 801D8FCC 001D5F0C  EC 20 00 72 */	fmuls f1, f0, f1
/* 801D8FD0 001D5F10  48 00 00 08 */	b lbl_801D8FD8
lbl_801D8FD4:
/* 801D8FD4 001D5F14  FC 20 00 90 */	fmr f1, f0
lbl_801D8FD8:
/* 801D8FD8 001D5F18  C0 02 B4 68 */	lfs f0, lbl_805197C8@sda21(r2)
/* 801D8FDC 001D5F1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D8FE0 001D5F20  4C 40 13 82 */	cror 2, 0, 2
/* 801D8FE4 001D5F24  40 82 00 14 */	bne lbl_801D8FF8
/* 801D8FE8 001D5F28  7F E3 FB 78 */	mr r3, r31
/* 801D8FEC 001D5F2C  38 80 00 00 */	li r4, 0
/* 801D8FF0 001D5F30  4B F6 21 01 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
/* 801D8FF4 001D5F34  48 00 01 4C */	b lbl_801D9140
lbl_801D8FF8:
/* 801D8FF8 001D5F38  38 61 00 9C */	addi r3, r1, 0x9c
/* 801D8FFC 001D5F3C  48 05 55 05 */	bl next__Q24Game12CellIteratorFv
lbl_801D9000:
/* 801D9000 001D5F40  38 61 00 9C */	addi r3, r1, 0x9c
/* 801D9004 001D5F44  48 05 55 31 */	bl isDone__Q24Game12CellIteratorFv
/* 801D9008 001D5F48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D900C 001D5F4C  41 82 FF 3C */	beq lbl_801D8F48
/* 801D9010 001D5F50  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 801D9014 001D5F54  7F E3 FB 78 */	mr r3, r31
/* 801D9018 001D5F58  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 801D901C 001D5F5C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801D9020 001D5F60  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 801D9024 001D5F64  38 80 00 00 */	li r4, 0
/* 801D9028 001D5F68  C0 02 B4 54 */	lfs f0, lbl_805197B4@sda21(r2)
/* 801D902C 001D5F6C  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 801D9030 001D5F70  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801D9034 001D5F74  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 801D9038 001D5F78  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801D903C 001D5F7C  4B F6 2B 01 */	bl checkWater__Q24Game8CreatureFPQ24Game8WaterBoxRQ23Sys6Sphere
/* 801D9040 001D5F80  28 03 00 00 */	cmplwi r3, 0
/* 801D9044 001D5F84  41 82 00 BC */	beq lbl_801D9100
/* 801D9048 001D5F88  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 801D904C 001D5F8C  3C A0 80 4B */	lis r5, __vt__Q23efx5TBase@ha
/* 801D9050 001D5F90  80 81 00 60 */	lwz r4, 0x60(r1)
/* 801D9054 001D5F94  39 45 A7 F8 */	addi r10, r5, __vt__Q23efx5TBase@l
/* 801D9058 001D5F98  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801D905C 001D5F9C  3C C0 80 4E */	lis r6, __vt__Q23efx8TSimple2@ha
/* 801D9060 001D5FA0  90 61 00 08 */	stw r3, 8(r1)
/* 801D9064 001D5FA4  3C 60 80 4B */	lis r3, __vt__Q23efx3Arg@ha
/* 801D9068 001D5FA8  38 A3 A7 EC */	addi r5, r3, __vt__Q23efx3Arg@l
/* 801D906C 001D5FAC  C0 02 B4 70 */	lfs f0, lbl_805197D0@sda21(r2)
/* 801D9070 001D5FB0  38 E0 00 00 */	li r7, 0
/* 801D9074 001D5FB4  90 81 00 0C */	stw r4, 0xc(r1)
/* 801D9078 001D5FB8  C0 61 00 08 */	lfs f3, 8(r1)
/* 801D907C 001D5FBC  3C 80 80 4F */	lis r4, __vt__Q23efx10TEnemyDive@ha
/* 801D9080 001D5FC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801D9084 001D5FC4  3C 60 80 4B */	lis r3, __vt__Q23efx8ArgScale@ha
/* 801D9088 001D5FC8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801D908C 001D5FCC  39 20 01 59 */	li r9, 0x159
/* 801D9090 001D5FD0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801D9094 001D5FD4  39 00 01 5A */	li r8, 0x15a
/* 801D9098 001D5FD8  91 41 00 2C */	stw r10, 0x2c(r1)
/* 801D909C 001D5FDC  39 46 6A 64 */	addi r10, r6, __vt__Q23efx8TSimple2@l
/* 801D90A0 001D5FE0  38 C4 85 E8 */	addi r6, r4, __vt__Q23efx10TEnemyDive@l
/* 801D90A4 001D5FE4  38 03 A2 DC */	addi r0, r3, __vt__Q23efx8ArgScale@l
/* 801D90A8 001D5FE8  91 41 00 2C */	stw r10, 0x2c(r1)
/* 801D90AC 001D5FEC  38 61 00 2C */	addi r3, r1, 0x2c
/* 801D90B0 001D5FF0  38 81 00 68 */	addi r4, r1, 0x68
/* 801D90B4 001D5FF4  90 A1 00 68 */	stw r5, 0x68(r1)
/* 801D90B8 001D5FF8  B1 21 00 30 */	sth r9, 0x30(r1)
/* 801D90BC 001D5FFC  B1 01 00 32 */	sth r8, 0x32(r1)
/* 801D90C0 001D6000  90 E1 00 34 */	stw r7, 0x34(r1)
/* 801D90C4 001D6004  90 E1 00 38 */	stw r7, 0x38(r1)
/* 801D90C8 001D6008  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 801D90CC 001D600C  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 801D90D0 001D6010  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 801D90D4 001D6014  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 801D90D8 001D6018  90 01 00 68 */	stw r0, 0x68(r1)
/* 801D90DC 001D601C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801D90E0 001D6020  48 1E F7 F9 */	bl create__Q23efx10TEnemyDiveFPQ23efx3Arg
/* 801D90E4 001D6024  7F E3 FB 78 */	mr r3, r31
/* 801D90E8 001D6028  38 80 38 0B */	li r4, 0x380b
/* 801D90EC 001D602C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D90F0 001D6030  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801D90F4 001D6034  7D 89 03 A6 */	mtctr r12
/* 801D90F8 001D6038  4E 80 04 21 */	bctrl 
/* 801D90FC 001D603C  48 00 00 24 */	b lbl_801D9120
lbl_801D9100:
/* 801D9100 001D6040  38 61 00 5C */	addi r3, r1, 0x5c
/* 801D9104 001D6044  48 1D E6 A9 */	bl "createSimplePkAp__3efxFR10Vector3<f>"
/* 801D9108 001D6048  7F E3 FB 78 */	mr r3, r31
/* 801D910C 001D604C  38 80 28 17 */	li r4, 0x2817
/* 801D9110 001D6050  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D9114 001D6054  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801D9118 001D6058  7D 89 03 A6 */	mtctr r12
/* 801D911C 001D605C  4E 80 04 21 */	bctrl 
lbl_801D9120:
/* 801D9120 001D6060  7F C3 F3 78 */	mr r3, r30
/* 801D9124 001D6064  7F E4 FB 78 */	mr r4, r31
/* 801D9128 001D6068  81 9E 00 00 */	lwz r12, 0(r30)
/* 801D912C 001D606C  38 A0 00 01 */	li r5, 1
/* 801D9130 001D6070  38 C0 00 00 */	li r6, 0
/* 801D9134 001D6074  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D9138 001D6078  7D 89 03 A6 */	mtctr r12
/* 801D913C 001D607C  4E 80 04 21 */	bctrl 
lbl_801D9140:
/* 801D9140 001D6080  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801D9144 001D6084  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 801D9148 001D6088  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 801D914C 001D608C  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 801D9150 001D6090  7C 08 03 A6 */	mtlr r0
/* 801D9154 001D6094  38 21 01 00 */	addi r1, r1, 0x100
/* 801D9158 001D6098  4E 80 00 20 */	blr 

.global "transit__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemiPQ24Game8StateArg"
"transit__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemiPQ24Game8StateArg":
/* 801D915C 001D609C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9160 001D60A0  7C 08 02 A6 */	mflr r0
/* 801D9164 001D60A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9168 001D60A8  80 63 00 08 */	lwz r3, 8(r3)
/* 801D916C 001D60AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9170 001D60B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801D9174 001D60B4  7D 89 03 A6 */	mtctr r12
/* 801D9178 001D60B8  4E 80 04 21 */	bctrl 
/* 801D917C 001D60BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9180 001D60C0  7C 08 03 A6 */	mtlr r0
/* 801D9184 001D60C4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9188 001D60C8  4E 80 00 20 */	blr 

.global init__Q34Game12ItemPikihead9BuryStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg
init__Q34Game12ItemPikihead9BuryStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg:
/* 801D918C 001D60CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9190 001D60D0  7C 08 02 A6 */	mflr r0
/* 801D9194 001D60D4  28 04 00 00 */	cmplwi r4, 0
/* 801D9198 001D60D8  7C 85 23 78 */	mr r5, r4
/* 801D919C 001D60DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D91A0 001D60E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D91A4 001D60E4  7C 7F 1B 78 */	mr r31, r3
/* 801D91A8 001D60E8  41 82 00 08 */	beq lbl_801D91B0
/* 801D91AC 001D60EC  38 A5 01 78 */	addi r5, r5, 0x178
lbl_801D91B0:
/* 801D91B0 001D60F0  38 64 01 A8 */	addi r3, r4, 0x1a8
/* 801D91B4 001D60F4  38 80 00 03 */	li r4, 3
/* 801D91B8 001D60F8  48 24 FA D1 */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801D91BC 001D60FC  38 00 00 00 */	li r0, 0
/* 801D91C0 001D6100  98 1F 00 10 */	stb r0, 0x10(r31)
/* 801D91C4 001D6104  4B EF 03 DD */	bl rand
/* 801D91C8 001D6108  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801D91CC 001D610C  3C 00 43 30 */	lis r0, 0x4330
/* 801D91D0 001D6110  90 61 00 0C */	stw r3, 0xc(r1)
/* 801D91D4 001D6114  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 801D91D8 001D6118  90 01 00 08 */	stw r0, 8(r1)
/* 801D91DC 001D611C  C8 22 B4 60 */	lfd f1, lbl_805197C0@sda21(r2)
/* 801D91E0 001D6120  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D91E4 001D6124  C0 42 B4 50 */	lfs f2, lbl_805197B0@sda21(r2)
/* 801D91E8 001D6128  EC 60 08 28 */	fsubs f3, f0, f1
/* 801D91EC 001D612C  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801D91F0 001D6130  C0 22 B4 74 */	lfs f1, lbl_805197D4@sda21(r2)
/* 801D91F4 001D6134  C0 03 0B D8 */	lfs f0, 0xbd8(r3)
/* 801D91F8 001D6138  EC 43 10 24 */	fdivs f2, f3, f2
/* 801D91FC 001D613C  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 801D9200 001D6140  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 801D9204 001D6144  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D9208 001D6148  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D920C 001D614C  7C 08 03 A6 */	mtlr r0
/* 801D9210 001D6150  38 21 00 20 */	addi r1, r1, 0x20
/* 801D9214 001D6154  4E 80 00 20 */	blr 

.global exec__Q34Game12ItemPikihead9BuryStateFPQ34Game12ItemPikihead4Item
exec__Q34Game12ItemPikihead9BuryStateFPQ34Game12ItemPikihead4Item:
/* 801D9218 001D6158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D921C 001D615C  7C 08 02 A6 */	mflr r0
/* 801D9220 001D6160  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9224 001D6164  88 03 00 10 */	lbz r0, 0x10(r3)
/* 801D9228 001D6168  28 00 00 00 */	cmplwi r0, 0
/* 801D922C 001D616C  41 82 00 44 */	beq lbl_801D9270
/* 801D9230 001D6170  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 801D9234 001D6174  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 801D9238 001D6178  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 801D923C 001D617C  C0 02 B4 6C */	lfs f0, lbl_805197CC@sda21(r2)
/* 801D9240 001D6180  EC 22 08 28 */	fsubs f1, f2, f1
/* 801D9244 001D6184  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 801D9248 001D6188  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 801D924C 001D618C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D9250 001D6190  4C 40 13 82 */	cror 2, 0, 2
/* 801D9254 001D6194  40 82 00 1C */	bne lbl_801D9270
/* 801D9258 001D6198  81 83 00 00 */	lwz r12, 0(r3)
/* 801D925C 001D619C  38 A0 00 04 */	li r5, 4
/* 801D9260 001D61A0  38 C0 00 00 */	li r6, 0
/* 801D9264 001D61A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D9268 001D61A8  7D 89 03 A6 */	mtctr r12
/* 801D926C 001D61AC  4E 80 04 21 */	bctrl 
lbl_801D9270:
/* 801D9270 001D61B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9274 001D61B4  7C 08 03 A6 */	mtlr r0
/* 801D9278 001D61B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D927C 001D61BC  4E 80 00 20 */	blr 

.global cleanup__Q34Game12ItemPikihead9BuryStateFPQ34Game12ItemPikihead4Item
cleanup__Q34Game12ItemPikihead9BuryStateFPQ34Game12ItemPikihead4Item:
/* 801D9280 001D61C0  4E 80 00 20 */	blr 

.global onKeyEvent__Q34Game12ItemPikihead9BuryStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent
onKeyEvent__Q34Game12ItemPikihead9BuryStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent:
/* 801D9284 001D61C4  38 00 00 01 */	li r0, 1
/* 801D9288 001D61C8  98 03 00 10 */	stb r0, 0x10(r3)
/* 801D928C 001D61CC  4E 80 00 20 */	blr 

.global init__Q34Game12ItemPikihead9TaneStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg
init__Q34Game12ItemPikihead9TaneStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg:
/* 801D9290 001D61D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9294 001D61D4  7C 08 02 A6 */	mflr r0
/* 801D9298 001D61D8  28 04 00 00 */	cmplwi r4, 0
/* 801D929C 001D61DC  7C 85 23 78 */	mr r5, r4
/* 801D92A0 001D61E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D92A4 001D61E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D92A8 001D61E8  7C 7F 1B 78 */	mr r31, r3
/* 801D92AC 001D61EC  41 82 00 08 */	beq lbl_801D92B4
/* 801D92B0 001D61F0  38 A5 01 78 */	addi r5, r5, 0x178
lbl_801D92B4:
/* 801D92B4 001D61F4  38 64 01 A8 */	addi r3, r4, 0x1a8
/* 801D92B8 001D61F8  38 80 00 05 */	li r4, 5
/* 801D92BC 001D61FC  48 24 F9 CD */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801D92C0 001D6200  38 00 00 00 */	li r0, 0
/* 801D92C4 001D6204  98 1F 00 10 */	stb r0, 0x10(r31)
/* 801D92C8 001D6208  4B EF 02 D9 */	bl rand
/* 801D92CC 001D620C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801D92D0 001D6210  3C 00 43 30 */	lis r0, 0x4330
/* 801D92D4 001D6214  90 61 00 0C */	stw r3, 0xc(r1)
/* 801D92D8 001D6218  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 801D92DC 001D621C  90 01 00 08 */	stw r0, 8(r1)
/* 801D92E0 001D6220  C8 22 B4 60 */	lfd f1, lbl_805197C0@sda21(r2)
/* 801D92E4 001D6224  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D92E8 001D6228  C0 42 B4 50 */	lfs f2, lbl_805197B0@sda21(r2)
/* 801D92EC 001D622C  EC 60 08 28 */	fsubs f3, f0, f1
/* 801D92F0 001D6230  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801D92F4 001D6234  C0 22 B4 74 */	lfs f1, lbl_805197D4@sda21(r2)
/* 801D92F8 001D6238  C0 03 0C 00 */	lfs f0, 0xc00(r3)
/* 801D92FC 001D623C  EC 43 10 24 */	fdivs f2, f3, f2
/* 801D9300 001D6240  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 801D9304 001D6244  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 801D9308 001D6248  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D930C 001D624C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D9310 001D6250  7C 08 03 A6 */	mtlr r0
/* 801D9314 001D6254  38 21 00 20 */	addi r1, r1, 0x20
/* 801D9318 001D6258  4E 80 00 20 */	blr 

.global exec__Q34Game12ItemPikihead9TaneStateFPQ34Game12ItemPikihead4Item
exec__Q34Game12ItemPikihead9TaneStateFPQ34Game12ItemPikihead4Item:
/* 801D931C 001D625C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9320 001D6260  7C 08 02 A6 */	mflr r0
/* 801D9324 001D6264  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9328 001D6268  88 03 00 10 */	lbz r0, 0x10(r3)
/* 801D932C 001D626C  28 00 00 00 */	cmplwi r0, 0
/* 801D9330 001D6270  41 82 00 44 */	beq lbl_801D9374
/* 801D9334 001D6274  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 801D9338 001D6278  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 801D933C 001D627C  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 801D9340 001D6280  C0 02 B4 6C */	lfs f0, lbl_805197CC@sda21(r2)
/* 801D9344 001D6284  EC 22 08 28 */	fsubs f1, f2, f1
/* 801D9348 001D6288  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 801D934C 001D628C  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 801D9350 001D6290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D9354 001D6294  4C 40 13 82 */	cror 2, 0, 2
/* 801D9358 001D6298  40 82 00 1C */	bne lbl_801D9374
/* 801D935C 001D629C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9360 001D62A0  38 A0 00 04 */	li r5, 4
/* 801D9364 001D62A4  38 C0 00 00 */	li r6, 0
/* 801D9368 001D62A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D936C 001D62AC  7D 89 03 A6 */	mtctr r12
/* 801D9370 001D62B0  4E 80 04 21 */	bctrl 
lbl_801D9374:
/* 801D9374 001D62B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9378 001D62B8  7C 08 03 A6 */	mtlr r0
/* 801D937C 001D62BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9380 001D62C0  4E 80 00 20 */	blr 

.global cleanup__Q34Game12ItemPikihead9TaneStateFPQ34Game12ItemPikihead4Item
cleanup__Q34Game12ItemPikihead9TaneStateFPQ34Game12ItemPikihead4Item:
/* 801D9384 001D62C4  4E 80 00 20 */	blr 

.global onKeyEvent__Q34Game12ItemPikihead9TaneStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent
onKeyEvent__Q34Game12ItemPikihead9TaneStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent:
/* 801D9388 001D62C8  38 00 00 01 */	li r0, 1
/* 801D938C 001D62CC  98 03 00 10 */	stb r0, 0x10(r3)
/* 801D9390 001D62D0  4E 80 00 20 */	blr 

.global init__Q34Game12ItemPikihead11HatugaStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg
init__Q34Game12ItemPikihead11HatugaStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg:
/* 801D9394 001D62D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9398 001D62D8  7C 08 02 A6 */	mflr r0
/* 801D939C 001D62DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D93A0 001D62E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D93A4 001D62E4  7C 9F 23 79 */	or. r31, r4, r4
/* 801D93A8 001D62E8  7F E5 FB 78 */	mr r5, r31
/* 801D93AC 001D62EC  41 82 00 08 */	beq lbl_801D93B4
/* 801D93B0 001D62F0  38 A5 01 78 */	addi r5, r5, 0x178
lbl_801D93B4:
/* 801D93B4 001D62F4  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 801D93B8 001D62F8  38 80 00 01 */	li r4, 1
/* 801D93BC 001D62FC  48 24 F8 CD */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801D93C0 001D6300  7F E3 FB 78 */	mr r3, r31
/* 801D93C4 001D6304  38 80 28 18 */	li r4, 0x2818
/* 801D93C8 001D6308  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D93CC 001D630C  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801D93D0 001D6310  7D 89 03 A6 */	mtctr r12
/* 801D93D4 001D6314  4E 80 04 21 */	bctrl 
/* 801D93D8 001D6318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D93DC 001D631C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D93E0 001D6320  7C 08 03 A6 */	mtlr r0
/* 801D93E4 001D6324  38 21 00 10 */	addi r1, r1, 0x10
/* 801D93E8 001D6328  4E 80 00 20 */	blr 

.global exec__Q34Game12ItemPikihead11HatugaStateFPQ34Game12ItemPikihead4Item
exec__Q34Game12ItemPikihead11HatugaStateFPQ34Game12ItemPikihead4Item:
/* 801D93EC 001D632C  4E 80 00 20 */	blr 

.global cleanup__Q34Game12ItemPikihead11HatugaStateFPQ34Game12ItemPikihead4Item
cleanup__Q34Game12ItemPikihead11HatugaStateFPQ34Game12ItemPikihead4Item:
/* 801D93F0 001D6330  4E 80 00 20 */	blr 

.global onKeyEvent__Q34Game12ItemPikihead11HatugaStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent
onKeyEvent__Q34Game12ItemPikihead11HatugaStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent:
/* 801D93F4 001D6334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D93F8 001D6338  7C 08 02 A6 */	mflr r0
/* 801D93FC 001D633C  38 A0 00 02 */	li r5, 2
/* 801D9400 001D6340  38 C0 00 00 */	li r6, 0
/* 801D9404 001D6344  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9408 001D6348  81 83 00 00 */	lwz r12, 0(r3)
/* 801D940C 001D634C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D9410 001D6350  7D 89 03 A6 */	mtctr r12
/* 801D9414 001D6354  4E 80 04 21 */	bctrl 
/* 801D9418 001D6358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D941C 001D635C  7C 08 03 A6 */	mtlr r0
/* 801D9420 001D6360  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9424 001D6364  4E 80 00 20 */	blr 

.global init__Q34Game12ItemPikihead9WaitStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg
init__Q34Game12ItemPikihead9WaitStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg:
/* 801D9428 001D6368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D942C 001D636C  7C 08 02 A6 */	mflr r0
/* 801D9430 001D6370  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9434 001D6374  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D9438 001D6378  7C 9F 23 78 */	mr r31, r4
/* 801D943C 001D637C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D9440 001D6380  7C 7E 1B 78 */	mr r30, r3
/* 801D9444 001D6384  80 64 01 E0 */	lwz r3, 0x1e0(r4)
/* 801D9448 001D6388  80 83 00 04 */	lwz r4, 4(r3)
/* 801D944C 001D638C  48 1D FA B9 */	bl "createKourin___Q23efx13TPkEffectTaneFP10Vector3<f>"
/* 801D9450 001D6390  28 1F 00 00 */	cmplwi r31, 0
/* 801D9454 001D6394  7F E5 FB 78 */	mr r5, r31
/* 801D9458 001D6398  41 82 00 08 */	beq lbl_801D9460
/* 801D945C 001D639C  38 BF 01 78 */	addi r5, r31, 0x178
lbl_801D9460:
/* 801D9460 001D63A0  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 801D9464 001D63A4  38 80 00 00 */	li r4, 0
/* 801D9468 001D63A8  48 24 F8 21 */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801D946C 001D63AC  A0 1F 01 F6 */	lhz r0, 0x1f6(r31)
/* 801D9470 001D63B0  28 00 00 02 */	cmplwi r0, 2
/* 801D9474 001D63B4  40 82 00 48 */	bne lbl_801D94BC
/* 801D9478 001D63B8  4B EF 01 29 */	bl rand
/* 801D947C 001D63BC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801D9480 001D63C0  3C 00 43 30 */	lis r0, 0x4330
/* 801D9484 001D63C4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801D9488 001D63C8  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 801D948C 001D63CC  90 01 00 08 */	stw r0, 8(r1)
/* 801D9490 001D63D0  C8 22 B4 60 */	lfd f1, lbl_805197C0@sda21(r2)
/* 801D9494 001D63D4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D9498 001D63D8  C0 42 B4 50 */	lfs f2, lbl_805197B0@sda21(r2)
/* 801D949C 001D63DC  EC 60 08 28 */	fsubs f3, f0, f1
/* 801D94A0 001D63E0  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801D94A4 001D63E4  C0 22 B4 74 */	lfs f1, lbl_805197D4@sda21(r2)
/* 801D94A8 001D63E8  C0 03 0C 50 */	lfs f0, 0xc50(r3)
/* 801D94AC 001D63EC  EC 43 10 24 */	fdivs f2, f3, f2
/* 801D94B0 001D63F0  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 801D94B4 001D63F4  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 801D94B8 001D63F8  48 00 00 44 */	b lbl_801D94FC
lbl_801D94BC:
/* 801D94BC 001D63FC  4B EF 00 E5 */	bl rand
/* 801D94C0 001D6400  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801D94C4 001D6404  3C 00 43 30 */	lis r0, 0x4330
/* 801D94C8 001D6408  90 61 00 0C */	stw r3, 0xc(r1)
/* 801D94CC 001D640C  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 801D94D0 001D6410  90 01 00 08 */	stw r0, 8(r1)
/* 801D94D4 001D6414  C8 22 B4 60 */	lfd f1, lbl_805197C0@sda21(r2)
/* 801D94D8 001D6418  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D94DC 001D641C  C0 42 B4 50 */	lfs f2, lbl_805197B0@sda21(r2)
/* 801D94E0 001D6420  EC 60 08 28 */	fsubs f3, f0, f1
/* 801D94E4 001D6424  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801D94E8 001D6428  C0 22 B4 74 */	lfs f1, lbl_805197D4@sda21(r2)
/* 801D94EC 001D642C  C0 03 0C 28 */	lfs f0, 0xc28(r3)
/* 801D94F0 001D6430  EC 43 10 24 */	fdivs f2, f3, f2
/* 801D94F4 001D6434  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 801D94F8 001D6438  D0 1E 00 10 */	stfs f0, 0x10(r30)
lbl_801D94FC:
/* 801D94FC 001D643C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D9500 001D6440  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D9504 001D6444  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D9508 001D6448  7C 08 03 A6 */	mtlr r0
/* 801D950C 001D644C  38 21 00 20 */	addi r1, r1, 0x20
/* 801D9510 001D6450  4E 80 00 20 */	blr 

.global exec__Q34Game12ItemPikihead9WaitStateFPQ34Game12ItemPikihead4Item
exec__Q34Game12ItemPikihead9WaitStateFPQ34Game12ItemPikihead4Item:
/* 801D9514 001D6454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9518 001D6458  7C 08 02 A6 */	mflr r0
/* 801D951C 001D645C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9520 001D6460  80 AD 9B 54 */	lwz r5, moviePlayer__4Game@sda21(r13)
/* 801D9524 001D6464  28 05 00 00 */	cmplwi r5, 0
/* 801D9528 001D6468  41 82 00 10 */	beq lbl_801D9538
/* 801D952C 001D646C  80 05 00 18 */	lwz r0, 0x18(r5)
/* 801D9530 001D6470  2C 00 00 00 */	cmpwi r0, 0
/* 801D9534 001D6474  40 82 00 18 */	bne lbl_801D954C
lbl_801D9538:
/* 801D9538 001D6478  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 801D953C 001D647C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 801D9540 001D6480  C0 05 00 54 */	lfs f0, 0x54(r5)
/* 801D9544 001D6484  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D9548 001D6488  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_801D954C:
/* 801D954C 001D648C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 801D9550 001D6490  C0 02 B4 6C */	lfs f0, lbl_805197CC@sda21(r2)
/* 801D9554 001D6494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D9558 001D6498  4C 40 13 82 */	cror 2, 0, 2
/* 801D955C 001D649C  40 82 00 44 */	bne lbl_801D95A0
/* 801D9560 001D64A0  A0 04 01 F6 */	lhz r0, 0x1f6(r4)
/* 801D9564 001D64A4  28 00 00 02 */	cmplwi r0, 2
/* 801D9568 001D64A8  40 82 00 20 */	bne lbl_801D9588
/* 801D956C 001D64AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9570 001D64B0  38 A0 00 06 */	li r5, 6
/* 801D9574 001D64B4  38 C0 00 00 */	li r6, 0
/* 801D9578 001D64B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D957C 001D64BC  7D 89 03 A6 */	mtctr r12
/* 801D9580 001D64C0  4E 80 04 21 */	bctrl 
/* 801D9584 001D64C4  48 00 00 1C */	b lbl_801D95A0
lbl_801D9588:
/* 801D9588 001D64C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D958C 001D64CC  38 A0 00 05 */	li r5, 5
/* 801D9590 001D64D0  38 C0 00 00 */	li r6, 0
/* 801D9594 001D64D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D9598 001D64D8  7D 89 03 A6 */	mtctr r12
/* 801D959C 001D64DC  4E 80 04 21 */	bctrl 
lbl_801D95A0:
/* 801D95A0 001D64E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D95A4 001D64E4  7C 08 03 A6 */	mtlr r0
/* 801D95A8 001D64E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D95AC 001D64EC  4E 80 00 20 */	blr 

.global cleanup__Q34Game12ItemPikihead9WaitStateFPQ34Game12ItemPikihead4Item
cleanup__Q34Game12ItemPikihead9WaitStateFPQ34Game12ItemPikihead4Item:
/* 801D95B0 001D64F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D95B4 001D64F4  7C 08 02 A6 */	mflr r0
/* 801D95B8 001D64F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D95BC 001D64FC  80 64 01 E0 */	lwz r3, 0x1e0(r4)
/* 801D95C0 001D6500  48 1D F9 A9 */	bl killKourin___Q23efx13TPkEffectTaneFv
/* 801D95C4 001D6504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D95C8 001D6508  7C 08 03 A6 */	mtlr r0
/* 801D95CC 001D650C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D95D0 001D6510  4E 80 00 20 */	blr 

.global onKeyEvent__Q34Game12ItemPikihead9WaitStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent
onKeyEvent__Q34Game12ItemPikihead9WaitStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent:
/* 801D95D4 001D6514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D95D8 001D6518  7C 08 02 A6 */	mflr r0
/* 801D95DC 001D651C  28 04 00 00 */	cmplwi r4, 0
/* 801D95E0 001D6520  7C 85 23 78 */	mr r5, r4
/* 801D95E4 001D6524  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D95E8 001D6528  41 82 00 08 */	beq lbl_801D95F0
/* 801D95EC 001D652C  38 A5 01 78 */	addi r5, r5, 0x178
lbl_801D95F0:
/* 801D95F0 001D6530  38 64 01 A8 */	addi r3, r4, 0x1a8
/* 801D95F4 001D6534  38 80 00 00 */	li r4, 0
/* 801D95F8 001D6538  48 24 F6 91 */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801D95FC 001D653C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9600 001D6540  7C 08 03 A6 */	mtlr r0
/* 801D9604 001D6544  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9608 001D6548  4E 80 00 20 */	blr 

.global init__Q34Game12ItemPikihead9GrowStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg
init__Q34Game12ItemPikihead9GrowStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg:
/* 801D960C 001D654C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9610 001D6550  7C 08 02 A6 */	mflr r0
/* 801D9614 001D6554  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9618 001D6558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D961C 001D655C  7C 9F 23 79 */	or. r31, r4, r4
/* 801D9620 001D6560  7F E5 FB 78 */	mr r5, r31
/* 801D9624 001D6564  41 82 00 08 */	beq lbl_801D962C
/* 801D9628 001D6568  38 A5 01 78 */	addi r5, r5, 0x178
lbl_801D962C:
/* 801D962C 001D656C  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 801D9630 001D6570  38 80 00 06 */	li r4, 6
/* 801D9634 001D6574  48 24 F6 55 */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801D9638 001D6578  80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 801D963C 001D657C  80 83 00 04 */	lwz r4, 4(r3)
/* 801D9640 001D6580  48 1D F9 4D */	bl "createGlow1___Q23efx13TPkEffectTaneFP10Vector3<f>"
/* 801D9644 001D6584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9648 001D6588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D964C 001D658C  7C 08 03 A6 */	mtlr r0
/* 801D9650 001D6590  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9654 001D6594  4E 80 00 20 */	blr 

.global exec__Q34Game12ItemPikihead9GrowStateFPQ34Game12ItemPikihead4Item
exec__Q34Game12ItemPikihead9GrowStateFPQ34Game12ItemPikihead4Item:
/* 801D9658 001D6598  4E 80 00 20 */	blr 

.global cleanup__Q34Game12ItemPikihead9GrowStateFPQ34Game12ItemPikihead4Item
cleanup__Q34Game12ItemPikihead9GrowStateFPQ34Game12ItemPikihead4Item:
/* 801D965C 001D659C  4E 80 00 20 */	blr 

.global onKeyEvent__Q34Game12ItemPikihead9GrowStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent
onKeyEvent__Q34Game12ItemPikihead9GrowStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent:
/* 801D9660 001D65A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9664 001D65A4  7C 08 02 A6 */	mflr r0
/* 801D9668 001D65A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D966C 001D65AC  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 801D9670 001D65B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9674 001D65B4  7C 9F 23 78 */	mr r31, r4
/* 801D9678 001D65B8  28 00 00 02 */	cmplwi r0, 2
/* 801D967C 001D65BC  40 82 00 84 */	bne lbl_801D9700
/* 801D9680 001D65C0  A0 9F 01 F6 */	lhz r4, 0x1f6(r31)
/* 801D9684 001D65C4  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 801D9688 001D65C8  38 03 55 56 */	addi r0, r3, 0x55555556@l
/* 801D968C 001D65CC  38 84 00 01 */	addi r4, r4, 1
/* 801D9690 001D65D0  7C 60 20 96 */	mulhw r3, r0, r4
/* 801D9694 001D65D4  54 60 0F FE */	srwi r0, r3, 0x1f
/* 801D9698 001D65D8  7C 03 02 14 */	add r0, r3, r0
/* 801D969C 001D65DC  1C 00 00 03 */	mulli r0, r0, 3
/* 801D96A0 001D65E0  7C 00 20 50 */	subf r0, r0, r4
/* 801D96A4 001D65E4  B0 1F 01 F6 */	sth r0, 0x1f6(r31)
/* 801D96A8 001D65E8  80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 801D96AC 001D65EC  80 63 00 04 */	lwz r3, 4(r3)
/* 801D96B0 001D65F0  48 1D E5 1D */	bl "createSimpleGlow2__3efxFR10Vector3<f>"
/* 801D96B4 001D65F4  A0 1F 01 F6 */	lhz r0, 0x1f6(r31)
/* 801D96B8 001D65F8  28 00 00 01 */	cmplwi r0, 1
/* 801D96BC 001D65FC  40 82 00 20 */	bne lbl_801D96DC
/* 801D96C0 001D6600  7F E3 FB 78 */	mr r3, r31
/* 801D96C4 001D6604  38 80 28 1A */	li r4, 0x281a
/* 801D96C8 001D6608  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D96CC 001D660C  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801D96D0 001D6610  7D 89 03 A6 */	mtctr r12
/* 801D96D4 001D6614  4E 80 04 21 */	bctrl 
/* 801D96D8 001D6618  48 00 00 40 */	b lbl_801D9718
lbl_801D96DC:
/* 801D96DC 001D661C  28 00 00 02 */	cmplwi r0, 2
/* 801D96E0 001D6620  40 82 00 38 */	bne lbl_801D9718
/* 801D96E4 001D6624  7F E3 FB 78 */	mr r3, r31
/* 801D96E8 001D6628  38 80 28 1B */	li r4, 0x281b
/* 801D96EC 001D662C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D96F0 001D6630  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801D96F4 001D6634  7D 89 03 A6 */	mtctr r12
/* 801D96F8 001D6638  4E 80 04 21 */	bctrl 
/* 801D96FC 001D663C  48 00 00 1C */	b lbl_801D9718
lbl_801D9700:
/* 801D9700 001D6640  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9704 001D6644  38 A0 00 02 */	li r5, 2
/* 801D9708 001D6648  38 C0 00 00 */	li r6, 0
/* 801D970C 001D664C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D9710 001D6650  7D 89 03 A6 */	mtctr r12
/* 801D9714 001D6654  4E 80 04 21 */	bctrl 
lbl_801D9718:
/* 801D9718 001D6658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D971C 001D665C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9720 001D6660  7C 08 03 A6 */	mtlr r0
/* 801D9724 001D6664  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9728 001D6668  4E 80 00 20 */	blr 

.global init__Q34Game12ItemPikihead10SioreStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg
init__Q34Game12ItemPikihead10SioreStateFPQ34Game12ItemPikihead4ItemPQ24Game8StateArg:
/* 801D972C 001D666C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9730 001D6670  7C 08 02 A6 */	mflr r0
/* 801D9734 001D6674  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9738 001D6678  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D973C 001D667C  7C 9F 23 79 */	or. r31, r4, r4
/* 801D9740 001D6680  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D9744 001D6684  7C 7E 1B 78 */	mr r30, r3
/* 801D9748 001D6688  7F E5 FB 78 */	mr r5, r31
/* 801D974C 001D668C  41 82 00 08 */	beq lbl_801D9754
/* 801D9750 001D6690  38 A5 01 78 */	addi r5, r5, 0x178
lbl_801D9754:
/* 801D9754 001D6694  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 801D9758 001D6698  38 80 00 02 */	li r4, 2
/* 801D975C 001D669C  48 24 F5 2D */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801D9760 001D66A0  38 00 00 00 */	li r0, 0
/* 801D9764 001D66A4  98 1E 00 14 */	stb r0, 0x14(r30)
/* 801D9768 001D66A8  4B EE FE 39 */	bl rand
/* 801D976C 001D66AC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801D9770 001D66B0  3C 00 43 30 */	lis r0, 0x4330
/* 801D9774 001D66B4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801D9778 001D66B8  7F E3 FB 78 */	mr r3, r31
/* 801D977C 001D66BC  80 AD 92 F4 */	lwz r5, pikiMgr__4Game@sda21(r13)
/* 801D9780 001D66C0  38 80 28 1C */	li r4, 0x281c
/* 801D9784 001D66C4  90 01 00 08 */	stw r0, 8(r1)
/* 801D9788 001D66C8  C8 22 B4 60 */	lfd f1, lbl_805197C0@sda21(r2)
/* 801D978C 001D66CC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D9790 001D66D0  C0 42 B4 50 */	lfs f2, lbl_805197B0@sda21(r2)
/* 801D9794 001D66D4  EC 60 08 28 */	fsubs f3, f0, f1
/* 801D9798 001D66D8  80 A5 00 6C */	lwz r5, 0x6c(r5)
/* 801D979C 001D66DC  C0 22 B4 74 */	lfs f1, lbl_805197D4@sda21(r2)
/* 801D97A0 001D66E0  C0 05 0C 78 */	lfs f0, 0xc78(r5)
/* 801D97A4 001D66E4  EC 43 10 24 */	fdivs f2, f3, f2
/* 801D97A8 001D66E8  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 801D97AC 001D66EC  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 801D97B0 001D66F0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D97B4 001D66F4  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801D97B8 001D66F8  7D 89 03 A6 */	mtctr r12
/* 801D97BC 001D66FC  4E 80 04 21 */	bctrl 
/* 801D97C0 001D6700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D97C4 001D6704  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D97C8 001D6708  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D97CC 001D670C  7C 08 03 A6 */	mtlr r0
/* 801D97D0 001D6710  38 21 00 20 */	addi r1, r1, 0x20
/* 801D97D4 001D6714  4E 80 00 20 */	blr 

.global exec__Q34Game12ItemPikihead10SioreStateFPQ34Game12ItemPikihead4Item
exec__Q34Game12ItemPikihead10SioreStateFPQ34Game12ItemPikihead4Item:
/* 801D97D8 001D6718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D97DC 001D671C  7C 08 02 A6 */	mflr r0
/* 801D97E0 001D6720  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D97E4 001D6724  88 03 00 14 */	lbz r0, 0x14(r3)
/* 801D97E8 001D6728  28 00 00 00 */	cmplwi r0, 0
/* 801D97EC 001D672C  41 82 00 44 */	beq lbl_801D9830
/* 801D97F0 001D6730  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 801D97F4 001D6734  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 801D97F8 001D6738  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 801D97FC 001D673C  C0 02 B4 6C */	lfs f0, lbl_805197CC@sda21(r2)
/* 801D9800 001D6740  EC 22 08 28 */	fsubs f1, f2, f1
/* 801D9804 001D6744  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 801D9808 001D6748  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 801D980C 001D674C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D9810 001D6750  4C 40 13 82 */	cror 2, 0, 2
/* 801D9814 001D6754  40 82 00 1C */	bne lbl_801D9830
/* 801D9818 001D6758  81 83 00 00 */	lwz r12, 0(r3)
/* 801D981C 001D675C  38 A0 00 01 */	li r5, 1
/* 801D9820 001D6760  38 C0 00 00 */	li r6, 0
/* 801D9824 001D6764  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D9828 001D6768  7D 89 03 A6 */	mtctr r12
/* 801D982C 001D676C  4E 80 04 21 */	bctrl 
lbl_801D9830:
/* 801D9830 001D6770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9834 001D6774  7C 08 03 A6 */	mtlr r0
/* 801D9838 001D6778  38 21 00 10 */	addi r1, r1, 0x10
/* 801D983C 001D677C  4E 80 00 20 */	blr 

.global cleanup__Q34Game12ItemPikihead10SioreStateFPQ34Game12ItemPikihead4Item
cleanup__Q34Game12ItemPikihead10SioreStateFPQ34Game12ItemPikihead4Item:
/* 801D9840 001D6780  4E 80 00 20 */	blr 

.global onKeyEvent__Q34Game12ItemPikihead10SioreStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent
onKeyEvent__Q34Game12ItemPikihead10SioreStateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent:
/* 801D9844 001D6784  38 A0 00 00 */	li r5, 0
/* 801D9848 001D6788  38 00 00 01 */	li r0, 1
/* 801D984C 001D678C  B0 A4 01 F6 */	sth r5, 0x1f6(r4)
/* 801D9850 001D6790  98 03 00 14 */	stb r0, 0x14(r3)
/* 801D9854 001D6794  4E 80 00 20 */	blr 

.global __ct__Q34Game12ItemPikihead4ItemFv
__ct__Q34Game12ItemPikihead4ItemFv:
/* 801D9858 001D6798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D985C 001D679C  7C 08 02 A6 */	mflr r0
/* 801D9860 001D67A0  38 80 04 07 */	li r4, 0x407
/* 801D9864 001D67A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9868 001D67A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D986C 001D67AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D9870 001D67B0  7C 7E 1B 78 */	mr r30, r3
/* 801D9874 001D67B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D9878 001D67B8  4B FF 27 71 */	bl __ct__Q24Game8BaseItemFi
/* 801D987C 001D67BC  3C 60 80 4C */	lis r3, "__vt__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>"@ha
/* 801D9880 001D67C0  38 00 00 00 */	li r0, 0
/* 801D9884 001D67C4  38 83 8B C8 */	addi r4, r3, "__vt__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>"@l
/* 801D9888 001D67C8  38 60 00 1C */	li r3, 0x1c
/* 801D988C 001D67CC  90 9E 00 00 */	stw r4, 0(r30)
/* 801D9890 001D67D0  38 84 01 B0 */	addi r4, r4, 0x1b0
/* 801D9894 001D67D4  90 9E 01 78 */	stw r4, 0x178(r30)
/* 801D9898 001D67D8  90 1E 01 D8 */	stw r0, 0x1d8(r30)
/* 801D989C 001D67DC  90 1E 01 DC */	stw r0, 0x1dc(r30)
/* 801D98A0 001D67E0  4B E4 A6 05 */	bl __nw__FUl
/* 801D98A4 001D67E4  28 03 00 00 */	cmplwi r3, 0
/* 801D98A8 001D67E8  41 82 00 30 */	beq lbl_801D98D8
/* 801D98AC 001D67EC  3C 80 80 4C */	lis r4, "__vt__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>"@ha
/* 801D98B0 001D67F0  3C A0 80 4C */	lis r5, "__vt__Q24Game35ItemFSM<Q34Game12ItemPikihead4Item>"@ha
/* 801D98B4 001D67F4  38 04 8B B0 */	addi r0, r4, "__vt__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>"@l
/* 801D98B8 001D67F8  3C 80 80 4C */	lis r4, __vt__Q34Game12ItemPikihead3FSM@ha
/* 801D98BC 001D67FC  90 03 00 00 */	stw r0, 0(r3)
/* 801D98C0 001D6800  38 C0 FF FF */	li r6, -1
/* 801D98C4 001D6804  38 A5 8B 98 */	addi r5, r5, "__vt__Q24Game35ItemFSM<Q34Game12ItemPikihead4Item>"@l
/* 801D98C8 001D6808  38 04 8F E0 */	addi r0, r4, __vt__Q34Game12ItemPikihead3FSM@l
/* 801D98CC 001D680C  90 C3 00 18 */	stw r6, 0x18(r3)
/* 801D98D0 001D6810  90 A3 00 00 */	stw r5, 0(r3)
/* 801D98D4 001D6814  90 03 00 00 */	stw r0, 0(r3)
lbl_801D98D8:
/* 801D98D8 001D6818  90 7E 01 D8 */	stw r3, 0x1d8(r30)
/* 801D98DC 001D681C  7F C4 F3 78 */	mr r4, r30
/* 801D98E0 001D6820  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 801D98E4 001D6824  81 83 00 00 */	lwz r12, 0(r3)
/* 801D98E8 001D6828  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D98EC 001D682C  7D 89 03 A6 */	mtctr r12
/* 801D98F0 001D6830  4E 80 04 21 */	bctrl 
/* 801D98F4 001D6834  3C 80 80 4C */	lis r4, __vt__Q34Game12ItemPikihead4Item@ha
/* 801D98F8 001D6838  38 60 00 64 */	li r3, 0x64
/* 801D98FC 001D683C  38 84 89 28 */	addi r4, r4, __vt__Q34Game12ItemPikihead4Item@l
/* 801D9900 001D6840  90 9E 00 00 */	stw r4, 0(r30)
/* 801D9904 001D6844  38 04 01 B0 */	addi r0, r4, 0x1b0
/* 801D9908 001D6848  90 1E 01 78 */	stw r0, 0x178(r30)
/* 801D990C 001D684C  4B E4 A5 99 */	bl __nw__FUl
/* 801D9910 001D6850  7C 7F 1B 79 */	or. r31, r3, r3
/* 801D9914 001D6854  41 82 00 D0 */	beq lbl_801D99E4
/* 801D9918 001D6858  38 00 FF FF */	li r0, -1
/* 801D991C 001D685C  3C A0 80 4B */	lis r5, __vt__Q23efx5TBase@ha
/* 801D9920 001D6860  90 1F 00 00 */	stw r0, 0(r31)
/* 801D9924 001D6864  3B A0 00 00 */	li r29, 0
/* 801D9928 001D6868  3C E0 80 4A */	lis r7, __vt__18JPAEmitterCallBack@ha
/* 801D992C 001D686C  3C 60 80 4E */	lis r3, __vt__Q23efx5TSync@ha
/* 801D9930 001D6870  93 BF 00 04 */	stw r29, 4(r31)
/* 801D9934 001D6874  38 C3 69 8C */	addi r6, r3, __vt__Q23efx5TSync@l
/* 801D9938 001D6878  38 07 E2 7C */	addi r0, r7, __vt__18JPAEmitterCallBack@l
/* 801D993C 001D687C  3C 60 80 4E */	lis r3, __vt__Q23efx9TChasePos@ha
/* 801D9940 001D6880  93 BF 00 08 */	stw r29, 8(r31)
/* 801D9944 001D6884  39 63 69 40 */	addi r11, r3, __vt__Q23efx9TChasePos@l
/* 801D9948 001D6888  3C 60 80 4C */	lis r3, __vt__Q23efx8TPkGlow1@ha
/* 801D994C 001D688C  3C 80 80 14 */	lis r4, __ct__Q23efx15ContextChasePosFv@ha
/* 801D9950 001D6890  93 BF 00 0C */	stw r29, 0xc(r31)
/* 801D9954 001D6894  39 03 8B 4C */	addi r8, r3, __vt__Q23efx8TPkGlow1@l
/* 801D9958 001D6898  39 25 A7 F8 */	addi r9, r5, __vt__Q23efx5TBase@l
/* 801D995C 001D689C  3C 60 80 14 */	lis r3, __dt__Q23efx15ContextChasePosFv@ha
/* 801D9960 001D68A0  93 BF 00 10 */	stw r29, 0x10(r31)
/* 801D9964 001D68A4  38 A3 FF FC */	addi r5, r3, __dt__Q23efx15ContextChasePosFv@l
/* 801D9968 001D68A8  38 E6 00 14 */	addi r7, r6, 0x14
/* 801D996C 001D68AC  39 80 02 B2 */	li r12, 0x2b2
/* 801D9970 001D68B0  91 3F 00 14 */	stw r9, 0x14(r31)
/* 801D9974 001D68B4  39 4B 00 14 */	addi r10, r11, 0x14
/* 801D9978 001D68B8  39 20 01 5E */	li r9, 0x15e
/* 801D997C 001D68BC  38 84 00 5C */	addi r4, r4, __ct__Q23efx15ContextChasePosFv@l
/* 801D9980 001D68C0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801D9984 001D68C4  38 08 00 14 */	addi r0, r8, 0x14
/* 801D9988 001D68C8  38 7F 00 28 */	addi r3, r31, 0x28
/* 801D998C 001D68CC  90 DF 00 14 */	stw r6, 0x14(r31)
/* 801D9990 001D68D0  38 C0 00 1C */	li r6, 0x1c
/* 801D9994 001D68D4  90 FF 00 18 */	stw r7, 0x18(r31)
/* 801D9998 001D68D8  38 E0 00 01 */	li r7, 1
/* 801D999C 001D68DC  93 BF 00 1C */	stw r29, 0x1c(r31)
/* 801D99A0 001D68E0  B1 9F 00 20 */	sth r12, 0x20(r31)
/* 801D99A4 001D68E4  9B BF 00 22 */	stb r29, 0x22(r31)
/* 801D99A8 001D68E8  91 7F 00 14 */	stw r11, 0x14(r31)
/* 801D99AC 001D68EC  91 5F 00 18 */	stw r10, 0x18(r31)
/* 801D99B0 001D68F0  93 BF 00 24 */	stw r29, 0x24(r31)
/* 801D99B4 001D68F4  B1 3F 00 20 */	sth r9, 0x20(r31)
/* 801D99B8 001D68F8  91 1F 00 14 */	stw r8, 0x14(r31)
/* 801D99BC 001D68FC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801D99C0 001D6900  4B EE 7E 7D */	bl __construct_array
/* 801D99C4 001D6904  3C 60 80 14 */	lis r3, __ct__Q23efx15ContextChasePosFv@ha
/* 801D99C8 001D6908  3C A0 80 14 */	lis r5, __dt__Q23efx15ContextChasePosFv@ha
/* 801D99CC 001D690C  38 83 00 5C */	addi r4, r3, __ct__Q23efx15ContextChasePosFv@l
/* 801D99D0 001D6910  38 C0 00 1C */	li r6, 0x1c
/* 801D99D4 001D6914  38 7F 00 44 */	addi r3, r31, 0x44
/* 801D99D8 001D6918  38 A5 FF FC */	addi r5, r5, __dt__Q23efx15ContextChasePosFv@l
/* 801D99DC 001D691C  38 E0 00 01 */	li r7, 1
/* 801D99E0 001D6920  4B EE 7E 5D */	bl __construct_array
lbl_801D99E4:
/* 801D99E4 001D6924  93 FE 01 E0 */	stw r31, 0x1e0(r30)
/* 801D99E8 001D6928  38 DE 01 C4 */	addi r6, r30, 0x1c4
/* 801D99EC 001D692C  C0 02 B4 78 */	lfs f0, lbl_805197D8@sda21(r2)
/* 801D99F0 001D6930  38 A0 00 00 */	li r5, 0
/* 801D99F4 001D6934  38 E0 00 00 */	li r7, 0
/* 801D99F8 001D6938  D0 1E 01 D4 */	stfs f0, 0x1d4(r30)
/* 801D99FC 001D693C  80 7E 01 14 */	lwz r3, 0x114(r30)
/* 801D9A00 001D6940  80 9E 01 74 */	lwz r4, 0x174(r30)
/* 801D9A04 001D6944  4B F5 A6 AD */	bl createSingleSphere__8CollTreeFPQ28SysShape9MtxObjectiRQ23Sys6SphereP11CollPartMgr
/* 801D9A08 001D6948  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D9A0C 001D694C  7F C3 F3 78 */	mr r3, r30
/* 801D9A10 001D6950  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D9A14 001D6954  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D9A18 001D6958  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D9A1C 001D695C  7C 08 03 A6 */	mtlr r0
/* 801D9A20 001D6960  38 21 00 20 */	addi r1, r1, 0x20
/* 801D9A24 001D6964  4E 80 00 20 */	blr 

.global __dt__Q23efx8TPkGlow1Fv
__dt__Q23efx8TPkGlow1Fv:
/* 801D9A28 001D6968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9A2C 001D696C  7C 08 02 A6 */	mflr r0
/* 801D9A30 001D6970  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9A34 001D6974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9A38 001D6978  7C 9F 23 78 */	mr r31, r4
/* 801D9A3C 001D697C  93 C1 00 08 */	stw r30, 8(r1)
/* 801D9A40 001D6980  7C 7E 1B 79 */	or. r30, r3, r3
/* 801D9A44 001D6984  41 82 00 64 */	beq lbl_801D9AA8
/* 801D9A48 001D6988  3C 60 80 4C */	lis r3, __vt__Q23efx8TPkGlow1@ha
/* 801D9A4C 001D698C  38 63 8B 4C */	addi r3, r3, __vt__Q23efx8TPkGlow1@l
/* 801D9A50 001D6990  90 7E 00 00 */	stw r3, 0(r30)
/* 801D9A54 001D6994  38 03 00 14 */	addi r0, r3, 0x14
/* 801D9A58 001D6998  90 1E 00 04 */	stw r0, 4(r30)
/* 801D9A5C 001D699C  41 82 00 3C */	beq lbl_801D9A98
/* 801D9A60 001D69A0  3C 60 80 4E */	lis r3, __vt__Q23efx9TChasePos@ha
/* 801D9A64 001D69A4  38 63 69 40 */	addi r3, r3, __vt__Q23efx9TChasePos@l
/* 801D9A68 001D69A8  90 7E 00 00 */	stw r3, 0(r30)
/* 801D9A6C 001D69AC  38 03 00 14 */	addi r0, r3, 0x14
/* 801D9A70 001D69B0  90 1E 00 04 */	stw r0, 4(r30)
/* 801D9A74 001D69B4  41 82 00 24 */	beq lbl_801D9A98
/* 801D9A78 001D69B8  3C 80 80 4E */	lis r4, __vt__Q23efx5TSync@ha
/* 801D9A7C 001D69BC  38 7E 00 04 */	addi r3, r30, 4
/* 801D9A80 001D69C0  38 A4 69 8C */	addi r5, r4, __vt__Q23efx5TSync@l
/* 801D9A84 001D69C4  38 80 00 00 */	li r4, 0
/* 801D9A88 001D69C8  90 BE 00 00 */	stw r5, 0(r30)
/* 801D9A8C 001D69CC  38 05 00 14 */	addi r0, r5, 0x14
/* 801D9A90 001D69D0  90 1E 00 04 */	stw r0, 4(r30)
/* 801D9A94 001D69D4  4B EB 62 09 */	bl __dt__18JPAEmitterCallBackFv
lbl_801D9A98:
/* 801D9A98 001D69D8  7F E0 07 35 */	extsh. r0, r31
/* 801D9A9C 001D69DC  40 81 00 0C */	ble lbl_801D9AA8
/* 801D9AA0 001D69E0  7F C3 F3 78 */	mr r3, r30
/* 801D9AA4 001D69E4  4B E4 A6 11 */	bl __dl__FPv
lbl_801D9AA8:
/* 801D9AA8 001D69E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9AAC 001D69EC  7F C3 F3 78 */	mr r3, r30
/* 801D9AB0 001D69F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9AB4 001D69F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D9AB8 001D69F8  7C 08 03 A6 */	mtlr r0
/* 801D9ABC 001D69FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9AC0 001D6A00  4E 80 00 20 */	blr 

.global onInit__Q34Game12ItemPikihead4ItemFPQ24Game15CreatureInitArg
onInit__Q34Game12ItemPikihead4ItemFPQ24Game15CreatureInitArg:
/* 801D9AC4 001D6A04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9AC8 001D6A08  7C 08 02 A6 */	mflr r0
/* 801D9ACC 001D6A0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9AD0 001D6A10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D9AD4 001D6A14  7C 9F 23 78 */	mr r31, r4
/* 801D9AD8 001D6A18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D9ADC 001D6A1C  7C 7E 1B 78 */	mr r30, r3
/* 801D9AE0 001D6A20  7F C4 F3 78 */	mr r4, r30
/* 801D9AE4 001D6A24  80 6D 94 70 */	lwz r3, mgr__Q24Game12ItemPikihead@sda21(r13)
/* 801D9AE8 001D6A28  48 00 19 59 */	bl "createModel__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
/* 801D9AEC 001D6A2C  90 7E 01 74 */	stw r3, 0x174(r30)
/* 801D9AF0 001D6A30  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 801D9AF4 001D6A34  38 80 00 00 */	li r4, 0
/* 801D9AF8 001D6A38  38 A0 00 00 */	li r5, 0
/* 801D9AFC 001D6A3C  80 CD 94 70 */	lwz r6, mgr__Q24Game12ItemPikihead@sda21(r13)
/* 801D9B00 001D6A40  80 06 00 20 */	lwz r0, 0x20(r6)
/* 801D9B04 001D6A44  90 1E 01 B8 */	stw r0, 0x1b8(r30)
/* 801D9B08 001D6A48  48 24 F1 81 */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801D9B0C 001D6A4C  80 7E 01 14 */	lwz r3, 0x114(r30)
/* 801D9B10 001D6A50  80 9E 01 74 */	lwz r4, 0x174(r30)
/* 801D9B14 001D6A54  4B F5 BF B5 */	bl attachModel__8CollTreeFPQ28SysShape9MtxObject
/* 801D9B18 001D6A58  7F C3 F3 78 */	mr r3, r30
/* 801D9B1C 001D6A5C  38 80 00 00 */	li r4, 0
/* 801D9B20 001D6A60  81 9E 00 00 */	lwz r12, 0(r30)
/* 801D9B24 001D6A64  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 801D9B28 001D6A68  7D 89 03 A6 */	mtctr r12
/* 801D9B2C 001D6A6C  4E 80 04 21 */	bctrl 
/* 801D9B30 001D6A70  28 1F 00 00 */	cmplwi r31, 0
/* 801D9B34 001D6A74  41 82 00 4C */	beq lbl_801D9B80
/* 801D9B38 001D6A78  80 1F 00 04 */	lwz r0, 4(r31)
/* 801D9B3C 001D6A7C  B0 1E 01 F4 */	sth r0, 0x1f4(r30)
/* 801D9B40 001D6A80  80 1F 00 04 */	lwz r0, 4(r31)
/* 801D9B44 001D6A84  2C 00 FF FF */	cmpwi r0, -1
/* 801D9B48 001D6A88  40 82 00 0C */	bne lbl_801D9B54
/* 801D9B4C 001D6A8C  38 00 00 00 */	li r0, 0
/* 801D9B50 001D6A90  B0 1E 01 F4 */	sth r0, 0x1f4(r30)
lbl_801D9B54:
/* 801D9B54 001D6A94  C0 1F 00 08 */	lfs f0, 8(r31)
/* 801D9B58 001D6A98  D0 1E 01 90 */	stfs f0, 0x190(r30)
/* 801D9B5C 001D6A9C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 801D9B60 001D6AA0  D0 1E 01 94 */	stfs f0, 0x194(r30)
/* 801D9B64 001D6AA4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 801D9B68 001D6AA8  D0 1E 01 98 */	stfs f0, 0x198(r30)
/* 801D9B6C 001D6AAC  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 801D9B70 001D6AB0  B0 1E 01 F6 */	sth r0, 0x1f6(r30)
/* 801D9B74 001D6AB4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 801D9B78 001D6AB8  D0 1E 01 E4 */	stfs f0, 0x1e4(r30)
/* 801D9B7C 001D6ABC  48 00 00 54 */	b lbl_801D9BD0
lbl_801D9B80:
/* 801D9B80 001D6AC0  4B EE FA 21 */	bl rand
/* 801D9B84 001D6AC4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801D9B88 001D6AC8  3C 60 43 30 */	lis r3, 0x4330
/* 801D9B8C 001D6ACC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D9B90 001D6AD0  38 00 00 00 */	li r0, 0
/* 801D9B94 001D6AD4  C8 62 B4 60 */	lfd f3, lbl_805197C0@sda21(r2)
/* 801D9B98 001D6AD8  90 61 00 08 */	stw r3, 8(r1)
/* 801D9B9C 001D6ADC  C0 42 B4 50 */	lfs f2, lbl_805197B0@sda21(r2)
/* 801D9BA0 001D6AE0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D9BA4 001D6AE4  C0 22 B4 7C */	lfs f1, lbl_805197DC@sda21(r2)
/* 801D9BA8 001D6AE8  EC 60 18 28 */	fsubs f3, f0, f3
/* 801D9BAC 001D6AEC  C0 02 B4 80 */	lfs f0, lbl_805197E0@sda21(r2)
/* 801D9BB0 001D6AF0  EC 43 10 24 */	fdivs f2, f3, f2
/* 801D9BB4 001D6AF4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 801D9BB8 001D6AF8  FC 20 08 1E */	fctiwz f1, f1
/* 801D9BBC 001D6AFC  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 801D9BC0 001D6B00  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801D9BC4 001D6B04  B0 7E 01 F4 */	sth r3, 0x1f4(r30)
/* 801D9BC8 001D6B08  B0 1E 01 F6 */	sth r0, 0x1f6(r30)
/* 801D9BCC 001D6B0C  D0 1E 01 E4 */	stfs f0, 0x1e4(r30)
lbl_801D9BD0:
/* 801D9BD0 001D6B10  80 7E 01 E0 */	lwz r3, 0x1e0(r30)
/* 801D9BD4 001D6B14  48 1D F2 8D */	bl init__Q23efx13TPkEffectTaneFv
/* 801D9BD8 001D6B18  A0 1E 01 F4 */	lhz r0, 0x1f4(r30)
/* 801D9BDC 001D6B1C  3C 60 80 48 */	lis r3, lbl_8048081C@ha
/* 801D9BE0 001D6B20  80 FE 01 E0 */	lwz r7, 0x1e0(r30)
/* 801D9BE4 001D6B24  38 83 08 1C */	addi r4, r3, lbl_8048081C@l
/* 801D9BE8 001D6B28  38 DE 01 9C */	addi r6, r30, 0x19c
/* 801D9BEC 001D6B2C  38 BE 01 E8 */	addi r5, r30, 0x1e8
/* 801D9BF0 001D6B30  90 07 00 00 */	stw r0, 0(r7)
/* 801D9BF4 001D6B34  38 1E 01 38 */	addi r0, r30, 0x138
/* 801D9BF8 001D6B38  80 7E 01 E0 */	lwz r3, 0x1e0(r30)
/* 801D9BFC 001D6B3C  90 C3 00 08 */	stw r6, 8(r3)
/* 801D9C00 001D6B40  80 7E 01 E0 */	lwz r3, 0x1e0(r30)
/* 801D9C04 001D6B44  90 A3 00 04 */	stw r5, 4(r3)
/* 801D9C08 001D6B48  80 7E 01 E0 */	lwz r3, 0x1e0(r30)
/* 801D9C0C 001D6B4C  90 03 00 10 */	stw r0, 0x10(r3)
/* 801D9C10 001D6B50  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801D9C14 001D6B54  48 26 53 D1 */	bl getJoint__Q28SysShape5ModelFPc
/* 801D9C18 001D6B58  48 24 FC 89 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 801D9C1C 001D6B5C  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 801D9C20 001D6B60  28 1F 00 00 */	cmplwi r31, 0
/* 801D9C24 001D6B64  90 64 00 0C */	stw r3, 0xc(r4)
/* 801D9C28 001D6B68  41 82 00 34 */	beq lbl_801D9C5C
/* 801D9C2C 001D6B6C  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 801D9C30 001D6B70  28 00 00 00 */	cmplwi r0, 0
/* 801D9C34 001D6B74  41 82 00 28 */	beq lbl_801D9C5C
/* 801D9C38 001D6B78  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 801D9C3C 001D6B7C  7F C4 F3 78 */	mr r4, r30
/* 801D9C40 001D6B80  38 A0 00 04 */	li r5, 4
/* 801D9C44 001D6B84  38 C0 00 00 */	li r6, 0
/* 801D9C48 001D6B88  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9C4C 001D6B8C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801D9C50 001D6B90  7D 89 03 A6 */	mtctr r12
/* 801D9C54 001D6B94  4E 80 04 21 */	bctrl 
/* 801D9C58 001D6B98  48 00 00 24 */	b lbl_801D9C7C
lbl_801D9C5C:
/* 801D9C5C 001D6B9C  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 801D9C60 001D6BA0  7F C4 F3 78 */	mr r4, r30
/* 801D9C64 001D6BA4  38 A0 00 00 */	li r5, 0
/* 801D9C68 001D6BA8  38 C0 00 00 */	li r6, 0
/* 801D9C6C 001D6BAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9C70 001D6BB0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801D9C74 001D6BB4  7D 89 03 A6 */	mtctr r12
/* 801D9C78 001D6BB8  4E 80 04 21 */	bctrl 
lbl_801D9C7C:
/* 801D9C7C 001D6BBC  7F C3 F3 78 */	mr r3, r30
/* 801D9C80 001D6BC0  38 80 00 01 */	li r4, 1
/* 801D9C84 001D6BC4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801D9C88 001D6BC8  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801D9C8C 001D6BCC  7D 89 03 A6 */	mtctr r12
/* 801D9C90 001D6BD0  4E 80 04 21 */	bctrl 
/* 801D9C94 001D6BD4  28 1F 00 00 */	cmplwi r31, 0
/* 801D9C98 001D6BD8  41 82 00 20 */	beq lbl_801D9CB8
/* 801D9C9C 001D6BDC  80 1F 00 04 */	lwz r0, 4(r31)
/* 801D9CA0 001D6BE0  2C 00 FF FF */	cmpwi r0, -1
/* 801D9CA4 001D6BE4  41 82 00 14 */	beq lbl_801D9CB8
/* 801D9CA8 001D6BE8  3C 60 80 51 */	lis r3, mePikis__Q24Game8GameStat@ha
/* 801D9CAC 001D6BEC  A0 9E 01 F4 */	lhz r4, 0x1f4(r30)
/* 801D9CB0 001D6BF0  38 63 26 0C */	addi r3, r3, mePikis__Q24Game8GameStat@l
/* 801D9CB4 001D6BF4  4B FF 74 E9 */	bl inc__Q34Game8GameStat11PikiCounterFi
lbl_801D9CB8:
/* 801D9CB8 001D6BF8  7F C3 F3 78 */	mr r3, r30
/* 801D9CBC 001D6BFC  38 80 00 09 */	li r4, 9
/* 801D9CC0 001D6C00  38 A0 00 00 */	li r5, 0
/* 801D9CC4 001D6C04  48 04 48 C1 */	bl entry__Q25Radar3MgrFPQ24Game15TPositionObjectQ25Radar10cRadarTypeUl
/* 801D9CC8 001D6C08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D9CCC 001D6C0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D9CD0 001D6C10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D9CD4 001D6C14  7C 08 03 A6 */	mtlr r0
/* 801D9CD8 001D6C18  38 21 00 20 */	addi r1, r1, 0x20
/* 801D9CDC 001D6C1C  4E 80 00 20 */	blr 

.global "start__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemiPQ24Game8StateArg"
"start__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemiPQ24Game8StateArg":
/* 801D9CE0 001D6C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9CE4 001D6C24  7C 08 02 A6 */	mflr r0
/* 801D9CE8 001D6C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9CEC 001D6C2C  38 00 00 00 */	li r0, 0
/* 801D9CF0 001D6C30  90 04 01 DC */	stw r0, 0x1dc(r4)
/* 801D9CF4 001D6C34  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9CF8 001D6C38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801D9CFC 001D6C3C  7D 89 03 A6 */	mtctr r12
/* 801D9D00 001D6C40  4E 80 04 21 */	bctrl 
/* 801D9D04 001D6C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9D08 001D6C48  7C 08 03 A6 */	mtlr r0
/* 801D9D0C 001D6C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9D10 001D6C50  4E 80 00 20 */	blr 

.global onKill__Q34Game12ItemPikihead4ItemFPQ24Game15CreatureKillArg
onKill__Q34Game12ItemPikihead4ItemFPQ24Game15CreatureKillArg:
/* 801D9D14 001D6C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9D18 001D6C58  7C 08 02 A6 */	mflr r0
/* 801D9D1C 001D6C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9D20 001D6C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9D24 001D6C64  7C 9F 23 78 */	mr r31, r4
/* 801D9D28 001D6C68  93 C1 00 08 */	stw r30, 8(r1)
/* 801D9D2C 001D6C6C  7C 7E 1B 78 */	mr r30, r3
/* 801D9D30 001D6C70  48 04 48 C5 */	bl exit__Q25Radar3MgrFPQ24Game15TPositionObject
/* 801D9D34 001D6C74  80 7E 01 DC */	lwz r3, 0x1dc(r30)
/* 801D9D38 001D6C78  28 03 00 00 */	cmplwi r3, 0
/* 801D9D3C 001D6C7C  41 82 00 18 */	beq lbl_801D9D54
/* 801D9D40 001D6C80  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9D44 001D6C84  7F C4 F3 78 */	mr r4, r30
/* 801D9D48 001D6C88  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801D9D4C 001D6C8C  7D 89 03 A6 */	mtctr r12
/* 801D9D50 001D6C90  4E 80 04 21 */	bctrl 
lbl_801D9D54:
/* 801D9D54 001D6C94  80 6D 94 70 */	lwz r3, mgr__Q24Game12ItemPikihead@sda21(r13)
/* 801D9D58 001D6C98  7F C4 F3 78 */	mr r4, r30
/* 801D9D5C 001D6C9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9D60 001D6CA0  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 801D9D64 001D6CA4  7D 89 03 A6 */	mtctr r12
/* 801D9D68 001D6CA8  4E 80 04 21 */	bctrl 
/* 801D9D6C 001D6CAC  28 1F 00 00 */	cmplwi r31, 0
/* 801D9D70 001D6CB0  41 82 00 10 */	beq lbl_801D9D80
/* 801D9D74 001D6CB4  80 1F 00 04 */	lwz r0, 4(r31)
/* 801D9D78 001D6CB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801D9D7C 001D6CBC  40 82 00 14 */	bne lbl_801D9D90
lbl_801D9D80:
/* 801D9D80 001D6CC0  3C 60 80 51 */	lis r3, mePikis__Q24Game8GameStat@ha
/* 801D9D84 001D6CC4  A0 9E 01 F4 */	lhz r4, 0x1f4(r30)
/* 801D9D88 001D6CC8  38 63 26 0C */	addi r3, r3, mePikis__Q24Game8GameStat@l
/* 801D9D8C 001D6CCC  4B FF 74 91 */	bl dec__Q34Game8GameStat11PikiCounterFi
lbl_801D9D90:
/* 801D9D90 001D6CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9D94 001D6CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9D98 001D6CD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D9D9C 001D6CDC  7C 08 03 A6 */	mtlr r0
/* 801D9DA0 001D6CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9DA4 001D6CE4  4E 80 00 20 */	blr 

.global "kill__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
"kill__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item":
/* 801D9DA8 001D6CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9DAC 001D6CEC  7C 08 02 A6 */	mflr r0
/* 801D9DB0 001D6CF0  38 63 00 4C */	addi r3, r3, 0x4c
/* 801D9DB4 001D6CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9DB8 001D6CF8  48 00 18 21 */	bl "kill__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
/* 801D9DBC 001D6CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9DC0 001D6D00  7C 08 03 A6 */	mtlr r0
/* 801D9DC4 001D6D04  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9DC8 001D6D08  4E 80 00 20 */	blr 

.global "cleanup__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
"cleanup__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item":
/* 801D9DCC 001D6D0C  4E 80 00 20 */	blr 

.global needSave__Q34Game12ItemPikihead4ItemFv
needSave__Q34Game12ItemPikihead4ItemFv:
/* 801D9DD0 001D6D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9DD4 001D6D14  7C 08 02 A6 */	mflr r0
/* 801D9DD8 001D6D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9DDC 001D6D1C  48 00 2A 29 */	bl "getStateID__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>Fv"
/* 801D9DE0 001D6D20  7C 03 00 D0 */	neg r0, r3
/* 801D9DE4 001D6D24  7C 00 1B 78 */	or r0, r0, r3
/* 801D9DE8 001D6D28  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801D9DEC 001D6D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9DF0 001D6D30  7C 08 03 A6 */	mtlr r0
/* 801D9DF4 001D6D34  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9DF8 001D6D38  4E 80 00 20 */	blr 

.global cacheSave__Q34Game12ItemPikihead4ItemFR6Stream
cacheSave__Q34Game12ItemPikihead4ItemFR6Stream:
/* 801D9DFC 001D6D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9E00 001D6D40  7C 08 02 A6 */	mflr r0
/* 801D9E04 001D6D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9E08 001D6D48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9E0C 001D6D4C  7C 9F 23 78 */	mr r31, r4
/* 801D9E10 001D6D50  93 C1 00 08 */	stw r30, 8(r1)
/* 801D9E14 001D6D54  7C 7E 1B 78 */	mr r30, r3
/* 801D9E18 001D6D58  A0 83 01 F6 */	lhz r4, 0x1f6(r3)
/* 801D9E1C 001D6D5C  7F E3 FB 78 */	mr r3, r31
/* 801D9E20 001D6D60  A0 1E 01 F4 */	lhz r0, 0x1f4(r30)
/* 801D9E24 001D6D64  54 84 20 36 */	slwi r4, r4, 4
/* 801D9E28 001D6D68  7C 04 02 14 */	add r0, r4, r0
/* 801D9E2C 001D6D6C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801D9E30 001D6D70  48 23 B8 41 */	bl writeByte__6StreamFUc
/* 801D9E34 001D6D74  7F E4 FB 78 */	mr r4, r31
/* 801D9E38 001D6D78  38 7E 01 9C */	addi r3, r30, 0x19c
/* 801D9E3C 001D6D7C  48 23 7B AD */	bl "write__10Vector3<f>FR6Stream"
/* 801D9E40 001D6D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9E44 001D6D84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9E48 001D6D88  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D9E4C 001D6D8C  7C 08 03 A6 */	mtlr r0
/* 801D9E50 001D6D90  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9E54 001D6D94  4E 80 00 20 */	blr 

.global cacheLoad__Q34Game12ItemPikihead4ItemFR6Stream
cacheLoad__Q34Game12ItemPikihead4ItemFR6Stream:
/* 801D9E58 001D6D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9E5C 001D6D9C  7C 08 02 A6 */	mflr r0
/* 801D9E60 001D6DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9E64 001D6DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9E68 001D6DA8  7C 9F 23 78 */	mr r31, r4
/* 801D9E6C 001D6DAC  93 C1 00 08 */	stw r30, 8(r1)
/* 801D9E70 001D6DB0  7C 7E 1B 78 */	mr r30, r3
/* 801D9E74 001D6DB4  7F E3 FB 78 */	mr r3, r31
/* 801D9E78 001D6DB8  48 23 A6 25 */	bl readByte__6StreamFv
/* 801D9E7C 001D6DBC  54 64 07 3E */	clrlwi r4, r3, 0x1c
/* 801D9E80 001D6DC0  54 60 E7 3E */	rlwinm r0, r3, 0x1c, 0x1c, 0x1f
/* 801D9E84 001D6DC4  B0 9E 01 F4 */	sth r4, 0x1f4(r30)
/* 801D9E88 001D6DC8  7F C4 F3 78 */	mr r4, r30
/* 801D9E8C 001D6DCC  38 A0 00 02 */	li r5, 2
/* 801D9E90 001D6DD0  38 C0 00 00 */	li r6, 0
/* 801D9E94 001D6DD4  B0 1E 01 F6 */	sth r0, 0x1f6(r30)
/* 801D9E98 001D6DD8  A0 1E 01 F4 */	lhz r0, 0x1f4(r30)
/* 801D9E9C 001D6DDC  80 7E 01 E0 */	lwz r3, 0x1e0(r30)
/* 801D9EA0 001D6DE0  90 03 00 00 */	stw r0, 0(r3)
/* 801D9EA4 001D6DE4  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 801D9EA8 001D6DE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9EAC 001D6DEC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801D9EB0 001D6DF0  7D 89 03 A6 */	mtctr r12
/* 801D9EB4 001D6DF4  4E 80 04 21 */	bctrl 
/* 801D9EB8 001D6DF8  7F E4 FB 78 */	mr r4, r31
/* 801D9EBC 001D6DFC  38 7E 01 9C */	addi r3, r30, 0x19c
/* 801D9EC0 001D6E00  48 23 7A D1 */	bl "read__10Vector3<f>FR6Stream"
/* 801D9EC4 001D6E04  7F C3 F3 78 */	mr r3, r30
/* 801D9EC8 001D6E08  38 9E 01 9C */	addi r4, r30, 0x19c
/* 801D9ECC 001D6E0C  38 A0 00 00 */	li r5, 0
/* 801D9ED0 001D6E10  4B F6 12 D9 */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 801D9ED4 001D6E14  3C 60 80 51 */	lis r3, mePikis__Q24Game8GameStat@ha
/* 801D9ED8 001D6E18  A0 9E 01 F4 */	lhz r4, 0x1f4(r30)
/* 801D9EDC 001D6E1C  38 63 26 0C */	addi r3, r3, mePikis__Q24Game8GameStat@l
/* 801D9EE0 001D6E20  4B FF 72 BD */	bl inc__Q34Game8GameStat11PikiCounterFi
/* 801D9EE4 001D6E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9EE8 001D6E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9EEC 001D6E2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D9EF0 001D6E30  7C 08 03 A6 */	mtlr r0
/* 801D9EF4 001D6E34  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9EF8 001D6E38  4E 80 00 20 */	blr 

.global makeTrMatrix__Q34Game12ItemPikihead4ItemFv
makeTrMatrix__Q34Game12ItemPikihead4ItemFv:
/* 801D9EFC 001D6E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9F00 001D6E40  7C 08 02 A6 */	mflr r0
/* 801D9F04 001D6E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9F08 001D6E48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9F0C 001D6E4C  7C 7F 1B 78 */	mr r31, r3
/* 801D9F10 001D6E50  48 00 28 F5 */	bl "getStateID__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>Fv"
/* 801D9F14 001D6E54  2C 03 00 00 */	cmpwi r3, 0
/* 801D9F18 001D6E58  40 82 01 C8 */	bne lbl_801DA0E0
/* 801D9F1C 001D6E5C  C0 FF 01 90 */	lfs f7, 0x190(r31)
/* 801D9F20 001D6E60  C0 7F 01 94 */	lfs f3, 0x194(r31)
/* 801D9F24 001D6E64  EC 07 01 F2 */	fmuls f0, f7, f7
/* 801D9F28 001D6E68  C0 9F 01 98 */	lfs f4, 0x198(r31)
/* 801D9F2C 001D6E6C  EC 43 00 F2 */	fmuls f2, f3, f3
/* 801D9F30 001D6E70  C0 22 B4 6C */	lfs f1, lbl_805197CC@sda21(r2)
/* 801D9F34 001D6E74  EC A4 01 32 */	fmuls f5, f4, f4
/* 801D9F38 001D6E78  EC 00 10 2A */	fadds f0, f0, f2
/* 801D9F3C 001D6E7C  EC 05 00 2A */	fadds f0, f5, f0
/* 801D9F40 001D6E80  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801D9F44 001D6E84  40 81 00 20 */	ble lbl_801D9F64
/* 801D9F48 001D6E88  EC 07 11 FA */	fmadds f0, f7, f7, f2
/* 801D9F4C 001D6E8C  EC 05 00 2A */	fadds f0, f5, f0
/* 801D9F50 001D6E90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801D9F54 001D6E94  40 81 00 14 */	ble lbl_801D9F68
/* 801D9F58 001D6E98  FC 20 00 34 */	frsqrte f1, f0
/* 801D9F5C 001D6E9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D9F60 001D6EA0  48 00 00 08 */	b lbl_801D9F68
lbl_801D9F64:
/* 801D9F64 001D6EA4  FC 00 08 90 */	fmr f0, f1
lbl_801D9F68:
/* 801D9F68 001D6EA8  C0 22 B4 6C */	lfs f1, lbl_805197CC@sda21(r2)
/* 801D9F6C 001D6EAC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801D9F70 001D6EB0  40 81 01 70 */	ble lbl_801DA0E0
/* 801D9F74 001D6EB4  EC 03 00 F2 */	fmuls f0, f3, f3
/* 801D9F78 001D6EB8  EC 44 01 32 */	fmuls f2, f4, f4
/* 801D9F7C 001D6EBC  EC 07 01 FA */	fmadds f0, f7, f7, f0
/* 801D9F80 001D6EC0  EC 42 00 2A */	fadds f2, f2, f0
/* 801D9F84 001D6EC4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801D9F88 001D6EC8  40 81 00 14 */	ble lbl_801D9F9C
/* 801D9F8C 001D6ECC  40 81 00 14 */	ble lbl_801D9FA0
/* 801D9F90 001D6ED0  FC 00 10 34 */	frsqrte f0, f2
/* 801D9F94 001D6ED4  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801D9F98 001D6ED8  48 00 00 08 */	b lbl_801D9FA0
lbl_801D9F9C:
/* 801D9F9C 001D6EDC  FC 40 08 90 */	fmr f2, f1
lbl_801D9FA0:
/* 801D9FA0 001D6EE0  C0 02 B4 6C */	lfs f0, lbl_805197CC@sda21(r2)
/* 801D9FA4 001D6EE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D9FA8 001D6EE8  40 81 00 18 */	ble lbl_801D9FC0
/* 801D9FAC 001D6EEC  C0 02 B4 84 */	lfs f0, lbl_805197E4@sda21(r2)
/* 801D9FB0 001D6EF0  EC 00 10 24 */	fdivs f0, f0, f2
/* 801D9FB4 001D6EF4  EC E7 00 32 */	fmuls f7, f7, f0
/* 801D9FB8 001D6EF8  EC 63 00 32 */	fmuls f3, f3, f0
/* 801D9FBC 001D6EFC  EC 84 00 32 */	fmuls f4, f4, f0
lbl_801D9FC0:
/* 801D9FC0 001D6F00  C0 02 B4 80 */	lfs f0, lbl_805197E0@sda21(r2)
/* 801D9FC4 001D6F04  C0 C2 B4 6C */	lfs f6, lbl_805197CC@sda21(r2)
/* 801D9FC8 001D6F08  EC 84 00 32 */	fmuls f4, f4, f0
/* 801D9FCC 001D6F0C  C0 A2 B4 84 */	lfs f5, lbl_805197E4@sda21(r2)
/* 801D9FD0 001D6F10  EC 63 00 32 */	fmuls f3, f3, f0
/* 801D9FD4 001D6F14  EC 47 00 32 */	fmuls f2, f7, f0
/* 801D9FD8 001D6F18  EC E4 01 B2 */	fmuls f7, f4, f6
/* 801D9FDC 001D6F1C  EC 23 01 B2 */	fmuls f1, f3, f6
/* 801D9FE0 001D6F20  EC 02 39 7C */	fnmsubs f0, f2, f5, f7
/* 801D9FE4 001D6F24  ED 23 39 78 */	fmsubs f9, f3, f5, f7
/* 801D9FE8 001D6F28  EC 22 09 B8 */	fmsubs f1, f2, f6, f1
/* 801D9FEC 001D6F2C  EC A0 00 32 */	fmuls f5, f0, f0
/* 801D9FF0 001D6F30  EC E1 00 72 */	fmuls f7, f1, f1
/* 801D9FF4 001D6F34  EC A9 2A 7A */	fmadds f5, f9, f9, f5
/* 801D9FF8 001D6F38  EC E7 28 2A */	fadds f7, f7, f5
/* 801D9FFC 001D6F3C  FC 07 30 40 */	fcmpo cr0, f7, f6
/* 801DA000 001D6F40  40 81 00 14 */	ble lbl_801DA014
/* 801DA004 001D6F44  40 81 00 14 */	ble lbl_801DA018
/* 801DA008 001D6F48  FC A0 38 34 */	frsqrte f5, f7
/* 801DA00C 001D6F4C  EC E5 01 F2 */	fmuls f7, f5, f7
/* 801DA010 001D6F50  48 00 00 08 */	b lbl_801DA018
lbl_801DA014:
/* 801DA014 001D6F54  FC E0 30 90 */	fmr f7, f6
lbl_801DA018:
/* 801DA018 001D6F58  C0 A2 B4 6C */	lfs f5, lbl_805197CC@sda21(r2)
/* 801DA01C 001D6F5C  FC 07 28 40 */	fcmpo cr0, f7, f5
/* 801DA020 001D6F60  40 81 00 18 */	ble lbl_801DA038
/* 801DA024 001D6F64  C0 A2 B4 84 */	lfs f5, lbl_805197E4@sda21(r2)
/* 801DA028 001D6F68  EC A5 38 24 */	fdivs f5, f5, f7
/* 801DA02C 001D6F6C  ED 29 01 72 */	fmuls f9, f9, f5
/* 801DA030 001D6F70  EC 00 01 72 */	fmuls f0, f0, f5
/* 801DA034 001D6F74  EC 21 01 72 */	fmuls f1, f1, f5
lbl_801DA038:
/* 801DA038 001D6F78  EC E9 01 32 */	fmuls f7, f9, f4
/* 801DA03C 001D6F7C  C0 A2 B4 6C */	lfs f5, lbl_805197CC@sda21(r2)
/* 801DA040 001D6F80  ED 01 00 F2 */	fmuls f8, f1, f3
/* 801DA044 001D6F84  EC C0 00 B2 */	fmuls f6, f0, f2
/* 801DA048 001D6F88  ED 41 38 B8 */	fmsubs f10, f1, f2, f7
/* 801DA04C 001D6F8C  ED 00 41 38 */	fmsubs f8, f0, f4, f8
/* 801DA050 001D6F90  ED 69 30 F8 */	fmsubs f11, f9, f3, f6
/* 801DA054 001D6F94  EC CA 02 B2 */	fmuls f6, f10, f10
/* 801DA058 001D6F98  EC EB 02 F2 */	fmuls f7, f11, f11
/* 801DA05C 001D6F9C  EC C8 32 3A */	fmadds f6, f8, f8, f6
/* 801DA060 001D6FA0  EC C7 30 2A */	fadds f6, f7, f6
/* 801DA064 001D6FA4  FC 06 28 40 */	fcmpo cr0, f6, f5
/* 801DA068 001D6FA8  40 81 00 14 */	ble lbl_801DA07C
/* 801DA06C 001D6FAC  40 81 00 14 */	ble lbl_801DA080
/* 801DA070 001D6FB0  FC A0 30 34 */	frsqrte f5, f6
/* 801DA074 001D6FB4  EC C5 01 B2 */	fmuls f6, f5, f6
/* 801DA078 001D6FB8  48 00 00 08 */	b lbl_801DA080
lbl_801DA07C:
/* 801DA07C 001D6FBC  FC C0 28 90 */	fmr f6, f5
lbl_801DA080:
/* 801DA080 001D6FC0  C0 A2 B4 6C */	lfs f5, lbl_805197CC@sda21(r2)
/* 801DA084 001D6FC4  FC 06 28 40 */	fcmpo cr0, f6, f5
/* 801DA088 001D6FC8  40 81 00 18 */	ble lbl_801DA0A0
/* 801DA08C 001D6FCC  C0 A2 B4 84 */	lfs f5, lbl_805197E4@sda21(r2)
/* 801DA090 001D6FD0  EC A5 30 24 */	fdivs f5, f5, f6
/* 801DA094 001D6FD4  ED 08 01 72 */	fmuls f8, f8, f5
/* 801DA098 001D6FD8  ED 4A 01 72 */	fmuls f10, f10, f5
/* 801DA09C 001D6FDC  ED 6B 01 72 */	fmuls f11, f11, f5
lbl_801DA0A0:
/* 801DA0A0 001D6FE0  D1 3F 01 38 */	stfs f9, 0x138(r31)
/* 801DA0A4 001D6FE4  D0 1F 01 48 */	stfs f0, 0x148(r31)
/* 801DA0A8 001D6FE8  D0 3F 01 58 */	stfs f1, 0x158(r31)
/* 801DA0AC 001D6FEC  D0 5F 01 3C */	stfs f2, 0x13c(r31)
/* 801DA0B0 001D6FF0  D0 7F 01 4C */	stfs f3, 0x14c(r31)
/* 801DA0B4 001D6FF4  D0 9F 01 5C */	stfs f4, 0x15c(r31)
/* 801DA0B8 001D6FF8  D1 1F 01 40 */	stfs f8, 0x140(r31)
/* 801DA0BC 001D6FFC  D1 5F 01 50 */	stfs f10, 0x150(r31)
/* 801DA0C0 001D7000  D1 7F 01 60 */	stfs f11, 0x160(r31)
/* 801DA0C4 001D7004  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 801DA0C8 001D7008  D0 1F 01 44 */	stfs f0, 0x144(r31)
/* 801DA0CC 001D700C  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 801DA0D0 001D7010  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 801DA0D4 001D7014  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 801DA0D8 001D7018  D0 1F 01 64 */	stfs f0, 0x164(r31)
/* 801DA0DC 001D701C  48 00 00 0C */	b lbl_801DA0E8
lbl_801DA0E0:
/* 801DA0E0 001D7020  7F E3 FB 78 */	mr r3, r31
/* 801DA0E4 001D7024  4B FF 23 A1 */	bl makeTrMatrix__Q24Game8BaseItemFv
lbl_801DA0E8:
/* 801DA0E8 001D7028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA0EC 001D702C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DA0F0 001D7030  7C 08 03 A6 */	mtlr r0
/* 801DA0F4 001D7034  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA0F8 001D7038  4E 80 00 20 */	blr 

.global doAI__Q34Game12ItemPikihead4ItemFv
doAI__Q34Game12ItemPikihead4ItemFv:
/* 801DA0FC 001D703C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DA100 001D7040  7C 08 02 A6 */	mflr r0
/* 801DA104 001D7044  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DA108 001D7048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DA10C 001D704C  93 C1 00 08 */	stw r30, 8(r1)
/* 801DA110 001D7050  7C 7E 1B 78 */	mr r30, r3
/* 801DA114 001D7054  7F C4 F3 78 */	mr r4, r30
/* 801DA118 001D7058  80 63 01 D8 */	lwz r3, 0x1d8(r3)
/* 801DA11C 001D705C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA120 001D7060  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DA124 001D7064  7D 89 03 A6 */	mtctr r12
/* 801DA128 001D7068  4E 80 04 21 */	bctrl 
/* 801DA12C 001D706C  C0 5E 01 E4 */	lfs f2, 0x1e4(r30)
/* 801DA130 001D7070  C0 22 B4 6C */	lfs f1, lbl_805197CC@sda21(r2)
/* 801DA134 001D7074  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801DA138 001D7078  40 81 00 EC */	ble lbl_801DA224
/* 801DA13C 001D707C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801DA140 001D7080  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 801DA144 001D7084  EC 02 00 28 */	fsubs f0, f2, f0
/* 801DA148 001D7088  D0 1E 01 E4 */	stfs f0, 0x1e4(r30)
/* 801DA14C 001D708C  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 801DA150 001D7090  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DA154 001D7094  4C 40 13 82 */	cror 2, 0, 2
/* 801DA158 001D7098  40 82 00 CC */	bne lbl_801DA224
/* 801DA15C 001D709C  38 00 00 01 */	li r0, 1
/* 801DA160 001D70A0  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 801DA164 001D70A4  90 0D 92 F8 */	stw r0, mBirthMode__Q24Game7PikiMgr@sda21(r13)
/* 801DA168 001D70A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA16C 001D70AC  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 801DA170 001D70B0  7D 89 03 A6 */	mtctr r12
/* 801DA174 001D70B4  4E 80 04 21 */	bctrl 
/* 801DA178 001D70B8  38 00 00 00 */	li r0, 0
/* 801DA17C 001D70BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 801DA180 001D70C0  90 0D 92 F8 */	stw r0, mBirthMode__Q24Game7PikiMgr@sda21(r13)
/* 801DA184 001D70C4  41 82 00 84 */	beq lbl_801DA208
/* 801DA188 001D70C8  38 80 00 00 */	li r4, 0
/* 801DA18C 001D70CC  4B F6 0E 3D */	bl init__Q24Game8CreatureFPQ24Game15CreatureInitArg
/* 801DA190 001D70D0  A0 9E 01 F4 */	lhz r4, 0x1f4(r30)
/* 801DA194 001D70D4  7F E3 FB 78 */	mr r3, r31
/* 801DA198 001D70D8  4B F7 04 29 */	bl changeShape__Q24Game4PikiFi
/* 801DA19C 001D70DC  A0 9E 01 F6 */	lhz r4, 0x1f6(r30)
/* 801DA1A0 001D70E0  7F E3 FB 78 */	mr r3, r31
/* 801DA1A4 001D70E4  4B F7 05 CD */	bl changeHappa__Q24Game4PikiFi
/* 801DA1A8 001D70E8  38 00 00 00 */	li r0, 0
/* 801DA1AC 001D70EC  7F E3 FB 78 */	mr r3, r31
/* 801DA1B0 001D70F0  90 1F 02 C4 */	stw r0, 0x2c4(r31)
/* 801DA1B4 001D70F4  38 9E 01 9C */	addi r4, r30, 0x19c
/* 801DA1B8 001D70F8  38 A0 00 00 */	li r5, 0
/* 801DA1BC 001D70FC  4B F6 0F ED */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 801DA1C0 001D7100  80 7F 02 8C */	lwz r3, 0x28c(r31)
/* 801DA1C4 001D7104  7F E4 FB 78 */	mr r4, r31
/* 801DA1C8 001D7108  38 A0 00 11 */	li r5, 0x11
/* 801DA1CC 001D710C  38 C0 00 00 */	li r6, 0
/* 801DA1D0 001D7110  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA1D4 001D7114  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DA1D8 001D7118  7D 89 03 A6 */	mtctr r12
/* 801DA1DC 001D711C  4E 80 04 21 */	bctrl 
/* 801DA1E0 001D7120  7F C3 F3 78 */	mr r3, r30
/* 801DA1E4 001D7124  38 80 00 00 */	li r4, 0
/* 801DA1E8 001D7128  4B F6 0F 09 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
/* 801DA1EC 001D712C  7F C3 F3 78 */	mr r3, r30
/* 801DA1F0 001D7130  38 80 00 00 */	li r4, 0
/* 801DA1F4 001D7134  81 9E 00 00 */	lwz r12, 0(r30)
/* 801DA1F8 001D7138  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801DA1FC 001D713C  7D 89 03 A6 */	mtctr r12
/* 801DA200 001D7140  4E 80 04 21 */	bctrl 
/* 801DA204 001D7144  48 00 00 20 */	b lbl_801DA224
lbl_801DA208:
/* 801DA208 001D7148  3C 60 80 48 */	lis r3, lbl_80480828@ha
/* 801DA20C 001D714C  3C A0 80 48 */	lis r5, lbl_8048083C@ha
/* 801DA210 001D7150  38 63 08 28 */	addi r3, r3, lbl_80480828@l
/* 801DA214 001D7154  38 80 02 5B */	li r4, 0x25b
/* 801DA218 001D7158  38 A5 08 3C */	addi r5, r5, lbl_8048083C@l
/* 801DA21C 001D715C  4C C6 31 82 */	crclr 6
/* 801DA220 001D7160  4B E5 04 21 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_801DA224:
/* 801DA224 001D7164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA228 001D7168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DA22C 001D716C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DA230 001D7170  7C 08 03 A6 */	mtlr r0
/* 801DA234 001D7174  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA238 001D7178  4E 80 00 20 */	blr 

.global changeMaterial__Q34Game12ItemPikihead4ItemFv
changeMaterial__Q34Game12ItemPikihead4ItemFv:
/* 801DA23C 001D717C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DA240 001D7180  7C 08 02 A6 */	mflr r0
/* 801DA244 001D7184  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DA248 001D7188  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DA24C 001D718C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DA250 001D7190  7C 7E 1B 78 */	mr r30, r3
/* 801DA254 001D7194  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DA258 001D7198  93 81 00 10 */	stw r28, 0x10(r1)
/* 801DA25C 001D719C  80 63 01 74 */	lwz r3, 0x174(r3)
/* 801DA260 001D71A0  80 63 00 08 */	lwz r3, 8(r3)
/* 801DA264 001D71A4  80 63 00 04 */	lwz r3, 4(r3)
/* 801DA268 001D71A8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801DA26C 001D71AC  80 C3 00 00 */	lwz r6, 0(r3)
/* 801DA270 001D71B0  28 06 00 00 */	cmplwi r6, 0
/* 801DA274 001D71B4  41 82 00 54 */	beq lbl_801DA2C8
/* 801DA278 001D71B8  A0 9E 01 F4 */	lhz r4, 0x1f4(r30)
/* 801DA27C 001D71BC  3C 60 80 51 */	lis r3, pikiColors__Q24Game4Piki@ha
/* 801DA280 001D71C0  38 03 22 8C */	addi r0, r3, pikiColors__Q24Game4Piki@l
/* 801DA284 001D71C4  38 A1 00 08 */	addi r5, r1, 8
/* 801DA288 001D71C8  54 83 10 3A */	slwi r3, r4, 2
/* 801DA28C 001D71CC  38 80 00 00 */	li r4, 0
/* 801DA290 001D71D0  7D 20 1A 14 */	add r9, r0, r3
/* 801DA294 001D71D4  88 69 00 01 */	lbz r3, 1(r9)
/* 801DA298 001D71D8  88 E9 00 02 */	lbz r7, 2(r9)
/* 801DA29C 001D71DC  89 09 00 03 */	lbz r8, 3(r9)
/* 801DA2A0 001D71E0  88 09 00 00 */	lbz r0, 0(r9)
/* 801DA2A4 001D71E4  B0 61 00 0A */	sth r3, 0xa(r1)
/* 801DA2A8 001D71E8  B0 01 00 08 */	sth r0, 8(r1)
/* 801DA2AC 001D71EC  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 801DA2B0 001D71F0  B1 01 00 0E */	sth r8, 0xe(r1)
/* 801DA2B4 001D71F4  80 66 00 2C */	lwz r3, 0x2c(r6)
/* 801DA2B8 001D71F8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA2BC 001D71FC  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801DA2C0 001D7200  7D 89 03 A6 */	mtctr r12
/* 801DA2C4 001D7204  4E 80 04 21 */	bctrl 
lbl_801DA2C8:
/* 801DA2C8 001D7208  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801DA2CC 001D720C  80 63 00 08 */	lwz r3, 8(r3)
/* 801DA2D0 001D7210  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA2D4 001D7214  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DA2D8 001D7218  7D 89 03 A6 */	mtctr r12
/* 801DA2DC 001D721C  4E 80 04 21 */	bctrl 
/* 801DA2E0 001D7220  3B E0 00 00 */	li r31, 0
/* 801DA2E4 001D7224  48 00 00 68 */	b lbl_801DA34C
lbl_801DA2E8:
/* 801DA2E8 001D7228  80 65 00 C0 */	lwz r3, 0xc0(r5)
/* 801DA2EC 001D722C  57 E0 32 B2 */	rlwinm r0, r31, 6, 0xa, 0x19
/* 801DA2F0 001D7230  57 FC 04 3E */	clrlwi r28, r31, 0x10
/* 801DA2F4 001D7234  7F A3 02 14 */	add r29, r3, r0
/* 801DA2F8 001D7238  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 801DA2FC 001D723C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 801DA300 001D7240  28 00 00 00 */	cmplwi r0, 0
/* 801DA304 001D7244  41 82 00 44 */	beq lbl_801DA348
/* 801DA308 001D7248  7F A3 EB 78 */	mr r3, r29
/* 801DA30C 001D724C  4B E8 5B 09 */	bl beginDiff__12J3DMatPacketFv
/* 801DA310 001D7250  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801DA314 001D7254  57 80 10 3A */	slwi r0, r28, 2
/* 801DA318 001D7258  3C 80 01 00 */	lis r4, 0x100
/* 801DA31C 001D725C  80 63 00 08 */	lwz r3, 8(r3)
/* 801DA320 001D7260  80 63 00 04 */	lwz r3, 4(r3)
/* 801DA324 001D7264  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801DA328 001D7268  7C 63 00 2E */	lwzx r3, r3, r0
/* 801DA32C 001D726C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 801DA330 001D7270  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA334 001D7274  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DA338 001D7278  7D 89 03 A6 */	mtctr r12
/* 801DA33C 001D727C  4E 80 04 21 */	bctrl 
/* 801DA340 001D7280  7F A3 EB 78 */	mr r3, r29
/* 801DA344 001D7284  4B E8 5B 35 */	bl endDiff__12J3DMatPacketFv
lbl_801DA348:
/* 801DA348 001D7288  3B FF 00 01 */	addi r31, r31, 1
lbl_801DA34C:
/* 801DA34C 001D728C  80 9E 01 74 */	lwz r4, 0x174(r30)
/* 801DA350 001D7290  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 801DA354 001D7294  80 A4 00 08 */	lwz r5, 8(r4)
/* 801DA358 001D7298  80 85 00 04 */	lwz r4, 4(r5)
/* 801DA35C 001D729C  A0 04 00 5C */	lhz r0, 0x5c(r4)
/* 801DA360 001D72A0  7C 03 00 40 */	cmplw r3, r0
/* 801DA364 001D72A4  41 80 FF 84 */	blt lbl_801DA2E8
/* 801DA368 001D72A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DA36C 001D72AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DA370 001D72B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DA374 001D72B4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DA378 001D72B8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801DA37C 001D72BC  7C 08 03 A6 */	mtlr r0
/* 801DA380 001D72C0  38 21 00 20 */	addi r1, r1, 0x20
/* 801DA384 001D72C4  4E 80 00 20 */	blr 

.global onKeyEvent__Q34Game12ItemPikihead4ItemFRCQ28SysShape8KeyEvent
onKeyEvent__Q34Game12ItemPikihead4ItemFRCQ28SysShape8KeyEvent:
/* 801DA388 001D72C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DA38C 001D72CC  7C 08 02 A6 */	mflr r0
/* 801DA390 001D72D0  7C 66 1B 78 */	mr r6, r3
/* 801DA394 001D72D4  7C 85 23 78 */	mr r5, r4
/* 801DA398 001D72D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DA39C 001D72DC  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801DA3A0 001D72E0  28 03 00 00 */	cmplwi r3, 0
/* 801DA3A4 001D72E4  41 82 00 18 */	beq lbl_801DA3BC
/* 801DA3A8 001D72E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA3AC 001D72EC  7C C4 33 78 */	mr r4, r6
/* 801DA3B0 001D72F0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DA3B4 001D72F4  7D 89 03 A6 */	mtctr r12
/* 801DA3B8 001D72F8  4E 80 04 21 */	bctrl 
lbl_801DA3BC:
/* 801DA3BC 001D72FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA3C0 001D7300  7C 08 03 A6 */	mtlr r0
/* 801DA3C4 001D7304  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA3C8 001D7308  4E 80 00 20 */	blr 

.global onKeyEvent__Q34Game12ItemPikihead5StateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent
onKeyEvent__Q34Game12ItemPikihead5StateFPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent:
/* 801DA3CC 001D730C  4E 80 00 20 */	blr 

.global updateBoundSphere__Q34Game12ItemPikihead4ItemFv
updateBoundSphere__Q34Game12ItemPikihead4ItemFv:
/* 801DA3D0 001D7310  C0 23 01 9C */	lfs f1, 0x19c(r3)
/* 801DA3D4 001D7314  C0 02 B4 88 */	lfs f0, lbl_805197E8@sda21(r2)
/* 801DA3D8 001D7318  D0 23 01 C4 */	stfs f1, 0x1c4(r3)
/* 801DA3DC 001D731C  C0 23 01 A0 */	lfs f1, 0x1a0(r3)
/* 801DA3E0 001D7320  D0 23 01 C8 */	stfs f1, 0x1c8(r3)
/* 801DA3E4 001D7324  C0 23 01 A4 */	lfs f1, 0x1a4(r3)
/* 801DA3E8 001D7328  D0 23 01 CC */	stfs f1, 0x1cc(r3)
/* 801DA3EC 001D732C  D0 03 01 D0 */	stfs f0, 0x1d0(r3)
/* 801DA3F0 001D7330  4E 80 00 20 */	blr 

.global getLODSphere__Q34Game12ItemPikihead4ItemFRQ23Sys6Sphere
getLODSphere__Q34Game12ItemPikihead4ItemFRQ23Sys6Sphere:
/* 801DA3F4 001D7334  C0 23 01 9C */	lfs f1, 0x19c(r3)
/* 801DA3F8 001D7338  C0 02 B4 8C */	lfs f0, lbl_805197EC@sda21(r2)
/* 801DA3FC 001D733C  D0 24 00 00 */	stfs f1, 0(r4)
/* 801DA400 001D7340  C0 23 01 A0 */	lfs f1, 0x1a0(r3)
/* 801DA404 001D7344  D0 24 00 04 */	stfs f1, 4(r4)
/* 801DA408 001D7348  C0 23 01 A4 */	lfs f1, 0x1a4(r3)
/* 801DA40C 001D734C  D0 24 00 08 */	stfs f1, 8(r4)
/* 801DA410 001D7350  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 801DA414 001D7354  4E 80 00 20 */	blr 

.global onSetPosition__Q34Game12ItemPikihead4ItemFv
onSetPosition__Q34Game12ItemPikihead4ItemFv:
/* 801DA418 001D7358  4E 80 00 20 */	blr 

.global doSimulation__Q34Game12ItemPikihead4ItemFf
doSimulation__Q34Game12ItemPikihead4ItemFf:
/* 801DA41C 001D735C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DA420 001D7360  7C 08 02 A6 */	mflr r0
/* 801DA424 001D7364  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DA428 001D7368  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801DA42C 001D736C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 801DA430 001D7370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DA434 001D7374  7C 7F 1B 78 */	mr r31, r3
/* 801DA438 001D7378  FF E0 08 90 */	fmr f31, f1
/* 801DA43C 001D737C  48 00 23 C9 */	bl "getStateID__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>Fv"
/* 801DA440 001D7380  2C 03 00 00 */	cmpwi r3, 0
/* 801DA444 001D7384  40 82 00 30 */	bne lbl_801DA474
/* 801DA448 001D7388  80 8D 93 F0 */	lwz r4, _aiConstants__4Game@sda21(r13)
/* 801DA44C 001D738C  7F E3 FB 78 */	mr r3, r31
/* 801DA450 001D7390  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 801DA454 001D7394  FC 20 F8 90 */	fmr f1, f31
/* 801DA458 001D7398  C0 44 00 28 */	lfs f2, 0x28(r4)
/* 801DA45C 001D739C  EC 1F 00 BC */	fnmsubs f0, f31, f2, f0
/* 801DA460 001D73A0  D0 1F 01 94 */	stfs f0, 0x194(r31)
/* 801DA464 001D73A4  81 9F 00 00 */	lwz r12, 0(r31)
/* 801DA468 001D73A8  81 8C 01 CC */	lwz r12, 0x1cc(r12)
/* 801DA46C 001D73AC  7D 89 03 A6 */	mtctr r12
/* 801DA470 001D73B0  4E 80 04 21 */	bctrl 
lbl_801DA474:
/* 801DA474 001D73B4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 801DA478 001D73B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DA47C 001D73BC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801DA480 001D73C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DA484 001D73C4  7C 08 03 A6 */	mtlr r0
/* 801DA488 001D73C8  38 21 00 20 */	addi r1, r1, 0x20
/* 801DA48C 001D73CC  4E 80 00 20 */	blr 

.global canPullout__Q34Game12ItemPikihead4ItemFv
canPullout__Q34Game12ItemPikihead4ItemFv:
/* 801DA490 001D73D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DA494 001D73D4  7C 08 02 A6 */	mflr r0
/* 801DA498 001D73D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DA49C 001D73DC  48 00 23 69 */	bl "getStateID__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>Fv"
/* 801DA4A0 001D73E0  20 03 00 02 */	subfic r0, r3, 2
/* 801DA4A4 001D73E4  7C 00 00 34 */	cntlzw r0, r0
/* 801DA4A8 001D73E8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 801DA4AC 001D73EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA4B0 001D73F0  7C 08 03 A6 */	mtlr r0
/* 801DA4B4 001D73F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA4B8 001D73F8  4E 80 00 20 */	blr 

.global interactFue__Q34Game12ItemPikihead4ItemFRQ24Game11InteractFue
interactFue__Q34Game12ItemPikihead4ItemFRQ24Game11InteractFue:
/* 801DA4BC 001D73FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DA4C0 001D7400  7C 08 02 A6 */	mflr r0
/* 801DA4C4 001D7404  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DA4C8 001D7408  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DA4CC 001D740C  7C 7F 1B 78 */	mr r31, r3
/* 801DA4D0 001D7410  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DA4D4 001D7414  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DA4D8 001D7418  93 81 00 10 */	stw r28, 0x10(r1)
/* 801DA4DC 001D741C  7C 9C 23 78 */	mr r28, r4
/* 801DA4E0 001D7420  48 00 23 25 */	bl "getStateID__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>Fv"
/* 801DA4E4 001D7424  20 03 00 02 */	subfic r0, r3, 2
/* 801DA4E8 001D7428  7C 00 00 34 */	cntlzw r0, r0
/* 801DA4EC 001D742C  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 801DA4F0 001D7430  41 82 01 54 */	beq lbl_801DA644
/* 801DA4F4 001D7434  7F E3 FB 78 */	mr r3, r31
/* 801DA4F8 001D7438  81 9F 00 00 */	lwz r12, 0(r31)
/* 801DA4FC 001D743C  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 801DA500 001D7440  7D 89 03 A6 */	mtctr r12
/* 801DA504 001D7444  4E 80 04 21 */	bctrl 
/* 801DA508 001D7448  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DA50C 001D744C  41 82 01 38 */	beq lbl_801DA644
/* 801DA510 001D7450  83 DC 00 04 */	lwz r30, 4(r28)
/* 801DA514 001D7454  7F C3 F3 78 */	mr r3, r30
/* 801DA518 001D7458  4B F6 6F 8D */	bl getOlimarData__Q24Game4NaviFv
/* 801DA51C 001D745C  38 80 00 03 */	li r4, 3
/* 801DA520 001D7460  48 00 BA B1 */	bl hasItem__Q24Game10OlimarDataFi
/* 801DA524 001D7464  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DA528 001D7468  40 82 00 0C */	bne lbl_801DA534
/* 801DA52C 001D746C  38 60 00 00 */	li r3, 0
/* 801DA530 001D7470  48 00 01 18 */	b lbl_801DA648
lbl_801DA534:
/* 801DA534 001D7474  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 801DA538 001D7478  80 03 00 44 */	lwz r0, 0x44(r3)
/* 801DA53C 001D747C  2C 00 00 01 */	cmpwi r0, 1
/* 801DA540 001D7480  40 82 00 1C */	bne lbl_801DA55C
/* 801DA544 001D7484  A0 7F 01 F4 */	lhz r3, 0x1f4(r31)
/* 801DA548 001D7488  A0 1E 02 DC */	lhz r0, 0x2dc(r30)
/* 801DA54C 001D748C  7C 03 00 40 */	cmplw r3, r0
/* 801DA550 001D7490  40 82 00 0C */	bne lbl_801DA55C
/* 801DA554 001D7494  38 60 00 00 */	li r3, 0
/* 801DA558 001D7498  48 00 00 F0 */	b lbl_801DA648
lbl_801DA55C:
/* 801DA55C 001D749C  38 00 00 01 */	li r0, 1
/* 801DA560 001D74A0  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 801DA564 001D74A4  90 0D 92 F8 */	stw r0, mBirthMode__Q24Game7PikiMgr@sda21(r13)
/* 801DA568 001D74A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA56C 001D74AC  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 801DA570 001D74B0  7D 89 03 A6 */	mtctr r12
/* 801DA574 001D74B4  4E 80 04 21 */	bctrl 
/* 801DA578 001D74B8  38 00 00 00 */	li r0, 0
/* 801DA57C 001D74BC  7C 7D 1B 79 */	or. r29, r3, r3
/* 801DA580 001D74C0  90 0D 92 F8 */	stw r0, mBirthMode__Q24Game7PikiMgr@sda21(r13)
/* 801DA584 001D74C4  41 82 00 C0 */	beq lbl_801DA644
/* 801DA588 001D74C8  80 7C 00 04 */	lwz r3, 4(r28)
/* 801DA58C 001D74CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA590 001D74D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DA594 001D74D4  7D 89 03 A6 */	mtctr r12
/* 801DA598 001D74D8  4E 80 04 21 */	bctrl 
/* 801DA59C 001D74DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DA5A0 001D74E0  40 82 00 20 */	bne lbl_801DA5C0
/* 801DA5A4 001D74E4  3C 60 80 48 */	lis r3, lbl_80480828@ha
/* 801DA5A8 001D74E8  3C A0 80 48 */	lis r5, lbl_8048084C@ha
/* 801DA5AC 001D74EC  38 63 08 28 */	addi r3, r3, lbl_80480828@l
/* 801DA5B0 001D74F0  38 80 02 BD */	li r4, 0x2bd
/* 801DA5B4 001D74F4  38 A5 08 4C */	addi r5, r5, lbl_8048084C@l
/* 801DA5B8 001D74F8  4C C6 31 82 */	crclr 6
/* 801DA5BC 001D74FC  4B E5 00 85 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_801DA5C0:
/* 801DA5C0 001D7500  7F A3 EB 78 */	mr r3, r29
/* 801DA5C4 001D7504  38 80 00 00 */	li r4, 0
/* 801DA5C8 001D7508  4B F6 0A 01 */	bl init__Q24Game8CreatureFPQ24Game15CreatureInitArg
/* 801DA5CC 001D750C  A0 9F 01 F4 */	lhz r4, 0x1f4(r31)
/* 801DA5D0 001D7510  7F A3 EB 78 */	mr r3, r29
/* 801DA5D4 001D7514  4B F6 FF ED */	bl changeShape__Q24Game4PikiFi
/* 801DA5D8 001D7518  A0 9F 01 F6 */	lhz r4, 0x1f6(r31)
/* 801DA5DC 001D751C  7F A3 EB 78 */	mr r3, r29
/* 801DA5E0 001D7520  4B F7 01 91 */	bl changeHappa__Q24Game4PikiFi
/* 801DA5E4 001D7524  93 DD 02 C4 */	stw r30, 0x2c4(r29)
/* 801DA5E8 001D7528  7F A3 EB 78 */	mr r3, r29
/* 801DA5EC 001D752C  38 9F 01 9C */	addi r4, r31, 0x19c
/* 801DA5F0 001D7530  38 A0 00 00 */	li r5, 0
/* 801DA5F4 001D7534  4B F6 0B B5 */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 801DA5F8 001D7538  80 7D 02 8C */	lwz r3, 0x28c(r29)
/* 801DA5FC 001D753C  7F A4 EB 78 */	mr r4, r29
/* 801DA600 001D7540  38 A0 00 11 */	li r5, 0x11
/* 801DA604 001D7544  38 C0 00 00 */	li r6, 0
/* 801DA608 001D7548  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA60C 001D754C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DA610 001D7550  7D 89 03 A6 */	mtctr r12
/* 801DA614 001D7554  4E 80 04 21 */	bctrl 
/* 801DA618 001D7558  7F E3 FB 78 */	mr r3, r31
/* 801DA61C 001D755C  38 80 00 00 */	li r4, 0
/* 801DA620 001D7560  4B F6 0A D1 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
/* 801DA624 001D7564  7F E3 FB 78 */	mr r3, r31
/* 801DA628 001D7568  38 80 00 00 */	li r4, 0
/* 801DA62C 001D756C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801DA630 001D7570  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801DA634 001D7574  7D 89 03 A6 */	mtctr r12
/* 801DA638 001D7578  4E 80 04 21 */	bctrl 
/* 801DA63C 001D757C  38 60 00 01 */	li r3, 1
/* 801DA640 001D7580  48 00 00 08 */	b lbl_801DA648
lbl_801DA644:
/* 801DA644 001D7584  38 60 00 00 */	li r3, 0
lbl_801DA648:
/* 801DA648 001D7588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DA64C 001D758C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DA650 001D7590  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DA654 001D7594  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DA658 001D7598  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801DA65C 001D759C  7C 08 03 A6 */	mtlr r0
/* 801DA660 001D75A0  38 21 00 20 */	addi r1, r1, 0x20
/* 801DA664 001D75A4  4E 80 00 20 */	blr 

.global __ct__Q34Game12ItemPikihead3MgrFv
__ct__Q34Game12ItemPikihead3MgrFv:
/* 801DA668 001D75A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DA66C 001D75AC  7C 08 02 A6 */	mflr r0
/* 801DA670 001D75B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DA674 001D75B4  7C 80 07 35 */	extsh. r0, r4
/* 801DA678 001D75B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DA67C 001D75BC  93 C1 00 08 */	stw r30, 8(r1)
/* 801DA680 001D75C0  7C 7E 1B 78 */	mr r30, r3
/* 801DA684 001D75C4  41 82 00 0C */	beq lbl_801DA690
/* 801DA688 001D75C8  38 1E 00 80 */	addi r0, r30, 0x80
/* 801DA68C 001D75CC  90 1E 00 04 */	stw r0, 4(r30)
lbl_801DA690:
/* 801DA690 001D75D0  7F C3 F3 78 */	mr r3, r30
/* 801DA694 001D75D4  38 80 00 00 */	li r4, 0
/* 801DA698 001D75D8  38 A0 00 01 */	li r5, 1
/* 801DA69C 001D75DC  4B FF 26 D5 */	bl __ct__Q24Game11BaseItemMgrFi
/* 801DA6A0 001D75E0  3B FE 00 30 */	addi r31, r30, 0x30
/* 801DA6A4 001D75E4  7F E3 FB 78 */	mr r3, r31
/* 801DA6A8 001D75E8  48 23 6C E9 */	bl __ct__5CNodeFv
/* 801DA6AC 001D75EC  3C 60 80 4B */	lis r3, __vt__16GenericContainer@ha
/* 801DA6B0 001D75F0  3C 80 80 4C */	lis r4, "__vt__37Container<Q34Game12ItemPikihead4Item>"@ha
/* 801DA6B4 001D75F4  38 03 AC DC */	addi r0, r3, __vt__16GenericContainer@l
/* 801DA6B8 001D75F8  3C 60 80 4C */	lis r3, "__vt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DA6BC 001D75FC  90 1F 00 00 */	stw r0, 0(r31)
/* 801DA6C0 001D7600  38 04 88 FC */	addi r0, r4, "__vt__37Container<Q34Game12ItemPikihead4Item>"@l
/* 801DA6C4 001D7604  38 83 88 3C */	addi r4, r3, "__vt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DA6C8 001D7608  38 A0 00 00 */	li r5, 0
/* 801DA6CC 001D760C  90 1F 00 00 */	stw r0, 0(r31)
/* 801DA6D0 001D7610  38 04 00 74 */	addi r0, r4, 0x74
/* 801DA6D4 001D7614  38 7E 00 4C */	addi r3, r30, 0x4c
/* 801DA6D8 001D7618  98 BF 00 18 */	stb r5, 0x18(r31)
/* 801DA6DC 001D761C  90 9E 00 00 */	stw r4, 0(r30)
/* 801DA6E0 001D7620  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801DA6E4 001D7624  48 00 1F 65 */	bl "__ct__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
/* 801DA6E8 001D7628  3C 60 80 4C */	lis r3, __vt__Q34Game12ItemPikihead3Mgr@ha
/* 801DA6EC 001D762C  3C 80 80 48 */	lis r4, lbl_80480858@ha
/* 801DA6F0 001D7630  38 A3 86 74 */	addi r5, r3, __vt__Q34Game12ItemPikihead3Mgr@l
/* 801DA6F4 001D7634  7F C3 F3 78 */	mr r3, r30
/* 801DA6F8 001D7638  90 BE 00 00 */	stw r5, 0(r30)
/* 801DA6FC 001D763C  38 A5 00 74 */	addi r5, r5, 0x74
/* 801DA700 001D7640  38 04 08 58 */	addi r0, r4, lbl_80480858@l
/* 801DA704 001D7644  38 80 00 01 */	li r4, 1
/* 801DA708 001D7648  90 BE 00 30 */	stw r5, 0x30(r30)
/* 801DA70C 001D764C  90 1E 00 08 */	stw r0, 8(r30)
/* 801DA710 001D7650  4B FF 26 BD */	bl setModelSize__Q24Game11BaseItemMgrFi
/* 801DA714 001D7654  3C 80 80 48 */	lis r4, lbl_80480864@ha
/* 801DA718 001D7658  7F C3 F3 78 */	mr r3, r30
/* 801DA71C 001D765C  38 04 08 64 */	addi r0, r4, lbl_80480864@l
/* 801DA720 001D7660  90 1E 00 28 */	stw r0, 0x28(r30)
/* 801DA724 001D7664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DA728 001D7668  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DA72C 001D766C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA730 001D7670  7C 08 03 A6 */	mtlr r0
/* 801DA734 001D7674  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA738 001D7678  4E 80 00 20 */	blr 

.global "__dt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"__dt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DA73C 001D767C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DA740 001D7680  7C 08 02 A6 */	mflr r0
/* 801DA744 001D7684  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DA748 001D7688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DA74C 001D768C  7C 9F 23 78 */	mr r31, r4
/* 801DA750 001D7690  93 C1 00 08 */	stw r30, 8(r1)
/* 801DA754 001D7694  7C 7E 1B 79 */	or. r30, r3, r3
/* 801DA758 001D7698  41 82 00 C8 */	beq lbl_801DA820
/* 801DA75C 001D769C  3C 60 80 4C */	lis r3, "__vt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DA760 001D76A0  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801DA764 001D76A4  38 63 88 3C */	addi r3, r3, "__vt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DA768 001D76A8  90 7E 00 00 */	stw r3, 0(r30)
/* 801DA76C 001D76AC  38 03 00 74 */	addi r0, r3, 0x74
/* 801DA770 001D76B0  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801DA774 001D76B4  41 82 00 68 */	beq lbl_801DA7DC
/* 801DA778 001D76B8  3C 60 80 4C */	lis r3, "__vt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DA77C 001D76BC  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801DA780 001D76C0  38 63 87 B0 */	addi r3, r3, "__vt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DA784 001D76C4  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 801DA788 001D76C8  38 03 00 2C */	addi r0, r3, 0x2c
/* 801DA78C 001D76CC  90 1E 00 68 */	stw r0, 0x68(r30)
/* 801DA790 001D76D0  41 82 00 4C */	beq lbl_801DA7DC
/* 801DA794 001D76D4  3C 60 80 4C */	lis r3, "__vt__37ObjectMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DA798 001D76D8  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801DA79C 001D76DC  38 63 87 34 */	addi r3, r3, "__vt__37ObjectMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DA7A0 001D76E0  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 801DA7A4 001D76E4  38 03 00 2C */	addi r0, r3, 0x2c
/* 801DA7A8 001D76E8  90 1E 00 68 */	stw r0, 0x68(r30)
/* 801DA7AC 001D76EC  41 82 00 30 */	beq lbl_801DA7DC
/* 801DA7B0 001D76F0  3C 60 80 4C */	lis r3, "__vt__37Container<Q34Game12ItemPikihead4Item>"@ha
/* 801DA7B4 001D76F4  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801DA7B8 001D76F8  38 03 88 FC */	addi r0, r3, "__vt__37Container<Q34Game12ItemPikihead4Item>"@l
/* 801DA7BC 001D76FC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 801DA7C0 001D7700  41 82 00 1C */	beq lbl_801DA7DC
/* 801DA7C4 001D7704  3C 80 80 4B */	lis r4, __vt__16GenericContainer@ha
/* 801DA7C8 001D7708  38 7E 00 4C */	addi r3, r30, 0x4c
/* 801DA7CC 001D770C  38 04 AC DC */	addi r0, r4, __vt__16GenericContainer@l
/* 801DA7D0 001D7710  38 80 00 00 */	li r4, 0
/* 801DA7D4 001D7714  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 801DA7D8 001D7718  48 23 6D B1 */	bl __dt__5CNodeFv
lbl_801DA7DC:
/* 801DA7DC 001D771C  34 1E 00 30 */	addic. r0, r30, 0x30
/* 801DA7E0 001D7720  41 82 00 30 */	beq lbl_801DA810
/* 801DA7E4 001D7724  3C 60 80 4C */	lis r3, "__vt__37Container<Q34Game12ItemPikihead4Item>"@ha
/* 801DA7E8 001D7728  34 1E 00 30 */	addic. r0, r30, 0x30
/* 801DA7EC 001D772C  38 03 88 FC */	addi r0, r3, "__vt__37Container<Q34Game12ItemPikihead4Item>"@l
/* 801DA7F0 001D7730  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801DA7F4 001D7734  41 82 00 1C */	beq lbl_801DA810
/* 801DA7F8 001D7738  3C 80 80 4B */	lis r4, __vt__16GenericContainer@ha
/* 801DA7FC 001D773C  38 7E 00 30 */	addi r3, r30, 0x30
/* 801DA800 001D7740  38 04 AC DC */	addi r0, r4, __vt__16GenericContainer@l
/* 801DA804 001D7744  38 80 00 00 */	li r4, 0
/* 801DA808 001D7748  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801DA80C 001D774C  48 23 6D 7D */	bl __dt__5CNodeFv
lbl_801DA810:
/* 801DA810 001D7750  7F E0 07 35 */	extsh. r0, r31
/* 801DA814 001D7754  40 81 00 0C */	ble lbl_801DA820
/* 801DA818 001D7758  7F C3 F3 78 */	mr r3, r30
/* 801DA81C 001D775C  4B E4 98 99 */	bl __dl__FPv
lbl_801DA820:
/* 801DA820 001D7760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA824 001D7764  7F C3 F3 78 */	mr r3, r30
/* 801DA828 001D7768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DA82C 001D776C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DA830 001D7770  7C 08 03 A6 */	mtlr r0
/* 801DA834 001D7774  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA838 001D7778  4E 80 00 20 */	blr 

.global "__dt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"__dt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DA83C 001D777C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DA840 001D7780  7C 08 02 A6 */	mflr r0
/* 801DA844 001D7784  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DA848 001D7788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DA84C 001D778C  7C 9F 23 78 */	mr r31, r4
/* 801DA850 001D7790  93 C1 00 08 */	stw r30, 8(r1)
/* 801DA854 001D7794  7C 7E 1B 79 */	or. r30, r3, r3
/* 801DA858 001D7798  41 82 00 68 */	beq lbl_801DA8C0
/* 801DA85C 001D779C  3C 80 80 4C */	lis r4, "__vt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DA860 001D77A0  38 84 87 B0 */	addi r4, r4, "__vt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DA864 001D77A4  90 9E 00 00 */	stw r4, 0(r30)
/* 801DA868 001D77A8  38 04 00 2C */	addi r0, r4, 0x2c
/* 801DA86C 001D77AC  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 801DA870 001D77B0  41 82 00 40 */	beq lbl_801DA8B0
/* 801DA874 001D77B4  3C 80 80 4C */	lis r4, "__vt__37ObjectMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DA878 001D77B8  38 84 87 34 */	addi r4, r4, "__vt__37ObjectMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DA87C 001D77BC  90 9E 00 00 */	stw r4, 0(r30)
/* 801DA880 001D77C0  38 04 00 2C */	addi r0, r4, 0x2c
/* 801DA884 001D77C4  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 801DA888 001D77C8  41 82 00 28 */	beq lbl_801DA8B0
/* 801DA88C 001D77CC  3C 80 80 4C */	lis r4, "__vt__37Container<Q34Game12ItemPikihead4Item>"@ha
/* 801DA890 001D77D0  38 04 88 FC */	addi r0, r4, "__vt__37Container<Q34Game12ItemPikihead4Item>"@l
/* 801DA894 001D77D4  90 1E 00 00 */	stw r0, 0(r30)
/* 801DA898 001D77D8  41 82 00 18 */	beq lbl_801DA8B0
/* 801DA89C 001D77DC  3C A0 80 4B */	lis r5, __vt__16GenericContainer@ha
/* 801DA8A0 001D77E0  38 80 00 00 */	li r4, 0
/* 801DA8A4 001D77E4  38 05 AC DC */	addi r0, r5, __vt__16GenericContainer@l
/* 801DA8A8 001D77E8  90 1E 00 00 */	stw r0, 0(r30)
/* 801DA8AC 001D77EC  48 23 6C DD */	bl __dt__5CNodeFv
lbl_801DA8B0:
/* 801DA8B0 001D77F0  7F E0 07 35 */	extsh. r0, r31
/* 801DA8B4 001D77F4  40 81 00 0C */	ble lbl_801DA8C0
/* 801DA8B8 001D77F8  7F C3 F3 78 */	mr r3, r30
/* 801DA8BC 001D77FC  4B E4 97 F9 */	bl __dl__FPv
lbl_801DA8C0:
/* 801DA8C0 001D7800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA8C4 001D7804  7F C3 F3 78 */	mr r3, r30
/* 801DA8C8 001D7808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DA8CC 001D780C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DA8D0 001D7810  7C 08 03 A6 */	mtlr r0
/* 801DA8D4 001D7814  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA8D8 001D7818  4E 80 00 20 */	blr 

.global "__dt__37Container<Q34Game12ItemPikihead4Item>Fv"
"__dt__37Container<Q34Game12ItemPikihead4Item>Fv":
/* 801DA8DC 001D781C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DA8E0 001D7820  7C 08 02 A6 */	mflr r0
/* 801DA8E4 001D7824  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DA8E8 001D7828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DA8EC 001D782C  7C 9F 23 78 */	mr r31, r4
/* 801DA8F0 001D7830  93 C1 00 08 */	stw r30, 8(r1)
/* 801DA8F4 001D7834  7C 7E 1B 79 */	or. r30, r3, r3
/* 801DA8F8 001D7838  41 82 00 38 */	beq lbl_801DA930
/* 801DA8FC 001D783C  3C 80 80 4C */	lis r4, "__vt__37Container<Q34Game12ItemPikihead4Item>"@ha
/* 801DA900 001D7840  38 04 88 FC */	addi r0, r4, "__vt__37Container<Q34Game12ItemPikihead4Item>"@l
/* 801DA904 001D7844  90 1E 00 00 */	stw r0, 0(r30)
/* 801DA908 001D7848  41 82 00 18 */	beq lbl_801DA920
/* 801DA90C 001D784C  3C A0 80 4B */	lis r5, __vt__16GenericContainer@ha
/* 801DA910 001D7850  38 80 00 00 */	li r4, 0
/* 801DA914 001D7854  38 05 AC DC */	addi r0, r5, __vt__16GenericContainer@l
/* 801DA918 001D7858  90 1E 00 00 */	stw r0, 0(r30)
/* 801DA91C 001D785C  48 23 6C 6D */	bl __dt__5CNodeFv
lbl_801DA920:
/* 801DA920 001D7860  7F E0 07 35 */	extsh. r0, r31
/* 801DA924 001D7864  40 81 00 0C */	ble lbl_801DA930
/* 801DA928 001D7868  7F C3 F3 78 */	mr r3, r30
/* 801DA92C 001D786C  4B E4 97 89 */	bl __dl__FPv
lbl_801DA930:
/* 801DA930 001D7870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA934 001D7874  7F C3 F3 78 */	mr r3, r30
/* 801DA938 001D7878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DA93C 001D787C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DA940 001D7880  7C 08 03 A6 */	mtlr r0
/* 801DA944 001D7884  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA948 001D7888  4E 80 00 20 */	blr 

.global onLoadResources__Q34Game12ItemPikihead3MgrFv
onLoadResources__Q34Game12ItemPikihead3MgrFv:
/* 801DA94C 001D788C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DA950 001D7890  7C 08 02 A6 */	mflr r0
/* 801DA954 001D7894  3C 80 80 48 */	lis r4, lbl_80480800@ha
/* 801DA958 001D7898  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DA95C 001D789C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DA960 001D78A0  3B E4 08 00 */	addi r31, r4, lbl_80480800@l
/* 801DA964 001D78A4  38 82 B4 90 */	addi r4, r2, lbl_805197F0@sda21
/* 801DA968 001D78A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DA96C 001D78AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DA970 001D78B0  7C 7D 1B 78 */	mr r29, r3
/* 801DA974 001D78B4  4B FF 25 61 */	bl loadArchive__Q24Game11BaseItemMgrFPc
/* 801DA978 001D78B8  7F A3 EB 78 */	mr r3, r29
/* 801DA97C 001D78BC  38 9F 00 80 */	addi r4, r31, 0x80
/* 801DA980 001D78C0  38 A0 00 00 */	li r5, 0
/* 801DA984 001D78C4  3C C0 00 02 */	lis r6, 2
/* 801DA988 001D78C8  4B FF 25 C9 */	bl loadBmd__Q24Game11BaseItemMgrFPciUl
/* 801DA98C 001D78CC  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 801DA990 001D78D0  3C 80 00 04 */	lis r4, 4
/* 801DA994 001D78D4  80 63 00 00 */	lwz r3, 0(r3)
/* 801DA998 001D78D8  4B EA 8F 41 */	bl newSharedDisplayList__12J3DModelDataFUl
/* 801DA99C 001D78DC  7F A3 EB 78 */	mr r3, r29
/* 801DA9A0 001D78E0  38 9F 00 90 */	addi r4, r31, 0x90
/* 801DA9A4 001D78E4  4B FF 28 29 */	bl openTextArc__Q24Game11BaseItemMgrFPc
/* 801DA9A8 001D78E8  7C 60 1B 78 */	mr r0, r3
/* 801DA9AC 001D78EC  7F A3 EB 78 */	mr r3, r29
/* 801DA9B0 001D78F0  7C 1E 03 78 */	mr r30, r0
/* 801DA9B4 001D78F4  38 BF 00 9C */	addi r5, r31, 0x9c
/* 801DA9B8 001D78F8  7F C4 F3 78 */	mr r4, r30
/* 801DA9BC 001D78FC  4B FF 26 41 */	bl loadAnimMgr__Q24Game11BaseItemMgrFP13JKRFileLoaderPc
/* 801DA9C0 001D7900  7F A3 EB 78 */	mr r3, r29
/* 801DA9C4 001D7904  7F C4 F3 78 */	mr r4, r30
/* 801DA9C8 001D7908  4B FF 28 89 */	bl closeTextArc__Q24Game11BaseItemMgrFP10JKRArchive
/* 801DA9CC 001D790C  7F A3 EB 78 */	mr r3, r29
/* 801DA9D0 001D7910  38 80 00 64 */	li r4, 0x64
/* 801DA9D4 001D7914  3C A0 00 08 */	lis r5, 8
/* 801DA9D8 001D7918  48 00 20 79 */	bl "createMgr__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FiUl"
/* 801DA9DC 001D791C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DA9E0 001D7920  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DA9E4 001D7924  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DA9E8 001D7928  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DA9EC 001D792C  7C 08 03 A6 */	mtlr r0
/* 801DA9F0 001D7930  38 21 00 20 */	addi r1, r1, 0x20
/* 801DA9F4 001D7934  4E 80 00 20 */	blr 

.global doSimpleDraw__Q34Game12ItemPikihead3MgrFP8Viewport
doSimpleDraw__Q34Game12ItemPikihead3MgrFP8Viewport:
/* 801DA9F8 001D7938  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801DA9FC 001D793C  7C 08 02 A6 */	mflr r0
/* 801DAA00 001D7940  3C C0 80 51 */	lis r6, j3dSys@ha
/* 801DAA04 001D7944  3C A0 80 4B */	lis r5, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@ha
/* 801DAA08 001D7948  90 01 00 74 */	stw r0, 0x74(r1)
/* 801DAA0C 001D794C  BE E1 00 4C */	stmw r23, 0x4c(r1)
/* 801DAA10 001D7950  7C 79 1B 78 */	mr r25, r3
/* 801DAA14 001D7954  7C 9A 23 78 */	mr r26, r4
/* 801DAA18 001D7958  3B C6 F2 30 */	addi r30, r6, j3dSys@l
/* 801DAA1C 001D795C  3B E5 05 A4 */	addi r31, r5, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@l
/* 801DAA20 001D7960  3B 80 00 00 */	li r28, 0
/* 801DAA24 001D7964  3B A0 00 00 */	li r29, 0
lbl_801DAA28:
/* 801DAA28 001D7968  80 8D 92 F4 */	lwz r4, pikiMgr__4Game@sda21(r13)
/* 801DAA2C 001D796C  38 7D 00 58 */	addi r3, r29, 0x58
/* 801DAA30 001D7970  38 00 00 00 */	li r0, 0
/* 801DAA34 001D7974  7C A4 18 2E */	lwzx r5, r4, r3
/* 801DAA38 001D7978  80 85 00 28 */	lwz r4, 0x28(r5)
/* 801DAA3C 001D797C  80 65 00 A0 */	lwz r3, 0xa0(r5)
/* 801DAA40 001D7980  80 84 00 00 */	lwz r4, 0(r4)
/* 801DAA44 001D7984  83 64 00 58 */	lwz r27, 0x58(r4)
/* 801DAA48 001D7988  90 7E 01 0C */	stw r3, 0x10c(r30)
/* 801DAA4C 001D798C  80 65 00 A4 */	lwz r3, 0xa4(r5)
/* 801DAA50 001D7990  90 7E 01 10 */	stw r3, 0x110(r30)
/* 801DAA54 001D7994  80 65 00 AC */	lwz r3, 0xac(r5)
/* 801DAA58 001D7998  90 7E 01 14 */	stw r3, 0x114(r30)
/* 801DAA5C 001D799C  90 0D 89 70 */	stw r0, sOldVcdVatCmd__8J3DShape@sda21(r13)
/* 801DAA60 001D79A0  48 00 02 E4 */	b lbl_801DAD44
lbl_801DAA64:
/* 801DAA64 001D79A4  7F 63 DB 78 */	mr r3, r27
/* 801DAA68 001D79A8  81 9B 00 00 */	lwz r12, 0(r27)
/* 801DAA6C 001D79AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DAA70 001D79B0  7D 89 03 A6 */	mtctr r12
/* 801DAA74 001D79B4  4E 80 04 21 */	bctrl 
/* 801DAA78 001D79B8  80 7B 00 08 */	lwz r3, 8(r27)
/* 801DAA7C 001D79BC  4B E8 63 C5 */	bl loadPreDrawSetting__8J3DShapeCFv
/* 801DAA80 001D79C0  28 19 00 00 */	cmplwi r25, 0
/* 801DAA84 001D79C4  7F 23 CB 78 */	mr r3, r25
/* 801DAA88 001D79C8  41 82 00 08 */	beq lbl_801DAA90
/* 801DAA8C 001D79CC  38 79 00 30 */	addi r3, r25, 0x30
lbl_801DAA90:
/* 801DAA90 001D79D0  38 00 00 00 */	li r0, 0
/* 801DAA94 001D79D4  93 E1 00 08 */	stw r31, 8(r1)
/* 801DAA98 001D79D8  28 00 00 00 */	cmplwi r0, 0
/* 801DAA9C 001D79DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DAAA0 001D79E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DAAA4 001D79E4  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DAAA8 001D79E8  40 82 00 1C */	bne lbl_801DAAC4
/* 801DAAAC 001D79EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAAB0 001D79F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DAAB4 001D79F4  7D 89 03 A6 */	mtctr r12
/* 801DAAB8 001D79F8  4E 80 04 21 */	bctrl 
/* 801DAABC 001D79FC  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DAAC0 001D7A00  48 00 02 60 */	b lbl_801DAD20
lbl_801DAAC4:
/* 801DAAC4 001D7A04  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAAC8 001D7A08  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DAACC 001D7A0C  7D 89 03 A6 */	mtctr r12
/* 801DAAD0 001D7A10  4E 80 04 21 */	bctrl 
/* 801DAAD4 001D7A14  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DAAD8 001D7A18  48 00 00 58 */	b lbl_801DAB30
lbl_801DAADC:
/* 801DAADC 001D7A1C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DAAE0 001D7A20  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DAAE4 001D7A24  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAAE8 001D7A28  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DAAEC 001D7A2C  7D 89 03 A6 */	mtctr r12
/* 801DAAF0 001D7A30  4E 80 04 21 */	bctrl 
/* 801DAAF4 001D7A34  7C 64 1B 78 */	mr r4, r3
/* 801DAAF8 001D7A38  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DAAFC 001D7A3C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAB00 001D7A40  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DAB04 001D7A44  7D 89 03 A6 */	mtctr r12
/* 801DAB08 001D7A48  4E 80 04 21 */	bctrl 
/* 801DAB0C 001D7A4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DAB10 001D7A50  40 82 02 10 */	bne lbl_801DAD20
/* 801DAB14 001D7A54  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DAB18 001D7A58  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DAB1C 001D7A5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAB20 001D7A60  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DAB24 001D7A64  7D 89 03 A6 */	mtctr r12
/* 801DAB28 001D7A68  4E 80 04 21 */	bctrl 
/* 801DAB2C 001D7A6C  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DAB30:
/* 801DAB30 001D7A70  81 81 00 08 */	lwz r12, 8(r1)
/* 801DAB34 001D7A74  38 61 00 08 */	addi r3, r1, 8
/* 801DAB38 001D7A78  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DAB3C 001D7A7C  7D 89 03 A6 */	mtctr r12
/* 801DAB40 001D7A80  4E 80 04 21 */	bctrl 
/* 801DAB44 001D7A84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DAB48 001D7A88  41 82 FF 94 */	beq lbl_801DAADC
/* 801DAB4C 001D7A8C  48 00 01 D4 */	b lbl_801DAD20
lbl_801DAB50:
/* 801DAB50 001D7A90  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DAB54 001D7A94  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAB58 001D7A98  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DAB5C 001D7A9C  7D 89 03 A6 */	mtctr r12
/* 801DAB60 001D7AA0  4E 80 04 21 */	bctrl 
/* 801DAB64 001D7AA4  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801DAB68 001D7AA8  7C 78 1B 78 */	mr r24, r3
/* 801DAB6C 001D7AAC  A0 63 01 F6 */	lhz r3, 0x1f6(r3)
/* 801DAB70 001D7AB0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801DAB74 001D7AB4  40 82 00 44 */	bne lbl_801DABB8
/* 801DAB78 001D7AB8  3C 80 80 48 */	lis r4, lbl_8048081C@ha
/* 801DAB7C 001D7ABC  80 78 01 74 */	lwz r3, 0x174(r24)
/* 801DAB80 001D7AC0  38 84 08 1C */	addi r4, r4, lbl_8048081C@l
/* 801DAB84 001D7AC4  48 26 44 61 */	bl getJoint__Q28SysShape5ModelFPc
/* 801DAB88 001D7AC8  48 24 ED 19 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 801DAB8C 001D7ACC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 801DAB90 001D7AD0  C0 02 B4 98 */	lfs f0, lbl_805197F8@sda21(r2)
/* 801DAB94 001D7AD4  D0 38 01 E8 */	stfs f1, 0x1e8(r24)
/* 801DAB98 001D7AD8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 801DAB9C 001D7ADC  D0 38 01 EC */	stfs f1, 0x1ec(r24)
/* 801DABA0 001D7AE0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 801DABA4 001D7AE4  D0 38 01 F0 */	stfs f1, 0x1f0(r24)
/* 801DABA8 001D7AE8  C0 38 01 EC */	lfs f1, 0x1ec(r24)
/* 801DABAC 001D7AEC  EC 01 00 2A */	fadds f0, f1, f0
/* 801DABB0 001D7AF0  D0 18 01 EC */	stfs f0, 0x1ec(r24)
/* 801DABB4 001D7AF4  48 00 00 B0 */	b lbl_801DAC64
lbl_801DABB8:
/* 801DABB8 001D7AF8  A0 18 01 F4 */	lhz r0, 0x1f4(r24)
/* 801DABBC 001D7AFC  28 00 00 04 */	cmplwi r0, 4
/* 801DABC0 001D7B00  41 82 00 0C */	beq lbl_801DABCC
/* 801DABC4 001D7B04  28 00 00 03 */	cmplwi r0, 3
/* 801DABC8 001D7B08  40 82 00 10 */	bne lbl_801DABD8
lbl_801DABCC:
/* 801DABCC 001D7B0C  2C 03 00 01 */	cmpwi r3, 1
/* 801DABD0 001D7B10  41 80 00 08 */	blt lbl_801DABD8
/* 801DABD4 001D7B14  38 63 00 02 */	addi r3, r3, 2
lbl_801DABD8:
/* 801DABD8 001D7B18  7C 03 E0 00 */	cmpw r3, r28
/* 801DABDC 001D7B1C  40 82 00 88 */	bne lbl_801DAC64
/* 801DABE0 001D7B20  3C 80 80 48 */	lis r4, lbl_8048081C@ha
/* 801DABE4 001D7B24  80 78 01 74 */	lwz r3, 0x174(r24)
/* 801DABE8 001D7B28  38 84 08 1C */	addi r4, r4, lbl_8048081C@l
/* 801DABEC 001D7B2C  48 26 43 F9 */	bl getJoint__Q28SysShape5ModelFPc
/* 801DABF0 001D7B30  48 24 EC B1 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 801DABF4 001D7B34  7C 77 1B 78 */	mr r23, r3
/* 801DABF8 001D7B38  C0 02 B4 98 */	lfs f0, lbl_805197F8@sda21(r2)
/* 801DABFC 001D7B3C  C0 37 00 0C */	lfs f1, 0xc(r23)
/* 801DAC00 001D7B40  7F 43 D3 78 */	mr r3, r26
/* 801DAC04 001D7B44  38 80 00 01 */	li r4, 1
/* 801DAC08 001D7B48  D0 38 01 E8 */	stfs f1, 0x1e8(r24)
/* 801DAC0C 001D7B4C  C0 37 00 1C */	lfs f1, 0x1c(r23)
/* 801DAC10 001D7B50  D0 38 01 EC */	stfs f1, 0x1ec(r24)
/* 801DAC14 001D7B54  C0 37 00 2C */	lfs f1, 0x2c(r23)
/* 801DAC18 001D7B58  D0 38 01 F0 */	stfs f1, 0x1f0(r24)
/* 801DAC1C 001D7B5C  C0 38 01 EC */	lfs f1, 0x1ec(r24)
/* 801DAC20 001D7B60  EC 01 00 2A */	fadds f0, f1, f0
/* 801DAC24 001D7B64  D0 18 01 EC */	stfs f0, 0x1ec(r24)
/* 801DAC28 001D7B68  48 24 A5 35 */	bl getMatrix__8ViewportFb
/* 801DAC2C 001D7B6C  7E E4 BB 78 */	mr r4, r23
/* 801DAC30 001D7B70  38 A1 00 18 */	addi r5, r1, 0x18
/* 801DAC34 001D7B74  4B F0 F6 CD */	bl PSMTXConcat
/* 801DAC38 001D7B78  38 61 00 18 */	addi r3, r1, 0x18
/* 801DAC3C 001D7B7C  38 80 00 00 */	li r4, 0
/* 801DAC40 001D7B80  4B F0 E9 39 */	bl GXLoadPosMtxImm
/* 801DAC44 001D7B84  38 61 00 18 */	addi r3, r1, 0x18
/* 801DAC48 001D7B88  38 80 00 00 */	li r4, 0
/* 801DAC4C 001D7B8C  4B F0 E9 7D */	bl GXLoadNrmMtxImm
/* 801DAC50 001D7B90  80 7B 00 08 */	lwz r3, 8(r27)
/* 801DAC54 001D7B94  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAC58 001D7B98  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DAC5C 001D7B9C  7D 89 03 A6 */	mtctr r12
/* 801DAC60 001D7BA0  4E 80 04 21 */	bctrl 
lbl_801DAC64:
/* 801DAC64 001D7BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DAC68 001D7BA8  28 00 00 00 */	cmplwi r0, 0
/* 801DAC6C 001D7BAC  40 82 00 24 */	bne lbl_801DAC90
/* 801DAC70 001D7BB0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DAC74 001D7BB4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DAC78 001D7BB8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAC7C 001D7BBC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DAC80 001D7BC0  7D 89 03 A6 */	mtctr r12
/* 801DAC84 001D7BC4  4E 80 04 21 */	bctrl 
/* 801DAC88 001D7BC8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DAC8C 001D7BCC  48 00 00 94 */	b lbl_801DAD20
lbl_801DAC90:
/* 801DAC90 001D7BD0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DAC94 001D7BD4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DAC98 001D7BD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAC9C 001D7BDC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DACA0 001D7BE0  7D 89 03 A6 */	mtctr r12
/* 801DACA4 001D7BE4  4E 80 04 21 */	bctrl 
/* 801DACA8 001D7BE8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DACAC 001D7BEC  48 00 00 58 */	b lbl_801DAD04
lbl_801DACB0:
/* 801DACB0 001D7BF0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DACB4 001D7BF4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DACB8 001D7BF8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DACBC 001D7BFC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DACC0 001D7C00  7D 89 03 A6 */	mtctr r12
/* 801DACC4 001D7C04  4E 80 04 21 */	bctrl 
/* 801DACC8 001D7C08  7C 64 1B 78 */	mr r4, r3
/* 801DACCC 001D7C0C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DACD0 001D7C10  81 83 00 00 */	lwz r12, 0(r3)
/* 801DACD4 001D7C14  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DACD8 001D7C18  7D 89 03 A6 */	mtctr r12
/* 801DACDC 001D7C1C  4E 80 04 21 */	bctrl 
/* 801DACE0 001D7C20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DACE4 001D7C24  40 82 00 3C */	bne lbl_801DAD20
/* 801DACE8 001D7C28  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DACEC 001D7C2C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DACF0 001D7C30  81 83 00 00 */	lwz r12, 0(r3)
/* 801DACF4 001D7C34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DACF8 001D7C38  7D 89 03 A6 */	mtctr r12
/* 801DACFC 001D7C3C  4E 80 04 21 */	bctrl 
/* 801DAD00 001D7C40  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DAD04:
/* 801DAD04 001D7C44  81 81 00 08 */	lwz r12, 8(r1)
/* 801DAD08 001D7C48  38 61 00 08 */	addi r3, r1, 8
/* 801DAD0C 001D7C4C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DAD10 001D7C50  7D 89 03 A6 */	mtctr r12
/* 801DAD14 001D7C54  4E 80 04 21 */	bctrl 
/* 801DAD18 001D7C58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DAD1C 001D7C5C  41 82 FF 94 */	beq lbl_801DACB0
lbl_801DAD20:
/* 801DAD20 001D7C60  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DAD24 001D7C64  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAD28 001D7C68  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DAD2C 001D7C6C  7D 89 03 A6 */	mtctr r12
/* 801DAD30 001D7C70  4E 80 04 21 */	bctrl 
/* 801DAD34 001D7C74  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DAD38 001D7C78  7C 04 18 40 */	cmplw r4, r3
/* 801DAD3C 001D7C7C  40 82 FE 14 */	bne lbl_801DAB50
/* 801DAD40 001D7C80  83 7B 00 04 */	lwz r27, 4(r27)
lbl_801DAD44:
/* 801DAD44 001D7C84  28 1B 00 00 */	cmplwi r27, 0
/* 801DAD48 001D7C88  40 82 FD 1C */	bne lbl_801DAA64
/* 801DAD4C 001D7C8C  3B 9C 00 01 */	addi r28, r28, 1
/* 801DAD50 001D7C90  3B BD 00 04 */	addi r29, r29, 4
/* 801DAD54 001D7C94  2C 1C 00 05 */	cmpwi r28, 5
/* 801DAD58 001D7C98  41 80 FC D0 */	blt lbl_801DAA28
/* 801DAD5C 001D7C9C  BA E1 00 4C */	lmw r23, 0x4c(r1)
/* 801DAD60 001D7CA0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801DAD64 001D7CA4  7C 08 03 A6 */	mtlr r0
/* 801DAD68 001D7CA8  38 21 00 70 */	addi r1, r1, 0x70
/* 801DAD6C 001D7CAC  4E 80 00 20 */	blr 

.global onCreateModel__Q34Game12ItemPikihead3MgrFPQ28SysShape5Model
onCreateModel__Q34Game12ItemPikihead3MgrFPQ28SysShape5Model:
/* 801DAD70 001D7CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DAD74 001D7CB4  7C 08 02 A6 */	mflr r0
/* 801DAD78 001D7CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DAD7C 001D7CBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DAD80 001D7CC0  7C 9F 23 78 */	mr r31, r4
/* 801DAD84 001D7CC4  3C 80 01 00 */	lis r4, 0x100
/* 801DAD88 001D7CC8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801DAD8C 001D7CCC  4B E8 B9 4D */	bl newDifferedDisplayList__8J3DModelFUl
/* 801DAD90 001D7CD0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801DAD94 001D7CD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAD98 001D7CD8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DAD9C 001D7CDC  7D 89 03 A6 */	mtctr r12
/* 801DADA0 001D7CE0  4E 80 04 21 */	bctrl 
/* 801DADA4 001D7CE4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801DADA8 001D7CE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DADAC 001D7CEC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DADB0 001D7CF0  7D 89 03 A6 */	mtctr r12
/* 801DADB4 001D7CF4  4E 80 04 21 */	bctrl 
/* 801DADB8 001D7CF8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801DADBC 001D7CFC  4B E8 BB 69 */	bl makeDL__8J3DModelFv
/* 801DADC0 001D7D00  80 7F 00 08 */	lwz r3, 8(r31)
/* 801DADC4 001D7D04  4B E8 BA 31 */	bl lock__8J3DModelFv
/* 801DADC8 001D7D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DADCC 001D7D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DADD0 001D7D10  7C 08 03 A6 */	mtlr r0
/* 801DADD4 001D7D14  38 21 00 10 */	addi r1, r1, 0x10
/* 801DADD8 001D7D18  4E 80 00 20 */	blr 

.global birth__Q34Game12ItemPikihead3MgrFv
birth__Q34Game12ItemPikihead3MgrFv:
/* 801DADDC 001D7D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DADE0 001D7D20  7C 08 02 A6 */	mflr r0
/* 801DADE4 001D7D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DADE8 001D7D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DADEC 001D7D2C  7C 7F 1B 78 */	mr r31, r3
/* 801DADF0 001D7D30  80 0D 92 F8 */	lwz r0, mBirthMode__Q24Game7PikiMgr@sda21(r13)
/* 801DADF4 001D7D34  2C 00 00 01 */	cmpwi r0, 1
/* 801DADF8 001D7D38  41 82 00 5C */	beq lbl_801DAE54
/* 801DADFC 001D7D3C  40 80 00 10 */	bge lbl_801DAE0C
/* 801DAE00 001D7D40  2C 00 00 00 */	cmpwi r0, 0
/* 801DAE04 001D7D44  40 80 00 14 */	bge lbl_801DAE18
/* 801DAE08 001D7D48  48 00 00 4C */	b lbl_801DAE54
lbl_801DAE0C:
/* 801DAE0C 001D7D4C  2C 00 00 03 */	cmpwi r0, 3
/* 801DAE10 001D7D50  40 80 00 44 */	bge lbl_801DAE54
/* 801DAE14 001D7D54  48 00 00 24 */	b lbl_801DAE38
lbl_801DAE18:
/* 801DAE18 001D7D58  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 801DAE1C 001D7D5C  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 801DAE20 001D7D60  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801DAE24 001D7D64  7C 03 02 14 */	add r0, r3, r0
/* 801DAE28 001D7D68  2C 00 00 64 */	cmpwi r0, 0x64
/* 801DAE2C 001D7D6C  41 80 00 28 */	blt lbl_801DAE54
/* 801DAE30 001D7D70  38 60 00 00 */	li r3, 0
/* 801DAE34 001D7D74  48 00 00 34 */	b lbl_801DAE68
lbl_801DAE38:
/* 801DAE38 001D7D78  3C 60 80 48 */	lis r3, lbl_80480828@ha
/* 801DAE3C 001D7D7C  3C A0 80 48 */	lis r5, lbl_804808B0@ha
/* 801DAE40 001D7D80  38 63 08 28 */	addi r3, r3, lbl_80480828@l
/* 801DAE44 001D7D84  38 80 03 42 */	li r4, 0x342
/* 801DAE48 001D7D88  38 A5 08 B0 */	addi r5, r5, lbl_804808B0@l
/* 801DAE4C 001D7D8C  4C C6 31 82 */	crclr 6
/* 801DAE50 001D7D90  4B E4 F7 F1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_801DAE54:
/* 801DAE54 001D7D94  38 7F 00 4C */	addi r3, r31, 0x4c
/* 801DAE58 001D7D98  81 9F 00 4C */	lwz r12, 0x4c(r31)
/* 801DAE5C 001D7D9C  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 801DAE60 001D7DA0  7D 89 03 A6 */	mtctr r12
/* 801DAE64 001D7DA4  4E 80 04 21 */	bctrl 
lbl_801DAE68:
/* 801DAE68 001D7DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DAE6C 001D7DAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DAE70 001D7DB0  7C 08 03 A6 */	mtlr r0
/* 801DAE74 001D7DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 801DAE78 001D7DB8  4E 80 00 20 */	blr 

.global "generatorBirth__Q34Game12ItemPikihead3MgrFR10Vector3<f>R10Vector3<f>PQ24Game11GenItemParm"
"generatorBirth__Q34Game12ItemPikihead3MgrFR10Vector3<f>R10Vector3<f>PQ24Game11GenItemParm":
/* 801DAE7C 001D7DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DAE80 001D7DC0  7C 08 02 A6 */	mflr r0
/* 801DAE84 001D7DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DAE88 001D7DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DAE8C 001D7DCC  93 C1 00 08 */	stw r30, 8(r1)
/* 801DAE90 001D7DD0  7C 9E 23 78 */	mr r30, r4
/* 801DAE94 001D7DD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAE98 001D7DD8  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 801DAE9C 001D7DDC  7D 89 03 A6 */	mtctr r12
/* 801DAEA0 001D7DE0  4E 80 04 21 */	bctrl 
/* 801DAEA4 001D7DE4  38 80 00 00 */	li r4, 0
/* 801DAEA8 001D7DE8  7C 7F 1B 78 */	mr r31, r3
/* 801DAEAC 001D7DEC  4B F6 01 1D */	bl init__Q24Game8CreatureFPQ24Game15CreatureInitArg
/* 801DAEB0 001D7DF0  7F E3 FB 78 */	mr r3, r31
/* 801DAEB4 001D7DF4  7F C4 F3 78 */	mr r4, r30
/* 801DAEB8 001D7DF8  38 A0 00 00 */	li r5, 0
/* 801DAEBC 001D7DFC  4B F6 02 ED */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 801DAEC0 001D7E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DAEC4 001D7E04  7F E3 FB 78 */	mr r3, r31
/* 801DAEC8 001D7E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DAECC 001D7E0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DAED0 001D7E10  7C 08 03 A6 */	mtlr r0
/* 801DAED4 001D7E14  38 21 00 10 */	addi r1, r1, 0x10
/* 801DAED8 001D7E18  4E 80 00 20 */	blr 

.global __dt__Q34Game12ItemPikihead3MgrFv
__dt__Q34Game12ItemPikihead3MgrFv:
/* 801DAEDC 001D7E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DAEE0 001D7E20  7C 08 02 A6 */	mflr r0
/* 801DAEE4 001D7E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DAEE8 001D7E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DAEEC 001D7E2C  7C 9F 23 78 */	mr r31, r4
/* 801DAEF0 001D7E30  93 C1 00 08 */	stw r30, 8(r1)
/* 801DAEF4 001D7E34  7C 7E 1B 79 */	or. r30, r3, r3
/* 801DAEF8 001D7E38  41 82 00 E0 */	beq lbl_801DAFD8
/* 801DAEFC 001D7E3C  3C 60 80 4C */	lis r3, __vt__Q34Game12ItemPikihead3Mgr@ha
/* 801DAF00 001D7E40  38 63 86 74 */	addi r3, r3, __vt__Q34Game12ItemPikihead3Mgr@l
/* 801DAF04 001D7E44  90 7E 00 00 */	stw r3, 0(r30)
/* 801DAF08 001D7E48  38 03 00 74 */	addi r0, r3, 0x74
/* 801DAF0C 001D7E4C  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801DAF10 001D7E50  41 82 00 B8 */	beq lbl_801DAFC8
/* 801DAF14 001D7E54  3C 60 80 4C */	lis r3, "__vt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DAF18 001D7E58  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801DAF1C 001D7E5C  38 63 88 3C */	addi r3, r3, "__vt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DAF20 001D7E60  90 7E 00 00 */	stw r3, 0(r30)
/* 801DAF24 001D7E64  38 03 00 74 */	addi r0, r3, 0x74
/* 801DAF28 001D7E68  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801DAF2C 001D7E6C  41 82 00 68 */	beq lbl_801DAF94
/* 801DAF30 001D7E70  3C 60 80 4C */	lis r3, "__vt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DAF34 001D7E74  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801DAF38 001D7E78  38 63 87 B0 */	addi r3, r3, "__vt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DAF3C 001D7E7C  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 801DAF40 001D7E80  38 03 00 2C */	addi r0, r3, 0x2c
/* 801DAF44 001D7E84  90 1E 00 68 */	stw r0, 0x68(r30)
/* 801DAF48 001D7E88  41 82 00 4C */	beq lbl_801DAF94
/* 801DAF4C 001D7E8C  3C 60 80 4C */	lis r3, "__vt__37ObjectMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DAF50 001D7E90  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801DAF54 001D7E94  38 63 87 34 */	addi r3, r3, "__vt__37ObjectMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DAF58 001D7E98  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 801DAF5C 001D7E9C  38 03 00 2C */	addi r0, r3, 0x2c
/* 801DAF60 001D7EA0  90 1E 00 68 */	stw r0, 0x68(r30)
/* 801DAF64 001D7EA4  41 82 00 30 */	beq lbl_801DAF94
/* 801DAF68 001D7EA8  3C 60 80 4C */	lis r3, "__vt__37Container<Q34Game12ItemPikihead4Item>"@ha
/* 801DAF6C 001D7EAC  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801DAF70 001D7EB0  38 03 88 FC */	addi r0, r3, "__vt__37Container<Q34Game12ItemPikihead4Item>"@l
/* 801DAF74 001D7EB4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 801DAF78 001D7EB8  41 82 00 1C */	beq lbl_801DAF94
/* 801DAF7C 001D7EBC  3C 80 80 4B */	lis r4, __vt__16GenericContainer@ha
/* 801DAF80 001D7EC0  38 7E 00 4C */	addi r3, r30, 0x4c
/* 801DAF84 001D7EC4  38 04 AC DC */	addi r0, r4, __vt__16GenericContainer@l
/* 801DAF88 001D7EC8  38 80 00 00 */	li r4, 0
/* 801DAF8C 001D7ECC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 801DAF90 001D7ED0  48 23 65 F9 */	bl __dt__5CNodeFv
lbl_801DAF94:
/* 801DAF94 001D7ED4  34 1E 00 30 */	addic. r0, r30, 0x30
/* 801DAF98 001D7ED8  41 82 00 30 */	beq lbl_801DAFC8
/* 801DAF9C 001D7EDC  3C 60 80 4C */	lis r3, "__vt__37Container<Q34Game12ItemPikihead4Item>"@ha
/* 801DAFA0 001D7EE0  34 1E 00 30 */	addic. r0, r30, 0x30
/* 801DAFA4 001D7EE4  38 03 88 FC */	addi r0, r3, "__vt__37Container<Q34Game12ItemPikihead4Item>"@l
/* 801DAFA8 001D7EE8  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801DAFAC 001D7EEC  41 82 00 1C */	beq lbl_801DAFC8
/* 801DAFB0 001D7EF0  3C 80 80 4B */	lis r4, __vt__16GenericContainer@ha
/* 801DAFB4 001D7EF4  38 7E 00 30 */	addi r3, r30, 0x30
/* 801DAFB8 001D7EF8  38 04 AC DC */	addi r0, r4, __vt__16GenericContainer@l
/* 801DAFBC 001D7EFC  38 80 00 00 */	li r4, 0
/* 801DAFC0 001D7F00  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801DAFC4 001D7F04  48 23 65 C5 */	bl __dt__5CNodeFv
lbl_801DAFC8:
/* 801DAFC8 001D7F08  7F E0 07 35 */	extsh. r0, r31
/* 801DAFCC 001D7F0C  40 81 00 0C */	ble lbl_801DAFD8
/* 801DAFD0 001D7F10  7F C3 F3 78 */	mr r3, r30
/* 801DAFD4 001D7F14  4B E4 90 E1 */	bl __dl__FPv
lbl_801DAFD8:
/* 801DAFD8 001D7F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DAFDC 001D7F1C  7F C3 F3 78 */	mr r3, r30
/* 801DAFE0 001D7F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DAFE4 001D7F24  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DAFE8 001D7F28  7C 08 03 A6 */	mtlr r0
/* 801DAFEC 001D7F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DAFF0 001D7F30  4E 80 00 20 */	blr 

.global generatorGetID__Q34Game12ItemPikihead3MgrFv
generatorGetID__Q34Game12ItemPikihead3MgrFv:
/* 801DAFF4 001D7F34  3C 60 70 6B */	lis r3, 0x706B6864@ha
/* 801DAFF8 001D7F38  38 63 68 64 */	addi r3, r3, 0x706B6864@l
/* 801DAFFC 001D7F3C  4E 80 00 20 */	blr 

.global "__dt__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"__dt__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB000 001D7F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB004 001D7F44  7C 08 02 A6 */	mflr r0
/* 801DB008 001D7F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB00C 001D7F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DB010 001D7F50  7C 9F 23 78 */	mr r31, r4
/* 801DB014 001D7F54  93 C1 00 08 */	stw r30, 8(r1)
/* 801DB018 001D7F58  7C 7E 1B 79 */	or. r30, r3, r3
/* 801DB01C 001D7F5C  41 82 00 50 */	beq lbl_801DB06C
/* 801DB020 001D7F60  3C 80 80 4C */	lis r4, "__vt__37ObjectMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DB024 001D7F64  38 84 87 34 */	addi r4, r4, "__vt__37ObjectMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DB028 001D7F68  90 9E 00 00 */	stw r4, 0(r30)
/* 801DB02C 001D7F6C  38 04 00 2C */	addi r0, r4, 0x2c
/* 801DB030 001D7F70  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 801DB034 001D7F74  41 82 00 28 */	beq lbl_801DB05C
/* 801DB038 001D7F78  3C 80 80 4C */	lis r4, "__vt__37Container<Q34Game12ItemPikihead4Item>"@ha
/* 801DB03C 001D7F7C  38 04 88 FC */	addi r0, r4, "__vt__37Container<Q34Game12ItemPikihead4Item>"@l
/* 801DB040 001D7F80  90 1E 00 00 */	stw r0, 0(r30)
/* 801DB044 001D7F84  41 82 00 18 */	beq lbl_801DB05C
/* 801DB048 001D7F88  3C A0 80 4B */	lis r5, __vt__16GenericContainer@ha
/* 801DB04C 001D7F8C  38 80 00 00 */	li r4, 0
/* 801DB050 001D7F90  38 05 AC DC */	addi r0, r5, __vt__16GenericContainer@l
/* 801DB054 001D7F94  90 1E 00 00 */	stw r0, 0(r30)
/* 801DB058 001D7F98  48 23 65 31 */	bl __dt__5CNodeFv
lbl_801DB05C:
/* 801DB05C 001D7F9C  7F E0 07 35 */	extsh. r0, r31
/* 801DB060 001D7FA0  40 81 00 0C */	ble lbl_801DB06C
/* 801DB064 001D7FA4  7F C3 F3 78 */	mr r3, r30
/* 801DB068 001D7FA8  4B E4 90 4D */	bl __dl__FPv
lbl_801DB06C:
/* 801DB06C 001D7FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB070 001D7FB0  7F C3 F3 78 */	mr r3, r30
/* 801DB074 001D7FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DB078 001D7FB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DB07C 001D7FBC  7C 08 03 A6 */	mtlr r0
/* 801DB080 001D7FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB084 001D7FC4  4E 80 00 20 */	blr 

.global "birth__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"birth__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB088 001D7FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB08C 001D7FCC  7C 08 02 A6 */	mflr r0
/* 801DB090 001D7FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB094 001D7FD4  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DB098 001D7FD8  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 801DB09C 001D7FDC  7D 89 03 A6 */	mtctr r12
/* 801DB0A0 001D7FE0  4E 80 04 21 */	bctrl 
/* 801DB0A4 001D7FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB0A8 001D7FE8  7C 08 03 A6 */	mtlr r0
/* 801DB0AC 001D7FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB0B0 001D7FF0  4E 80 00 20 */	blr 

.global getCreatureName__Q34Game12ItemPikihead4ItemFv
getCreatureName__Q34Game12ItemPikihead4ItemFv:
/* 801DB0B4 001D7FF4  3C 60 80 48 */	lis r3, lbl_804808C4@ha
/* 801DB0B8 001D7FF8  38 63 08 C4 */	addi r3, r3, lbl_804808C4@l
/* 801DB0BC 001D7FFC  4E 80 00 20 */	blr 

.global "doAI__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>Fv"
"doAI__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>Fv":
/* 801DB0C0 001D8000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB0C4 001D8004  7C 08 02 A6 */	mflr r0
/* 801DB0C8 001D8008  7C 64 1B 78 */	mr r4, r3
/* 801DB0CC 001D800C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB0D0 001D8010  80 63 01 D8 */	lwz r3, 0x1d8(r3)
/* 801DB0D4 001D8014  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB0D8 001D8018  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DB0DC 001D801C  7D 89 03 A6 */	mtctr r12
/* 801DB0E0 001D8020  4E 80 04 21 */	bctrl 
/* 801DB0E4 001D8024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB0E8 001D8028  7C 08 03 A6 */	mtlr r0
/* 801DB0EC 001D802C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB0F0 001D8030  4E 80 00 20 */	blr 

.global "onCreateModel__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPQ28SysShape5Model"
"onCreateModel__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPQ28SysShape5Model":
/* 801DB0F4 001D8034  4E 80 00 20 */	blr 

.global "doAnimation__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"doAnimation__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB0F8 001D8038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB0FC 001D803C  7C 08 02 A6 */	mflr r0
/* 801DB100 001D8040  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB104 001D8044  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DB108 001D8048  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801DB10C 001D804C  7D 89 03 A6 */	mtctr r12
/* 801DB110 001D8050  4E 80 04 21 */	bctrl 
/* 801DB114 001D8054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB118 001D8058  7C 08 03 A6 */	mtlr r0
/* 801DB11C 001D805C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB120 001D8060  4E 80 00 20 */	blr 

.global "doEntry__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"doEntry__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB124 001D8064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB128 001D8068  7C 08 02 A6 */	mflr r0
/* 801DB12C 001D806C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB130 001D8070  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DB134 001D8074  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801DB138 001D8078  7D 89 03 A6 */	mtctr r12
/* 801DB13C 001D807C  4E 80 04 21 */	bctrl 
/* 801DB140 001D8080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB144 001D8084  7C 08 03 A6 */	mtlr r0
/* 801DB148 001D8088  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB14C 001D808C  4E 80 00 20 */	blr 

.global "doSetView__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fi"
"doSetView__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fi":
/* 801DB150 001D8090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB154 001D8094  7C 08 02 A6 */	mflr r0
/* 801DB158 001D8098  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB15C 001D809C  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DB160 001D80A0  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801DB164 001D80A4  7D 89 03 A6 */	mtctr r12
/* 801DB168 001D80A8  4E 80 04 21 */	bctrl 
/* 801DB16C 001D80AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB170 001D80B0  7C 08 03 A6 */	mtlr r0
/* 801DB174 001D80B4  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB178 001D80B8  4E 80 00 20 */	blr 

.global "doViewCalc__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"doViewCalc__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB17C 001D80BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB180 001D80C0  7C 08 02 A6 */	mflr r0
/* 801DB184 001D80C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB188 001D80C8  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DB18C 001D80CC  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 801DB190 001D80D0  7D 89 03 A6 */	mtctr r12
/* 801DB194 001D80D4  4E 80 04 21 */	bctrl 
/* 801DB198 001D80D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB19C 001D80DC  7C 08 03 A6 */	mtlr r0
/* 801DB1A0 001D80E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB1A4 001D80E4  4E 80 00 20 */	blr 

.global "doSimulation__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Ff"
"doSimulation__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Ff":
/* 801DB1A8 001D80E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB1AC 001D80EC  7C 08 02 A6 */	mflr r0
/* 801DB1B0 001D80F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB1B4 001D80F4  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DB1B8 001D80F8  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 801DB1BC 001D80FC  7D 89 03 A6 */	mtctr r12
/* 801DB1C0 001D8100  4E 80 04 21 */	bctrl 
/* 801DB1C4 001D8104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB1C8 001D8108  7C 08 03 A6 */	mtlr r0
/* 801DB1CC 001D810C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB1D0 001D8110  4E 80 00 20 */	blr 

.global "doDirectDraw__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FR8Graphics"
"doDirectDraw__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FR8Graphics":
/* 801DB1D4 001D8114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB1D8 001D8118  7C 08 02 A6 */	mflr r0
/* 801DB1DC 001D811C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB1E0 001D8120  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DB1E4 001D8124  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 801DB1E8 001D8128  7D 89 03 A6 */	mtctr r12
/* 801DB1EC 001D812C  4E 80 04 21 */	bctrl 
/* 801DB1F0 001D8130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB1F4 001D8134  7C 08 03 A6 */	mtlr r0
/* 801DB1F8 001D8138  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB1FC 001D813C  4E 80 00 20 */	blr 

.global "initDependency__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"initDependency__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB200 001D8140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DB204 001D8144  7C 08 02 A6 */	mflr r0
/* 801DB208 001D8148  3C 80 80 4B */	lis r4, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@ha
/* 801DB20C 001D814C  38 63 00 4C */	addi r3, r3, 0x4c
/* 801DB210 001D8150  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DB214 001D8154  38 00 00 00 */	li r0, 0
/* 801DB218 001D8158  38 84 05 A4 */	addi r4, r4, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@l
/* 801DB21C 001D815C  28 00 00 00 */	cmplwi r0, 0
/* 801DB220 001D8160  90 81 00 08 */	stw r4, 8(r1)
/* 801DB224 001D8164  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB228 001D8168  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DB22C 001D816C  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DB230 001D8170  40 82 00 1C */	bne lbl_801DB24C
/* 801DB234 001D8174  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB238 001D8178  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DB23C 001D817C  7D 89 03 A6 */	mtctr r12
/* 801DB240 001D8180  4E 80 04 21 */	bctrl 
/* 801DB244 001D8184  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DB248 001D8188  48 00 01 70 */	b lbl_801DB3B8
lbl_801DB24C:
/* 801DB24C 001D818C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB250 001D8190  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DB254 001D8194  7D 89 03 A6 */	mtctr r12
/* 801DB258 001D8198  4E 80 04 21 */	bctrl 
/* 801DB25C 001D819C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DB260 001D81A0  48 00 00 58 */	b lbl_801DB2B8
lbl_801DB264:
/* 801DB264 001D81A4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DB268 001D81A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DB26C 001D81AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB270 001D81B0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DB274 001D81B4  7D 89 03 A6 */	mtctr r12
/* 801DB278 001D81B8  4E 80 04 21 */	bctrl 
/* 801DB27C 001D81BC  7C 64 1B 78 */	mr r4, r3
/* 801DB280 001D81C0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DB284 001D81C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB288 001D81C8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB28C 001D81CC  7D 89 03 A6 */	mtctr r12
/* 801DB290 001D81D0  4E 80 04 21 */	bctrl 
/* 801DB294 001D81D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DB298 001D81D8  40 82 01 20 */	bne lbl_801DB3B8
/* 801DB29C 001D81DC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DB2A0 001D81E0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DB2A4 001D81E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB2A8 001D81E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DB2AC 001D81EC  7D 89 03 A6 */	mtctr r12
/* 801DB2B0 001D81F0  4E 80 04 21 */	bctrl 
/* 801DB2B4 001D81F4  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DB2B8:
/* 801DB2B8 001D81F8  81 81 00 08 */	lwz r12, 8(r1)
/* 801DB2BC 001D81FC  38 61 00 08 */	addi r3, r1, 8
/* 801DB2C0 001D8200  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DB2C4 001D8204  7D 89 03 A6 */	mtctr r12
/* 801DB2C8 001D8208  4E 80 04 21 */	bctrl 
/* 801DB2CC 001D820C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DB2D0 001D8210  41 82 FF 94 */	beq lbl_801DB264
/* 801DB2D4 001D8214  48 00 00 E4 */	b lbl_801DB3B8
lbl_801DB2D8:
/* 801DB2D8 001D8218  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DB2DC 001D821C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB2E0 001D8220  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DB2E4 001D8224  7D 89 03 A6 */	mtctr r12
/* 801DB2E8 001D8228  4E 80 04 21 */	bctrl 
/* 801DB2EC 001D822C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB2F0 001D8230  81 8C 01 BC */	lwz r12, 0x1bc(r12)
/* 801DB2F4 001D8234  7D 89 03 A6 */	mtctr r12
/* 801DB2F8 001D8238  4E 80 04 21 */	bctrl 
/* 801DB2FC 001D823C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB300 001D8240  28 00 00 00 */	cmplwi r0, 0
/* 801DB304 001D8244  40 82 00 24 */	bne lbl_801DB328
/* 801DB308 001D8248  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DB30C 001D824C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DB310 001D8250  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB314 001D8254  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DB318 001D8258  7D 89 03 A6 */	mtctr r12
/* 801DB31C 001D825C  4E 80 04 21 */	bctrl 
/* 801DB320 001D8260  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DB324 001D8264  48 00 00 94 */	b lbl_801DB3B8
lbl_801DB328:
/* 801DB328 001D8268  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DB32C 001D826C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DB330 001D8270  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB334 001D8274  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DB338 001D8278  7D 89 03 A6 */	mtctr r12
/* 801DB33C 001D827C  4E 80 04 21 */	bctrl 
/* 801DB340 001D8280  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DB344 001D8284  48 00 00 58 */	b lbl_801DB39C
lbl_801DB348:
/* 801DB348 001D8288  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DB34C 001D828C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DB350 001D8290  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB354 001D8294  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DB358 001D8298  7D 89 03 A6 */	mtctr r12
/* 801DB35C 001D829C  4E 80 04 21 */	bctrl 
/* 801DB360 001D82A0  7C 64 1B 78 */	mr r4, r3
/* 801DB364 001D82A4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DB368 001D82A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB36C 001D82AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB370 001D82B0  7D 89 03 A6 */	mtctr r12
/* 801DB374 001D82B4  4E 80 04 21 */	bctrl 
/* 801DB378 001D82B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DB37C 001D82BC  40 82 00 3C */	bne lbl_801DB3B8
/* 801DB380 001D82C0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DB384 001D82C4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DB388 001D82C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB38C 001D82CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DB390 001D82D0  7D 89 03 A6 */	mtctr r12
/* 801DB394 001D82D4  4E 80 04 21 */	bctrl 
/* 801DB398 001D82D8  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DB39C:
/* 801DB39C 001D82DC  81 81 00 08 */	lwz r12, 8(r1)
/* 801DB3A0 001D82E0  38 61 00 08 */	addi r3, r1, 8
/* 801DB3A4 001D82E4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DB3A8 001D82E8  7D 89 03 A6 */	mtctr r12
/* 801DB3AC 001D82EC  4E 80 04 21 */	bctrl 
/* 801DB3B0 001D82F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DB3B4 001D82F4  41 82 FF 94 */	beq lbl_801DB348
lbl_801DB3B8:
/* 801DB3B8 001D82F8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DB3BC 001D82FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB3C0 001D8300  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DB3C4 001D8304  7D 89 03 A6 */	mtctr r12
/* 801DB3C8 001D8308  4E 80 04 21 */	bctrl 
/* 801DB3CC 001D830C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DB3D0 001D8310  7C 04 18 40 */	cmplw r4, r3
/* 801DB3D4 001D8314  40 82 FF 04 */	bne lbl_801DB2D8
/* 801DB3D8 001D8318  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DB3DC 001D831C  7C 08 03 A6 */	mtlr r0
/* 801DB3E0 001D8320  38 21 00 20 */	addi r1, r1, 0x20
/* 801DB3E4 001D8324  4E 80 00 20 */	blr 

.global "getNext__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPv"
"getNext__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPv":
/* 801DB3E8 001D8328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB3EC 001D832C  7C 08 02 A6 */	mflr r0
/* 801DB3F0 001D8330  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB3F4 001D8334  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DB3F8 001D8338  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DB3FC 001D833C  7D 89 03 A6 */	mtctr r12
/* 801DB400 001D8340  4E 80 04 21 */	bctrl 
/* 801DB404 001D8344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB408 001D8348  7C 08 03 A6 */	mtlr r0
/* 801DB40C 001D834C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB410 001D8350  4E 80 00 20 */	blr 

.global "getStart__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"getStart__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB414 001D8354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB418 001D8358  7C 08 02 A6 */	mflr r0
/* 801DB41C 001D835C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB420 001D8360  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DB424 001D8364  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DB428 001D8368  7D 89 03 A6 */	mtctr r12
/* 801DB42C 001D836C  4E 80 04 21 */	bctrl 
/* 801DB430 001D8370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB434 001D8374  7C 08 03 A6 */	mtlr r0
/* 801DB438 001D8378  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB43C 001D837C  4E 80 00 20 */	blr 

.global "createModel__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
"createModel__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item":
/* 801DB440 001D8380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB444 001D8384  7C 08 02 A6 */	mflr r0
/* 801DB448 001D8388  7C 85 23 78 */	mr r5, r4
/* 801DB44C 001D838C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB450 001D8390  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 801DB454 001D8394  80 84 01 88 */	lwz r4, 0x188(r4)
/* 801DB458 001D8398  80 A5 01 84 */	lwz r5, 0x184(r5)
/* 801DB45C 001D839C  48 24 F9 A1 */	bl createModel__Q28SysShape8ModelMgrFii
/* 801DB460 001D83A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB464 001D83A4  7C 08 03 A6 */	mtlr r0
/* 801DB468 001D83A8  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB46C 001D83AC  4E 80 00 20 */	blr 

.global "onKeyEvent__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FRCQ28SysShape8KeyEvent"
"onKeyEvent__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FRCQ28SysShape8KeyEvent":
/* 801DB470 001D83B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB474 001D83B4  7C 08 02 A6 */	mflr r0
/* 801DB478 001D83B8  7C 66 1B 78 */	mr r6, r3
/* 801DB47C 001D83BC  7C 85 23 78 */	mr r5, r4
/* 801DB480 001D83C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB484 001D83C4  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801DB488 001D83C8  28 03 00 00 */	cmplwi r3, 0
/* 801DB48C 001D83CC  41 82 00 18 */	beq lbl_801DB4A4
/* 801DB490 001D83D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB494 001D83D4  7C C4 33 78 */	mr r4, r6
/* 801DB498 001D83D8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DB49C 001D83DC  7D 89 03 A6 */	mtctr r12
/* 801DB4A0 001D83E0  4E 80 04 21 */	bctrl 
lbl_801DB4A4:
/* 801DB4A4 001D83E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB4A8 001D83E8  7C 08 03 A6 */	mtlr r0
/* 801DB4AC 001D83EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB4B0 001D83F0  4E 80 00 20 */	blr 

.global "onDamage__Q24Game37ItemState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Itemf"
"onDamage__Q24Game37ItemState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Itemf":
/* 801DB4B4 001D83F4  4E 80 00 20 */	blr 

.global "onKeyEvent__Q24Game37ItemState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent"
"onKeyEvent__Q24Game37ItemState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemRCQ28SysShape8KeyEvent":
/* 801DB4B8 001D83F8  4E 80 00 20 */	blr 

.global "onBounce__Q24Game37ItemState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemPQ23Sys8Triangle"
"onBounce__Q24Game37ItemState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemPQ23Sys8Triangle":
/* 801DB4BC 001D83FC  4E 80 00 20 */	blr 

.global "onPlatCollision__Q24Game37ItemState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemRQ24Game9PlatEvent"
"onPlatCollision__Q24Game37ItemState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemRQ24Game9PlatEvent":
/* 801DB4C0 001D8400  4E 80 00 20 */	blr 

.global "onCollision__Q24Game37ItemState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemRQ24Game9CollEvent"
"onCollision__Q24Game37ItemState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemRQ24Game9CollEvent":
/* 801DB4C4 001D8404  4E 80 00 20 */	blr 

.global "init__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemPQ24Game8StateArg"
"init__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemPQ24Game8StateArg":
/* 801DB4C8 001D8408  4E 80 00 20 */	blr 

.global "exec__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
"exec__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item":
/* 801DB4CC 001D840C  4E 80 00 20 */	blr 

.global "resume__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
"resume__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item":
/* 801DB4D0 001D8410  4E 80 00 20 */	blr 

.global "restart__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
"restart__Q24Game36FSMState<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item":
/* 801DB4D4 001D8414  4E 80 00 20 */	blr 

.global "init__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
"init__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item":
/* 801DB4D8 001D8418  4E 80 00 20 */	blr 

.global "exec__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
"exec__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item":
/* 801DB4DC 001D841C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB4E0 001D8420  7C 08 02 A6 */	mflr r0
/* 801DB4E4 001D8424  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB4E8 001D8428  80 64 01 DC */	lwz r3, 0x1dc(r4)
/* 801DB4EC 001D842C  28 03 00 00 */	cmplwi r3, 0
/* 801DB4F0 001D8430  41 82 00 14 */	beq lbl_801DB504
/* 801DB4F4 001D8434  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB4F8 001D8438  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801DB4FC 001D843C  7D 89 03 A6 */	mtctr r12
/* 801DB500 001D8440  4E 80 04 21 */	bctrl 
lbl_801DB504:
/* 801DB504 001D8444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB508 001D8448  7C 08 03 A6 */	mtlr r0
/* 801DB50C 001D844C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB510 001D8450  4E 80 00 20 */	blr 

.global "create__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>Fi"
"create__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>Fi":
/* 801DB514 001D8454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB518 001D8458  7C 08 02 A6 */	mflr r0
/* 801DB51C 001D845C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB520 001D8460  38 00 00 00 */	li r0, 0
/* 801DB524 001D8464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DB528 001D8468  7C 7F 1B 78 */	mr r31, r3
/* 801DB52C 001D846C  90 83 00 0C */	stw r4, 0xc(r3)
/* 801DB530 001D8470  90 03 00 08 */	stw r0, 8(r3)
/* 801DB534 001D8474  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801DB538 001D8478  54 03 10 3A */	slwi r3, r0, 2
/* 801DB53C 001D847C  4B E4 8A 71 */	bl __nwa__FUl
/* 801DB540 001D8480  90 7F 00 04 */	stw r3, 4(r31)
/* 801DB544 001D8484  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801DB548 001D8488  54 03 10 3A */	slwi r3, r0, 2
/* 801DB54C 001D848C  4B E4 8A 61 */	bl __nwa__FUl
/* 801DB550 001D8490  90 7F 00 10 */	stw r3, 0x10(r31)
/* 801DB554 001D8494  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801DB558 001D8498  54 03 10 3A */	slwi r3, r0, 2
/* 801DB55C 001D849C  4B E4 8A 51 */	bl __nwa__FUl
/* 801DB560 001D84A0  90 7F 00 14 */	stw r3, 0x14(r31)
/* 801DB564 001D84A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB568 001D84A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DB56C 001D84AC  7C 08 03 A6 */	mtlr r0
/* 801DB570 001D84B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB574 001D84B4  4E 80 00 20 */	blr 

.global "birth__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"birth__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB578 001D84B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB57C 001D84BC  7C 08 02 A6 */	mflr r0
/* 801DB580 001D84C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB584 001D84C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DB588 001D84C8  7C 7F 1B 78 */	mr r31, r3
/* 801DB58C 001D84CC  48 00 04 AD */	bl "getEmptyIndex__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
/* 801DB590 001D84D0  2C 03 FF FF */	cmpwi r3, -1
/* 801DB594 001D84D4  41 82 00 2C */	beq lbl_801DB5C0
/* 801DB598 001D84D8  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 801DB59C 001D84DC  38 00 00 00 */	li r0, 0
/* 801DB5A0 001D84E0  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 801DB5A4 001D84E4  1C A3 01 F8 */	mulli r5, r3, 0x1f8
/* 801DB5A8 001D84E8  7C 04 19 AE */	stbx r0, r4, r3
/* 801DB5AC 001D84EC  7C 66 2A 14 */	add r3, r6, r5
/* 801DB5B0 001D84F0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801DB5B4 001D84F4  38 04 00 01 */	addi r0, r4, 1
/* 801DB5B8 001D84F8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801DB5BC 001D84FC  48 00 00 08 */	b lbl_801DB5C4
lbl_801DB5C0:
/* 801DB5C0 001D8500  38 60 00 00 */	li r3, 0
lbl_801DB5C4:
/* 801DB5C4 001D8504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB5C8 001D8508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DB5CC 001D850C  7C 08 03 A6 */	mtlr r0
/* 801DB5D0 001D8510  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB5D4 001D8514  4E 80 00 20 */	blr 

.global "kill__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item"
"kill__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4Item":
/* 801DB5D8 001D8518  80 03 00 24 */	lwz r0, 0x24(r3)
/* 801DB5DC 001D851C  38 C0 00 00 */	li r6, 0
/* 801DB5E0 001D8520  38 A0 00 00 */	li r5, 0
/* 801DB5E4 001D8524  7C 09 03 A6 */	mtctr r0
/* 801DB5E8 001D8528  2C 00 00 00 */	cmpwi r0, 0
/* 801DB5EC 001D852C  4C 81 00 20 */	blelr 
lbl_801DB5F0:
/* 801DB5F0 001D8530  80 03 00 28 */	lwz r0, 0x28(r3)
/* 801DB5F4 001D8534  7C 00 2A 14 */	add r0, r0, r5
/* 801DB5F8 001D8538  7C 00 20 40 */	cmplw r0, r4
/* 801DB5FC 001D853C  40 82 00 20 */	bne lbl_801DB61C
/* 801DB600 001D8540  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801DB604 001D8544  38 00 00 01 */	li r0, 1
/* 801DB608 001D8548  7C 04 31 AE */	stbx r0, r4, r6
/* 801DB60C 001D854C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 801DB610 001D8550  38 04 FF FF */	addi r0, r4, -1
/* 801DB614 001D8554  90 03 00 20 */	stw r0, 0x20(r3)
/* 801DB618 001D8558  4E 80 00 20 */	blr 
lbl_801DB61C:
/* 801DB61C 001D855C  38 A5 01 F8 */	addi r5, r5, 0x1f8
/* 801DB620 001D8560  38 C6 00 01 */	addi r6, r6, 1
/* 801DB624 001D8564  42 00 FF CC */	bdnz lbl_801DB5F0
/* 801DB628 001D8568  4E 80 00 20 */	blr 

.global "getNext__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FPv"
"getNext__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FPv":
/* 801DB62C 001D856C  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 801DB630 001D8570  38 C4 00 01 */	addi r6, r4, 1
/* 801DB634 001D8574  7C 06 28 50 */	subf r0, r6, r5
/* 801DB638 001D8578  7C 09 03 A6 */	mtctr r0
/* 801DB63C 001D857C  7C 06 28 00 */	cmpw r6, r5
/* 801DB640 001D8580  40 80 00 24 */	bge lbl_801DB664
lbl_801DB644:
/* 801DB644 001D8584  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801DB648 001D8588  7C 04 30 AE */	lbzx r0, r4, r6
/* 801DB64C 001D858C  28 00 00 00 */	cmplwi r0, 0
/* 801DB650 001D8590  40 82 00 0C */	bne lbl_801DB65C
/* 801DB654 001D8594  7C C3 33 78 */	mr r3, r6
/* 801DB658 001D8598  4E 80 00 20 */	blr 
lbl_801DB65C:
/* 801DB65C 001D859C  38 C6 00 01 */	addi r6, r6, 1
/* 801DB660 001D85A0  42 00 FF E4 */	bdnz lbl_801DB644
lbl_801DB664:
/* 801DB664 001D85A4  7C A3 2B 78 */	mr r3, r5
/* 801DB668 001D85A8  4E 80 00 20 */	blr 

.global "getStart__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"getStart__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB66C 001D85AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB670 001D85B0  7C 08 02 A6 */	mflr r0
/* 801DB674 001D85B4  38 80 FF FF */	li r4, -1
/* 801DB678 001D85B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB67C 001D85BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB680 001D85C0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DB684 001D85C4  7D 89 03 A6 */	mtctr r12
/* 801DB688 001D85C8  4E 80 04 21 */	bctrl 
/* 801DB68C 001D85CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB690 001D85D0  7C 08 03 A6 */	mtlr r0
/* 801DB694 001D85D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB698 001D85D8  4E 80 00 20 */	blr 

.global "getEnd__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"getEnd__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB69C 001D85DC  80 63 00 24 */	lwz r3, 0x24(r3)
/* 801DB6A0 001D85E0  4E 80 00 20 */	blr 

.global "getAt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fi"
"getAt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fi":
/* 801DB6A4 001D85E4  1C 04 01 F8 */	mulli r0, r4, 0x1f8
/* 801DB6A8 001D85E8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 801DB6AC 001D85EC  7C 63 02 14 */	add r3, r3, r0
/* 801DB6B0 001D85F0  4E 80 00 20 */	blr 

.global "getTo__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"getTo__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB6B4 001D85F4  80 63 00 24 */	lwz r3, 0x24(r3)
/* 801DB6B8 001D85F8  4E 80 00 20 */	blr 

.global "doAnimation__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"doAnimation__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB6BC 001D85FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DB6C0 001D8600  7C 08 02 A6 */	mflr r0
/* 801DB6C4 001D8604  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DB6C8 001D8608  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DB6CC 001D860C  3B E0 00 00 */	li r31, 0
/* 801DB6D0 001D8610  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DB6D4 001D8614  3B C0 00 00 */	li r30, 0
/* 801DB6D8 001D8618  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DB6DC 001D861C  7C 7D 1B 78 */	mr r29, r3
/* 801DB6E0 001D8620  48 00 00 34 */	b lbl_801DB714
lbl_801DB6E4:
/* 801DB6E4 001D8624  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 801DB6E8 001D8628  7C 03 F0 AE */	lbzx r0, r3, r30
/* 801DB6EC 001D862C  28 00 00 00 */	cmplwi r0, 0
/* 801DB6F0 001D8630  40 82 00 1C */	bne lbl_801DB70C
/* 801DB6F4 001D8634  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 801DB6F8 001D8638  7C 60 FA 14 */	add r3, r0, r31
/* 801DB6FC 001D863C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB700 001D8640  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DB704 001D8644  7D 89 03 A6 */	mtctr r12
/* 801DB708 001D8648  4E 80 04 21 */	bctrl 
lbl_801DB70C:
/* 801DB70C 001D864C  3B FF 01 F8 */	addi r31, r31, 0x1f8
/* 801DB710 001D8650  3B DE 00 01 */	addi r30, r30, 1
lbl_801DB714:
/* 801DB714 001D8654  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 801DB718 001D8658  7C 1E 00 00 */	cmpw r30, r0
/* 801DB71C 001D865C  41 80 FF C8 */	blt lbl_801DB6E4
/* 801DB720 001D8660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DB724 001D8664  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DB728 001D8668  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DB72C 001D866C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DB730 001D8670  7C 08 03 A6 */	mtlr r0
/* 801DB734 001D8674  38 21 00 20 */	addi r1, r1, 0x20
/* 801DB738 001D8678  4E 80 00 20 */	blr 

.global "doEntry__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"doEntry__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB73C 001D867C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DB740 001D8680  7C 08 02 A6 */	mflr r0
/* 801DB744 001D8684  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DB748 001D8688  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DB74C 001D868C  3B E0 00 00 */	li r31, 0
/* 801DB750 001D8690  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DB754 001D8694  3B C0 00 00 */	li r30, 0
/* 801DB758 001D8698  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DB75C 001D869C  7C 7D 1B 78 */	mr r29, r3
/* 801DB760 001D86A0  48 00 00 34 */	b lbl_801DB794
lbl_801DB764:
/* 801DB764 001D86A4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 801DB768 001D86A8  7C 03 F0 AE */	lbzx r0, r3, r30
/* 801DB76C 001D86AC  28 00 00 00 */	cmplwi r0, 0
/* 801DB770 001D86B0  40 82 00 1C */	bne lbl_801DB78C
/* 801DB774 001D86B4  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 801DB778 001D86B8  7C 60 FA 14 */	add r3, r0, r31
/* 801DB77C 001D86BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB780 001D86C0  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 801DB784 001D86C4  7D 89 03 A6 */	mtctr r12
/* 801DB788 001D86C8  4E 80 04 21 */	bctrl 
lbl_801DB78C:
/* 801DB78C 001D86CC  3B FF 01 F8 */	addi r31, r31, 0x1f8
/* 801DB790 001D86D0  3B DE 00 01 */	addi r30, r30, 1
lbl_801DB794:
/* 801DB794 001D86D4  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 801DB798 001D86D8  7C 1E 00 00 */	cmpw r30, r0
/* 801DB79C 001D86DC  41 80 FF C8 */	blt lbl_801DB764
/* 801DB7A0 001D86E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DB7A4 001D86E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DB7A8 001D86E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DB7AC 001D86EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DB7B0 001D86F0  7C 08 03 A6 */	mtlr r0
/* 801DB7B4 001D86F4  38 21 00 20 */	addi r1, r1, 0x20
/* 801DB7B8 001D86F8  4E 80 00 20 */	blr 

.global "doSetView__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fi"
"doSetView__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fi":
/* 801DB7BC 001D86FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DB7C0 001D8700  7C 08 02 A6 */	mflr r0
/* 801DB7C4 001D8704  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DB7C8 001D8708  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DB7CC 001D870C  3B E0 00 00 */	li r31, 0
/* 801DB7D0 001D8710  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DB7D4 001D8714  3B C0 00 00 */	li r30, 0
/* 801DB7D8 001D8718  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DB7DC 001D871C  7C 9D 23 78 */	mr r29, r4
/* 801DB7E0 001D8720  93 81 00 10 */	stw r28, 0x10(r1)
/* 801DB7E4 001D8724  7C 7C 1B 78 */	mr r28, r3
/* 801DB7E8 001D8728  48 00 00 38 */	b lbl_801DB820
lbl_801DB7EC:
/* 801DB7EC 001D872C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 801DB7F0 001D8730  7C 03 F0 AE */	lbzx r0, r3, r30
/* 801DB7F4 001D8734  28 00 00 00 */	cmplwi r0, 0
/* 801DB7F8 001D8738  40 82 00 20 */	bne lbl_801DB818
/* 801DB7FC 001D873C  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 801DB800 001D8740  7F A4 EB 78 */	mr r4, r29
/* 801DB804 001D8744  7C 60 FA 14 */	add r3, r0, r31
/* 801DB808 001D8748  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB80C 001D874C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 801DB810 001D8750  7D 89 03 A6 */	mtctr r12
/* 801DB814 001D8754  4E 80 04 21 */	bctrl 
lbl_801DB818:
/* 801DB818 001D8758  3B FF 01 F8 */	addi r31, r31, 0x1f8
/* 801DB81C 001D875C  3B DE 00 01 */	addi r30, r30, 1
lbl_801DB820:
/* 801DB820 001D8760  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 801DB824 001D8764  7C 1E 00 00 */	cmpw r30, r0
/* 801DB828 001D8768  41 80 FF C4 */	blt lbl_801DB7EC
/* 801DB82C 001D876C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DB830 001D8770  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DB834 001D8774  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DB838 001D8778  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DB83C 001D877C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801DB840 001D8780  7C 08 03 A6 */	mtlr r0
/* 801DB844 001D8784  38 21 00 20 */	addi r1, r1, 0x20
/* 801DB848 001D8788  4E 80 00 20 */	blr 

.global "doViewCalc__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"doViewCalc__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB84C 001D878C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DB850 001D8790  7C 08 02 A6 */	mflr r0
/* 801DB854 001D8794  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DB858 001D8798  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DB85C 001D879C  3B E0 00 00 */	li r31, 0
/* 801DB860 001D87A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DB864 001D87A4  3B C0 00 00 */	li r30, 0
/* 801DB868 001D87A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DB86C 001D87AC  7C 7D 1B 78 */	mr r29, r3
/* 801DB870 001D87B0  48 00 00 34 */	b lbl_801DB8A4
lbl_801DB874:
/* 801DB874 001D87B4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 801DB878 001D87B8  7C 03 F0 AE */	lbzx r0, r3, r30
/* 801DB87C 001D87BC  28 00 00 00 */	cmplwi r0, 0
/* 801DB880 001D87C0  40 82 00 1C */	bne lbl_801DB89C
/* 801DB884 001D87C4  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 801DB888 001D87C8  7C 60 FA 14 */	add r3, r0, r31
/* 801DB88C 001D87CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB890 001D87D0  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 801DB894 001D87D4  7D 89 03 A6 */	mtctr r12
/* 801DB898 001D87D8  4E 80 04 21 */	bctrl 
lbl_801DB89C:
/* 801DB89C 001D87DC  3B FF 01 F8 */	addi r31, r31, 0x1f8
/* 801DB8A0 001D87E0  3B DE 00 01 */	addi r30, r30, 1
lbl_801DB8A4:
/* 801DB8A4 001D87E4  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 801DB8A8 001D87E8  7C 1E 00 00 */	cmpw r30, r0
/* 801DB8AC 001D87EC  41 80 FF C8 */	blt lbl_801DB874
/* 801DB8B0 001D87F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DB8B4 001D87F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DB8B8 001D87F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DB8BC 001D87FC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DB8C0 001D8800  7C 08 03 A6 */	mtlr r0
/* 801DB8C4 001D8804  38 21 00 20 */	addi r1, r1, 0x20
/* 801DB8C8 001D8808  4E 80 00 20 */	blr 

.global "doSimulation__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Ff"
"doSimulation__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Ff":
/* 801DB8CC 001D880C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DB8D0 001D8810  7C 08 02 A6 */	mflr r0
/* 801DB8D4 001D8814  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DB8D8 001D8818  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801DB8DC 001D881C  FF E0 08 90 */	fmr f31, f1
/* 801DB8E0 001D8820  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801DB8E4 001D8824  3B E0 00 00 */	li r31, 0
/* 801DB8E8 001D8828  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801DB8EC 001D882C  3B C0 00 00 */	li r30, 0
/* 801DB8F0 001D8830  93 A1 00 0C */	stw r29, 0xc(r1)
/* 801DB8F4 001D8834  7C 7D 1B 78 */	mr r29, r3
/* 801DB8F8 001D8838  48 00 00 38 */	b lbl_801DB930
lbl_801DB8FC:
/* 801DB8FC 001D883C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 801DB900 001D8840  7C 03 F0 AE */	lbzx r0, r3, r30
/* 801DB904 001D8844  28 00 00 00 */	cmplwi r0, 0
/* 801DB908 001D8848  40 82 00 20 */	bne lbl_801DB928
/* 801DB90C 001D884C  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 801DB910 001D8850  FC 20 F8 90 */	fmr f1, f31
/* 801DB914 001D8854  7C 60 FA 14 */	add r3, r0, r31
/* 801DB918 001D8858  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB91C 001D885C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801DB920 001D8860  7D 89 03 A6 */	mtctr r12
/* 801DB924 001D8864  4E 80 04 21 */	bctrl 
lbl_801DB928:
/* 801DB928 001D8868  3B FF 01 F8 */	addi r31, r31, 0x1f8
/* 801DB92C 001D886C  3B DE 00 01 */	addi r30, r30, 1
lbl_801DB930:
/* 801DB930 001D8870  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 801DB934 001D8874  7C 1E 00 00 */	cmpw r30, r0
/* 801DB938 001D8878  41 80 FF C4 */	blt lbl_801DB8FC
/* 801DB93C 001D887C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DB940 001D8880  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801DB944 001D8884  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801DB948 001D8888  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801DB94C 001D888C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 801DB950 001D8890  7C 08 03 A6 */	mtlr r0
/* 801DB954 001D8894  38 21 00 20 */	addi r1, r1, 0x20
/* 801DB958 001D8898  4E 80 00 20 */	blr 

.global "doDirectDraw__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FR8Graphics"
"doDirectDraw__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FR8Graphics":
/* 801DB95C 001D889C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DB960 001D88A0  7C 08 02 A6 */	mflr r0
/* 801DB964 001D88A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DB968 001D88A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DB96C 001D88AC  3B E0 00 00 */	li r31, 0
/* 801DB970 001D88B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DB974 001D88B4  3B C0 00 00 */	li r30, 0
/* 801DB978 001D88B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DB97C 001D88BC  7C 9D 23 78 */	mr r29, r4
/* 801DB980 001D88C0  93 81 00 10 */	stw r28, 0x10(r1)
/* 801DB984 001D88C4  7C 7C 1B 78 */	mr r28, r3
/* 801DB988 001D88C8  48 00 00 38 */	b lbl_801DB9C0
lbl_801DB98C:
/* 801DB98C 001D88CC  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 801DB990 001D88D0  7C 03 F0 AE */	lbzx r0, r3, r30
/* 801DB994 001D88D4  28 00 00 00 */	cmplwi r0, 0
/* 801DB998 001D88D8  40 82 00 20 */	bne lbl_801DB9B8
/* 801DB99C 001D88DC  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 801DB9A0 001D88E0  7F A4 EB 78 */	mr r4, r29
/* 801DB9A4 001D88E4  7C 60 FA 14 */	add r3, r0, r31
/* 801DB9A8 001D88E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB9AC 001D88EC  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801DB9B0 001D88F0  7D 89 03 A6 */	mtctr r12
/* 801DB9B4 001D88F4  4E 80 04 21 */	bctrl 
lbl_801DB9B8:
/* 801DB9B8 001D88F8  3B FF 01 F8 */	addi r31, r31, 0x1f8
/* 801DB9BC 001D88FC  3B DE 00 01 */	addi r30, r30, 1
lbl_801DB9C0:
/* 801DB9C0 001D8900  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 801DB9C4 001D8904  7C 1E 00 00 */	cmpw r30, r0
/* 801DB9C8 001D8908  41 80 FF C4 */	blt lbl_801DB98C
/* 801DB9CC 001D890C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DB9D0 001D8910  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DB9D4 001D8914  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DB9D8 001D8918  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DB9DC 001D891C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801DB9E0 001D8920  7C 08 03 A6 */	mtlr r0
/* 801DB9E4 001D8924  38 21 00 20 */	addi r1, r1, 0x20
/* 801DB9E8 001D8928  4E 80 00 20 */	blr 

.global "resetMgr__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"resetMgr__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DB9EC 001D892C  38 00 00 00 */	li r0, 0
/* 801DB9F0 001D8930  90 03 00 28 */	stw r0, 0x28(r3)
/* 801DB9F4 001D8934  90 03 00 24 */	stw r0, 0x24(r3)
/* 801DB9F8 001D8938  90 03 00 20 */	stw r0, 0x20(r3)
/* 801DB9FC 001D893C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 801DBA00 001D8940  4E 80 00 20 */	blr 

.global "clearMgr__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"clearMgr__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DBA04 001D8944  38 00 00 00 */	li r0, 0
/* 801DBA08 001D8948  38 C0 00 00 */	li r6, 0
/* 801DBA0C 001D894C  90 03 00 20 */	stw r0, 0x20(r3)
/* 801DBA10 001D8950  38 A0 00 01 */	li r5, 1
/* 801DBA14 001D8954  48 00 00 10 */	b lbl_801DBA24
lbl_801DBA18:
/* 801DBA18 001D8958  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801DBA1C 001D895C  7C A4 31 AE */	stbx r5, r4, r6
/* 801DBA20 001D8960  38 C6 00 01 */	addi r6, r6, 1
lbl_801DBA24:
/* 801DBA24 001D8964  80 03 00 24 */	lwz r0, 0x24(r3)
/* 801DBA28 001D8968  7C 06 00 00 */	cmpw r6, r0
/* 801DBA2C 001D896C  41 80 FF EC */	blt lbl_801DBA18
/* 801DBA30 001D8970  4E 80 00 20 */	blr 

.global "onAlloc__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"onAlloc__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DBA34 001D8974  4E 80 00 20 */	blr 

.global "getEmptyIndex__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"getEmptyIndex__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DBA38 001D8978  80 03 00 24 */	lwz r0, 0x24(r3)
/* 801DBA3C 001D897C  38 A0 00 00 */	li r5, 0
/* 801DBA40 001D8980  7C 09 03 A6 */	mtctr r0
/* 801DBA44 001D8984  2C 00 00 00 */	cmpwi r0, 0
/* 801DBA48 001D8988  40 81 00 24 */	ble lbl_801DBA6C
lbl_801DBA4C:
/* 801DBA4C 001D898C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801DBA50 001D8990  7C 04 28 AE */	lbzx r0, r4, r5
/* 801DBA54 001D8994  28 00 00 01 */	cmplwi r0, 1
/* 801DBA58 001D8998  40 82 00 0C */	bne lbl_801DBA64
/* 801DBA5C 001D899C  7C A3 2B 78 */	mr r3, r5
/* 801DBA60 001D89A0  4E 80 00 20 */	blr 
lbl_801DBA64:
/* 801DBA64 001D89A4  38 A5 00 01 */	addi r5, r5, 1
/* 801DBA68 001D89A8  42 00 FF E4 */	bdnz lbl_801DBA4C
lbl_801DBA6C:
/* 801DBA6C 001D89AC  38 60 FF FF */	li r3, -1
/* 801DBA70 001D89B0  4E 80 00 20 */	blr 

.global "get__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FPv"
"get__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FPv":
/* 801DBA74 001D89B4  1C 04 01 F8 */	mulli r0, r4, 0x1f8
/* 801DBA78 001D89B8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 801DBA7C 001D89BC  7C 63 02 14 */	add r3, r3, r0
/* 801DBA80 001D89C0  4E 80 00 20 */	blr 

.global "doAnimation__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"doAnimation__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DBA84 001D89C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DBA88 001D89C8  7C 08 02 A6 */	mflr r0
/* 801DBA8C 001D89CC  3C 80 80 4B */	lis r4, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@ha
/* 801DBA90 001D89D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DBA94 001D89D4  38 00 00 00 */	li r0, 0
/* 801DBA98 001D89D8  38 84 05 A4 */	addi r4, r4, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@l
/* 801DBA9C 001D89DC  28 00 00 00 */	cmplwi r0, 0
/* 801DBAA0 001D89E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DBAA4 001D89E4  90 81 00 08 */	stw r4, 8(r1)
/* 801DBAA8 001D89E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DBAAC 001D89EC  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DBAB0 001D89F0  40 82 00 1C */	bne lbl_801DBACC
/* 801DBAB4 001D89F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBAB8 001D89F8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DBABC 001D89FC  7D 89 03 A6 */	mtctr r12
/* 801DBAC0 001D8A00  4E 80 04 21 */	bctrl 
/* 801DBAC4 001D8A04  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBAC8 001D8A08  48 00 01 70 */	b lbl_801DBC38
lbl_801DBACC:
/* 801DBACC 001D8A0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBAD0 001D8A10  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DBAD4 001D8A14  7D 89 03 A6 */	mtctr r12
/* 801DBAD8 001D8A18  4E 80 04 21 */	bctrl 
/* 801DBADC 001D8A1C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBAE0 001D8A20  48 00 00 58 */	b lbl_801DBB38
lbl_801DBAE4:
/* 801DBAE4 001D8A24  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBAE8 001D8A28  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBAEC 001D8A2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBAF0 001D8A30  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DBAF4 001D8A34  7D 89 03 A6 */	mtctr r12
/* 801DBAF8 001D8A38  4E 80 04 21 */	bctrl 
/* 801DBAFC 001D8A3C  7C 64 1B 78 */	mr r4, r3
/* 801DBB00 001D8A40  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DBB04 001D8A44  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBB08 001D8A48  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DBB0C 001D8A4C  7D 89 03 A6 */	mtctr r12
/* 801DBB10 001D8A50  4E 80 04 21 */	bctrl 
/* 801DBB14 001D8A54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBB18 001D8A58  40 82 01 20 */	bne lbl_801DBC38
/* 801DBB1C 001D8A5C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBB20 001D8A60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBB24 001D8A64  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBB28 001D8A68  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBB2C 001D8A6C  7D 89 03 A6 */	mtctr r12
/* 801DBB30 001D8A70  4E 80 04 21 */	bctrl 
/* 801DBB34 001D8A74  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DBB38:
/* 801DBB38 001D8A78  81 81 00 08 */	lwz r12, 8(r1)
/* 801DBB3C 001D8A7C  38 61 00 08 */	addi r3, r1, 8
/* 801DBB40 001D8A80  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DBB44 001D8A84  7D 89 03 A6 */	mtctr r12
/* 801DBB48 001D8A88  4E 80 04 21 */	bctrl 
/* 801DBB4C 001D8A8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBB50 001D8A90  41 82 FF 94 */	beq lbl_801DBAE4
/* 801DBB54 001D8A94  48 00 00 E4 */	b lbl_801DBC38
lbl_801DBB58:
/* 801DBB58 001D8A98  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBB5C 001D8A9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBB60 001D8AA0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DBB64 001D8AA4  7D 89 03 A6 */	mtctr r12
/* 801DBB68 001D8AA8  4E 80 04 21 */	bctrl 
/* 801DBB6C 001D8AAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBB70 001D8AB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DBB74 001D8AB4  7D 89 03 A6 */	mtctr r12
/* 801DBB78 001D8AB8  4E 80 04 21 */	bctrl 
/* 801DBB7C 001D8ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DBB80 001D8AC0  28 00 00 00 */	cmplwi r0, 0
/* 801DBB84 001D8AC4  40 82 00 24 */	bne lbl_801DBBA8
/* 801DBB88 001D8AC8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBB8C 001D8ACC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBB90 001D8AD0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBB94 001D8AD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBB98 001D8AD8  7D 89 03 A6 */	mtctr r12
/* 801DBB9C 001D8ADC  4E 80 04 21 */	bctrl 
/* 801DBBA0 001D8AE0  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBBA4 001D8AE4  48 00 00 94 */	b lbl_801DBC38
lbl_801DBBA8:
/* 801DBBA8 001D8AE8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBBAC 001D8AEC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBBB0 001D8AF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBBB4 001D8AF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBBB8 001D8AF8  7D 89 03 A6 */	mtctr r12
/* 801DBBBC 001D8AFC  4E 80 04 21 */	bctrl 
/* 801DBBC0 001D8B00  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBBC4 001D8B04  48 00 00 58 */	b lbl_801DBC1C
lbl_801DBBC8:
/* 801DBBC8 001D8B08  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBBCC 001D8B0C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBBD0 001D8B10  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBBD4 001D8B14  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DBBD8 001D8B18  7D 89 03 A6 */	mtctr r12
/* 801DBBDC 001D8B1C  4E 80 04 21 */	bctrl 
/* 801DBBE0 001D8B20  7C 64 1B 78 */	mr r4, r3
/* 801DBBE4 001D8B24  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DBBE8 001D8B28  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBBEC 001D8B2C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DBBF0 001D8B30  7D 89 03 A6 */	mtctr r12
/* 801DBBF4 001D8B34  4E 80 04 21 */	bctrl 
/* 801DBBF8 001D8B38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBBFC 001D8B3C  40 82 00 3C */	bne lbl_801DBC38
/* 801DBC00 001D8B40  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBC04 001D8B44  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBC08 001D8B48  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBC0C 001D8B4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBC10 001D8B50  7D 89 03 A6 */	mtctr r12
/* 801DBC14 001D8B54  4E 80 04 21 */	bctrl 
/* 801DBC18 001D8B58  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DBC1C:
/* 801DBC1C 001D8B5C  81 81 00 08 */	lwz r12, 8(r1)
/* 801DBC20 001D8B60  38 61 00 08 */	addi r3, r1, 8
/* 801DBC24 001D8B64  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DBC28 001D8B68  7D 89 03 A6 */	mtctr r12
/* 801DBC2C 001D8B6C  4E 80 04 21 */	bctrl 
/* 801DBC30 001D8B70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBC34 001D8B74  41 82 FF 94 */	beq lbl_801DBBC8
lbl_801DBC38:
/* 801DBC38 001D8B78  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBC3C 001D8B7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBC40 001D8B80  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DBC44 001D8B84  7D 89 03 A6 */	mtctr r12
/* 801DBC48 001D8B88  4E 80 04 21 */	bctrl 
/* 801DBC4C 001D8B8C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBC50 001D8B90  7C 04 18 40 */	cmplw r4, r3
/* 801DBC54 001D8B94  40 82 FF 04 */	bne lbl_801DBB58
/* 801DBC58 001D8B98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DBC5C 001D8B9C  7C 08 03 A6 */	mtlr r0
/* 801DBC60 001D8BA0  38 21 00 20 */	addi r1, r1, 0x20
/* 801DBC64 001D8BA4  4E 80 00 20 */	blr 

.global "doEntry__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"doEntry__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DBC68 001D8BA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DBC6C 001D8BAC  7C 08 02 A6 */	mflr r0
/* 801DBC70 001D8BB0  3C 80 80 4B */	lis r4, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@ha
/* 801DBC74 001D8BB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DBC78 001D8BB8  38 00 00 00 */	li r0, 0
/* 801DBC7C 001D8BBC  38 84 05 A4 */	addi r4, r4, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@l
/* 801DBC80 001D8BC0  28 00 00 00 */	cmplwi r0, 0
/* 801DBC84 001D8BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DBC88 001D8BC8  90 81 00 08 */	stw r4, 8(r1)
/* 801DBC8C 001D8BCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DBC90 001D8BD0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DBC94 001D8BD4  40 82 00 1C */	bne lbl_801DBCB0
/* 801DBC98 001D8BD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBC9C 001D8BDC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DBCA0 001D8BE0  7D 89 03 A6 */	mtctr r12
/* 801DBCA4 001D8BE4  4E 80 04 21 */	bctrl 
/* 801DBCA8 001D8BE8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBCAC 001D8BEC  48 00 01 70 */	b lbl_801DBE1C
lbl_801DBCB0:
/* 801DBCB0 001D8BF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBCB4 001D8BF4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DBCB8 001D8BF8  7D 89 03 A6 */	mtctr r12
/* 801DBCBC 001D8BFC  4E 80 04 21 */	bctrl 
/* 801DBCC0 001D8C00  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBCC4 001D8C04  48 00 00 58 */	b lbl_801DBD1C
lbl_801DBCC8:
/* 801DBCC8 001D8C08  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBCCC 001D8C0C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBCD0 001D8C10  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBCD4 001D8C14  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DBCD8 001D8C18  7D 89 03 A6 */	mtctr r12
/* 801DBCDC 001D8C1C  4E 80 04 21 */	bctrl 
/* 801DBCE0 001D8C20  7C 64 1B 78 */	mr r4, r3
/* 801DBCE4 001D8C24  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DBCE8 001D8C28  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBCEC 001D8C2C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DBCF0 001D8C30  7D 89 03 A6 */	mtctr r12
/* 801DBCF4 001D8C34  4E 80 04 21 */	bctrl 
/* 801DBCF8 001D8C38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBCFC 001D8C3C  40 82 01 20 */	bne lbl_801DBE1C
/* 801DBD00 001D8C40  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBD04 001D8C44  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBD08 001D8C48  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBD0C 001D8C4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBD10 001D8C50  7D 89 03 A6 */	mtctr r12
/* 801DBD14 001D8C54  4E 80 04 21 */	bctrl 
/* 801DBD18 001D8C58  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DBD1C:
/* 801DBD1C 001D8C5C  81 81 00 08 */	lwz r12, 8(r1)
/* 801DBD20 001D8C60  38 61 00 08 */	addi r3, r1, 8
/* 801DBD24 001D8C64  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DBD28 001D8C68  7D 89 03 A6 */	mtctr r12
/* 801DBD2C 001D8C6C  4E 80 04 21 */	bctrl 
/* 801DBD30 001D8C70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBD34 001D8C74  41 82 FF 94 */	beq lbl_801DBCC8
/* 801DBD38 001D8C78  48 00 00 E4 */	b lbl_801DBE1C
lbl_801DBD3C:
/* 801DBD3C 001D8C7C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBD40 001D8C80  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBD44 001D8C84  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DBD48 001D8C88  7D 89 03 A6 */	mtctr r12
/* 801DBD4C 001D8C8C  4E 80 04 21 */	bctrl 
/* 801DBD50 001D8C90  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBD54 001D8C94  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 801DBD58 001D8C98  7D 89 03 A6 */	mtctr r12
/* 801DBD5C 001D8C9C  4E 80 04 21 */	bctrl 
/* 801DBD60 001D8CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DBD64 001D8CA4  28 00 00 00 */	cmplwi r0, 0
/* 801DBD68 001D8CA8  40 82 00 24 */	bne lbl_801DBD8C
/* 801DBD6C 001D8CAC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBD70 001D8CB0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBD74 001D8CB4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBD78 001D8CB8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBD7C 001D8CBC  7D 89 03 A6 */	mtctr r12
/* 801DBD80 001D8CC0  4E 80 04 21 */	bctrl 
/* 801DBD84 001D8CC4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBD88 001D8CC8  48 00 00 94 */	b lbl_801DBE1C
lbl_801DBD8C:
/* 801DBD8C 001D8CCC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBD90 001D8CD0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBD94 001D8CD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBD98 001D8CD8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBD9C 001D8CDC  7D 89 03 A6 */	mtctr r12
/* 801DBDA0 001D8CE0  4E 80 04 21 */	bctrl 
/* 801DBDA4 001D8CE4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBDA8 001D8CE8  48 00 00 58 */	b lbl_801DBE00
lbl_801DBDAC:
/* 801DBDAC 001D8CEC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBDB0 001D8CF0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBDB4 001D8CF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBDB8 001D8CF8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DBDBC 001D8CFC  7D 89 03 A6 */	mtctr r12
/* 801DBDC0 001D8D00  4E 80 04 21 */	bctrl 
/* 801DBDC4 001D8D04  7C 64 1B 78 */	mr r4, r3
/* 801DBDC8 001D8D08  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DBDCC 001D8D0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBDD0 001D8D10  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DBDD4 001D8D14  7D 89 03 A6 */	mtctr r12
/* 801DBDD8 001D8D18  4E 80 04 21 */	bctrl 
/* 801DBDDC 001D8D1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBDE0 001D8D20  40 82 00 3C */	bne lbl_801DBE1C
/* 801DBDE4 001D8D24  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBDE8 001D8D28  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBDEC 001D8D2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBDF0 001D8D30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBDF4 001D8D34  7D 89 03 A6 */	mtctr r12
/* 801DBDF8 001D8D38  4E 80 04 21 */	bctrl 
/* 801DBDFC 001D8D3C  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DBE00:
/* 801DBE00 001D8D40  81 81 00 08 */	lwz r12, 8(r1)
/* 801DBE04 001D8D44  38 61 00 08 */	addi r3, r1, 8
/* 801DBE08 001D8D48  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DBE0C 001D8D4C  7D 89 03 A6 */	mtctr r12
/* 801DBE10 001D8D50  4E 80 04 21 */	bctrl 
/* 801DBE14 001D8D54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBE18 001D8D58  41 82 FF 94 */	beq lbl_801DBDAC
lbl_801DBE1C:
/* 801DBE1C 001D8D5C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBE20 001D8D60  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBE24 001D8D64  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DBE28 001D8D68  7D 89 03 A6 */	mtctr r12
/* 801DBE2C 001D8D6C  4E 80 04 21 */	bctrl 
/* 801DBE30 001D8D70  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBE34 001D8D74  7C 04 18 40 */	cmplw r4, r3
/* 801DBE38 001D8D78  40 82 FF 04 */	bne lbl_801DBD3C
/* 801DBE3C 001D8D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DBE40 001D8D80  7C 08 03 A6 */	mtlr r0
/* 801DBE44 001D8D84  38 21 00 20 */	addi r1, r1, 0x20
/* 801DBE48 001D8D88  4E 80 00 20 */	blr 

.global "doSetView__37ObjectMgr<Q34Game12ItemPikihead4Item>Fi"
"doSetView__37ObjectMgr<Q34Game12ItemPikihead4Item>Fi":
/* 801DBE4C 001D8D8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DBE50 001D8D90  7C 08 02 A6 */	mflr r0
/* 801DBE54 001D8D94  3C A0 80 4B */	lis r5, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@ha
/* 801DBE58 001D8D98  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DBE5C 001D8D9C  38 00 00 00 */	li r0, 0
/* 801DBE60 001D8DA0  38 A5 05 A4 */	addi r5, r5, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@l
/* 801DBE64 001D8DA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DBE68 001D8DA8  28 00 00 00 */	cmplwi r0, 0
/* 801DBE6C 001D8DAC  7C 9F 23 78 */	mr r31, r4
/* 801DBE70 001D8DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DBE74 001D8DB4  90 A1 00 08 */	stw r5, 8(r1)
/* 801DBE78 001D8DB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DBE7C 001D8DBC  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DBE80 001D8DC0  40 82 00 1C */	bne lbl_801DBE9C
/* 801DBE84 001D8DC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBE88 001D8DC8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DBE8C 001D8DCC  7D 89 03 A6 */	mtctr r12
/* 801DBE90 001D8DD0  4E 80 04 21 */	bctrl 
/* 801DBE94 001D8DD4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBE98 001D8DD8  48 00 01 74 */	b lbl_801DC00C
lbl_801DBE9C:
/* 801DBE9C 001D8DDC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBEA0 001D8DE0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DBEA4 001D8DE4  7D 89 03 A6 */	mtctr r12
/* 801DBEA8 001D8DE8  4E 80 04 21 */	bctrl 
/* 801DBEAC 001D8DEC  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBEB0 001D8DF0  48 00 00 58 */	b lbl_801DBF08
lbl_801DBEB4:
/* 801DBEB4 001D8DF4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBEB8 001D8DF8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBEBC 001D8DFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBEC0 001D8E00  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DBEC4 001D8E04  7D 89 03 A6 */	mtctr r12
/* 801DBEC8 001D8E08  4E 80 04 21 */	bctrl 
/* 801DBECC 001D8E0C  7C 64 1B 78 */	mr r4, r3
/* 801DBED0 001D8E10  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DBED4 001D8E14  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBED8 001D8E18  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DBEDC 001D8E1C  7D 89 03 A6 */	mtctr r12
/* 801DBEE0 001D8E20  4E 80 04 21 */	bctrl 
/* 801DBEE4 001D8E24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBEE8 001D8E28  40 82 01 24 */	bne lbl_801DC00C
/* 801DBEEC 001D8E2C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBEF0 001D8E30  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBEF4 001D8E34  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBEF8 001D8E38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBEFC 001D8E3C  7D 89 03 A6 */	mtctr r12
/* 801DBF00 001D8E40  4E 80 04 21 */	bctrl 
/* 801DBF04 001D8E44  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DBF08:
/* 801DBF08 001D8E48  81 81 00 08 */	lwz r12, 8(r1)
/* 801DBF0C 001D8E4C  38 61 00 08 */	addi r3, r1, 8
/* 801DBF10 001D8E50  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DBF14 001D8E54  7D 89 03 A6 */	mtctr r12
/* 801DBF18 001D8E58  4E 80 04 21 */	bctrl 
/* 801DBF1C 001D8E5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBF20 001D8E60  41 82 FF 94 */	beq lbl_801DBEB4
/* 801DBF24 001D8E64  48 00 00 E8 */	b lbl_801DC00C
lbl_801DBF28:
/* 801DBF28 001D8E68  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBF2C 001D8E6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBF30 001D8E70  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DBF34 001D8E74  7D 89 03 A6 */	mtctr r12
/* 801DBF38 001D8E78  4E 80 04 21 */	bctrl 
/* 801DBF3C 001D8E7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBF40 001D8E80  7F E4 FB 78 */	mr r4, r31
/* 801DBF44 001D8E84  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 801DBF48 001D8E88  7D 89 03 A6 */	mtctr r12
/* 801DBF4C 001D8E8C  4E 80 04 21 */	bctrl 
/* 801DBF50 001D8E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DBF54 001D8E94  28 00 00 00 */	cmplwi r0, 0
/* 801DBF58 001D8E98  40 82 00 24 */	bne lbl_801DBF7C
/* 801DBF5C 001D8E9C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBF60 001D8EA0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBF64 001D8EA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBF68 001D8EA8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBF6C 001D8EAC  7D 89 03 A6 */	mtctr r12
/* 801DBF70 001D8EB0  4E 80 04 21 */	bctrl 
/* 801DBF74 001D8EB4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBF78 001D8EB8  48 00 00 94 */	b lbl_801DC00C
lbl_801DBF7C:
/* 801DBF7C 001D8EBC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBF80 001D8EC0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBF84 001D8EC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBF88 001D8EC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBF8C 001D8ECC  7D 89 03 A6 */	mtctr r12
/* 801DBF90 001D8ED0  4E 80 04 21 */	bctrl 
/* 801DBF94 001D8ED4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DBF98 001D8ED8  48 00 00 58 */	b lbl_801DBFF0
lbl_801DBF9C:
/* 801DBF9C 001D8EDC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBFA0 001D8EE0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBFA4 001D8EE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBFA8 001D8EE8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DBFAC 001D8EEC  7D 89 03 A6 */	mtctr r12
/* 801DBFB0 001D8EF0  4E 80 04 21 */	bctrl 
/* 801DBFB4 001D8EF4  7C 64 1B 78 */	mr r4, r3
/* 801DBFB8 001D8EF8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DBFBC 001D8EFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBFC0 001D8F00  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DBFC4 001D8F04  7D 89 03 A6 */	mtctr r12
/* 801DBFC8 001D8F08  4E 80 04 21 */	bctrl 
/* 801DBFCC 001D8F0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBFD0 001D8F10  40 82 00 3C */	bne lbl_801DC00C
/* 801DBFD4 001D8F14  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DBFD8 001D8F18  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBFDC 001D8F1C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBFE0 001D8F20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DBFE4 001D8F24  7D 89 03 A6 */	mtctr r12
/* 801DBFE8 001D8F28  4E 80 04 21 */	bctrl 
/* 801DBFEC 001D8F2C  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DBFF0:
/* 801DBFF0 001D8F30  81 81 00 08 */	lwz r12, 8(r1)
/* 801DBFF4 001D8F34  38 61 00 08 */	addi r3, r1, 8
/* 801DBFF8 001D8F38  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DBFFC 001D8F3C  7D 89 03 A6 */	mtctr r12
/* 801DC000 001D8F40  4E 80 04 21 */	bctrl 
/* 801DC004 001D8F44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC008 001D8F48  41 82 FF 94 */	beq lbl_801DBF9C
lbl_801DC00C:
/* 801DC00C 001D8F4C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC010 001D8F50  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC014 001D8F54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DC018 001D8F58  7D 89 03 A6 */	mtctr r12
/* 801DC01C 001D8F5C  4E 80 04 21 */	bctrl 
/* 801DC020 001D8F60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC024 001D8F64  7C 04 18 40 */	cmplw r4, r3
/* 801DC028 001D8F68  40 82 FF 00 */	bne lbl_801DBF28
/* 801DC02C 001D8F6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC030 001D8F70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DC034 001D8F74  7C 08 03 A6 */	mtlr r0
/* 801DC038 001D8F78  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC03C 001D8F7C  4E 80 00 20 */	blr 

.global "doViewCalc__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"doViewCalc__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DC040 001D8F80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC044 001D8F84  7C 08 02 A6 */	mflr r0
/* 801DC048 001D8F88  3C 80 80 4B */	lis r4, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@ha
/* 801DC04C 001D8F8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC050 001D8F90  38 00 00 00 */	li r0, 0
/* 801DC054 001D8F94  38 84 05 A4 */	addi r4, r4, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@l
/* 801DC058 001D8F98  28 00 00 00 */	cmplwi r0, 0
/* 801DC05C 001D8F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC060 001D8FA0  90 81 00 08 */	stw r4, 8(r1)
/* 801DC064 001D8FA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DC068 001D8FA8  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DC06C 001D8FAC  40 82 00 1C */	bne lbl_801DC088
/* 801DC070 001D8FB0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC074 001D8FB4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DC078 001D8FB8  7D 89 03 A6 */	mtctr r12
/* 801DC07C 001D8FBC  4E 80 04 21 */	bctrl 
/* 801DC080 001D8FC0  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC084 001D8FC4  48 00 01 70 */	b lbl_801DC1F4
lbl_801DC088:
/* 801DC088 001D8FC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC08C 001D8FCC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DC090 001D8FD0  7D 89 03 A6 */	mtctr r12
/* 801DC094 001D8FD4  4E 80 04 21 */	bctrl 
/* 801DC098 001D8FD8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC09C 001D8FDC  48 00 00 58 */	b lbl_801DC0F4
lbl_801DC0A0:
/* 801DC0A0 001D8FE0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC0A4 001D8FE4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC0A8 001D8FE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC0AC 001D8FEC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC0B0 001D8FF0  7D 89 03 A6 */	mtctr r12
/* 801DC0B4 001D8FF4  4E 80 04 21 */	bctrl 
/* 801DC0B8 001D8FF8  7C 64 1B 78 */	mr r4, r3
/* 801DC0BC 001D8FFC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DC0C0 001D9000  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC0C4 001D9004  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DC0C8 001D9008  7D 89 03 A6 */	mtctr r12
/* 801DC0CC 001D900C  4E 80 04 21 */	bctrl 
/* 801DC0D0 001D9010  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC0D4 001D9014  40 82 01 20 */	bne lbl_801DC1F4
/* 801DC0D8 001D9018  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC0DC 001D901C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC0E0 001D9020  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC0E4 001D9024  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC0E8 001D9028  7D 89 03 A6 */	mtctr r12
/* 801DC0EC 001D902C  4E 80 04 21 */	bctrl 
/* 801DC0F0 001D9030  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DC0F4:
/* 801DC0F4 001D9034  81 81 00 08 */	lwz r12, 8(r1)
/* 801DC0F8 001D9038  38 61 00 08 */	addi r3, r1, 8
/* 801DC0FC 001D903C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DC100 001D9040  7D 89 03 A6 */	mtctr r12
/* 801DC104 001D9044  4E 80 04 21 */	bctrl 
/* 801DC108 001D9048  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC10C 001D904C  41 82 FF 94 */	beq lbl_801DC0A0
/* 801DC110 001D9050  48 00 00 E4 */	b lbl_801DC1F4
lbl_801DC114:
/* 801DC114 001D9054  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC118 001D9058  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC11C 001D905C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC120 001D9060  7D 89 03 A6 */	mtctr r12
/* 801DC124 001D9064  4E 80 04 21 */	bctrl 
/* 801DC128 001D9068  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC12C 001D906C  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 801DC130 001D9070  7D 89 03 A6 */	mtctr r12
/* 801DC134 001D9074  4E 80 04 21 */	bctrl 
/* 801DC138 001D9078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC13C 001D907C  28 00 00 00 */	cmplwi r0, 0
/* 801DC140 001D9080  40 82 00 24 */	bne lbl_801DC164
/* 801DC144 001D9084  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC148 001D9088  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC14C 001D908C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC150 001D9090  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC154 001D9094  7D 89 03 A6 */	mtctr r12
/* 801DC158 001D9098  4E 80 04 21 */	bctrl 
/* 801DC15C 001D909C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC160 001D90A0  48 00 00 94 */	b lbl_801DC1F4
lbl_801DC164:
/* 801DC164 001D90A4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC168 001D90A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC16C 001D90AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC170 001D90B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC174 001D90B4  7D 89 03 A6 */	mtctr r12
/* 801DC178 001D90B8  4E 80 04 21 */	bctrl 
/* 801DC17C 001D90BC  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC180 001D90C0  48 00 00 58 */	b lbl_801DC1D8
lbl_801DC184:
/* 801DC184 001D90C4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC188 001D90C8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC18C 001D90CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC190 001D90D0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC194 001D90D4  7D 89 03 A6 */	mtctr r12
/* 801DC198 001D90D8  4E 80 04 21 */	bctrl 
/* 801DC19C 001D90DC  7C 64 1B 78 */	mr r4, r3
/* 801DC1A0 001D90E0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DC1A4 001D90E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC1A8 001D90E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DC1AC 001D90EC  7D 89 03 A6 */	mtctr r12
/* 801DC1B0 001D90F0  4E 80 04 21 */	bctrl 
/* 801DC1B4 001D90F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC1B8 001D90F8  40 82 00 3C */	bne lbl_801DC1F4
/* 801DC1BC 001D90FC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC1C0 001D9100  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC1C4 001D9104  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC1C8 001D9108  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC1CC 001D910C  7D 89 03 A6 */	mtctr r12
/* 801DC1D0 001D9110  4E 80 04 21 */	bctrl 
/* 801DC1D4 001D9114  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DC1D8:
/* 801DC1D8 001D9118  81 81 00 08 */	lwz r12, 8(r1)
/* 801DC1DC 001D911C  38 61 00 08 */	addi r3, r1, 8
/* 801DC1E0 001D9120  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DC1E4 001D9124  7D 89 03 A6 */	mtctr r12
/* 801DC1E8 001D9128  4E 80 04 21 */	bctrl 
/* 801DC1EC 001D912C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC1F0 001D9130  41 82 FF 94 */	beq lbl_801DC184
lbl_801DC1F4:
/* 801DC1F4 001D9134  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC1F8 001D9138  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC1FC 001D913C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DC200 001D9140  7D 89 03 A6 */	mtctr r12
/* 801DC204 001D9144  4E 80 04 21 */	bctrl 
/* 801DC208 001D9148  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC20C 001D914C  7C 04 18 40 */	cmplw r4, r3
/* 801DC210 001D9150  40 82 FF 04 */	bne lbl_801DC114
/* 801DC214 001D9154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC218 001D9158  7C 08 03 A6 */	mtlr r0
/* 801DC21C 001D915C  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC220 001D9160  4E 80 00 20 */	blr 

.global "doSimulation__37ObjectMgr<Q34Game12ItemPikihead4Item>Ff"
"doSimulation__37ObjectMgr<Q34Game12ItemPikihead4Item>Ff":
/* 801DC224 001D9164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC228 001D9168  7C 08 02 A6 */	mflr r0
/* 801DC22C 001D916C  3C 80 80 4B */	lis r4, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@ha
/* 801DC230 001D9170  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC234 001D9174  38 00 00 00 */	li r0, 0
/* 801DC238 001D9178  38 84 05 A4 */	addi r4, r4, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@l
/* 801DC23C 001D917C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801DC240 001D9180  FF E0 08 90 */	fmr f31, f1
/* 801DC244 001D9184  28 00 00 00 */	cmplwi r0, 0
/* 801DC248 001D9188  90 81 00 08 */	stw r4, 8(r1)
/* 801DC24C 001D918C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC250 001D9190  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DC254 001D9194  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DC258 001D9198  40 82 00 1C */	bne lbl_801DC274
/* 801DC25C 001D919C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC260 001D91A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DC264 001D91A4  7D 89 03 A6 */	mtctr r12
/* 801DC268 001D91A8  4E 80 04 21 */	bctrl 
/* 801DC26C 001D91AC  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC270 001D91B0  48 00 01 74 */	b lbl_801DC3E4
lbl_801DC274:
/* 801DC274 001D91B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC278 001D91B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DC27C 001D91BC  7D 89 03 A6 */	mtctr r12
/* 801DC280 001D91C0  4E 80 04 21 */	bctrl 
/* 801DC284 001D91C4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC288 001D91C8  48 00 00 58 */	b lbl_801DC2E0
lbl_801DC28C:
/* 801DC28C 001D91CC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC290 001D91D0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC294 001D91D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC298 001D91D8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC29C 001D91DC  7D 89 03 A6 */	mtctr r12
/* 801DC2A0 001D91E0  4E 80 04 21 */	bctrl 
/* 801DC2A4 001D91E4  7C 64 1B 78 */	mr r4, r3
/* 801DC2A8 001D91E8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DC2AC 001D91EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC2B0 001D91F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DC2B4 001D91F4  7D 89 03 A6 */	mtctr r12
/* 801DC2B8 001D91F8  4E 80 04 21 */	bctrl 
/* 801DC2BC 001D91FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC2C0 001D9200  40 82 01 24 */	bne lbl_801DC3E4
/* 801DC2C4 001D9204  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC2C8 001D9208  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC2CC 001D920C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC2D0 001D9210  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC2D4 001D9214  7D 89 03 A6 */	mtctr r12
/* 801DC2D8 001D9218  4E 80 04 21 */	bctrl 
/* 801DC2DC 001D921C  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DC2E0:
/* 801DC2E0 001D9220  81 81 00 08 */	lwz r12, 8(r1)
/* 801DC2E4 001D9224  38 61 00 08 */	addi r3, r1, 8
/* 801DC2E8 001D9228  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DC2EC 001D922C  7D 89 03 A6 */	mtctr r12
/* 801DC2F0 001D9230  4E 80 04 21 */	bctrl 
/* 801DC2F4 001D9234  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC2F8 001D9238  41 82 FF 94 */	beq lbl_801DC28C
/* 801DC2FC 001D923C  48 00 00 E8 */	b lbl_801DC3E4
lbl_801DC300:
/* 801DC300 001D9240  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC304 001D9244  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC308 001D9248  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC30C 001D924C  7D 89 03 A6 */	mtctr r12
/* 801DC310 001D9250  4E 80 04 21 */	bctrl 
/* 801DC314 001D9254  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC318 001D9258  FC 20 F8 90 */	fmr f1, f31
/* 801DC31C 001D925C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801DC320 001D9260  7D 89 03 A6 */	mtctr r12
/* 801DC324 001D9264  4E 80 04 21 */	bctrl 
/* 801DC328 001D9268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC32C 001D926C  28 00 00 00 */	cmplwi r0, 0
/* 801DC330 001D9270  40 82 00 24 */	bne lbl_801DC354
/* 801DC334 001D9274  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC338 001D9278  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC33C 001D927C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC340 001D9280  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC344 001D9284  7D 89 03 A6 */	mtctr r12
/* 801DC348 001D9288  4E 80 04 21 */	bctrl 
/* 801DC34C 001D928C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC350 001D9290  48 00 00 94 */	b lbl_801DC3E4
lbl_801DC354:
/* 801DC354 001D9294  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC358 001D9298  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC35C 001D929C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC360 001D92A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC364 001D92A4  7D 89 03 A6 */	mtctr r12
/* 801DC368 001D92A8  4E 80 04 21 */	bctrl 
/* 801DC36C 001D92AC  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC370 001D92B0  48 00 00 58 */	b lbl_801DC3C8
lbl_801DC374:
/* 801DC374 001D92B4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC378 001D92B8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC37C 001D92BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC380 001D92C0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC384 001D92C4  7D 89 03 A6 */	mtctr r12
/* 801DC388 001D92C8  4E 80 04 21 */	bctrl 
/* 801DC38C 001D92CC  7C 64 1B 78 */	mr r4, r3
/* 801DC390 001D92D0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DC394 001D92D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC398 001D92D8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DC39C 001D92DC  7D 89 03 A6 */	mtctr r12
/* 801DC3A0 001D92E0  4E 80 04 21 */	bctrl 
/* 801DC3A4 001D92E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC3A8 001D92E8  40 82 00 3C */	bne lbl_801DC3E4
/* 801DC3AC 001D92EC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC3B0 001D92F0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC3B4 001D92F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC3B8 001D92F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC3BC 001D92FC  7D 89 03 A6 */	mtctr r12
/* 801DC3C0 001D9300  4E 80 04 21 */	bctrl 
/* 801DC3C4 001D9304  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DC3C8:
/* 801DC3C8 001D9308  81 81 00 08 */	lwz r12, 8(r1)
/* 801DC3CC 001D930C  38 61 00 08 */	addi r3, r1, 8
/* 801DC3D0 001D9310  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DC3D4 001D9314  7D 89 03 A6 */	mtctr r12
/* 801DC3D8 001D9318  4E 80 04 21 */	bctrl 
/* 801DC3DC 001D931C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC3E0 001D9320  41 82 FF 94 */	beq lbl_801DC374
lbl_801DC3E4:
/* 801DC3E4 001D9324  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC3E8 001D9328  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC3EC 001D932C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DC3F0 001D9330  7D 89 03 A6 */	mtctr r12
/* 801DC3F4 001D9334  4E 80 04 21 */	bctrl 
/* 801DC3F8 001D9338  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC3FC 001D933C  7C 04 18 40 */	cmplw r4, r3
/* 801DC400 001D9340  40 82 FF 00 */	bne lbl_801DC300
/* 801DC404 001D9344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC408 001D9348  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801DC40C 001D934C  7C 08 03 A6 */	mtlr r0
/* 801DC410 001D9350  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC414 001D9354  4E 80 00 20 */	blr 

.global "doDirectDraw__37ObjectMgr<Q34Game12ItemPikihead4Item>FR8Graphics"
"doDirectDraw__37ObjectMgr<Q34Game12ItemPikihead4Item>FR8Graphics":
/* 801DC418 001D9358  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC41C 001D935C  7C 08 02 A6 */	mflr r0
/* 801DC420 001D9360  3C A0 80 4B */	lis r5, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@ha
/* 801DC424 001D9364  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC428 001D9368  38 00 00 00 */	li r0, 0
/* 801DC42C 001D936C  38 A5 05 A4 */	addi r5, r5, "__vt__36Iterator<Q34Game12ItemPikihead4Item>"@l
/* 801DC430 001D9370  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DC434 001D9374  28 00 00 00 */	cmplwi r0, 0
/* 801DC438 001D9378  7C 9F 23 78 */	mr r31, r4
/* 801DC43C 001D937C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC440 001D9380  90 A1 00 08 */	stw r5, 8(r1)
/* 801DC444 001D9384  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DC448 001D9388  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DC44C 001D938C  40 82 00 1C */	bne lbl_801DC468
/* 801DC450 001D9390  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC454 001D9394  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DC458 001D9398  7D 89 03 A6 */	mtctr r12
/* 801DC45C 001D939C  4E 80 04 21 */	bctrl 
/* 801DC460 001D93A0  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC464 001D93A4  48 00 01 74 */	b lbl_801DC5D8
lbl_801DC468:
/* 801DC468 001D93A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC46C 001D93AC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DC470 001D93B0  7D 89 03 A6 */	mtctr r12
/* 801DC474 001D93B4  4E 80 04 21 */	bctrl 
/* 801DC478 001D93B8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC47C 001D93BC  48 00 00 58 */	b lbl_801DC4D4
lbl_801DC480:
/* 801DC480 001D93C0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC484 001D93C4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC488 001D93C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC48C 001D93CC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC490 001D93D0  7D 89 03 A6 */	mtctr r12
/* 801DC494 001D93D4  4E 80 04 21 */	bctrl 
/* 801DC498 001D93D8  7C 64 1B 78 */	mr r4, r3
/* 801DC49C 001D93DC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DC4A0 001D93E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC4A4 001D93E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DC4A8 001D93E8  7D 89 03 A6 */	mtctr r12
/* 801DC4AC 001D93EC  4E 80 04 21 */	bctrl 
/* 801DC4B0 001D93F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC4B4 001D93F4  40 82 01 24 */	bne lbl_801DC5D8
/* 801DC4B8 001D93F8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC4BC 001D93FC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC4C0 001D9400  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC4C4 001D9404  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC4C8 001D9408  7D 89 03 A6 */	mtctr r12
/* 801DC4CC 001D940C  4E 80 04 21 */	bctrl 
/* 801DC4D0 001D9410  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DC4D4:
/* 801DC4D4 001D9414  81 81 00 08 */	lwz r12, 8(r1)
/* 801DC4D8 001D9418  38 61 00 08 */	addi r3, r1, 8
/* 801DC4DC 001D941C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DC4E0 001D9420  7D 89 03 A6 */	mtctr r12
/* 801DC4E4 001D9424  4E 80 04 21 */	bctrl 
/* 801DC4E8 001D9428  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC4EC 001D942C  41 82 FF 94 */	beq lbl_801DC480
/* 801DC4F0 001D9430  48 00 00 E8 */	b lbl_801DC5D8
lbl_801DC4F4:
/* 801DC4F4 001D9434  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC4F8 001D9438  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC4FC 001D943C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC500 001D9440  7D 89 03 A6 */	mtctr r12
/* 801DC504 001D9444  4E 80 04 21 */	bctrl 
/* 801DC508 001D9448  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC50C 001D944C  7F E4 FB 78 */	mr r4, r31
/* 801DC510 001D9450  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801DC514 001D9454  7D 89 03 A6 */	mtctr r12
/* 801DC518 001D9458  4E 80 04 21 */	bctrl 
/* 801DC51C 001D945C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC520 001D9460  28 00 00 00 */	cmplwi r0, 0
/* 801DC524 001D9464  40 82 00 24 */	bne lbl_801DC548
/* 801DC528 001D9468  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC52C 001D946C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC530 001D9470  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC534 001D9474  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC538 001D9478  7D 89 03 A6 */	mtctr r12
/* 801DC53C 001D947C  4E 80 04 21 */	bctrl 
/* 801DC540 001D9480  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC544 001D9484  48 00 00 94 */	b lbl_801DC5D8
lbl_801DC548:
/* 801DC548 001D9488  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC54C 001D948C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC550 001D9490  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC554 001D9494  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC558 001D9498  7D 89 03 A6 */	mtctr r12
/* 801DC55C 001D949C  4E 80 04 21 */	bctrl 
/* 801DC560 001D94A0  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DC564 001D94A4  48 00 00 58 */	b lbl_801DC5BC
lbl_801DC568:
/* 801DC568 001D94A8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC56C 001D94AC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC570 001D94B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC574 001D94B4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC578 001D94B8  7D 89 03 A6 */	mtctr r12
/* 801DC57C 001D94BC  4E 80 04 21 */	bctrl 
/* 801DC580 001D94C0  7C 64 1B 78 */	mr r4, r3
/* 801DC584 001D94C4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801DC588 001D94C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC58C 001D94CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DC590 001D94D0  7D 89 03 A6 */	mtctr r12
/* 801DC594 001D94D4  4E 80 04 21 */	bctrl 
/* 801DC598 001D94D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC59C 001D94DC  40 82 00 3C */	bne lbl_801DC5D8
/* 801DC5A0 001D94E0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC5A4 001D94E4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC5A8 001D94E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC5AC 001D94EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801DC5B0 001D94F0  7D 89 03 A6 */	mtctr r12
/* 801DC5B4 001D94F4  4E 80 04 21 */	bctrl 
/* 801DC5B8 001D94F8  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801DC5BC:
/* 801DC5BC 001D94FC  81 81 00 08 */	lwz r12, 8(r1)
/* 801DC5C0 001D9500  38 61 00 08 */	addi r3, r1, 8
/* 801DC5C4 001D9504  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DC5C8 001D9508  7D 89 03 A6 */	mtctr r12
/* 801DC5CC 001D950C  4E 80 04 21 */	bctrl 
/* 801DC5D0 001D9510  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC5D4 001D9514  41 82 FF 94 */	beq lbl_801DC568
lbl_801DC5D8:
/* 801DC5D8 001D9518  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DC5DC 001D951C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC5E0 001D9520  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DC5E4 001D9524  7D 89 03 A6 */	mtctr r12
/* 801DC5E8 001D9528  4E 80 04 21 */	bctrl 
/* 801DC5EC 001D952C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DC5F0 001D9530  7C 04 18 40 */	cmplw r4, r3
/* 801DC5F4 001D9534  40 82 FF 00 */	bne lbl_801DC4F4
/* 801DC5F8 001D9538  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC5FC 001D953C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DC600 001D9540  7C 08 03 A6 */	mtlr r0
/* 801DC604 001D9544  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC608 001D9548  4E 80 00 20 */	blr 

.global "getObject__37Container<Q34Game12ItemPikihead4Item>FPv"
"getObject__37Container<Q34Game12ItemPikihead4Item>FPv":
/* 801DC60C 001D954C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC610 001D9550  7C 08 02 A6 */	mflr r0
/* 801DC614 001D9554  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC618 001D9558  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC61C 001D955C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC620 001D9560  7D 89 03 A6 */	mtctr r12
/* 801DC624 001D9564  4E 80 04 21 */	bctrl 
/* 801DC628 001D9568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC62C 001D956C  7C 08 03 A6 */	mtlr r0
/* 801DC630 001D9570  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC634 001D9574  4E 80 00 20 */	blr 

.global "getAt__37Container<Q34Game12ItemPikihead4Item>Fi"
"getAt__37Container<Q34Game12ItemPikihead4Item>Fi":
/* 801DC638 001D9578  38 60 00 00 */	li r3, 0
/* 801DC63C 001D957C  4E 80 00 20 */	blr 

.global "getTo__37Container<Q34Game12ItemPikihead4Item>Fv"
"getTo__37Container<Q34Game12ItemPikihead4Item>Fv":
/* 801DC640 001D9580  38 60 00 00 */	li r3, 0
/* 801DC644 001D9584  4E 80 00 20 */	blr 

.global "__ct__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"__ct__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DC648 001D9588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC64C 001D958C  7C 08 02 A6 */	mflr r0
/* 801DC650 001D9590  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC654 001D9594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DC658 001D9598  7C 7F 1B 78 */	mr r31, r3
/* 801DC65C 001D959C  48 23 4D 35 */	bl __ct__5CNodeFv
/* 801DC660 001D95A0  3C 80 80 4B */	lis r4, __vt__16GenericContainer@ha
/* 801DC664 001D95A4  3C 60 80 4C */	lis r3, "__vt__37Container<Q34Game12ItemPikihead4Item>"@ha
/* 801DC668 001D95A8  38 04 AC DC */	addi r0, r4, __vt__16GenericContainer@l
/* 801DC66C 001D95AC  3C C0 80 4B */	lis r6, __vt__16GenericObjectMgr@ha
/* 801DC670 001D95B0  90 1F 00 00 */	stw r0, 0(r31)
/* 801DC674 001D95B4  38 03 88 FC */	addi r0, r3, "__vt__37Container<Q34Game12ItemPikihead4Item>"@l
/* 801DC678 001D95B8  3C 80 80 4C */	lis r4, "__vt__37ObjectMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DC67C 001D95BC  3C 60 80 4C */	lis r3, "__vt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>"@ha
/* 801DC680 001D95C0  90 1F 00 00 */	stw r0, 0(r31)
/* 801DC684 001D95C4  39 00 00 00 */	li r8, 0
/* 801DC688 001D95C8  38 E4 87 34 */	addi r7, r4, "__vt__37ObjectMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DC68C 001D95CC  38 A3 87 B0 */	addi r5, r3, "__vt__41MonoObjectMgr<Q34Game12ItemPikihead4Item>"@l
/* 801DC690 001D95D0  99 1F 00 18 */	stb r8, 0x18(r31)
/* 801DC694 001D95D4  38 06 B5 F0 */	addi r0, r6, __vt__16GenericObjectMgr@l
/* 801DC698 001D95D8  38 C7 00 2C */	addi r6, r7, 0x2c
/* 801DC69C 001D95DC  38 85 00 2C */	addi r4, r5, 0x2c
/* 801DC6A0 001D95E0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801DC6A4 001D95E4  38 00 00 01 */	li r0, 1
/* 801DC6A8 001D95E8  7F E3 FB 78 */	mr r3, r31
/* 801DC6AC 001D95EC  90 FF 00 00 */	stw r7, 0(r31)
/* 801DC6B0 001D95F0  90 DF 00 1C */	stw r6, 0x1c(r31)
/* 801DC6B4 001D95F4  90 BF 00 00 */	stw r5, 0(r31)
/* 801DC6B8 001D95F8  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 801DC6BC 001D95FC  98 1F 00 18 */	stb r0, 0x18(r31)
/* 801DC6C0 001D9600  91 1F 00 24 */	stw r8, 0x24(r31)
/* 801DC6C4 001D9604  91 1F 00 20 */	stw r8, 0x20(r31)
/* 801DC6C8 001D9608  91 1F 00 28 */	stw r8, 0x28(r31)
/* 801DC6CC 001D960C  91 1F 00 2C */	stw r8, 0x2c(r31)
/* 801DC6D0 001D9610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DC6D4 001D9614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC6D8 001D9618  7C 08 03 A6 */	mtlr r0
/* 801DC6DC 001D961C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC6E0 001D9620  4E 80 00 20 */	blr 

.global "transit__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemiPQ24Game8StateArg"
"transit__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ34Game12ItemPikihead4ItemiPQ24Game8StateArg":
/* 801DC6E4 001D9624  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC6E8 001D9628  7C 08 02 A6 */	mflr r0
/* 801DC6EC 001D962C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC6F0 001D9630  54 A0 10 3A */	slwi r0, r5, 2
/* 801DC6F4 001D9634  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 801DC6F8 001D9638  7C 7B 1B 78 */	mr r27, r3
/* 801DC6FC 001D963C  7C 9C 23 78 */	mr r28, r4
/* 801DC700 001D9640  7C DD 33 78 */	mr r29, r6
/* 801DC704 001D9644  83 C4 01 DC */	lwz r30, 0x1dc(r4)
/* 801DC708 001D9648  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801DC70C 001D964C  28 1E 00 00 */	cmplwi r30, 0
/* 801DC710 001D9650  7F E3 00 2E */	lwzx r31, r3, r0
/* 801DC714 001D9654  41 82 00 20 */	beq lbl_801DC734
/* 801DC718 001D9658  7F C3 F3 78 */	mr r3, r30
/* 801DC71C 001D965C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801DC720 001D9660  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DC724 001D9664  7D 89 03 A6 */	mtctr r12
/* 801DC728 001D9668  4E 80 04 21 */	bctrl 
/* 801DC72C 001D966C  80 1E 00 04 */	lwz r0, 4(r30)
/* 801DC730 001D9670  90 1B 00 18 */	stw r0, 0x18(r27)
lbl_801DC734:
/* 801DC734 001D9674  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 801DC738 001D9678  7C 1F 00 00 */	cmpw r31, r0
/* 801DC73C 001D967C  41 80 00 08 */	blt lbl_801DC744
lbl_801DC740:
/* 801DC740 001D9680  48 00 00 00 */	b lbl_801DC740
lbl_801DC744:
/* 801DC744 001D9684  80 7B 00 04 */	lwz r3, 4(r27)
/* 801DC748 001D9688  57 E0 10 3A */	slwi r0, r31, 2
/* 801DC74C 001D968C  7F 84 E3 78 */	mr r4, r28
/* 801DC750 001D9690  7F A5 EB 78 */	mr r5, r29
/* 801DC754 001D9694  7C 63 00 2E */	lwzx r3, r3, r0
/* 801DC758 001D9698  90 7C 01 DC */	stw r3, 0x1dc(r28)
/* 801DC75C 001D969C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC760 001D96A0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DC764 001D96A4  7D 89 03 A6 */	mtctr r12
/* 801DC768 001D96A8  4E 80 04 21 */	bctrl 
/* 801DC76C 001D96AC  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 801DC770 001D96B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC774 001D96B4  7C 08 03 A6 */	mtlr r0
/* 801DC778 001D96B8  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC77C 001D96BC  4E 80 00 20 */	blr 

.global "registerState__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ24Game36FSMState<Q34Game12ItemPikihead4Item>"
"registerState__Q24Game40StateMachine<Q34Game12ItemPikihead4Item>FPQ24Game36FSMState<Q34Game12ItemPikihead4Item>":
/* 801DC780 001D96C0  80 C3 00 08 */	lwz r6, 8(r3)
/* 801DC784 001D96C4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801DC788 001D96C8  7C 06 00 00 */	cmpw r6, r0
/* 801DC78C 001D96CC  4C 80 00 20 */	bgelr 
/* 801DC790 001D96D0  80 A3 00 04 */	lwz r5, 4(r3)
/* 801DC794 001D96D4  54 C0 10 3A */	slwi r0, r6, 2
/* 801DC798 001D96D8  7C 85 01 2E */	stwx r4, r5, r0
/* 801DC79C 001D96DC  80 A4 00 04 */	lwz r5, 4(r4)
/* 801DC7A0 001D96E0  2C 05 00 00 */	cmpwi r5, 0
/* 801DC7A4 001D96E4  41 80 00 10 */	blt lbl_801DC7B4
/* 801DC7A8 001D96E8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801DC7AC 001D96EC  7C 05 00 00 */	cmpw r5, r0
/* 801DC7B0 001D96F0  41 80 00 0C */	blt lbl_801DC7BC
lbl_801DC7B4:
/* 801DC7B4 001D96F4  38 00 00 00 */	li r0, 0
/* 801DC7B8 001D96F8  48 00 00 08 */	b lbl_801DC7C0
lbl_801DC7BC:
/* 801DC7BC 001D96FC  38 00 00 01 */	li r0, 1
lbl_801DC7C0:
/* 801DC7C0 001D9700  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DC7C4 001D9704  4D 82 00 20 */	beqlr 
/* 801DC7C8 001D9708  90 64 00 08 */	stw r3, 8(r4)
/* 801DC7CC 001D970C  80 03 00 08 */	lwz r0, 8(r3)
/* 801DC7D0 001D9710  80 C4 00 04 */	lwz r6, 4(r4)
/* 801DC7D4 001D9714  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 801DC7D8 001D9718  54 00 10 3A */	slwi r0, r0, 2
/* 801DC7DC 001D971C  7C C5 01 2E */	stwx r6, r5, r0
/* 801DC7E0 001D9720  80 04 00 04 */	lwz r0, 4(r4)
/* 801DC7E4 001D9724  80 A3 00 08 */	lwz r5, 8(r3)
/* 801DC7E8 001D9728  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801DC7EC 001D972C  54 00 10 3A */	slwi r0, r0, 2
/* 801DC7F0 001D9730  7C A4 01 2E */	stwx r5, r4, r0
/* 801DC7F4 001D9734  80 83 00 08 */	lwz r4, 8(r3)
/* 801DC7F8 001D9738  38 04 00 01 */	addi r0, r4, 1
/* 801DC7FC 001D973C  90 03 00 08 */	stw r0, 8(r3)
/* 801DC800 001D9740  4E 80 00 20 */	blr 

.global "getStateID__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>Fv"
"getStateID__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>Fv":
/* 801DC804 001D9744  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801DC808 001D9748  28 03 00 00 */	cmplwi r3, 0
/* 801DC80C 001D974C  41 82 00 0C */	beq lbl_801DC818
/* 801DC810 001D9750  80 63 00 04 */	lwz r3, 4(r3)
/* 801DC814 001D9754  4E 80 00 20 */	blr 
lbl_801DC818:
/* 801DC818 001D9758  38 60 FF FF */	li r3, -1
/* 801DC81C 001D975C  4E 80 00 20 */	blr 

.global "platCallback__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FRQ24Game9PlatEvent"
"platCallback__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FRQ24Game9PlatEvent":
/* 801DC820 001D9760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC824 001D9764  7C 08 02 A6 */	mflr r0
/* 801DC828 001D9768  7C 66 1B 78 */	mr r6, r3
/* 801DC82C 001D976C  7C 85 23 78 */	mr r5, r4
/* 801DC830 001D9770  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC834 001D9774  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801DC838 001D9778  28 03 00 00 */	cmplwi r3, 0
/* 801DC83C 001D977C  41 82 00 18 */	beq lbl_801DC854
/* 801DC840 001D9780  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC844 001D9784  7C C4 33 78 */	mr r4, r6
/* 801DC848 001D9788  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DC84C 001D978C  7D 89 03 A6 */	mtctr r12
/* 801DC850 001D9790  4E 80 04 21 */	bctrl 
lbl_801DC854:
/* 801DC854 001D9794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC858 001D9798  7C 08 03 A6 */	mtlr r0
/* 801DC85C 001D979C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC860 001D97A0  4E 80 00 20 */	blr 

.global "collisionCallback__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FRQ24Game9CollEvent"
"collisionCallback__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FRQ24Game9CollEvent":
/* 801DC864 001D97A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC868 001D97A8  7C 08 02 A6 */	mflr r0
/* 801DC86C 001D97AC  7C 66 1B 78 */	mr r6, r3
/* 801DC870 001D97B0  7C 85 23 78 */	mr r5, r4
/* 801DC874 001D97B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC878 001D97B8  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801DC87C 001D97BC  28 03 00 00 */	cmplwi r3, 0
/* 801DC880 001D97C0  41 82 00 18 */	beq lbl_801DC898
/* 801DC884 001D97C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC888 001D97C8  7C C4 33 78 */	mr r4, r6
/* 801DC88C 001D97CC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801DC890 001D97D0  7D 89 03 A6 */	mtctr r12
/* 801DC894 001D97D4  4E 80 04 21 */	bctrl 
lbl_801DC898:
/* 801DC898 001D97D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC89C 001D97DC  7C 08 03 A6 */	mtlr r0
/* 801DC8A0 001D97E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC8A4 001D97E4  4E 80 00 20 */	blr 

.global "bounceCallback__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FPQ23Sys8Triangle"
"bounceCallback__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FPQ23Sys8Triangle":
/* 801DC8A8 001D97E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC8AC 001D97EC  7C 08 02 A6 */	mflr r0
/* 801DC8B0 001D97F0  7C 66 1B 78 */	mr r6, r3
/* 801DC8B4 001D97F4  7C 85 23 78 */	mr r5, r4
/* 801DC8B8 001D97F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC8BC 001D97FC  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801DC8C0 001D9800  28 03 00 00 */	cmplwi r3, 0
/* 801DC8C4 001D9804  41 82 00 18 */	beq lbl_801DC8DC
/* 801DC8C8 001D9808  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC8CC 001D980C  7C C4 33 78 */	mr r4, r6
/* 801DC8D0 001D9810  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801DC8D4 001D9814  7D 89 03 A6 */	mtctr r12
/* 801DC8D8 001D9818  4E 80 04 21 */	bctrl 
lbl_801DC8DC:
/* 801DC8DC 001D981C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC8E0 001D9820  7C 08 03 A6 */	mtlr r0
/* 801DC8E4 001D9824  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC8E8 001D9828  4E 80 00 20 */	blr 

.global "getEnd__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"getEnd__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DC8EC 001D982C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC8F0 001D9830  7C 08 02 A6 */	mflr r0
/* 801DC8F4 001D9834  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC8F8 001D9838  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DC8FC 001D983C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DC900 001D9840  7D 89 03 A6 */	mtctr r12
/* 801DC904 001D9844  4E 80 04 21 */	bctrl 
/* 801DC908 001D9848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC90C 001D984C  7C 08 03 A6 */	mtlr r0
/* 801DC910 001D9850  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC914 001D9854  4E 80 00 20 */	blr 

.global "get__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPv"
"get__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPv":
/* 801DC918 001D9858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC91C 001D985C  7C 08 02 A6 */	mflr r0
/* 801DC920 001D9860  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC924 001D9864  85 83 00 4C */	lwzu r12, 0x4c(r3)
/* 801DC928 001D9868  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801DC92C 001D986C  7D 89 03 A6 */	mtctr r12
/* 801DC930 001D9870  4E 80 04 21 */	bctrl 
/* 801DC934 001D9874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC938 001D9878  7C 08 03 A6 */	mtlr r0
/* 801DC93C 001D987C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC940 001D9880  4E 80 00 20 */	blr 

.global "killAll__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"killAll__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DC944 001D9884  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DC948 001D9888  7C 08 02 A6 */	mflr r0
/* 801DC94C 001D988C  3C 80 80 4B */	lis r4, __vt__Q24Game15CreatureKillArg@ha
/* 801DC950 001D9890  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DC954 001D9894  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801DC958 001D9898  7C 7B 1B 78 */	mr r27, r3
/* 801DC95C 001D989C  3B E4 A2 D0 */	addi r31, r4, __vt__Q24Game15CreatureKillArg@l
/* 801DC960 001D98A0  3B A0 00 00 */	li r29, 0
/* 801DC964 001D98A4  48 00 00 A0 */	b lbl_801DCA04
lbl_801DC968:
/* 801DC968 001D98A8  38 7B 00 4C */	addi r3, r27, 0x4c
/* 801DC96C 001D98AC  7F A4 EB 78 */	mr r4, r29
/* 801DC970 001D98B0  81 9B 00 4C */	lwz r12, 0x4c(r27)
/* 801DC974 001D98B4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DC978 001D98B8  7D 89 03 A6 */	mtctr r12
/* 801DC97C 001D98BC  4E 80 04 21 */	bctrl 
/* 801DC980 001D98C0  38 00 00 01 */	li r0, 1
/* 801DC984 001D98C4  93 E1 00 08 */	stw r31, 8(r1)
/* 801DC988 001D98C8  7C 7C 1B 78 */	mr r28, r3
/* 801DC98C 001D98CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DC990 001D98D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC994 001D98D4  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 801DC998 001D98D8  7D 89 03 A6 */	mtctr r12
/* 801DC99C 001D98DC  4E 80 04 21 */	bctrl 
/* 801DC9A0 001D98E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC9A4 001D98E4  41 82 00 10 */	beq lbl_801DC9B4
/* 801DC9A8 001D98E8  7F 83 E3 78 */	mr r3, r28
/* 801DC9AC 001D98EC  38 81 00 08 */	addi r4, r1, 8
/* 801DC9B0 001D98F0  4B F5 E7 41 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
lbl_801DC9B4:
/* 801DC9B4 001D98F4  7F 83 E3 78 */	mr r3, r28
/* 801DC9B8 001D98F8  81 9C 00 00 */	lwz r12, 0(r28)
/* 801DC9BC 001D98FC  81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 801DC9C0 001D9900  7D 89 03 A6 */	mtctr r12
/* 801DC9C4 001D9904  4E 80 04 21 */	bctrl 
/* 801DC9C8 001D9908  28 03 00 00 */	cmplwi r3, 0
/* 801DC9CC 001D990C  41 82 00 34 */	beq lbl_801DCA00
/* 801DC9D0 001D9910  83 CD 91 BC */	lwz r30, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 801DC9D4 001D9914  28 1E 00 00 */	cmplwi r30, 0
/* 801DC9D8 001D9918  41 82 00 28 */	beq lbl_801DCA00
/* 801DC9DC 001D991C  7F 83 E3 78 */	mr r3, r28
/* 801DC9E0 001D9920  81 9C 00 00 */	lwz r12, 0(r28)
/* 801DC9E4 001D9924  81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 801DC9E8 001D9928  7D 89 03 A6 */	mtctr r12
/* 801DC9EC 001D992C  4E 80 04 21 */	bctrl 
/* 801DC9F0 001D9930  7C 60 1B 78 */	mr r0, r3
/* 801DC9F4 001D9934  7F C3 F3 78 */	mr r3, r30
/* 801DC9F8 001D9938  7C 04 03 78 */	mr r4, r0
/* 801DC9FC 001D993C  4B E4 A2 29 */	bl remove__10JSUPtrListFP10JSUPtrLink
lbl_801DCA00:
/* 801DCA00 001D9940  3B BD 00 01 */	addi r29, r29, 1
lbl_801DCA04:
/* 801DCA04 001D9944  80 1B 00 70 */	lwz r0, 0x70(r27)
/* 801DCA08 001D9948  7C 1D 00 00 */	cmpw r29, r0
/* 801DCA0C 001D994C  41 80 FF 5C */	blt lbl_801DC968
/* 801DCA10 001D9950  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801DCA14 001D9954  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DCA18 001D9958  7C 08 03 A6 */	mtlr r0
/* 801DCA1C 001D995C  38 21 00 30 */	addi r1, r1, 0x30
/* 801DCA20 001D9960  4E 80 00 20 */	blr 

.global "createModelCallback__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPQ28SysShape5Model"
"createModelCallback__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPQ28SysShape5Model":
/* 801DCA24 001D9964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DCA28 001D9968  7C 08 02 A6 */	mflr r0
/* 801DCA2C 001D996C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DCA30 001D9970  81 83 00 00 */	lwz r12, 0(r3)
/* 801DCA34 001D9974  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 801DCA38 001D9978  7D 89 03 A6 */	mtctr r12
/* 801DCA3C 001D997C  4E 80 04 21 */	bctrl 
/* 801DCA40 001D9980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DCA44 001D9984  7C 08 03 A6 */	mtlr r0
/* 801DCA48 001D9988  38 21 00 10 */	addi r1, r1, 0x10
/* 801DCA4C 001D998C  4E 80 00 20 */	blr 

.global "createMgr__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FiUl"
"createMgr__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FiUl":
/* 801DCA50 001D9990  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DCA54 001D9994  7C 08 02 A6 */	mflr r0
/* 801DCA58 001D9998  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DCA5C 001D999C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801DCA60 001D99A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801DCA64 001D99A4  7C BE 2B 78 */	mr r30, r5
/* 801DCA68 001D99A8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801DCA6C 001D99AC  7C 9D 23 78 */	mr r29, r4
/* 801DCA70 001D99B0  93 81 00 20 */	stw r28, 0x20(r1)
/* 801DCA74 001D99B4  7C 7C 1B 78 */	mr r28, r3
/* 801DCA78 001D99B8  38 7C 00 4C */	addi r3, r28, 0x4c
/* 801DCA7C 001D99BC  48 00 01 1D */	bl "alloc__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fi"
/* 801DCA80 001D99C0  7F 83 E3 78 */	mr r3, r28
/* 801DCA84 001D99C4  48 00 00 B1 */	bl "onAlloc__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
/* 801DCA88 001D99C8  38 60 00 1C */	li r3, 0x1c
/* 801DCA8C 001D99CC  4B E4 74 19 */	bl __nw__FUl
/* 801DCA90 001D99D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801DCA94 001D99D4  41 82 00 7C */	beq lbl_801DCB10
/* 801DCA98 001D99D8  38 60 00 14 */	li r3, 0x14
/* 801DCA9C 001D99DC  4B E4 74 09 */	bl __nw__FUl
/* 801DCAA0 001D99E0  7C 69 1B 79 */	or. r9, r3, r3
/* 801DCAA4 001D99E4  41 82 00 4C */	beq lbl_801DCAF0
/* 801DCAA8 001D99E8  3C 60 80 4C */	lis r3, lbl_804B8FF8@ha
/* 801DCAAC 001D99EC  3C 80 80 4B */	lis r4, "__vt__30IDelegate1<PQ28SysShape5Model>"@ha
/* 801DCAB0 001D99F0  38 E3 8F F8 */	addi r7, r3, lbl_804B8FF8@l
/* 801DCAB4 001D99F4  3C 60 80 4C */	lis r3, "__vt__83Delegate1<Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>,PQ28SysShape5Model>"@ha
/* 801DCAB8 001D99F8  80 C7 00 00 */	lwz r6, 0(r7)
/* 801DCABC 001D99FC  38 84 16 BC */	addi r4, r4, "__vt__30IDelegate1<PQ28SysShape5Model>"@l
/* 801DCAC0 001D9A00  80 A7 00 04 */	lwz r5, 4(r7)
/* 801DCAC4 001D9A04  38 03 90 04 */	addi r0, r3, "__vt__83Delegate1<Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>,PQ28SysShape5Model>"@l
/* 801DCAC8 001D9A08  80 67 00 08 */	lwz r3, 8(r7)
/* 801DCACC 001D9A0C  90 C1 00 08 */	stw r6, 8(r1)
/* 801DCAD0 001D9A10  90 89 00 00 */	stw r4, 0(r9)
/* 801DCAD4 001D9A14  90 09 00 00 */	stw r0, 0(r9)
/* 801DCAD8 001D9A18  93 89 00 04 */	stw r28, 4(r9)
/* 801DCADC 001D9A1C  90 C9 00 08 */	stw r6, 8(r9)
/* 801DCAE0 001D9A20  90 A9 00 0C */	stw r5, 0xc(r9)
/* 801DCAE4 001D9A24  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801DCAE8 001D9A28  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DCAEC 001D9A2C  90 69 00 10 */	stw r3, 0x10(r9)
lbl_801DCAF0:
/* 801DCAF0 001D9A30  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 801DCAF4 001D9A34  7F E3 FB 78 */	mr r3, r31
/* 801DCAF8 001D9A38  80 BC 00 1C */	lwz r5, 0x1c(r28)
/* 801DCAFC 001D9A3C  7F A6 EB 78 */	mr r6, r29
/* 801DCB00 001D9A40  7F C7 F3 78 */	mr r7, r30
/* 801DCB04 001D9A44  39 00 00 02 */	li r8, 2
/* 801DCB08 001D9A48  48 24 DF F9 */	bl "__ct__Q28SysShape8ModelMgrFiPP12J3DModelDataiUlUlP30IDelegate1<PQ28SysShape5Model>"
/* 801DCB0C 001D9A4C  7C 7F 1B 78 */	mr r31, r3
lbl_801DCB10:
/* 801DCB10 001D9A50  93 FC 00 7C */	stw r31, 0x7c(r28)
/* 801DCB14 001D9A54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DCB18 001D9A58  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801DCB1C 001D9A5C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801DCB20 001D9A60  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801DCB24 001D9A64  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801DCB28 001D9A68  7C 08 03 A6 */	mtlr r0
/* 801DCB2C 001D9A6C  38 21 00 30 */	addi r1, r1, 0x30
/* 801DCB30 001D9A70  4E 80 00 20 */	blr 

.global "onAlloc__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"onAlloc__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCB34 001D9A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DCB38 001D9A78  7C 08 02 A6 */	mflr r0
/* 801DCB3C 001D9A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DCB40 001D9A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DCB44 001D9A84  3B E0 00 00 */	li r31, 0
/* 801DCB48 001D9A88  93 C1 00 08 */	stw r30, 8(r1)
/* 801DCB4C 001D9A8C  7C 7E 1B 78 */	mr r30, r3
/* 801DCB50 001D9A90  48 00 00 24 */	b lbl_801DCB74
lbl_801DCB54:
/* 801DCB54 001D9A94  38 7E 00 4C */	addi r3, r30, 0x4c
/* 801DCB58 001D9A98  7F E4 FB 78 */	mr r4, r31
/* 801DCB5C 001D9A9C  81 9E 00 4C */	lwz r12, 0x4c(r30)
/* 801DCB60 001D9AA0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DCB64 001D9AA4  7D 89 03 A6 */	mtctr r12
/* 801DCB68 001D9AA8  4E 80 04 21 */	bctrl 
/* 801DCB6C 001D9AAC  93 E3 01 84 */	stw r31, 0x184(r3)
/* 801DCB70 001D9AB0  3B FF 00 01 */	addi r31, r31, 1
lbl_801DCB74:
/* 801DCB74 001D9AB4  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 801DCB78 001D9AB8  7C 1F 00 00 */	cmpw r31, r0
/* 801DCB7C 001D9ABC  41 80 FF D8 */	blt lbl_801DCB54
/* 801DCB80 001D9AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DCB84 001D9AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DCB88 001D9AC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DCB8C 001D9ACC  7C 08 03 A6 */	mtlr r0
/* 801DCB90 001D9AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 801DCB94 001D9AD4  4E 80 00 20 */	blr 

.global "alloc__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fi"
"alloc__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fi":
/* 801DCB98 001D9AD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DCB9C 001D9ADC  7C 08 02 A6 */	mflr r0
/* 801DCBA0 001D9AE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DCBA4 001D9AE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DCBA8 001D9AE8  7C 9F 23 78 */	mr r31, r4
/* 801DCBAC 001D9AEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DCBB0 001D9AF0  7C 7E 1B 78 */	mr r30, r3
/* 801DCBB4 001D9AF4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DCBB8 001D9AF8  7F FD FB 78 */	mr r29, r31
/* 801DCBBC 001D9AFC  1C 7D 01 F8 */	mulli r3, r29, 0x1f8
/* 801DCBC0 001D9B00  93 81 00 10 */	stw r28, 0x10(r1)
/* 801DCBC4 001D9B04  38 63 00 10 */	addi r3, r3, 0x10
/* 801DCBC8 001D9B08  4B E4 73 E5 */	bl __nwa__FUl
/* 801DCBCC 001D9B0C  3C 80 80 1E */	lis r4, __ct__Q34Game12ItemPikihead4ItemFv@ha
/* 801DCBD0 001D9B10  7F A7 EB 78 */	mr r7, r29
/* 801DCBD4 001D9B14  38 84 98 58 */	addi r4, r4, __ct__Q34Game12ItemPikihead4ItemFv@l
/* 801DCBD8 001D9B18  38 A0 00 00 */	li r5, 0
/* 801DCBDC 001D9B1C  38 C0 01 F8 */	li r6, 0x1f8
/* 801DCBE0 001D9B20  4B EE 4E 11 */	bl __construct_new_array
/* 801DCBE4 001D9B24  90 7E 00 28 */	stw r3, 0x28(r30)
/* 801DCBE8 001D9B28  38 00 00 00 */	li r0, 0
/* 801DCBEC 001D9B2C  7F A3 EB 78 */	mr r3, r29
/* 801DCBF0 001D9B30  93 FE 00 24 */	stw r31, 0x24(r30)
/* 801DCBF4 001D9B34  90 1E 00 20 */	stw r0, 0x20(r30)
/* 801DCBF8 001D9B38  4B E4 73 B5 */	bl __nwa__FUl
/* 801DCBFC 001D9B3C  2C 1F 00 00 */	cmpwi r31, 0
/* 801DCC00 001D9B40  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 801DCC04 001D9B44  39 60 00 00 */	li r11, 0
/* 801DCC08 001D9B48  40 81 00 B0 */	ble lbl_801DCCB8
/* 801DCC0C 001D9B4C  2C 1F 00 08 */	cmpwi r31, 8
/* 801DCC10 001D9B50  38 7F FF F8 */	addi r3, r31, -8
/* 801DCC14 001D9B54  40 81 00 80 */	ble lbl_801DCC94
/* 801DCC18 001D9B58  38 03 00 07 */	addi r0, r3, 7
/* 801DCC1C 001D9B5C  54 00 E8 FE */	srwi r0, r0, 3
/* 801DCC20 001D9B60  7C 09 03 A6 */	mtctr r0
/* 801DCC24 001D9B64  2C 03 00 00 */	cmpwi r3, 0
/* 801DCC28 001D9B68  40 81 00 6C */	ble lbl_801DCC94
lbl_801DCC2C:
/* 801DCC2C 001D9B6C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801DCC30 001D9B70  39 40 00 01 */	li r10, 1
/* 801DCC34 001D9B74  39 0B 00 01 */	addi r8, r11, 1
/* 801DCC38 001D9B78  38 EB 00 02 */	addi r7, r11, 2
/* 801DCC3C 001D9B7C  7D 43 59 AE */	stbx r10, r3, r11
/* 801DCC40 001D9B80  38 CB 00 03 */	addi r6, r11, 3
/* 801DCC44 001D9B84  38 AB 00 04 */	addi r5, r11, 4
/* 801DCC48 001D9B88  38 8B 00 05 */	addi r4, r11, 5
/* 801DCC4C 001D9B8C  81 3E 00 2C */	lwz r9, 0x2c(r30)
/* 801DCC50 001D9B90  38 6B 00 06 */	addi r3, r11, 6
/* 801DCC54 001D9B94  38 0B 00 07 */	addi r0, r11, 7
/* 801DCC58 001D9B98  39 6B 00 08 */	addi r11, r11, 8
/* 801DCC5C 001D9B9C  7D 49 41 AE */	stbx r10, r9, r8
/* 801DCC60 001D9BA0  81 1E 00 2C */	lwz r8, 0x2c(r30)
/* 801DCC64 001D9BA4  7D 48 39 AE */	stbx r10, r8, r7
/* 801DCC68 001D9BA8  80 FE 00 2C */	lwz r7, 0x2c(r30)
/* 801DCC6C 001D9BAC  7D 47 31 AE */	stbx r10, r7, r6
/* 801DCC70 001D9BB0  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 801DCC74 001D9BB4  7D 46 29 AE */	stbx r10, r6, r5
/* 801DCC78 001D9BB8  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 801DCC7C 001D9BBC  7D 45 21 AE */	stbx r10, r5, r4
/* 801DCC80 001D9BC0  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 801DCC84 001D9BC4  7D 44 19 AE */	stbx r10, r4, r3
/* 801DCC88 001D9BC8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801DCC8C 001D9BCC  7D 43 01 AE */	stbx r10, r3, r0
/* 801DCC90 001D9BD0  42 00 FF 9C */	bdnz lbl_801DCC2C
lbl_801DCC94:
/* 801DCC94 001D9BD4  7C 0B F8 50 */	subf r0, r11, r31
/* 801DCC98 001D9BD8  38 80 00 01 */	li r4, 1
/* 801DCC9C 001D9BDC  7C 09 03 A6 */	mtctr r0
/* 801DCCA0 001D9BE0  7C 0B F8 00 */	cmpw r11, r31
/* 801DCCA4 001D9BE4  40 80 00 14 */	bge lbl_801DCCB8
lbl_801DCCA8:
/* 801DCCA8 001D9BE8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801DCCAC 001D9BEC  7C 83 59 AE */	stbx r4, r3, r11
/* 801DCCB0 001D9BF0  39 6B 00 01 */	addi r11, r11, 1
/* 801DCCB4 001D9BF4  42 00 FF F4 */	bdnz lbl_801DCCA8
lbl_801DCCB8:
/* 801DCCB8 001D9BF8  7F C3 F3 78 */	mr r3, r30
/* 801DCCBC 001D9BFC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801DCCC0 001D9C00  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 801DCCC4 001D9C04  7D 89 03 A6 */	mtctr r12
/* 801DCCC8 001D9C08  4E 80 04 21 */	bctrl 
/* 801DCCCC 001D9C0C  3B 80 00 00 */	li r28, 0
/* 801DCCD0 001D9C10  3B A0 00 00 */	li r29, 0
/* 801DCCD4 001D9C14  48 00 00 24 */	b lbl_801DCCF8
lbl_801DCCD8:
/* 801DCCD8 001D9C18  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 801DCCDC 001D9C1C  7C 60 EA 14 */	add r3, r0, r29
/* 801DCCE0 001D9C20  81 83 00 00 */	lwz r12, 0(r3)
/* 801DCCE4 001D9C24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DCCE8 001D9C28  7D 89 03 A6 */	mtctr r12
/* 801DCCEC 001D9C2C  4E 80 04 21 */	bctrl 
/* 801DCCF0 001D9C30  3B BD 01 F8 */	addi r29, r29, 0x1f8
/* 801DCCF4 001D9C34  3B 9C 00 01 */	addi r28, r28, 1
lbl_801DCCF8:
/* 801DCCF8 001D9C38  7C 1C F8 00 */	cmpw r28, r31
/* 801DCCFC 001D9C3C  41 80 FF DC */	blt lbl_801DCCD8
/* 801DCD00 001D9C40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DCD04 001D9C44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DCD08 001D9C48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DCD0C 001D9C4C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DCD10 001D9C50  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801DCD14 001D9C54  7C 08 03 A6 */	mtlr r0
/* 801DCD18 001D9C58  38 21 00 20 */	addi r1, r1, 0x20
/* 801DCD1C 001D9C5C  4E 80 00 20 */	blr 

.global "invoke__83Delegate1<Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>,PQ28SysShape5Model>FPQ28SysShape5Model"
"invoke__83Delegate1<Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>,PQ28SysShape5Model>FPQ28SysShape5Model":
/* 801DCD20 001D9C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DCD24 001D9C64  7C 08 02 A6 */	mflr r0
/* 801DCD28 001D9C68  7C 65 1B 78 */	mr r5, r3
/* 801DCD2C 001D9C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DCD30 001D9C70  39 85 00 08 */	addi r12, r5, 8
/* 801DCD34 001D9C74  80 63 00 04 */	lwz r3, 4(r3)
/* 801DCD38 001D9C78  4B EE 4D ED */	bl __ptmf_scall
/* 801DCD3C 001D9C7C  60 00 00 00 */	nop 
/* 801DCD40 001D9C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DCD44 001D9C84  7C 08 03 A6 */	mtlr r0
/* 801DCD48 001D9C88  38 21 00 10 */	addi r1, r1, 0x10
/* 801DCD4C 001D9C8C  4E 80 00 20 */	blr 

.global __sinit_itemPikihead_cpp
__sinit_itemPikihead_cpp:
/* 801DCD50 001D9C90  3C 80 80 51 */	lis r4, __float_nan@ha
/* 801DCD54 001D9C94  38 00 FF FF */	li r0, -1
/* 801DCD58 001D9C98  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 801DCD5C 001D9C9C  3C 60 80 4C */	lis r3, lbl_804B8668@ha
/* 801DCD60 001D9CA0  90 0D 94 68 */	stw r0, lbl_80515AE8@sda21(r13)
/* 801DCD64 001D9CA4  D4 03 86 68 */	stfsu f0, lbl_804B8668@l(r3)
/* 801DCD68 001D9CA8  D0 0D 94 6C */	stfs f0, lbl_80515AEC@sda21(r13)
/* 801DCD6C 001D9CAC  D0 03 00 04 */	stfs f0, 4(r3)
/* 801DCD70 001D9CB0  D0 03 00 08 */	stfs f0, 8(r3)
/* 801DCD74 001D9CB4  4E 80 00 20 */	blr 

.global "@376@onKeyEvent__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FRCQ28SysShape8KeyEvent"
"@376@onKeyEvent__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FRCQ28SysShape8KeyEvent":
/* 801DCD78 001D9CB8  38 63 FE 88 */	addi r3, r3, -376
/* 801DCD7C 001D9CBC  4B FF E6 F4 */	b "onKeyEvent__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>FRCQ28SysShape8KeyEvent"

.global "@4@__dt__Q23efx8TPkGlow1Fv"
"@4@__dt__Q23efx8TPkGlow1Fv":
/* 801DCD80 001D9CC0  38 63 FF FC */	addi r3, r3, -4
/* 801DCD84 001D9CC4  4B FF CC A4 */	b __dt__Q23efx8TPkGlow1Fv

.global "@376@onKeyEvent__Q34Game12ItemPikihead4ItemFRCQ28SysShape8KeyEvent"
"@376@onKeyEvent__Q34Game12ItemPikihead4ItemFRCQ28SysShape8KeyEvent":
/* 801DCD88 001D9CC8  38 63 FE 88 */	addi r3, r3, -376
/* 801DCD8C 001D9CCC  4B FF D5 FC */	b onKeyEvent__Q34Game12ItemPikihead4ItemFRCQ28SysShape8KeyEvent

.global "@48@__dt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"@48@__dt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCD90 001D9CD0  38 63 FF D0 */	addi r3, r3, -48
/* 801DCD94 001D9CD4  4B FF D9 A8 */	b "__dt__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"

.global "@28@resetMgr__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"@28@resetMgr__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCD98 001D9CD8  38 63 FF E4 */	addi r3, r3, -28
/* 801DCD9C 001D9CDC  4B FF EC 50 */	b "resetMgr__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"

.global "@28@doDirectDraw__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FR8Graphics"
"@28@doDirectDraw__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FR8Graphics":
/* 801DCDA0 001D9CE0  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDA4 001D9CE4  4B FF EB B8 */	b "doDirectDraw__41MonoObjectMgr<Q34Game12ItemPikihead4Item>FR8Graphics"

.global "@28@doSimulation__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Ff"
"@28@doSimulation__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Ff":
/* 801DCDA8 001D9CE8  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDAC 001D9CEC  4B FF EB 20 */	b "doSimulation__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Ff"

.global "@28@doViewCalc__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"@28@doViewCalc__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCDB0 001D9CF0  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDB4 001D9CF4  4B FF EA 98 */	b "doViewCalc__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"

.global "@28@doSetView__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fi"
"@28@doSetView__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fi":
/* 801DCDB8 001D9CF8  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDBC 001D9CFC  4B FF EA 00 */	b "doSetView__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fi"

.global "@28@doEntry__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"@28@doEntry__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCDC0 001D9D00  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDC4 001D9D04  4B FF E9 78 */	b "doEntry__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"

.global "@28@doAnimation__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"@28@doAnimation__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCDC8 001D9D08  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDCC 001D9D0C  4B FF E8 F0 */	b "doAnimation__41MonoObjectMgr<Q34Game12ItemPikihead4Item>Fv"

.global "@28@doDirectDraw__37ObjectMgr<Q34Game12ItemPikihead4Item>FR8Graphics"
"@28@doDirectDraw__37ObjectMgr<Q34Game12ItemPikihead4Item>FR8Graphics":
/* 801DCDD0 001D9D10  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDD4 001D9D14  4B FF F6 44 */	b "doDirectDraw__37ObjectMgr<Q34Game12ItemPikihead4Item>FR8Graphics"

.global "@28@doSimulation__37ObjectMgr<Q34Game12ItemPikihead4Item>Ff"
"@28@doSimulation__37ObjectMgr<Q34Game12ItemPikihead4Item>Ff":
/* 801DCDD8 001D9D18  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDDC 001D9D1C  4B FF F4 48 */	b "doSimulation__37ObjectMgr<Q34Game12ItemPikihead4Item>Ff"

.global "@28@doViewCalc__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"@28@doViewCalc__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCDE0 001D9D20  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDE4 001D9D24  4B FF F2 5C */	b "doViewCalc__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv"

.global "@28@doSetView__37ObjectMgr<Q34Game12ItemPikihead4Item>Fi"
"@28@doSetView__37ObjectMgr<Q34Game12ItemPikihead4Item>Fi":
/* 801DCDE8 001D9D28  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDEC 001D9D2C  4B FF F0 60 */	b "doSetView__37ObjectMgr<Q34Game12ItemPikihead4Item>Fi"

.global "@28@doEntry__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"@28@doEntry__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCDF0 001D9D30  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDF4 001D9D34  4B FF EE 74 */	b "doEntry__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv"

.global "@28@doAnimation__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv"
"@28@doAnimation__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCDF8 001D9D38  38 63 FF E4 */	addi r3, r3, -28
/* 801DCDFC 001D9D3C  4B FF EC 88 */	b "doAnimation__37ObjectMgr<Q34Game12ItemPikihead4Item>Fv"

.global "@48@getEnd__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"@48@getEnd__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCE00 001D9D40  38 63 FF D0 */	addi r3, r3, -48
/* 801DCE04 001D9D44  4B FF FA E8 */	b "getEnd__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"

.global "@48@getStart__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"
"@48@getStart__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv":
/* 801DCE08 001D9D48  38 63 FF D0 */	addi r3, r3, -48
/* 801DCE0C 001D9D4C  4B FF E6 08 */	b "getStart__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>Fv"

.global "@48@getNext__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPv"
"@48@getNext__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPv":
/* 801DCE10 001D9D50  38 63 FF D0 */	addi r3, r3, -48
/* 801DCE14 001D9D54  4B FF E5 D4 */	b "getNext__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPv"

.global "@48@get__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPv"
"@48@get__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPv":
/* 801DCE18 001D9D58  38 63 FF D0 */	addi r3, r3, -48
/* 801DCE1C 001D9D5C  4B FF FA FC */	b "get__Q24Game44FixedSizeItemMgr<Q34Game12ItemPikihead4Item>FPv"

.global "@48@__dt__Q34Game12ItemPikihead3MgrFv"
"@48@__dt__Q34Game12ItemPikihead3MgrFv":
/* 801DCE20 001D9D60  38 63 FF D0 */	addi r3, r3, -48
/* 801DCE24 001D9D64  4B FF E0 B8 */	b __dt__Q34Game12ItemPikihead3MgrFv
