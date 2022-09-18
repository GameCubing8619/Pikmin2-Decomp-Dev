#ifndef _JSYSTEM_J3D_J3DSHAPE_H
#define _JSYSTEM_J3D_J3DSHAPE_H

#include "Dolphin/mtx.h"
#include "types.h"

struct J3DDrawMtxData;
struct J3DJos32Tree;
struct J3DMaterial;
struct J3DVertexData;
struct Vec;

struct J3DShapeDraw;
struct J3DShapeMtx;

#define J3DShapeMtx_Base     0x0
#define J3DShapeMtx_BBoard   0x1
#define J3DShapeMtx_Y_BBoard 0x2
#define J3DShapeMtx_Multi    0x3

struct J3DShapeInitData {
	u8 m_shapeMtxType;            // _00
	u16 _02;                      // _02
	u16 m_vtxDescListIndex;       // _04
	u16 m_shapeMtxInitDataIndex;  // _06
	u16 m_shapeDrawInitDataIndex; // _08
	float _0C;                    // _0C
	Vec _10;                      // _10
	Vec _1C;                      // _1C
};

struct J3DShape {
	enum Flags { IsHidden = 0x1, Invalid = 0xFFFFFFFF };
	virtual void draw() const;            // _00
	virtual void drawFast() const;        // _04
	virtual void simpleDraw() const;      // _08
	virtual void simpleDrawCache() const; // _0C

	void calcNBTScale(const Vec&, Mtx33*, Mtx33*);
	int countBumpMtxNum() const;
	void initialize();
	bool isSameVcdVatCmd(J3DShape*);
	void loadPreDrawSetting() const;
	void makeVcdVatCmd();
	void makeVtxArrayCmd();

	// VTBL _00
	J3DMaterial* _04;              // _04
	u16 m_id;                      // _08
	u16 _0A;                       // _0A
	u32 m_flags;                   // _0C
	f32 _10;                       // _10
	f32 _14;                       // _14
	f32 _18;                       // _18
	f32 _1C;                       // _1C
	f32 _20;                       // _20
	f32 _24;                       // _24
	f32 _28;                       // _28
	u8* _2C;                       // _2C
	s32 _30;                       // _30
	u8 m_mode;                     // _34
	J3DShapeMtx** _38;             // _38
	J3DShapeDraw** _3C;            // _3C
	u32 _40;                       // _40
	u32 _44;                       // _44
	u8 _48;                        // _48
	J3DVertexData* m_vtxData;      // _4C
	J3DDrawMtxData* m_drawMtxData; // _50
	s8* m_flagList;                // _54
	J3DJos32Tree* m_tree1;         // _58
	J3DJos32Tree* m_tree2;         // _5C
	s32* _60;                      // _60
	int _64;                       // _64

	static u8* sOldVcdVatCmd;
	static u8 sEnvelopeFlag;
};

struct J3DShapeMtx {
	virtual ~J3DShapeMtx();                                                  // _08 (weak)
	virtual int getType() const;                                             // _0C (weak)
	virtual int getUseMtxNum() const;                                        // _10 (weak)
	virtual u16 getUseMtxIndex(u16) const;                                   // _14 (weak)
	virtual void load() const;                                               // _18
	virtual void calcNBTScale(const Vec&, float (*)[3][3], float (*)[3][3]); // _1C

	void resetMtxLoadCache();
	void loadMtxIndx_PNGP(int, u16) const;
	void loadMtxIndx_PCPU(int, u16) const;
	void loadMtxIndx_NCPU(int, u16) const;
	void loadMtxIndx_PNCPU(int, u16) const;

	// VTBL _00
	u16 m_useMtxIndex; // _04
};

struct J3DShapeDraw {
	J3DShapeDraw(const u8*, u32);
	virtual ~J3DShapeDraw();

	void draw() const;

	virtual void _04() = 0;
	virtual void _08() = 0;
	virtual void _0C() = 0;
	virtual void _10() = 0;
	virtual void _14() = 0;

	u32 m_dlSize;            // _04
	const u8* m_displayList; // _08
};

struct J3DShapeTable {
	inline J3DShapeTable()
	    : m_count(0)
	    , m_items(nullptr)
	{
	}

	/**
	 * @reifiedAddress{8008382C}
	 * @reifiedFile{JSystem/J3D/J3DModelData.cpp}
	 */
	virtual ~J3DShapeTable() {}; // _00

	void initShapeNodes(J3DDrawMtxData*, J3DVertexData*);
	void sortVcdVatCmd();

	/** @fabricated */
	J3DShape* getItem(u16 index) { return m_items[index]; }

	// VTBL _00
	u16 m_count;        // _04
	J3DShape** m_items; // _08

	// TODO: Are subsequent JUTNameTab* and J3DVertexData in J3DModelData also
	// part of this?
};

#endif
