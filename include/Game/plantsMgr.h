#ifndef _GAME_PLANTSMGR_H
#define _GAME_PLANTSMGR_H

#include "Game/EnemyAnimatorBase.h"
#include "Game/EnemyMgrBase.h"
#include "Game/EnemyBase.h"

/**
 * --Header for Plant Classes (Plants)--
 * Plants       = Base Plants Class
 * Derived classes:
 * Chiyogami    = Chiyogami Paper
 * Clover       = Clover
 * DiodeGreen   = Glowstem (Green)
 * DiodeRed     = Glowstem (Red)
 * HikariKinoko = Common Glowcap
 * KareOoinu_l  = Figwort (Brown, Large)
 * KareOoinu_s  = Figwort (Brown, Small)
 * Margaret     = Margaret
 * Nekojarashi  = Foxtail
 * Ooinu_l      = Figwort (Red, Large)
 * Ooinu_s      = Figwort (Red, Small)
 * Tanpopo      = Dandelion
 * Tukushi      = Horsetail
 * Wakame_l     = Shoot (Large)
 * Wakame_s     = Shoot (Small)
 * Watage       = Seeding Dandelion
 * Zenmai       = Fiddlehead
 */

namespace Game {
/**
 * --Plant Base Class (Plants)--
 */
namespace Plants {
struct Obj : public EnemyBase {
	Obj();

	//////////////// VTABLE
	virtual void onInit(CreatureInitArg*);      // _30
	virtual void doAnimation();                 // _3C
	virtual void collisionCallback(CollEvent&); // _EC

	virtual void birth(Vector3f&, f32);                        // _1C0
	virtual void update();                                     // _1C8
	virtual void doAnimationCullingOff();                      // _1DC
	virtual void doDebugDraw(Graphics&);                       // _1EC
	virtual void setParameters();                              // _228
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() = 0;    // _258
	virtual bool earthquakeCallBack(Creature*, f32);           // _28C
	virtual void touched();                                    // _2F8
	virtual void touchedSE(Navi*);                             // _2FC
	virtual ~Obj() { }                                         // _1BC (weak)
	virtual void setInitialSetting(EnemyInitialParamBase*) { } // _1C4 (weak)
	virtual void doUpdate() { }                                // _1CC (weak)
	virtual void doSimulation(f32) { }                         // _4C (weak)
	virtual void doUpdateCommon() { }                          // _1D0 (weak)
	virtual bool isLivingThing() { return false; }             // _D4 (weak)
	virtual bool ignoreAtari(Creature* creature)               // _190 (weak)
	{
		if ((creature != nullptr) && (creature->isTeki())) {
			return true;
		}
		return false;
	}
	//////////////// VTABLE END

	// _00 		= VTBL
	// _00-_2BC	= EnemyBase
	u8 _2BC;                  // _2BC, unknown
	u8 _2BD;                  // _2BD, unknown
	bool m_spawnsSpectralids; // _2BE, spawns spectralids on touch
	                          // _2BF = PelletView
};

struct ProperAnimator : public EnemyAnimatorBase {
	virtual ~ProperAnimator() { }                                    // _08 (weak)
	virtual void setAnimMgr(SysShape::AnimMgr*);                     // _0C
	virtual SysShape::Animator& getAnimator() { return m_animator; } // _10 (weak)
	virtual SysShape::Animator& getAnimator(int);                    // _14

