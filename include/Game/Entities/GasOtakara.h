#ifndef _GAME_ENTITIES_GASOTAKARA_H
#define _GAME_ENTITIES_GASOTAKARA_H

#include "Game/Entities/OtakaraBase.h"
#include "efx/TOta.h"

/**
 * --Header for Munge Dweevil (GasOtakara)--
 */

namespace Game {
namespace GasOtakara {
struct Obj : public OtakaraBase::Obj {
	Obj();

	virtual ~Obj() { }                                 // _1BC (weak)
	virtual void changeMaterial();                     // _200
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_GasOtakara;
	}
	virtual void interactCreature(Creature*); // _2FC
	virtual void createEffect();              // _300
	virtual void setupEffect();               // _304
	virtual void startChargeEffect();         // _308
	virtual void finishChargeEffect();        // _30C
	virtual void createDisChargeEffect();     // _310
	virtual void effectDrawOn();              // _314
	virtual void effectDrawOff();             // _318
	virtual void startDisChargeSE();          // _320

	// _00 		= VTBL
	// _00-_2F4 = OtakaraBase::Obj
	efx::TOtaChargegas* m_efxChargeGas; // _2F4
	                                    // _2F8 = PelletView
};

struct Mgr : public OtakaraBase::Mgr {
	Mgr(int, u8);

	virtual ~Mgr();                                     // _58 (weak)
	virtual void createObj(int);                        // _A0
	virtual EnemyBase* getEnemy(int);                   // _A4
	virtual void doAlloc();                             // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID(); // _AC (weak)
	virtual void loadTexData();                         // _D0
	virtual ResTIMG* getChangeTexture();                // _E0 (weak)

	// _00 		= VTBL
	// _00-_48	= OtakaraBase::Mgr
};
} // namespace GasOtakara
} // namespace Game

#endif
