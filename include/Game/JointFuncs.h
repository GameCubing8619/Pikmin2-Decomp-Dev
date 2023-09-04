#ifndef _GAME_JOINTFUNCTIONS_H
#define _GAME_JOINTFUNCTIONS_H

#include "types.h"
#include "CNode.h"
#include "Matrixf.h"

struct WaterBox;

namespace Game {
struct Creature;

struct JointGroundCallBack {
	virtual void invokeOnGround(int, WaterBox*)  = 0; // _08
	virtual void invokeOffGround(int, WaterBox*) = 0; // _0C
};

struct JointShadowParm {
	Vector3f mPosition; // _00
	Vector3f _0C;       // _0C
	f32 _18;            // _18
	f32 _1C;            // _1C
	f32 mShadowScale;   // _20
	f32 _24;            // _24
};

struct JointShadowNode : public CNode {
	JointShadowNode(int);

	virtual ~JointShadowNode() { } // _08 (weak)

	void init(int);

	// _00 		= VTBL
	// _00-_18	= CNode
	u32 _18;      // _18, unknown
	Matrixf* _1C; // _1C
	Matrixf* _20; // _20
};

struct JointShadowRootNode : public CNode {
	JointShadowRootNode(Creature*);

	virtual ~JointShadowRootNode() { } // _08 (weak)

	Creature* mCreature; // _18
	u8 _1C;              // _1C
};
} // namespace Game

#endif