	// _00 		= VTBL
	// _00-_10	= EnemyAnimatorBase
	SysShape::Animator m_animator; // _10
};
} // namespace Plants

/**
 * --Chiyogami Paper (Chiyogami)--
 */
namespace Chiyogami {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }           // _1BC (weak)
	virtual void setParameters() // _228 (weak)
	{
		Plants::Obj::setParameters();
		m_lodParm.m_isCylinder = true;
	}
	virtual void getLODCylinder(Sys::Cylinder& cylinder) // _144 (weak)
	{
		Vector3f vec1;
		Vector3f vec2         = m_position;
		vec1                  = vec2;
		EnemyParmsBase* parms = static_cast<EnemyParmsBase*>(m_parms);
		vec1.y += parms->m_general.m_privateRadius.m_value;
		cylinder.set(vec1, vec2, parms->m_general.m_homeRadius.m_value);
	}
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Chiyogami;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Chiyogami;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Chiyogami

/**
 * --Clover (Clover)--
 */
namespace Clover {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }                                 // _1BC (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Clover;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Clover;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Clover

/**
 * --Red Diode (DiodeRed)--
 */
namespace DiodeRed {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual void doEntry();                            // _40
	virtual void getLODCylinder(Sys::Cylinder&);       // _144 (weak)
	virtual ~Obj() { }                                 // _1BC (weak)
	virtual void setParameters();                      // _228 (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_DaiodoRed;
	}
	virtual void touchedSE(Navi*); // _2FC

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_DaiodoRed;
	}
	virtual void loadModelData() // _C8 (weak)
	{
		EnemyMgrBase::loadModelData();
		P2ASSERTLINE(519, m_modelData != nullptr);
		J3DShape* shape;
		for (u16 j = 0; j < m_modelData->getShapeCount(); j++) {
			shape = m_modelData->m_shapeTable.m_items[j];
			P2ASSERTLINE(523, shape != nullptr);
			shape->m_flags = (shape->m_flags & (~0xF000)) | 0x2000;
		}
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240030); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace DiodeRed

/**
 * --Green Diode (DiodeGreen)--
 */
namespace DiodeGreen {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual void doEntry();                            // _40
	virtual void getLODCylinder(Sys::Cylinder&);       // _144 (weak)
	virtual ~Obj() { }                                 // _1BC (weak)
	virtual void setParameters();                      // _228 (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_DaiodoGreen;
	}
	virtual void touchedSE(Navi*); // _2FC

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_DaiodoGreen;
	}
	virtual void loadModelData() // _C8 (weak)
	{
		EnemyMgrBase::loadModelData();
		P2ASSERTLINE(578, m_modelData != nullptr);
		J3DShape* shape;
		for (u16 j = 0; j < m_modelData->getShapeCount(); j++) {
			shape = m_modelData->m_shapeTable.m_items[j];
			P2ASSERTLINE(582, shape != nullptr);
			shape->m_flags = (shape->m_flags & (~0xF000)) | 0x2000;
		}
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240030); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace DiodeGreen

/**
 * --Common Glowcap (HikariKinoko)--
 */
namespace HikariKinoko {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual void getLODCylinder(Sys::Cylinder&);       // _144 (weak)
	virtual ~Obj() { }                                 // _1BC (weak)
	virtual void setParameters();                      // _228 (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_HikariKinoko;
	}
	virtual void touchedSE(Navi*); // _2FC

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_HikariKinoko;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace HikariKinoko

/**
 * --Brown Figworts (KareOoinu)--
 * KareOoinu_l  = Figwort (Brown, Large)
 * KareOoinu_s  = Figwort (Brown, Small)
 */
/* LARGE */
namespace KareOoinu_l {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }                                 // _1BC (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_KareOoinu_l;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_KareOoinu_l;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace KareOoinu_l

/* SMALL */
namespace KareOoinu_s {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }                                 // _1BC (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_KareOoinu_s;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_KareOoinu_s;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace KareOoinu_s

/**
 * --Margaret (Margaret)--
 */
namespace Margaret {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }                                 // _1BC (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Magaret;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Magaret;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Margaret

/**
 * --Foxtail (Nekojarashi)--
 */
namespace Nekojarashi {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual void doEntry();                            // _40
	virtual void getLODCylinder(Sys::Cylinder&);       // _144 (weak)
	virtual ~Obj() { }                                 // _1BC (weak)
	virtual void setParameters();                      // _228 (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Nekojarashi;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Nekojarashi;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Nekojarashi

/**
 * --Red Figworts (Ooinu)--
 * Ooinu_l  = Figwort (Red, Large)
 * Ooinu_s  = Figwort (Red, Small)
 */
/* LARGE */
namespace Ooinu_l {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }                                 // _1BC (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Ooinu_l;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Ooinu_l;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Ooinu_l

/* SMALL */
namespace Ooinu_s {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }                                 // _1BC (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Ooinu_s;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Ooinu_s;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Ooinu_s

/**
 * --Dandelion (Tanpopo)--
 */
namespace Tanpopo {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }                                 // _1BC (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Tanpopo;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Tanpopo;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Tanpopo

/**
 * --Horsetail (Tukushi)--
 */
namespace Tukushi {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }           // _1BC (weak)
	virtual void setParameters() // _228 (weak)
	{
		Plants::Obj::setParameters();
		m_lodParm.m_isCylinder = true;
	}
	virtual void getLODCylinder(Sys::Cylinder& cylinder) // _144 (weak)
	{
		Vector3f vec1;
		Vector3f vec2         = m_position;
		vec1                  = vec2;
		EnemyParmsBase* parms = static_cast<EnemyParmsBase*>(m_parms);
		vec1.y += parms->m_general.m_privateRadius.m_value;
		cylinder.set(vec1, vec2, parms->m_general.m_homeRadius.m_value);
	}
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Tukushi;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Tukushi;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Tukushi

/**
 * --Shoots (Wakame)--
 * Wakame_l  = Shoots (Large)
 * Wakame_s  = Shoots (Small)
 */
/* LARGE */
namespace Wakame_l {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }           // _1BC (weak)
	virtual void setParameters() // _228 (weak)
	{
		Plants::Obj::setParameters();
		m_lodParm.m_isCylinder = true;
	}
	virtual void getLODCylinder(Sys::Cylinder& cylinder) // _144 (weak)
	{
		Vector3f vec1;
		Vector3f vec2         = m_position;
		vec1                  = vec2;
		EnemyParmsBase* parms = static_cast<EnemyParmsBase*>(m_parms);
		vec1.y += parms->m_general.m_privateRadius.m_value;
		cylinder.set(vec1, vec2, parms->m_general.m_homeRadius.m_value);
	}
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Wakame_l;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Wakame_l;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Wakame_l

/* SMALL */
namespace Wakame_s {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }           // _1BC (weak)
	virtual void setParameters() // _228 (weak)
	{
		Plants::Obj::setParameters();
		m_lodParm.m_isCylinder = true;
	}
	virtual void getLODCylinder(Sys::Cylinder& cylinder) // _144 (weak)
	{
		Vector3f vec1;
		Vector3f vec2         = m_position;
		vec1                  = vec2;
		EnemyParmsBase* parms = static_cast<EnemyParmsBase*>(m_parms);
		vec1.y += parms->m_general.m_privateRadius.m_value;
		cylinder.set(vec1, vec2, parms->m_general.m_homeRadius.m_value);
	}
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Wakame_s;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Wakame_s;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Wakame_s

/**
 * --Seeding Dandelion (Watage)--
 */
namespace Watage {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual void doEntry();                            // _40
	virtual ~Obj() { }                                 // _1BC (weak)
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Watage;
	}
	virtual void touched(); // _2F8

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Watage;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Watage

/**
 * --Fiddlehead (Zenmai)--
 */
namespace Zenmai {
struct Obj : public Plants::Obj {
	Obj() { }

	virtual ~Obj() { }           // _1BC (weak)
	virtual void setParameters() // _228 (weak)
	{
		Plants::Obj::setParameters();
		m_lodParm.m_isCylinder = true;
	}
	virtual void getLODCylinder(Sys::Cylinder& cylinder) // _144 (weak)
	{
		Vector3f vec1;
		Vector3f vec2         = m_position;
		vec1                  = vec2;
		EnemyParmsBase* parms = static_cast<EnemyParmsBase*>(m_parms);
		vec1.y += parms->m_general.m_privateRadius.m_value;
		cylinder.set(vec1, vec2, parms->m_general.m_homeRadius.m_value);
	}
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Zenmai;
	}

	// _00 		= VTBL
	// _00-_2BF	= Plants::Obj
};

struct Mgr : public EnemyMgrBaseAlwaysMovieActor {
	Mgr(int objLimit, u8 modelType);

	// virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);          // _70
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Zenmai;
	}
	virtual J3DModelData* doLoadBmd(void* file) // _D4 (weak)
	{
		return J3DModelLoaderDataBase::load(file, 0x20240010); // flags
	}
	virtual void createObj(int count) // _A0 (weak)
	{
		m_obj = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int idx) // _A4 (weak)
	{
		return &m_obj[idx];
	}

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBaseAlwaysMovieActor
	Obj* m_obj; // _44, array of Objs
};
} // namespace Zenmai
} // namespace Game

#endif