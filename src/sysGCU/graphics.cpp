#include "Splitter.h"
#include "Viewport.h"
#include "Graphics.h"
#include "Camera.h"
#include "JSystem/J3D/J3DSys.h"
#include "JSystem/J2D/J2DPrint.h"
#include "IDelegate.h"
#include "trig.h"
#include "nans.h"

int gScissorOffset;
char* Graphics::lastTokenName;

/*
 * --INFO--
 * Address:	80424E90
 * Size:	000150
 */
HorizonalSplitter::HorizonalSplitter(Graphics* gfx)
{
	mGraphics = gfx;

	mBounds.set(sys->getRenderModeObj()->fbWidth, sys->getRenderModeObj()->efbHeight);

	gfx->allocateViewports(2);
	Viewport* vp1 = new Viewport;
	Viewport* vp2 = new Viewport;

	Rectf bounds1(0.0f, 0.0f, mBounds.p2.x, mBounds.p2.y * 0.5f);
	Rectf bounds2(0.0f, mBounds.p2.y * 0.5f, mBounds.p2.x, mBounds.p2.y);

	vp1->setRect(bounds1);
	vp2->setRect(bounds2);
	gfx->addViewport(vp1);
	gfx->addViewport(vp2);
}

/*
 * --INFO--
 * Address:	80424FE0
 * Size:	0000BC
 */
void HorizonalSplitter::split2(f32 split)
{
	Viewport* vp1 = mGraphics->getViewport(0);
	Viewport* vp2 = mGraphics->getViewport(1);

	vp1->_50.y = split / 0.5f;
	vp2->_50.y = (1.0f - split) / 0.5f;
	vp2->_48.y = vp1->_50.y * (vp1->mBounds.getHeight()) - mBounds.p2.y * 0.5f;

	vp1->refresh();
	vp2->refresh();
}

/*
 * --INFO--
 * Address:	........
 * Size:	000150
 */
VerticalSplitter::VerticalSplitter(Graphics*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000BC
 */
void VerticalSplitter::split2(f32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0001C8
 */
FourSplitter::FourSplitter(Graphics*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00016C
 */
void FourSplitter::split4(f32, f32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	8042509C
 * Size:	0000C0
 */
Viewport::Viewport()
{
	mVpId = 0;

	u16 y      = sys->getRenderModeObj()->efbHeight;
	u16 x      = sys->getRenderModeObj()->fbWidth;
	mBounds.p1 = 0.0f;
	mBounds.p2 = Vector2f(x, y);
	mFlags     = 0;
	mCamera    = nullptr;
	_48        = Vector2f(0.0f);
	_50        = Vector2f(1.0f);
	refresh();
}

/*
 * --INFO--
 * Address:	8042515C
 * Size:	000044
 */
Matrixf* Viewport::getMatrix(bool getCurrentViewMtx)
{
	if (mCamera) {
		return mCamera->getViewMatrix(getCurrentViewMtx);
	} else {
		return mViewMat;
	}
}

/*
 * --INFO--
 * Address:	804251A0
 * Size:	00002C
 */
void Viewport::setProjection()
{
	if (mCamera) {
		mCamera->setProjection();
	}
}

/*
 * --INFO--
 * Address:	804251CC
 * Size:	000074
 */
int Graphics::getNumActiveViewports()
{
	int ret = 0;
	for (int i = 0; i < mActiveViewports; i++) {
		if (getViewport(i)->viewable()) {
			ret++;
		}
	}
	return ret;
}

/*
 * --INFO--
 * Address:	........
 * Size:	00003C
 */
void Viewport::getAspect()
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80425240
 * Size:	000050
 */
bool Viewport::viewable()
{
	if (mFlags & 1) {
		return false;
	}
	if (mBounds2.getWidth() < 1.0f || mBounds2.getHeight() < 1.0f) {
		return false;
	}

	return true;
}

/*
 * --INFO--
 * Address:	80425290
 * Size:	00004C
 */
void Viewport::updateCameraAspect()
{
	if (!mCamera) {
		return;
	}

	f32 y = mBounds2.getHeight();
	f32 x = mBounds2.getWidth();
	f32 aspect;
	if (y == 0.0f || x == 0.0f) {
		aspect = 1.0f;
	} else {
		aspect = x / y;
	}
	mCamera->mAspectRatio = aspect;
}

/*
 * --INFO--
 * Address:	804252DC
 * Size:	0000A4
 */
void Viewport::refresh()
{
	mBounds2.p1 = mBounds.p1 + _48;
	mBounds2.p2 = mBounds2.p1 + Vector2f(_50.x * mBounds.getWidth(), _50.y * mBounds.getHeight());
	updateCameraAspect();
	/*
	lfs      f4, 0x1c(r3)
	lfs      f0, 0x48(r3)
	lfs      f7, 0x20(r3)
	lfs      f1, 0x4c(r3)
	fadds    f0, f4, f0
	lfs      f3, 0x24(r3)
	lfs      f2, 0x28(r3)
	fadds    f6, f7, f1
	lfs      f5, 0x50(r3)
	fsubs    f4, f3, f4
	lfs      f3, 0x54(r3)
	fsubs    f1, f2, f7
	stfs     f0, 0x2c(r3)
	fmuls    f2, f5, f4
	fmuls    f3, f3, f1
	stfs     f6, 0x30(r3)
	lfs      f0, 0x2c(r3)
	lfs      f1, 0x30(r3)
	fadds    f0, f0, f2
	fadds    f1, f1, f3
	stfs     f0, 0x34(r3)
	stfs     f1, 0x38(r3)
	lwz      r4, 0x44(r3)
	cmplwi   r4, 0
	beqlr
	lfs      f3, 0x38(r3)
	lfs      f0, 0x30(r3)
	lfs      f2, 0x34(r3)
	lfs      f1, 0x2c(r3)
	fsubs    f3, f3, f0
	lfs      f0, lbl_805204B8@sda21(r2)
	fsubs    f1, f2, f1
	fcmpu    cr0, f0, f3
	beq      lbl_8042536C
	fcmpu    cr0, f0, f1
	bne      lbl_80425374

lbl_8042536C:
	lfs      f0, lbl_805204C8@sda21(r2)
	b        lbl_80425378

lbl_80425374:
	fdivs    f0, f1, f3

lbl_80425378:
	stfs     f0, 0x2c(r4)
	blr
	*/
}

/*
 * --INFO--
 * Address:	80425380
 * Size:	0000C4
 */
void Viewport::setRect(Rectf& rect)
{
	mBounds = rect;
	refresh();
	/*
	lfs      f0, 0(r4)
	stfs     f0, 0x1c(r3)
	lfs      f0, 4(r4)
	stfs     f0, 0x20(r3)
	lfs      f0, 8(r4)
	stfs     f0, 0x24(r3)
	lfs      f0, 0xc(r4)
	stfs     f0, 0x28(r3)
	lfs      f4, 0x1c(r3)
	lfs      f0, 0x48(r3)
	lfs      f7, 0x20(r3)
	lfs      f1, 0x4c(r3)
	fadds    f0, f4, f0
	lfs      f3, 0x24(r3)
	lfs      f2, 0x28(r3)
	fadds    f6, f7, f1
	lfs      f5, 0x50(r3)
	fsubs    f4, f3, f4
	lfs      f3, 0x54(r3)
	fsubs    f1, f2, f7
	stfs     f0, 0x2c(r3)
	fmuls    f4, f5, f4
	fmuls    f2, f3, f1
	stfs     f6, 0x30(r3)
	lfs      f0, 0x2c(r3)
	lfs      f1, 0x30(r3)
	fadds    f0, f0, f4
	fadds    f1, f1, f2
	stfs     f0, 0x34(r3)
	stfs     f1, 0x38(r3)
	lwz      r4, 0x44(r3)
	cmplwi   r4, 0
	beqlr
	lfs      f3, 0x38(r3)
	lfs      f0, 0x30(r3)
	lfs      f2, 0x34(r3)
	lfs      f1, 0x2c(r3)
	fsubs    f3, f3, f0
	lfs      f0, lbl_805204B8@sda21(r2)
	fsubs    f1, f2, f1
	fcmpu    cr0, f0, f3
	beq      lbl_80425430
	fcmpu    cr0, f0, f1
	bne      lbl_80425438

lbl_80425430:
	lfs      f0, lbl_805204C8@sda21(r2)
	b        lbl_8042543C

lbl_80425438:
	fdivs    f0, f1, f3

lbl_8042543C:
	stfs     f0, 0x2c(r4)
	blr
	*/
}

/*
 * --INFO--
 * Address:	80425444
 * Size:	0000D4
 */
void Viewport::setViewport()
{
	GXSetViewport(mBounds2.p1.x, mBounds2.p1.y, mBounds2.getWidth(), mBounds2.getHeight(), 0.0f, 1.0f);

	u32 x = mBounds2.getWidth();
	u32 y = mBounds2.getHeight();
	GXSetScissor(mBounds2.p1.x, mBounds2.p1.y, x, gScissorOffset + y);
}

/*
 * --INFO--
 * Address:	........
 * Size:	0001EC
 */
void Viewport::setOrthoGraph2d(J2DOrthoGraph&)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80425518
 * Size:	000050
 */
SysShape::Model* Viewport::setJ3DViewMtx(bool flag)
{
	Matrixf* mtx = getMatrix(flag);
	PSMTXCopy(mtx->mMatrix.mtxView, j3dSys.mViewMtx);
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000DC
 */
void Viewport::draw2dframe(J2DGrafContext&)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80425568
 * Size:	000044
 */
void Graphics::allocateViewports(int vpNum)
{
	mMaxViewports    = vpNum;
	mViewports       = new Viewport*[mMaxViewports];
	mActiveViewports = 0;
}

/*
 * --INFO--
 * Address:	804255AC
 * Size:	000014
 */
void Graphics::deleteViewports()
{
	mMaxViewports    = 0;
	mActiveViewports = 0;
	mViewports       = nullptr;
}

/*
 * --INFO--
 * Address:	804255C0
 * Size:	000030
 */
void Graphics::addViewport(Viewport* vp)
{
	if (mMaxViewports <= mActiveViewports) {
		return;
	}
	vp->mVpId                      = mActiveViewports;
	mViewports[mActiveViewports++] = vp;
}

/*
 * --INFO--
 * Address:	804255F0
 * Size:	000010
 */
Viewport* Graphics::getViewport(int id) { return mViewports[id]; }

/*
 * --INFO--
 * Address:	80425600
 * Size:	0000E0
 */
void Graphics::mapViewport(IDelegate1<Viewport*>* delegate)
{
	for (int i = 0; i < mActiveViewports; i++) {
		Viewport* vp = getViewport(i);
		if (vp->viewable()) {
			mCurrentViewport = vp;
			delegate->invoke(mViewports[i]);
		}
	}
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000E4
 */
void Graphics::mapViewport(IDelegate2<Graphics&, Viewport*>*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000130
 */
void Graphics::renderJ3D()
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000F0
 */
void Graphics::updateJ3D()
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	804256E0
 * Size:	000030
 */
static void graphicsTokenCallback(u16 id) { Graphics::lastTokenName = sys->mGfx->getTokenName(id); }

/*
 * --INFO--
 * Address:	80425710
 * Size:	000078
 */
void Graphics::setToken(char* tok)
{
	int id = findTokenIndex(tok);
	if (id == -1) {
		if (mActiveTokens < GRAPHICS_TOKEN_MAX) {
			mTokens[mActiveTokens] = tok;
			GXSetDrawSync(mActiveTokens);
			mActiveTokens++;
		}
	} else {
		GXSetDrawSync(id);
	}
}

/*
 * --INFO--
 * Address:	80425788
 * Size:	000010
 */
char* Graphics::getTokenName(u16 id) { return mTokens[id]; }

/*
 * --INFO--
 * Address:	........
 * Size:	000038
 */
u16 Graphics::getToken()
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80425798
 * Size:	000084
 */
int Graphics::findTokenIndex(char* tok)
{
	for (int i = 0; i < mActiveTokens; i++) {
		if (!strcmp(mTokens[i], tok)) {
			return i;
		}
	}
	return -1;
}

/*
 * --INFO--
 * Address:	8042581C
 * Size:	0001CC
 */
void Graphics::initPrimDraw(Matrixf* mtx)
{
	setToken("initPrimDraw");
	initGX();
	GXSetNumTevStages(1);
	GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
	GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
	GXSetNumChans(1);
	GXSetChanCtrl(GX_COLOR0A0, GX_TRUE, GX_SRC_VTX, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
	disableLight();
	clearVtxDesc();
	setVtxDesc(GX_VA_POS, GX_DIRECT);
	setVtxDesc(GX_VA_CLR0, GX_DIRECT);
	setVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	setVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_POS_XYZ, GX_RGBA8, 0);
	GXSetCullMode(GX_CULL_NONE);
	if (mtx) {
		PSMTXCopy(mtx->mMatrix.mtxView, mMatrix.mMatrix.mtxView);
	}
	GXSetLineWidth(6, GX_TO_ZERO);
	GXSetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_CLEAR);
	GXSetZMode(GX_TRUE, GX_LESS, GX_TRUE);
	GXLoadPosMtxImm(mMatrix.mMatrix.mtxView, 0);
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000F0
 */
void Graphics::drawPoint(Vector3f&)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00012C
 */
void Graphics::drawPoint(Vector3f*, u16)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	804259E8
 * Size:	0000C4
 */
void Graphics::drawLine(Vector3f& start, Vector3f& end)
{
	GXBegin(GX_LINES, GX_VTXFMT0, 2);

	GXPosition3f32(start.x, start.y, start.z);
	GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);

	GXPosition3f32(end.x, end.y, end.z);
	GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
}

/*
 * --INFO--
 * Address:	........
 * Size:	0002FC
 */
void Graphics::drawPlane(Plane&, f32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0007F0
 */
void Graphics::drawBox(Vector3f&, Vector3f*, f32*, f32*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000790
 */
void Graphics::drawBox(Vector3f&, Vector3f&, Vector3f&, Vector3f&)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80425AAC
 * Size:	000598
 */
void Graphics::drawSphere(Vector3f& position, f32 radius)
{
	Matrixf concatMtx; // 0x98
	for (int i = 0; i < 16; i++) {
		Matrixf srtMtx;                           // 0x68
		Vector3f scale(1.0f);                     // 0x2C
		Vector3f rot(0.0f, 0.3926991f * i, 0.0f); // 0x20

		srtMtx.makeSRT(scale, rot, position);

		PSMTXConcat(mMatrix.mMatrix.mtxView, srtMtx.mMatrix.mtxView, concatMtx.mMatrix.mtxView);
		GXLoadPosMtxImm(concatMtx.mMatrix.mtxView, 0);

		for (int j = 0; j < 16; j++) {
			f32 theta    = 0.3926991f * (f32)(j);
			f32 phi      = 0.3926991f * (f32)((j + 1) % 32);
			f32 cosTheta = radius * cosf(theta); // f26
			f32 sinTheta = radius * sinf(theta); // f24
			f32 cosPhi   = radius * cosf(phi);   // f23
			f32 sinPhi   = radius * sinf(phi);   // f22
			f32 zero     = 0.0f;                 // f28
			GXBegin(GX_LINES, GX_VTXFMT0, 2);
			GXPosition3f32(sinTheta, cosTheta, zero);
			GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
			GXPosition3f32(sinPhi, cosPhi, zero);
			GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
		}
	}

	for (int i = 0; i < 16; i++) {
		Matrixf srtMtx;                           // 0x68
		Vector3f scale(1.0f);                     // 0x2C
		Vector3f rot(0.3926991f * i, 0.0f, 0.0f); // 0x20

		srtMtx.makeSRT(scale, rot, position);

		PSMTXConcat(mMatrix.mMatrix.mtxView, srtMtx.mMatrix.mtxView, concatMtx.mMatrix.mtxView);
		GXLoadPosMtxImm(concatMtx.mMatrix.mtxView, 0);

		for (int j = 0; j < 16; j++) {
			f32 theta    = 0.3926991f * (f32)(j);
			f32 phi      = 0.3926991f * (f32)((j + 1) % 32);
			f32 cosTheta = radius * cosf(theta); // f26
			f32 sinTheta = radius * sinf(theta); // f23
			f32 cosPhi   = radius * cosf(phi);   // f24
			f32 sinPhi   = radius * sinf(phi);   // f22
			f32 zero     = 0.0f;                 // f30
			GXBegin(GX_LINES, GX_VTXFMT0, 2);
			GXPosition3f32(sinTheta, zero, cosTheta);
			GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
			GXPosition3f32(sinPhi, zero, cosPhi);
			GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
		}
	}
	/*
	stwu     r1, -0x1d0(r1)
	mflr     r0
	stw      r0, 0x1d4(r1)
	stfd     f31, 0x1c0(r1)
	psq_st   f31, 456(r1), 0, qr0
	stfd     f30, 0x1b0(r1)
	psq_st   f30, 440(r1), 0, qr0
	stfd     f29, 0x1a0(r1)
	psq_st   f29, 424(r1), 0, qr0
	stfd     f28, 0x190(r1)
	psq_st   f28, 408(r1), 0, qr0
	stfd     f27, 0x180(r1)
	psq_st   f27, 392(r1), 0, qr0
	stfd     f26, 0x170(r1)
	psq_st   f26, 376(r1), 0, qr0
	stfd     f25, 0x160(r1)
	psq_st   f25, 360(r1), 0, qr0
	stfd     f24, 0x150(r1)
	psq_st   f24, 344(r1), 0, qr0
	stfd     f23, 0x140(r1)
	psq_st   f23, 328(r1), 0, qr0
	stfd     f22, 0x130(r1)
	psq_st   f22, 312(r1), 0, qr0
	stmw     r25, 0x114(r1)
	fmr      f25, f1
	lis      r5, sincosTable___5JMath@ha
	lfs      f30, lbl_805204D8@sda21(r2)
	mr       r26, r3
	lfd      f29, lbl_805204D0@sda21(r2)
	mr       r27, r4
	lfs      f28, lbl_805204B8@sda21(r2)
	addi     r30, r5, sincosTable___5JMath@l
	lfs      f27, lbl_805204DC@sda21(r2)
	li       r29, 0
	lfs      f31, lbl_805204C8@sda21(r2)
	lis      r31, 0x4330
	lis      r25, 0xcc01

lbl_80425B40:
	xoris    r0, r29, 0x8000
	stw      r31, 0xc8(r1)
	mr       r6, r27
	addi     r3, r1, 0x68
	stw      r0, 0xcc(r1)
	addi     r4, r1, 0x2c
	addi     r5, r1, 0x20
	lfd      f0, 0xc8(r1)
	stfs     f31, 0x2c(r1)
	fsubs    f0, f0, f29
	stfs     f31, 0x30(r1)
	fmuls    f0, f30, f0
	stfs     f31, 0x34(r1)
	stfs     f28, 0x20(r1)
	stfs     f0, 0x24(r1)
	stfs     f28, 0x28(r1)
	bl       "makeSRT__7MatrixfFR10Vector3<f>R10Vector3<f>R10Vector3<f>"
	addi     r3, r26, 0x8c
	addi     r4, r1, 0x68
	addi     r5, r1, 0x98
	bl       PSMTXConcat
	addi     r3, r1, 0x98
	li       r4, 0
	bl       GXLoadPosMtxImm
	li       r28, 0

lbl_80425BA4:
	addi     r3, r28, 1
	xoris    r4, r28, 0x8000
	slwi     r0, r3, 0x1b
	stw      r4, 0xcc(r1)
	srwi     r3, r3, 0x1f
	subf     r0, r3, r0
	stw      r31, 0xc8(r1)
	rotlwi   r0, r0, 5
	add      r0, r0, r3
	lfd      f0, 0xc8(r1)
	xoris    r0, r0, 0x8000
	stw      r31, 0xd0(r1)
	fsubs    f0, f0, f29
	stw      r0, 0xd4(r1)
	fmuls    f2, f30, f0
	lfd      f0, 0xd0(r1)
	fsubs    f0, f0, f29
	fmr      f1, f2
	fcmpo    cr0, f2, f28
	fmuls    f3, f30, f0
	bge      lbl_80425BFC
	fneg     f1, f2

lbl_80425BFC:
	fmuls    f0, f1, f27
	fcmpo    cr0, f2, f28
	fctiwz   f0, f0
	stfd     f0, 0xd8(r1)
	lwz      r0, 0xdc(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r30, r0
	lfs      f0, 4(r3)
	fmuls    f26, f25, f0
	bge      lbl_80425C50
	lfs      f0, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f2, f0
	fctiwz   f0, f0
	stfd     f0, 0xe0(r1)
	lwz      r0, 0xe4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f0, f0
	b        lbl_80425C70

lbl_80425C50:
	fmuls    f0, f2, f27
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fctiwz   f0, f0
	stfd     f0, 0xe8(r1)
	lwz      r0, 0xec(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0

lbl_80425C70:
	fmr      f1, f3
	fcmpo    cr0, f3, f28
	fmuls    f24, f25, f0
	bge      lbl_80425C84
	fneg     f1, f3

lbl_80425C84:
	fmuls    f0, f1, f27
	fcmpo    cr0, f3, f28
	fctiwz   f0, f0
	stfd     f0, 0xf0(r1)
	lwz      r0, 0xf4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r30, r0
	lfs      f0, 4(r3)
	fmuls    f23, f25, f0
	bge      lbl_80425CD8
	lfs      f0, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f3, f0
	fctiwz   f0, f0
	stfd     f0, 0xf8(r1)
	lwz      r0, 0xfc(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f22, f0
	b        lbl_80425CF8

lbl_80425CD8:
	fmuls    f0, f3, f27
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fctiwz   f0, f0
	stfd     f0, 0x100(r1)
	lwz      r0, 0x104(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f22, r3, r0

lbl_80425CF8:
	li       r3, 0xa8
	li       r4, 0
	li       r5, 2
	bl       GXBegin
	stfs     f24, -0x8000(r25)
	addi     r28, r28, 1
	fmuls    f0, f25, f22
	cmpwi    r28, 0x10
	stfs     f26, -0x8000(r25)
	stfs     f28, -0x8000(r25)
	lbz      r5, 0x87(r26)
	lbz      r4, 0x86(r26)
	lbz      r3, 0x85(r26)
	lbz      r0, 0x84(r26)
	stb      r0, -0x8000(r25)
	stb      r3, -0x8000(r25)
	stb      r4, -0x8000(r25)
	stb      r5, -0x8000(r25)
	stfs     f0, -0x8000(r25)
	stfs     f23, -0x8000(r25)
	stfs     f28, -0x8000(r25)
	lbz      r5, 0x87(r26)
	lbz      r4, 0x86(r26)
	lbz      r3, 0x85(r26)
	lbz      r0, 0x84(r26)
	stb      r0, -0x8000(r25)
	stb      r3, -0x8000(r25)
	stb      r4, -0x8000(r25)
	stb      r5, -0x8000(r25)
	blt      lbl_80425BA4
	addi     r29, r29, 1
	cmpwi    r29, 0x10
	blt      lbl_80425B40
	lis      r3, sincosTable___5JMath@ha
	lfs      f28, lbl_805204D8@sda21(r2)
	lfd      f29, lbl_805204D0@sda21(r2)
	addi     r31, r3, sincosTable___5JMath@l
	lfs      f30, lbl_805204B8@sda21(r2)
	li       r28, 0
	lfs      f31, lbl_805204DC@sda21(r2)
	lis      r30, 0x4330
	lfs      f27, lbl_805204C8@sda21(r2)
	lis      r25, 0xcc01

lbl_80425DA4:
	xoris    r0, r28, 0x8000
	stw      r30, 0x100(r1)
	mr       r6, r27
	addi     r3, r1, 0x38
	stw      r0, 0x104(r1)
	addi     r4, r1, 0x14
	addi     r5, r1, 8
	lfd      f0, 0x100(r1)
	stfs     f27, 0x14(r1)
	fsubs    f0, f0, f29
	stfs     f27, 0x18(r1)
	fmuls    f0, f28, f0
	stfs     f27, 0x1c(r1)
	stfs     f30, 0xc(r1)
	stfs     f0, 8(r1)
	stfs     f30, 0x10(r1)
	bl       "makeSRT__7MatrixfFR10Vector3<f>R10Vector3<f>R10Vector3<f>"
	addi     r3, r26, 0x8c
	addi     r4, r1, 0x38
	addi     r5, r1, 0x98
	bl       PSMTXConcat
	addi     r3, r1, 0x98
	li       r4, 0
	bl       GXLoadPosMtxImm
	li       r29, 0

lbl_80425E08:
	addi     r3, r29, 1
	xoris    r4, r29, 0x8000
	slwi     r0, r3, 0x1b
	stw      r4, 0x104(r1)
	srwi     r3, r3, 0x1f
	subf     r0, r3, r0
	stw      r30, 0x100(r1)
	rotlwi   r0, r0, 5
	add      r0, r0, r3
	lfd      f0, 0x100(r1)
	xoris    r0, r0, 0x8000
	stw      r30, 0xf8(r1)
	fsubs    f0, f0, f29
	stw      r0, 0xfc(r1)
	fmuls    f2, f28, f0
	lfd      f0, 0xf8(r1)
	fsubs    f0, f0, f29
	fmr      f1, f2
	fcmpo    cr0, f2, f30
	fmuls    f3, f28, f0
	bge      lbl_80425E60
	fneg     f1, f2

lbl_80425E60:
	fmuls    f0, f1, f31
	fcmpo    cr0, f2, f30
	fctiwz   f0, f0
	stfd     f0, 0xf0(r1)
	lwz      r0, 0xf4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r31, r0
	lfs      f0, 4(r3)
	fmuls    f26, f25, f0
	bge      lbl_80425EB4
	lfs      f0, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f2, f0
	fctiwz   f0, f0
	stfd     f0, 0xe8(r1)
	lwz      r0, 0xec(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f0, f0
	b        lbl_80425ED4

lbl_80425EB4:
	fmuls    f0, f2, f31
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fctiwz   f0, f0
	stfd     f0, 0xe0(r1)
	lwz      r0, 0xe4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0

lbl_80425ED4:
	fmr      f1, f3
	fcmpo    cr0, f3, f30
	fmuls    f23, f25, f0
	bge      lbl_80425EE8
	fneg     f1, f3

lbl_80425EE8:
	fmuls    f0, f1, f31
	fcmpo    cr0, f3, f30
	fctiwz   f0, f0
	stfd     f0, 0xd8(r1)
	lwz      r0, 0xdc(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r31, r0
	lfs      f0, 4(r3)
	fmuls    f24, f25, f0
	bge      lbl_80425F3C
	lfs      f0, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f3, f0
	fctiwz   f0, f0
	stfd     f0, 0xd0(r1)
	lwz      r0, 0xd4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f22, f0
	b        lbl_80425F5C

lbl_80425F3C:
	fmuls    f0, f3, f31
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fctiwz   f0, f0
	stfd     f0, 0xc8(r1)
	lwz      r0, 0xcc(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f22, r3, r0

lbl_80425F5C:
	li       r3, 0xa8
	li       r4, 0
	li       r5, 2
	bl       GXBegin
	stfs     f23, -0x8000(r25)
	addi     r29, r29, 1
	fmuls    f0, f25, f22
	cmpwi    r29, 0x10
	stfs     f30, -0x8000(r25)
	stfs     f26, -0x8000(r25)
	lbz      r5, 0x87(r26)
	lbz      r4, 0x86(r26)
	lbz      r3, 0x85(r26)
	lbz      r0, 0x84(r26)
	stb      r0, -0x8000(r25)
	stb      r3, -0x8000(r25)
	stb      r4, -0x8000(r25)
	stb      r5, -0x8000(r25)
	stfs     f0, -0x8000(r25)
	stfs     f30, -0x8000(r25)
	stfs     f24, -0x8000(r25)
	lbz      r5, 0x87(r26)
	lbz      r4, 0x86(r26)
	lbz      r3, 0x85(r26)
	lbz      r0, 0x84(r26)
	stb      r0, -0x8000(r25)
	stb      r3, -0x8000(r25)
	stb      r4, -0x8000(r25)
	stb      r5, -0x8000(r25)
	blt      lbl_80425E08
	addi     r28, r28, 1
	cmpwi    r28, 0x10
	blt      lbl_80425DA4
	psq_l    f31, 456(r1), 0, qr0
	lfd      f31, 0x1c0(r1)
	psq_l    f30, 440(r1), 0, qr0
	lfd      f30, 0x1b0(r1)
	psq_l    f29, 424(r1), 0, qr0
	lfd      f29, 0x1a0(r1)
	psq_l    f28, 408(r1), 0, qr0
	lfd      f28, 0x190(r1)
	psq_l    f27, 392(r1), 0, qr0
	lfd      f27, 0x180(r1)
	psq_l    f26, 376(r1), 0, qr0
	lfd      f26, 0x170(r1)
	psq_l    f25, 360(r1), 0, qr0
	lfd      f25, 0x160(r1)
	psq_l    f24, 344(r1), 0, qr0
	lfd      f24, 0x150(r1)
	psq_l    f23, 328(r1), 0, qr0
	lfd      f23, 0x140(r1)
	psq_l    f22, 312(r1), 0, qr0
	lfd      f22, 0x130(r1)
	lmw      r25, 0x114(r1)
	lwz      r0, 0x1d4(r1)
	mtlr     r0
	addi     r1, r1, 0x1d0
	blr
	*/
}

/*
 * --INFO--
 * Address:	80426044
 * Size:	0005C8
 */
void Graphics::drawSphere(f32 radius, Matrixf* gfxMtx)
{
	Matrixf concatMtx; // 0x98
	for (int i = 0; i < 16; i++) {
		Matrixf srtMtx;                           // 0x68
		Vector3f scale(1.0f);                     // 0x2C
		Vector3f rot(0.0f, 0.3926991f * i, 0.0f); // 0x20

		srtMtx.makeSRT(scale, rot, Vector3f::zero);

		PSMTXConcat(gfxMtx->mMatrix.mtxView, srtMtx.mMatrix.mtxView, srtMtx.mMatrix.mtxView);
		PSMTXConcat(mMatrix.mMatrix.mtxView, srtMtx.mMatrix.mtxView, concatMtx.mMatrix.mtxView);
		GXLoadPosMtxImm(concatMtx.mMatrix.mtxView, 0);

		for (int j = 0; j < 16; j++) {
			f32 theta    = 0.3926991f * (f32)(j);
			f32 phi      = 0.3926991f * (f32)((j + 1) % 32);
			f32 cosTheta = radius * cosf(theta); // f26
			f32 sinTheta = radius * sinf(theta); // f24
			f32 cosPhi   = radius * cosf(phi);   // f23
			f32 sinPhi   = radius * sinf(phi);   // f22
			f32 zero     = 0.0f;                 // f28
			GXBegin(GX_LINES, GX_VTXFMT0, 2);
			GXPosition3f32(sinTheta, cosTheta, zero);
			GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
			GXPosition3f32(sinPhi, cosPhi, zero);
			GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
		}
	}

	for (int i = 0; i < 16; i++) {
		Matrixf srtMtx;                           // 0x68
		Vector3f scale(1.0f);                     // 0x2C
		Vector3f rot(0.3926991f * i, 0.0f, 0.0f); // 0x20

		srtMtx.makeSRT(scale, rot, Vector3f::zero);

		PSMTXConcat(gfxMtx->mMatrix.mtxView, srtMtx.mMatrix.mtxView, srtMtx.mMatrix.mtxView);
		PSMTXConcat(mMatrix.mMatrix.mtxView, srtMtx.mMatrix.mtxView, concatMtx.mMatrix.mtxView);
		GXLoadPosMtxImm(concatMtx.mMatrix.mtxView, 0);

		for (int j = 0; j < 16; j++) {
			f32 theta    = 0.3926991f * (f32)(j);
			f32 phi      = 0.3926991f * (f32)((j + 1) % 32);
			f32 cosTheta = radius * cosf(theta); // f26
			f32 sinTheta = radius * sinf(theta); // f23
			f32 cosPhi   = radius * cosf(phi);   // f24
			f32 sinPhi   = radius * sinf(phi);   // f22
			f32 zero     = 0.0f;                 // f30
			GXBegin(GX_LINES, GX_VTXFMT0, 2);
			GXPosition3f32(sinTheta, zero, cosTheta);
			GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
			GXPosition3f32(sinPhi, zero, cosPhi);
			GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
		}
	}
	/*
	stwu     r1, -0x1d0(r1)
	mflr     r0
	stw      r0, 0x1d4(r1)
	stfd     f31, 0x1c0(r1)
	psq_st   f31, 456(r1), 0, qr0
	stfd     f30, 0x1b0(r1)
	psq_st   f30, 440(r1), 0, qr0
	stfd     f29, 0x1a0(r1)
	psq_st   f29, 424(r1), 0, qr0
	stfd     f28, 0x190(r1)
	psq_st   f28, 408(r1), 0, qr0
	stfd     f27, 0x180(r1)
	psq_st   f27, 392(r1), 0, qr0
	stfd     f26, 0x170(r1)
	psq_st   f26, 376(r1), 0, qr0
	stfd     f25, 0x160(r1)
	psq_st   f25, 360(r1), 0, qr0
	stfd     f24, 0x150(r1)
	psq_st   f24, 344(r1), 0, qr0
	stfd     f23, 0x140(r1)
	psq_st   f23, 328(r1), 0, qr0
	stfd     f22, 0x130(r1)
	psq_st   f22, 312(r1), 0, qr0
	stmw     r24, 0x110(r1)
	fmr      f25, f1
	lis      r5, sincosTable___5JMath@ha
	lis      r6, "zero__10Vector3<f>"@ha
	lfs      f30, lbl_805204D8@sda21(r2)
	lfd      f29, lbl_805204D0@sda21(r2)
	mr       r25, r3
	lfs      f28, lbl_805204B8@sda21(r2)
	mr       r26, r4
	lfs      f27, lbl_805204DC@sda21(r2)
	addi     r29, r5, sincosTable___5JMath@l
	lfs      f31, lbl_805204C8@sda21(r2)
	addi     r31, r6, "zero__10Vector3<f>"@l
	li       r28, 0
	lis      r30, 0x4330
	lis      r24, 0xcc01

lbl_804260E0:
	xoris    r0, r28, 0x8000
	stw      r30, 0xc8(r1)
	mr       r6, r31
	addi     r3, r1, 0x68
	stw      r0, 0xcc(r1)
	addi     r4, r1, 0x2c
	addi     r5, r1, 0x20
	lfd      f0, 0xc8(r1)
	stfs     f31, 0x2c(r1)
	fsubs    f0, f0, f29
	stfs     f31, 0x30(r1)
	fmuls    f0, f30, f0
	stfs     f31, 0x34(r1)
	stfs     f28, 0x20(r1)
	stfs     f0, 0x24(r1)
	stfs     f28, 0x28(r1)
	bl       "makeSRT__7MatrixfFR10Vector3<f>R10Vector3<f>R10Vector3<f>"
	addi     r4, r1, 0x68
	mr       r3, r26
	mr       r5, r4
	bl       PSMTXConcat
	addi     r3, r25, 0x8c
	addi     r4, r1, 0x68
	addi     r5, r1, 0x98
	bl       PSMTXConcat
	addi     r3, r1, 0x98
	li       r4, 0
	bl       GXLoadPosMtxImm
	li       r27, 0

lbl_80426154:
	addi     r3, r27, 1
	xoris    r4, r27, 0x8000
	slwi     r0, r3, 0x1b
	stw      r4, 0xcc(r1)
	srwi     r3, r3, 0x1f
	subf     r0, r3, r0
	stw      r30, 0xc8(r1)
	rotlwi   r0, r0, 5
	add      r0, r0, r3
	lfd      f0, 0xc8(r1)
	xoris    r0, r0, 0x8000
	stw      r30, 0xd0(r1)
	fsubs    f0, f0, f29
	stw      r0, 0xd4(r1)
	fmuls    f2, f30, f0
	lfd      f0, 0xd0(r1)
	fsubs    f0, f0, f29
	fmr      f1, f2
	fcmpo    cr0, f2, f28
	fmuls    f3, f30, f0
	bge      lbl_804261AC
	fneg     f1, f2

lbl_804261AC:
	fmuls    f0, f1, f27
	fcmpo    cr0, f2, f28
	fctiwz   f0, f0
	stfd     f0, 0xd8(r1)
	lwz      r0, 0xdc(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r29, r0
	lfs      f0, 4(r3)
	fmuls    f26, f25, f0
	bge      lbl_80426200
	lfs      f0, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f2, f0
	fctiwz   f0, f0
	stfd     f0, 0xe0(r1)
	lwz      r0, 0xe4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f0, f0
	b        lbl_80426220

lbl_80426200:
	fmuls    f0, f2, f27
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fctiwz   f0, f0
	stfd     f0, 0xe8(r1)
	lwz      r0, 0xec(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0

lbl_80426220:
	fmr      f1, f3
	fcmpo    cr0, f3, f28
	fmuls    f24, f25, f0
	bge      lbl_80426234
	fneg     f1, f3

lbl_80426234:
	fmuls    f0, f1, f27
	fcmpo    cr0, f3, f28
	fctiwz   f0, f0
	stfd     f0, 0xf0(r1)
	lwz      r0, 0xf4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r29, r0
	lfs      f0, 4(r3)
	fmuls    f23, f25, f0
	bge      lbl_80426288
	lfs      f0, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f3, f0
	fctiwz   f0, f0
	stfd     f0, 0xf8(r1)
	lwz      r0, 0xfc(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f22, f0
	b        lbl_804262A8

lbl_80426288:
	fmuls    f0, f3, f27
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fctiwz   f0, f0
	stfd     f0, 0x100(r1)
	lwz      r0, 0x104(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f22, r3, r0

lbl_804262A8:
	li       r3, 0xa8
	li       r4, 0
	li       r5, 2
	bl       GXBegin
	stfs     f24, -0x8000(r24)
	addi     r27, r27, 1
	fmuls    f0, f25, f22
	cmpwi    r27, 0x10
	stfs     f26, -0x8000(r24)
	stfs     f28, -0x8000(r24)
	lbz      r5, 0x87(r25)
	lbz      r4, 0x86(r25)
	lbz      r3, 0x85(r25)
	lbz      r0, 0x84(r25)
	stb      r0, -0x8000(r24)
	stb      r3, -0x8000(r24)
	stb      r4, -0x8000(r24)
	stb      r5, -0x8000(r24)
	stfs     f0, -0x8000(r24)
	stfs     f23, -0x8000(r24)
	stfs     f28, -0x8000(r24)
	lbz      r5, 0x87(r25)
	lbz      r4, 0x86(r25)
	lbz      r3, 0x85(r25)
	lbz      r0, 0x84(r25)
	stb      r0, -0x8000(r24)
	stb      r3, -0x8000(r24)
	stb      r4, -0x8000(r24)
	stb      r5, -0x8000(r24)
	blt      lbl_80426154
	addi     r28, r28, 1
	cmpwi    r28, 0x10
	blt      lbl_804260E0
	lis      r3, sincosTable___5JMath@ha
	lis      r4, "zero__10Vector3<f>"@ha
	lfs      f28, lbl_805204D8@sda21(r2)
	addi     r31, r3, sincosTable___5JMath@l
	lfd      f29, lbl_805204D0@sda21(r2)
	addi     r29, r4, "zero__10Vector3<f>"@l
	lfs      f30, lbl_805204B8@sda21(r2)
	li       r27, 0
	lfs      f31, lbl_805204DC@sda21(r2)
	lis      r30, 0x4330
	lfs      f27, lbl_805204C8@sda21(r2)
	lis      r24, 0xcc01

lbl_8042635C:
	xoris    r0, r27, 0x8000
	stw      r30, 0x100(r1)
	mr       r6, r29
	addi     r3, r1, 0x38
	stw      r0, 0x104(r1)
	addi     r4, r1, 0x14
	addi     r5, r1, 8
	lfd      f0, 0x100(r1)
	stfs     f27, 0x14(r1)
	fsubs    f0, f0, f29
	stfs     f27, 0x18(r1)
	fmuls    f0, f28, f0
	stfs     f27, 0x1c(r1)
	stfs     f30, 0xc(r1)
	stfs     f0, 8(r1)
	stfs     f30, 0x10(r1)
	bl       "makeSRT__7MatrixfFR10Vector3<f>R10Vector3<f>R10Vector3<f>"
	addi     r4, r1, 0x38
	mr       r3, r26
	mr       r5, r4
	bl       PSMTXConcat
	addi     r3, r25, 0x8c
	addi     r4, r1, 0x38
	addi     r5, r1, 0x98
	bl       PSMTXConcat
	addi     r3, r1, 0x98
	li       r4, 0
	bl       GXLoadPosMtxImm
	li       r28, 0

lbl_804263D0:
	addi     r3, r28, 1
	xoris    r4, r28, 0x8000
	slwi     r0, r3, 0x1b
	stw      r4, 0x104(r1)
	srwi     r3, r3, 0x1f
	subf     r0, r3, r0
	stw      r30, 0x100(r1)
	rotlwi   r0, r0, 5
	add      r0, r0, r3
	lfd      f0, 0x100(r1)
	xoris    r0, r0, 0x8000
	stw      r30, 0xf8(r1)
	fsubs    f0, f0, f29
	stw      r0, 0xfc(r1)
	fmuls    f2, f28, f0
	lfd      f0, 0xf8(r1)
	fsubs    f0, f0, f29
	fmr      f1, f2
	fcmpo    cr0, f2, f30
	fmuls    f3, f28, f0
	bge      lbl_80426428
	fneg     f1, f2

lbl_80426428:
	fmuls    f0, f1, f31
	fcmpo    cr0, f2, f30
	fctiwz   f0, f0
	stfd     f0, 0xf0(r1)
	lwz      r0, 0xf4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r31, r0
	lfs      f0, 4(r3)
	fmuls    f26, f25, f0
	bge      lbl_8042647C
	lfs      f0, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f2, f0
	fctiwz   f0, f0
	stfd     f0, 0xe8(r1)
	lwz      r0, 0xec(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f0, f0
	b        lbl_8042649C

lbl_8042647C:
	fmuls    f0, f2, f31
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fctiwz   f0, f0
	stfd     f0, 0xe0(r1)
	lwz      r0, 0xe4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0

lbl_8042649C:
	fmr      f1, f3
	fcmpo    cr0, f3, f30
	fmuls    f23, f25, f0
	bge      lbl_804264B0
	fneg     f1, f3

lbl_804264B0:
	fmuls    f0, f1, f31
	fcmpo    cr0, f3, f30
	fctiwz   f0, f0
	stfd     f0, 0xd8(r1)
	lwz      r0, 0xdc(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r31, r0
	lfs      f0, 4(r3)
	fmuls    f24, f25, f0
	bge      lbl_80426504
	lfs      f0, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f3, f0
	fctiwz   f0, f0
	stfd     f0, 0xd0(r1)
	lwz      r0, 0xd4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f22, f0
	b        lbl_80426524

lbl_80426504:
	fmuls    f0, f3, f31
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fctiwz   f0, f0
	stfd     f0, 0xc8(r1)
	lwz      r0, 0xcc(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f22, r3, r0

lbl_80426524:
	li       r3, 0xa8
	li       r4, 0
	li       r5, 2
	bl       GXBegin
	stfs     f23, -0x8000(r24)
	addi     r28, r28, 1
	fmuls    f0, f25, f22
	cmpwi    r28, 0x10
	stfs     f30, -0x8000(r24)
	stfs     f26, -0x8000(r24)
	lbz      r5, 0x87(r25)
	lbz      r4, 0x86(r25)
	lbz      r3, 0x85(r25)
	lbz      r0, 0x84(r25)
	stb      r0, -0x8000(r24)
	stb      r3, -0x8000(r24)
	stb      r4, -0x8000(r24)
	stb      r5, -0x8000(r24)
	stfs     f0, -0x8000(r24)
	stfs     f30, -0x8000(r24)
	stfs     f24, -0x8000(r24)
	lbz      r5, 0x87(r25)
	lbz      r4, 0x86(r25)
	lbz      r3, 0x85(r25)
	lbz      r0, 0x84(r25)
	stb      r0, -0x8000(r24)
	stb      r3, -0x8000(r24)
	stb      r4, -0x8000(r24)
	stb      r5, -0x8000(r24)
	blt      lbl_804263D0
	addi     r27, r27, 1
	cmpwi    r27, 0x10
	blt      lbl_8042635C
	psq_l    f31, 456(r1), 0, qr0
	lfd      f31, 0x1c0(r1)
	psq_l    f30, 440(r1), 0, qr0
	lfd      f30, 0x1b0(r1)
	psq_l    f29, 424(r1), 0, qr0
	lfd      f29, 0x1a0(r1)
	psq_l    f28, 408(r1), 0, qr0
	lfd      f28, 0x190(r1)
	psq_l    f27, 392(r1), 0, qr0
	lfd      f27, 0x180(r1)
	psq_l    f26, 376(r1), 0, qr0
	lfd      f26, 0x170(r1)
	psq_l    f25, 360(r1), 0, qr0
	lfd      f25, 0x160(r1)
	psq_l    f24, 344(r1), 0, qr0
	lfd      f24, 0x150(r1)
	psq_l    f23, 328(r1), 0, qr0
	lfd      f23, 0x140(r1)
	psq_l    f22, 312(r1), 0, qr0
	lfd      f22, 0x130(r1)
	lmw      r24, 0x110(r1)
	lwz      r0, 0x1d4(r1)
	mtlr     r0
	addi     r1, r1, 0x1d0
	blr
	*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	0005B4
 */
void Graphics::drawCylinder(Vector3f&, Vector3f&, f32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000028
 */
void Graphics::loadPrimViewMtx()
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0005F8
 */
void Graphics::drawTube(Vector3f&, Vector3f&, f32, f32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000E0
 */
void Graphics::drawMesh(Matrixf*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	8042660C
 * Size:	0002B8
 */
void Graphics::drawAxis(f32 a1, Matrixf* mtx)
{
	setToken("draw axis");
	Color4 backup = mDrawColor;
	Mtx out;
	if (mtx) {
		PSMTXConcat(mMatrix.mMatrix.mtxView, mtx->mMatrix.mtxView, out);
		GXLoadPosMtxImm(out, 0);
	} else {
		GXLoadPosMtxImm(mMatrix.mMatrix.mtxView, 0);
	}
	f32 zero   = 0.0f;
	mDrawColor = Color4(255, 0, 0, 255);
	GXBegin(GX_LINES, GX_VTXFMT0, 2);
	GXPosition3f32(zero, zero, zero);
	GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
	GXPosition3f32(a1, zero, zero);
	GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);

	mDrawColor = Color4(0, 255, 0, 255);
	GXBegin(GX_LINES, GX_VTXFMT0, 2);
	GXPosition3f32(zero, zero, zero);
	GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
	GXPosition3f32(zero, a1, zero);
	GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);

	mDrawColor = Color4(0, 0, 255, 255);
	GXBegin(GX_LINES, GX_VTXFMT0, 2);
	GXPosition3f32(zero, zero, zero);
	GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
	GXPosition3f32(zero, zero, a1);
	GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);

	mDrawColor = backup;
}

/*
 * --INFO--
 * Address:	........
 * Size:	000274
 */
void Graphics::drawMarker(f32, Matrixf*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0001EC
 */
void Graphics::drawRect(Rectf&, Color4&)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0001B8
 */
void Graphics::drawRect(Rectf&, JUTTexture*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	804268C4
 * Size:	000024
 */
void Graphics::clearZBuffer(Rectf& bounds) { fillZBuffer(bounds, -0.999f); }

/*
 * --INFO--
 * Address:	804268E8
 * Size:	0003D0
 */
void Graphics::fillZBuffer(Rectf& bounds, f32 z)
{
	setToken("initPrimDraw");
	initGX();
	GXSetNumTevStages(1);
	GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
	GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
	GXSetNumChans(1);
	GXSetChanCtrl(GX_COLOR0A0, GX_TRUE, GX_SRC_VTX, GX_SRC_VTX, 0, GX_DF_NONE, GX_AF_NONE);
	disableLight();
	clearVtxDesc();
	setVtxDesc(GX_VA_POS, GX_DIRECT);
	setVtxDesc(GX_VA_CLR0, GX_DIRECT);
	setVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	setVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_POS_XYZ, GX_RGBA8, 0);
	GXSetCullMode(GX_CULL_NONE);
	GXSetLineWidth(6, GX_TO_ZERO);
	GXSetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_CLEAR);
	GXSetZMode(GX_TRUE, GX_LESS, GX_TRUE);
	GXLoadPosMtxImm(mMatrix.mMatrix.mtxView, 0);
	GXSetViewport(bounds.p1.x, bounds.p1.y, bounds.getWidth(), bounds.getHeight(), 0.0f, 1.0f);
	GXSetScissor(bounds.p1.x, bounds.p1.y, bounds.getWidth(), bounds.getHeight());
	GXSetColorUpdate(GX_FALSE);
	GXSetZMode(GX_TRUE, GX_ALWAYS, GX_TRUE);

	Mtx mtx;
	C_MTXOrtho(mtx, bounds.p1.y, bounds.p2.y, bounds.p1.x, bounds.p2.x, -1.0f, 1.0f);
	GXSetProjection(mtx, GX_ORTHOGRAPHIC);

	Mtx mtx2;
	PSMTXIdentity(mtx2);
	GXLoadPosMtxImm(mtx2, 0);

	GXSetCullMode(GX_CULL_NONE);
	GXClearVtxDesc();
	GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
	GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
	GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_POS_XYZ, GX_RGBA8, 0);
	GXBegin(GX_QUADS, GX_VTXFMT0, 4);

	GXPosition3f32(bounds.p1.x, bounds.p1.y, z);
	GXColor4u8(10, 70, 10, 255);

	GXPosition3f32(bounds.p1.x, bounds.p2.y, z);
	GXColor4u8(10, 70, 10, 255);

	GXPosition3f32(bounds.p2.x, bounds.p2.y, z);
	GXColor4u8(10, 70, 10, 255);

	GXPosition3f32(bounds.p2.x, bounds.p1.y, z);
	GXColor4u8(10, 70, 10, 255);

	GXSetZMode(GX_TRUE, GX_LESS, GX_TRUE);
	GXSetColorUpdate(GX_TRUE);

	/*
	stwu     r1, -0xc0(r1)
	mflr     r0
	stw      r0, 0xc4(r1)
	stfd     f31, 0xb0(r1)
	psq_st   f31, 184(r1), 0, qr0
	stfd     f30, 0xa0(r1)
	psq_st   f30, 168(r1), 0, qr0
	stfd     f29, 0x90(r1)
	psq_st   f29, 152(r1), 0, qr0
	stmw     r27, 0x7c(r1)
	fmr      f29, f1
	mr       r27, r3
	lis      r3, lbl_80499C38@ha
	mr       r31, r4
	mr       r30, r27
	li       r29, 0
	addi     r28, r3, lbl_80499C38@l
	b        lbl_80426950

lbl_80426930:
	lwz      r3, 4(r30)
	mr       r4, r28
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_80426948
	b        lbl_80426960

lbl_80426948:
	addi     r30, r30, 4
	addi     r29, r29, 1

lbl_80426950:
	lhz      r0, 0(r27)
	cmpw     r29, r0
	blt      lbl_80426930
	li       r29, -1

lbl_80426960:
	cmpwi    r29, -1
	bne      lbl_804269A0
	lhz      r0, 0(r27)
	cmplwi   r0, 0x20
	bge      lbl_804269A8
	rlwinm   r0, r0, 2, 0xe, 0x1d
	lis      r3, lbl_80499C38@ha
	addi     r4, r3, lbl_80499C38@l
	add      r3, r27, r0
	stw      r4, 4(r3)
	lhz      r3, 0(r27)
	bl       GXSetDrawSync
	lhz      r3, 0(r27)
	addi     r0, r3, 1
	sth      r0, 0(r27)
	b        lbl_804269A8

lbl_804269A0:
	clrlwi   r3, r29, 0x10
	bl       GXSetDrawSync

lbl_804269A8:
	bl       initGX__8GraphicsFv
	li       r3, 1
	bl       GXSetNumTevStages
	li       r3, 0
	li       r4, 4
	bl       GXSetTevOp
	li       r3, 0
	li       r4, 0
	li       r5, 0
	li       r6, 4
	bl       GXSetTevOrder
	li       r3, 1
	bl       GXSetNumChans
	li       r3, 4
	li       r4, 1
	li       r5, 1
	li       r6, 1
	li       r7, 0
	li       r8, 0
	li       r9, 2
	bl       GXSetChanCtrl
	mr       r3, r27
	bl       disableLight__8GraphicsFv
	mr       r3, r27
	bl       clearVtxDesc__8GraphicsFv
	mr       r3, r27
	li       r4, 9
	li       r5, 1
	bl       setVtxDesc__8GraphicsF7_GXAttr11_GXAttrType
	mr       r3, r27
	li       r4, 0xb
	li       r5, 1
	bl       setVtxDesc__8GraphicsF7_GXAttr11_GXAttrType
	mr       r3, r27
	li       r4, 0
	li       r5, 9
	li       r6, 1
	li       r7, 4
	li       r8, 0
	bl setVtxAttrFmt__8GraphicsF9_GXVtxFmt7_GXAttr10_GXCompCnt11_GXCompTypeUc mr
r3, r27 li       r4, 0 li       r5, 0xb li       r6, 1 li       r7, 5 li r8, 0
	bl setVtxAttrFmt__8GraphicsF9_GXVtxFmt7_GXAttr10_GXCompCnt11_GXCompTypeUc li
r3, 0 bl       GXSetCullMode li       r3, 6 li       r4, 0 bl GXSetLineWidth li
r3, 0 li       r4, 1 li       r5, 1 li       r6, 0 bl       GXSetBlendMode li
r3, 1 li       r4, 1 li       r5, 1 bl       GXSetZMode addi     r3, r27, 0x8c
	li       r4, 0
	bl       GXLoadPosMtxImm
	lfs      f2, 4(r31)
	lfs      f0, 0xc(r31)
	lfs      f1, 0(r31)
	lfs      f3, 8(r31)
	fsubs    f4, f0, f2
	lfs      f5, lbl_805204B8@sda21(r2)
	fsubs    f3, f3, f1
	lfs      f6, lbl_805204C8@sda21(r2)
	bl       GXSetViewport
	lfs      f31, 4(r31)
	lfs      f0, 0xc(r31)
	lfs      f30, 0(r31)
	fsubs    f1, f0, f31
	bl       __cvt_fp2unsigned
	lfs      f0, 8(r31)
	mr       r28, r3
	fsubs    f1, f0, f30
	bl       __cvt_fp2unsigned
	fmr      f1, f31
	mr       r29, r3
	bl       __cvt_fp2unsigned
	fmr      f1, f30
	mr       r30, r3
	bl       __cvt_fp2unsigned
	mr       r4, r30
	mr       r5, r29
	mr       r6, r28
	bl       GXSetScissor
	li       r3, 0
	bl       GXSetColorUpdate
	li       r3, 1
	li       r4, 7
	li       r5, 1
	bl       GXSetZMode
	lfs      f1, 4(r31)
	addi     r3, r1, 0x38
	lfs      f2, 0xc(r31)
	lfs      f3, 0(r31)
	lfs      f4, 8(r31)
	lfs      f5, lbl_805204CC@sda21(r2)
	lfs      f6, lbl_805204C8@sda21(r2)
	bl       C_MTXOrtho
	addi     r3, r1, 0x38
	li       r4, 1
	bl       GXSetProjection
	addi     r3, r1, 8
	bl       PSMTXIdentity
	addi     r3, r1, 8
	li       r4, 0
	bl       GXLoadPosMtxImm
	li       r3, 0
	bl       GXSetCullMode
	bl       GXClearVtxDesc
	li       r3, 9
	li       r4, 1
	bl       GXSetVtxDesc
	li       r3, 0xb
	li       r4, 1
	bl       GXSetVtxDesc
	li       r3, 0
	li       r4, 9
	li       r5, 1
	li       r6, 4
	li       r7, 0
	bl       GXSetVtxAttrFmt
	li       r3, 0
	li       r4, 0xb
	li       r5, 1
	li       r6, 5
	li       r7, 0
	bl       GXSetVtxAttrFmt
	li       r3, 0x80
	li       r4, 0
	li       r5, 4
	bl       GXBegin
	lfs      f1, 4(r31)
	lis      r8, 0xCC008000@ha
	lfs      f0, 0(r31)
	li       r7, 0xa
	li       r6, 0x46
	li       r0, 0xff
	stfs     f0, 0xCC008000@l(r8)
	li       r3, 1
	li       r4, 1
	li       r5, 1
	stfs     f1, -0x8000(r8)
	stfs     f29, -0x8000(r8)
	stb      r7, -0x8000(r8)
	stb      r6, -0x8000(r8)
	stb      r7, -0x8000(r8)
	stb      r0, -0x8000(r8)
	lfs      f1, 0xc(r31)
	lfs      f0, 0(r31)
	stfs     f0, -0x8000(r8)
	stfs     f1, -0x8000(r8)
	stfs     f29, -0x8000(r8)
	stb      r7, -0x8000(r8)
	stb      r6, -0x8000(r8)
	stb      r7, -0x8000(r8)
	stb      r0, -0x8000(r8)
	lfs      f1, 0xc(r31)
	lfs      f0, 8(r31)
	stfs     f0, -0x8000(r8)
	stfs     f1, -0x8000(r8)
	stfs     f29, -0x8000(r8)
	stb      r7, -0x8000(r8)
	stb      r6, -0x8000(r8)
	stb      r7, -0x8000(r8)
	stb      r0, -0x8000(r8)
	lfs      f1, 4(r31)
	lfs      f0, 8(r31)
	stfs     f0, -0x8000(r8)
	stfs     f1, -0x8000(r8)
	stfs     f29, -0x8000(r8)
	stb      r7, -0x8000(r8)
	stb      r6, -0x8000(r8)
	stb      r7, -0x8000(r8)
	stb      r0, -0x8000(r8)
	bl       GXSetZMode
	li       r3, 1
	bl       GXSetColorUpdate
	psq_l    f31, 184(r1), 0, qr0
	lfd      f31, 0xb0(r1)
	psq_l    f30, 168(r1), 0, qr0
	lfd      f30, 0xa0(r1)
	psq_l    f29, 152(r1), 0, qr0
	lfd      f29, 0x90(r1)
	lmw      r27, 0x7c(r1)
	lwz      r0, 0xc4(r1)
	mtlr     r0
	addi     r1, r1, 0xc0
	blr
	*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	00045C
 */
void Graphics::drawTile(Sys::Sphere&, Sys::Sphere&, JUTTexture*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80426CB8
 * Size:	00070C
 */
void Graphics::drawCone(Vector3f& vec1, Vector3f& vec2, f32 p3, int limit)
{
	f32 angle    = TORADIANS(p3); // f7
	Vector3f sep = vec2 - vec1;   // f2, f0, f1
	f32 dist     = sep.length();  // f31

	f32 sinTheta = sinf(angle);
	f32 cosTheta = cosf(angle);

	sep *= 1.0f / dist;

	f32 val = dist * (sinTheta / cosTheta); // f30

	Vector3f xVec; // f3, f4, f5
	Vector3f yVec; // f6, f7, f8
	Vector3f yAxis(0.0f, 1.0f, 0.0f);
	if (FABS(dot(sep, yAxis)) < 1.0E-7f) {
		xVec = cross(yAxis, sep);
		xVec.normalise();

		yVec = cross(xVec, sep);
		yVec.normalise();
	} else {
		yVec = cross(yAxis, sep);
		yVec.normalise();
		xVec = cross(yVec, sep);
		xVec.normalise();
	}

	Matrixf mtx; // 0x38
	mtx.setBasis(0, xVec);
	mtx.setBasis(1, yVec);
	mtx.setBasis(2, sep);
	mtx.setBasis(3, vec1);

	Matrixf concatMtx; // 0x8
	PSMTXConcat(mMatrix.mMatrix.mtxView, mtx.mMatrix.mtxView, concatMtx.mMatrix.mtxView);

	GXLoadPosMtxImm(concatMtx.mMatrix.mtxView, 0);

	for (int i = 0; i < limit; i++) {
		f32 newAngle1 = (TAU * ((f32)i - 0.5f)) / (f32)limit;

		f32 cosPhi = val * cosf(newAngle1); // f24
		f32 sinPhi = val * sinf(newAngle1); // f23

		f32 newAngle2 = (TAU * ((f32)(i + 1) - 0.5f)) / (f32)limit;

		f32 cosOmega = val * cosf(newAngle2); // f22
		f32 sinOmega = val * sinf(newAngle2); // f21

		GXBegin(GX_LINES, GX_VTXFMT0, 2);
		GXPosition3f32(Vector3f::zero.x, Vector3f::zero.y, Vector3f::zero.z);
		GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
		GXPosition3f32(cosPhi, sinPhi, dist);
		GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);

		GXBegin(GX_LINES, GX_VTXFMT0, 2);
		GXPosition3f32(Vector3f::zero.x, Vector3f::zero.y, Vector3f::zero.z);
		GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
		GXPosition3f32(cosOmega, sinOmega, dist);
		GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);

		GXBegin(GX_LINES, GX_VTXFMT0, 2);
		GXPosition3f32(cosPhi, sinPhi, dist);
		GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
		GXPosition3f32(cosOmega, sinOmega, dist);
		GXColor4u8(mDrawColor.r, mDrawColor.g, mDrawColor.b, mDrawColor.a);
	}
	/*
	stwu     r1, -0x190(r1)
	mflr     r0
	stw      r0, 0x194(r1)
	stfd     f31, 0x180(r1)
	psq_st   f31, 392(r1), 0, qr0
	stfd     f30, 0x170(r1)
	psq_st   f30, 376(r1), 0, qr0
	stfd     f29, 0x160(r1)
	psq_st   f29, 360(r1), 0, qr0
	stfd     f28, 0x150(r1)
	psq_st   f28, 344(r1), 0, qr0
	stfd     f27, 0x140(r1)
	psq_st   f27, 328(r1), 0, qr0
	stfd     f26, 0x130(r1)
	psq_st   f26, 312(r1), 0, qr0
	stfd     f25, 0x120(r1)
	psq_st   f25, 296(r1), 0, qr0
	stfd     f24, 0x110(r1)
	psq_st   f24, 280(r1), 0, qr0
	stfd     f23, 0x100(r1)
	psq_st   f23, 264(r1), 0, qr0
	stfd     f22, 0xf0(r1)
	psq_st   f22, 248(r1), 0, qr0
	stfd     f21, 0xe0(r1)
	psq_st   f21, 232(r1), 0, qr0
	stmw     r24, 0xc0(r1)
	lfs      f3, 4(r5)
	mr       r24, r3
	lfs      f2, 4(r4)
	mr       r25, r6
	lfs      f0, lbl_805204EC@sda21(r2)
	fsubs    f2, f3, f2
	lfs      f6, 0(r5)
	lfs      f5, 0(r4)
	fmuls    f4, f0, f1
	lfs      f3, 8(r5)
	lfs      f1, 8(r4)
	fsubs    f0, f6, f5
	lfs      f5, lbl_805204E4@sda21(r2)
	fsubs    f1, f3, f1
	lfs      f3, lbl_805204B8@sda21(r2)
	fmuls    f6, f2, f2
	fmuls    f7, f5, f4
	fmuls    f5, f1, f1
	fmadds   f4, f0, f0, f6
	fadds    f31, f5, f4
	fcmpo    cr0, f31, f3
	ble      lbl_80426D88
	ble      lbl_80426D8C
	frsqrte  f3, f31
	fmuls    f31, f3, f31
	b        lbl_80426D8C

lbl_80426D88:
	fmr      f31, f3

lbl_80426D8C:
	lfs      f3, lbl_805204B8@sda21(r2)
	fcmpo    cr0, f7, f3
	bge      lbl_80426DC4
	lfs      f3, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f3, f7, f3
	fctiwz   f3, f3
	stfd     f3, 0x68(r1)
	lwz      r0, 0x6c(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f3, r3, r0
	fneg     f8, f3
	b        lbl_80426DE8

lbl_80426DC4:
	lfs      f3, lbl_805204DC@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f3, f7, f3
	fctiwz   f3, f3
	stfd     f3, 0x70(r1)
	lwz      r0, 0x74(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f8, r3, r0

lbl_80426DE8:
	lfs      f3, lbl_805204B8@sda21(r2)
	fmr      f5, f7
	fcmpo    cr0, f7, f3
	bge      lbl_80426DFC
	fneg     f5, f7

lbl_80426DFC:
	lfs      f6, lbl_805204C8@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	lfs      f4, lbl_805204DC@sda21(r2)
	addi     r3, r3, sincosTable___5JMath@l
	fdivs    f7, f6, f31
	lfs      f9, lbl_805204B8@sda21(r2)
	lfs      f3, lbl_805204F0@sda21(r2)
	fmuls    f4, f5, f4
	fmuls    f2, f2, f7
	fmuls    f0, f0, f7
	fctiwz   f5, f4
	fmuls    f4, f2, f6
	fmuls    f1, f1, f7
	stfd     f5, 0x78(r1)
	fmadds   f4, f0, f9, f4
	lwz      r0, 0x7c(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	fmadds   f4, f1, f9, f4
	add      r3, r3, r0
	lfs      f5, 4(r3)
	fabs     f4, f4
	fdivs    f5, f8, f5
	frsp     f4, f4
	fmuls    f30, f31, f5
	fcmpo    cr0, f4, f3
	bge      lbl_80426F30
	fmuls    f3, f9, f1
	fmuls    f7, f9, f2
	fmsubs   f4, f9, f0, f3
	fnmsubs  f5, f6, f0, f7
	fmsubs   f3, f6, f1, f7
	fmuls    f6, f4, f4
	fmuls    f7, f5, f5
	fmadds   f6, f3, f3, f6
	fadds    f7, f7, f6
	fcmpo    cr0, f7, f9
	ble      lbl_80426EA0
	ble      lbl_80426EA4
	frsqrte  f6, f7
	fmuls    f7, f6, f7
	b        lbl_80426EA4

lbl_80426EA0:
	fmr      f7, f9

lbl_80426EA4:
	lfs      f6, lbl_805204B8@sda21(r2)
	fcmpo    cr0, f7, f6
	ble      lbl_80426EC4
	lfs      f6, lbl_805204C8@sda21(r2)
	fdivs    f6, f6, f7
	fmuls    f3, f3, f6
	fmuls    f4, f4, f6
	fmuls    f5, f5, f6

lbl_80426EC4:
	fmuls    f6, f3, f1
	lfs      f9, lbl_805204B8@sda21(r2)
	fmuls    f8, f4, f0
	fmuls    f10, f5, f2
	fmsubs   f7, f5, f0, f6
	fmsubs   f8, f3, f2, f8
	fmsubs   f6, f4, f1, f10
	fmuls    f10, f7, f7
	fmuls    f11, f8, f8
	fmadds   f10, f6, f6, f10
	fadds    f10, f11, f10
	fcmpo    cr0, f10, f9
	ble      lbl_80426F08
	ble      lbl_80426F0C
	frsqrte  f9, f10
	fmuls    f10, f9, f10
	b        lbl_80426F0C

lbl_80426F08:
	fmr      f10, f9

lbl_80426F0C:
	lfs      f9, lbl_805204B8@sda21(r2)
	fcmpo    cr0, f10, f9
	ble      lbl_80426FF8
	lfs      f9, lbl_805204C8@sda21(r2)
	fdivs    f9, f9, f10
	fmuls    f6, f6, f9
	fmuls    f7, f7, f9
	fmuls    f8, f8, f9
	b        lbl_80426FF8

lbl_80426F30:
	fmuls    f4, f9, f0
	fmuls    f3, f9, f2
	fnmsubs  f7, f6, f1, f4
	fmsubs   f8, f6, f2, f4
	fmsubs   f6, f9, f1, f3
	fmuls    f3, f7, f7
	fmuls    f4, f8, f8
	fmadds   f3, f6, f6, f3
	fadds    f4, f4, f3
	fcmpo    cr0, f4, f9
	ble      lbl_80426F6C
	ble      lbl_80426F70
	frsqrte  f3, f4
	fmuls    f4, f3, f4
	b        lbl_80426F70

lbl_80426F6C:
	fmr      f4, f9

lbl_80426F70:
	lfs      f3, lbl_805204B8@sda21(r2)
	fcmpo    cr0, f4, f3
	ble      lbl_80426F90
	lfs      f3, lbl_805204C8@sda21(r2)
	fdivs    f3, f3, f4
	fmuls    f6, f6, f3
	fmuls    f7, f7, f3
	fmuls    f8, f8, f3

lbl_80426F90:
	fmuls    f3, f6, f1
	lfs      f9, lbl_805204B8@sda21(r2)
	fmuls    f5, f7, f0
	fmuls    f10, f8, f2
	fmsubs   f4, f8, f0, f3
	fmsubs   f5, f6, f2, f5
	fmsubs   f3, f7, f1, f10
	fmuls    f10, f4, f4
	fmuls    f11, f5, f5
	fmadds   f10, f3, f3, f10
	fadds    f10, f11, f10
	fcmpo    cr0, f10, f9
	ble      lbl_80426FD4
	ble      lbl_80426FD8
	frsqrte  f9, f10
	fmuls    f10, f9, f10
	b        lbl_80426FD8

lbl_80426FD4:
	fmr      f10, f9

lbl_80426FD8:
	lfs      f9, lbl_805204B8@sda21(r2)
	fcmpo    cr0, f10, f9
	ble      lbl_80426FF8
	lfs      f9, lbl_805204C8@sda21(r2)
	fdivs    f9, f9, f10
	fmuls    f3, f3, f9
	fmuls    f4, f4, f9
	fmuls    f5, f5, f9

lbl_80426FF8:
	stfs     f3, 0x38(r1)
	addi     r3, r24, 0x8c
	addi     r5, r1, 8
	stfs     f4, 0x48(r1)
	stfs     f5, 0x58(r1)
	stfs     f6, 0x3c(r1)
	stfs     f7, 0x4c(r1)
	stfs     f8, 0x5c(r1)
	stfs     f0, 0x40(r1)
	stfs     f2, 0x50(r1)
	stfs     f1, 0x60(r1)
	lfs      f0, 0(r4)
	stfs     f0, 0x44(r1)
	lfs      f0, 4(r4)
	stfs     f0, 0x54(r1)
	lfs      f0, 8(r4)
	addi     r4, r1, 0x38
	stfs     f0, 0x64(r1)
	bl       PSMTXConcat
	addi     r3, r1, 8
	li       r4, 0
	bl       GXLoadPosMtxImm
	lis      r4, "zero__10Vector3<f>"@ha
	lis      r3, sincosTable___5JMath@ha
	lfs      f25, lbl_805204F4@sda21(r2)
	addi     r27, r4, "zero__10Vector3<f>"@l
	lfd      f26, lbl_805204D0@sda21(r2)
	xoris    r29, r25, 0x8000
	lfs      f27, lbl_805204BC@sda21(r2)
	addi     r30, r3, sincosTable___5JMath@l
	lfs      f28, lbl_805204B8@sda21(r2)
	li       r26, 0
	lfs      f29, lbl_805204DC@sda21(r2)
	lis      r28, 0x4330
	lis      r31, 0xcc01
	b        lbl_80427350

lbl_80427088:
	xoris    r0, r26, 0x8000
	stw      r28, 0x78(r1)
	stw      r0, 0x7c(r1)
	lfd      f0, 0x78(r1)
	stw      r29, 0x74(r1)
	fsubs    f0, f0, f26
	stw      r28, 0x70(r1)
	fsubs    f1, f0, f27
	lfd      f0, 0x70(r1)
	fsubs    f0, f0, f26
	fmuls    f1, f25, f1
	fdivs    f1, f1, f0
	fmr      f0, f1
	fcmpo    cr0, f1, f28
	bge      lbl_804270C8
	fneg     f0, f1

lbl_804270C8:
	fmuls    f0, f0, f29
	fcmpo    cr0, f1, f28
	fctiwz   f0, f0
	stfd     f0, 0x68(r1)
	lwz      r0, 0x6c(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r30, r0
	lfs      f0, 4(r3)
	fmuls    f24, f30, f0
	bge      lbl_8042711C
	lfs      f0, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x80(r1)
	lwz      r0, 0x84(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f0, f0
	b        lbl_8042713C

lbl_8042711C:
	fmuls    f0, f1, f29
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fctiwz   f0, f0
	stfd     f0, 0x88(r1)
	lwz      r0, 0x8c(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0

lbl_8042713C:
	addi     r0, r26, 1
	stw      r28, 0x90(r1)
	xoris    r0, r0, 0x8000
	fmuls    f23, f30, f0
	stw      r0, 0x94(r1)
	lfd      f0, 0x90(r1)
	stw      r29, 0x9c(r1)
	fsubs    f0, f0, f26
	stw      r28, 0x98(r1)
	fsubs    f1, f0, f27
	lfd      f0, 0x98(r1)
	fsubs    f0, f0, f26
	fmuls    f1, f25, f1
	fdivs    f1, f1, f0
	fmr      f0, f1
	fcmpo    cr0, f1, f28
	bge      lbl_80427184
	fneg     f0, f1

lbl_80427184:
	fmuls    f0, f0, f29
	fcmpo    cr0, f1, f28
	fctiwz   f0, f0
	stfd     f0, 0xa0(r1)
	lwz      r0, 0xa4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r30, r0
	lfs      f0, 4(r3)
	fmuls    f22, f30, f0
	bge      lbl_804271D8
	lfs      f0, lbl_805204E0@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0xa8(r1)
	lwz      r0, 0xac(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f0, f0
	b        lbl_804271F8

lbl_804271D8:
	fmuls    f0, f1, f29
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fctiwz   f0, f0
	stfd     f0, 0xb0(r1)
	lwz      r0, 0xb4(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0

lbl_804271F8:
	fmuls    f21, f30, f0
	li       r3, 0xa8
	li       r4, 0
	li       r5, 2
	bl       GXBegin
	lfs      f0, 0(r27)
	li       r3, 0xa8
	li       r4, 0
	li       r5, 2
	stfs     f0, -0x8000(r31)
	lfs      f0, 4(r27)
	stfs     f0, -0x8000(r31)
	lfs      f0, 8(r27)
	stfs     f0, -0x8000(r31)
	lbz      r8, 0x87(r24)
	lbz      r7, 0x86(r24)
	lbz      r6, 0x85(r24)
	lbz      r0, 0x84(r24)
	stb      r0, -0x8000(r31)
	stb      r6, -0x8000(r31)
	stb      r7, -0x8000(r31)
	stb      r8, -0x8000(r31)
	stfs     f24, -0x8000(r31)
	stfs     f23, -0x8000(r31)
	stfs     f31, -0x8000(r31)
	lbz      r8, 0x87(r24)
	lbz      r7, 0x86(r24)
	lbz      r6, 0x85(r24)
	lbz      r0, 0x84(r24)
	stb      r0, -0x8000(r31)
	stb      r6, -0x8000(r31)
	stb      r7, -0x8000(r31)
	stb      r8, -0x8000(r31)
	bl       GXBegin
	lfs      f0, 0(r27)
	li       r3, 0xa8
	li       r4, 0
	li       r5, 2
	stfs     f0, -0x8000(r31)
	lfs      f0, 4(r27)
	stfs     f0, -0x8000(r31)
	lfs      f0, 8(r27)
	stfs     f0, -0x8000(r31)
	lbz      r8, 0x87(r24)
	lbz      r7, 0x86(r24)
	lbz      r6, 0x85(r24)
	lbz      r0, 0x84(r24)
	stb      r0, -0x8000(r31)
	stb      r6, -0x8000(r31)
	stb      r7, -0x8000(r31)
	stb      r8, -0x8000(r31)
	stfs     f22, -0x8000(r31)
	stfs     f21, -0x8000(r31)
	stfs     f31, -0x8000(r31)
	lbz      r8, 0x87(r24)
	lbz      r7, 0x86(r24)
	lbz      r6, 0x85(r24)
	lbz      r0, 0x84(r24)
	stb      r0, -0x8000(r31)
	stb      r6, -0x8000(r31)
	stb      r7, -0x8000(r31)
	stb      r8, -0x8000(r31)
	bl       GXBegin
	stfs     f24, -0x8000(r31)
	addi     r26, r26, 1
	stfs     f23, -0x8000(r31)
	stfs     f31, -0x8000(r31)
	lbz      r5, 0x87(r24)
	lbz      r4, 0x86(r24)
	lbz      r3, 0x85(r24)
	lbz      r0, 0x84(r24)
	stb      r0, -0x8000(r31)
	stb      r3, -0x8000(r31)
	stb      r4, -0x8000(r31)
	stb      r5, -0x8000(r31)
	stfs     f22, -0x8000(r31)
	stfs     f21, -0x8000(r31)
	stfs     f31, -0x8000(r31)
	lbz      r5, 0x87(r24)
	lbz      r4, 0x86(r24)
	lbz      r3, 0x85(r24)
	lbz      r0, 0x84(r24)
	stb      r0, -0x8000(r31)
	stb      r3, -0x8000(r31)
	stb      r4, -0x8000(r31)
	stb      r5, -0x8000(r31)

lbl_80427350:
	cmpw     r26, r25
	blt      lbl_80427088
	psq_l    f31, 392(r1), 0, qr0
	lfd      f31, 0x180(r1)
	psq_l    f30, 376(r1), 0, qr0
	lfd      f30, 0x170(r1)
	psq_l    f29, 360(r1), 0, qr0
	lfd      f29, 0x160(r1)
	psq_l    f28, 344(r1), 0, qr0
	lfd      f28, 0x150(r1)
	psq_l    f27, 328(r1), 0, qr0
	lfd      f27, 0x140(r1)
	psq_l    f26, 312(r1), 0, qr0
	lfd      f26, 0x130(r1)
	psq_l    f25, 296(r1), 0, qr0
	lfd      f25, 0x120(r1)
	psq_l    f24, 280(r1), 0, qr0
	lfd      f24, 0x110(r1)
	psq_l    f23, 264(r1), 0, qr0
	lfd      f23, 0x100(r1)
	psq_l    f22, 248(r1), 0, qr0
	lfd      f22, 0xf0(r1)
	psq_l    f21, 232(r1), 0, qr0
	lfd      f21, 0xe0(r1)
	lmw      r24, 0xc0(r1)
	lwz      r0, 0x194(r1)
	mtlr     r0
	addi     r1, r1, 0x190
	blr
	*/
}

/*
 * --INFO--
 * Address:	804273C4
 * Size:	0000A4
 */
Graphics::Graphics()
{
	deleteViewports();
	mDrawColor.set(255, 255, 255, 255);
	_088.set(255, 255, 255, 255);
	mActiveTokens = 0;
	GXSetDrawSyncCallback(graphicsTokenCallback);
	mCurrentViewport = nullptr;
	setupJ2DOrthoGraphDefault();
	setupJ2DPerspGraphDefault();
}

/*
 * --INFO--
 * Address:	........
 * Size:	00016C
 */
void Graphics::initJ2DOrthoGraph(J2DOrthoGraph*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00011C
 */
void Graphics::initJ2DPerspGraph(J2DPerspGraph*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80427468
 * Size:	00016C
 */
void Graphics::setupJ2DOrthoGraphDefault()
{
	sys->getRenderModeObj();
	u16 y = sys->getRenderModeObj()->efbHeight;
	u16 x = sys->getRenderModeObj()->fbWidth;
	mOrthoGraph.place(0.0f, 0.0f, x, y);

	f32 y2   = sys->getRenderModeObj()->efbHeight + gScissorOffset;
	f32 x2   = sys->getRenderModeObj()->fbWidth;
	f32 offs = 0.0f;
	JGeometry::TBox2f bounds(0.0f, 0.0f, x2 + offs, y2 + offs);
	mOrthoGraph.scissor(bounds);

	y = sys->getRenderModeObj()->efbHeight;
	x = sys->getRenderModeObj()->fbWidth;
	JGeometry::TBox2f bounds2(0.0f, 0.0f, x, y);
	mOrthoGraph.setOrtho(bounds2, -1024.0f, 1024.0f);
	/*
	stwu     r1, -0x70(r1)
	mflr     r0
	stw      r0, 0x74(r1)
	stfd     f31, 0x60(r1)
	psq_st   f31, 104(r1), 0, qr0
	stw      r31, 0x5c(r1)
	stw      r30, 0x58(r1)
	mr       r30, r3
	bl       getRenderModeObj__6SystemFv
	bl       getRenderModeObj__6SystemFv
	lhz      r31, 6(r3)
	bl       getRenderModeObj__6SystemFv
	lhz      r4, 4(r3)
	lis      r0, 0x4330
	addi     r3, r30, 0xbc
	lfs      f1, lbl_805204B8@sda21(r2)
	stw      r4, 0x2c(r1)
	lwz      r12, 0xbc(r30)
	fmr      f2, f1
	stw      r0, 0x28(r1)
	lfd      f4, lbl_805204C0@sda21(r2)
	lfd      f0, 0x28(r1)
	stw      r31, 0x34(r1)
	lwz      r12, 0x10(r12)
	fsubs    f3, f0, f4
	stw      r0, 0x30(r1)
	lfd      f0, 0x30(r1)
	fsubs    f4, f0, f4
	mtctr    r12
	bctrl
	bl       getRenderModeObj__6SystemFv
	lhz      r4, 6(r3)
	lis      r0, 0x4330
	lwz      r3, gScissorOffset@sda21(r13)
	stw      r0, 0x38(r1)
	add      r0, r3, r4
	lfd      f1, lbl_805204D0@sda21(r2)
	xoris    r0, r0, 0x8000
	stw      r0, 0x3c(r1)
	lfd      f0, 0x38(r1)
	fsubs    f31, f0, f1
	bl       getRenderModeObj__6SystemFv
	lhz      r4, 4(r3)
	lis      r0, 0x4330
	lfs      f3, lbl_805204B8@sda21(r2)
	addi     r3, r30, 0xbc
	stw      r4, 0x44(r1)
	addi     r4, r1, 8
	fadds    f0, f3, f31
	lfd      f2, lbl_805204C0@sda21(r2)
	stw      r0, 0x40(r1)
	lfd      f1, 0x40(r1)
	stfs     f3, 8(r1)
	fsubs    f1, f1, f2
	stfs     f3, 0xc(r1)
	fadds    f1, f3, f1
	stfs     f0, 0x14(r1)
	stfs     f1, 0x10(r1)
	bl       "scissor__14J2DGrafContextFRCQ29JGeometry8TBox2<f>"
	bl       getRenderModeObj__6SystemFv
	lhz      r31, 6(r3)
	bl       getRenderModeObj__6SystemFv
	lhz      r4, 4(r3)
	lis      r0, 0x4330
	lfs      f5, lbl_805204B8@sda21(r2)
	addi     r3, r30, 0xbc
	stw      r4, 0x4c(r1)
	addi     r4, r1, 0x18
	lfd      f4, lbl_805204C0@sda21(r2)
	stw      r0, 0x48(r1)
	lfs      f1, lbl_805204F8@sda21(r2)
	lfd      f0, 0x48(r1)
	stw      r31, 0x54(r1)
	fsubs    f3, f0, f4
	lfs      f2, lbl_805204FC@sda21(r2)
	stw      r0, 0x50(r1)
	lfd      f0, 0x50(r1)
	stfs     f5, 0x18(r1)
	fsubs    f0, f0, f4
	stfs     f5, 0x1c(r1)
	stfs     f3, 0x20(r1)
	stfs     f0, 0x24(r1)
	bl       "setOrtho__13J2DOrthoGraphFRCQ29JGeometry8TBox2<f>ff"
	psq_l    f31, 104(r1), 0, qr0
	lwz      r0, 0x74(r1)
	lfd      f31, 0x60(r1)
	lwz      r31, 0x5c(r1)
	lwz      r30, 0x58(r1)
	mtlr     r0
	addi     r1, r1, 0x70
	blr
	*/
}

/*
 * --INFO--
 * Address:	804275D4
 * Size:	00011C
 */
void Graphics::setupJ2DPerspGraphDefault()
{
	u16 y = sys->getRenderModeObj()->efbHeight;
	u16 x = sys->getRenderModeObj()->fbWidth;
	mPerspGraph.place(0.0f, 0.0f, x, y);

	f32 y2   = sys->getRenderModeObj()->efbHeight + gScissorOffset;
	f32 x2   = sys->getRenderModeObj()->fbWidth;
	f32 offs = 0.0f;
	JGeometry::TBox2f bounds(0.0f, 0.0f, offs + x2, offs + y2);
	mPerspGraph.scissor(bounds);

	mPerspGraph.set(30.0f, 10.0f, 10000.0f);
	/*
	stwu     r1, -0x50(r1)
	mflr     r0
	stw      r0, 0x54(r1)
	stfd     f31, 0x40(r1)
	psq_st   f31, 72(r1), 0, qr0
	stw      r31, 0x3c(r1)
	stw      r30, 0x38(r1)
	mr       r30, r3
	bl       getRenderModeObj__6SystemFv
	lhz      r31, 6(r3)
	bl       getRenderModeObj__6SystemFv
	lhz      r4, 4(r3)
	lis      r0, 0x4330
	addi     r3, r30, 0x190
	lfs      f1, lbl_805204B8@sda21(r2)
	stw      r4, 0x1c(r1)
	lwz      r12, 0x190(r30)
	fmr      f2, f1
	stw      r0, 0x18(r1)
	lfd      f4, lbl_805204C0@sda21(r2)
	lfd      f0, 0x18(r1)
	stw      r31, 0x24(r1)
	lwz      r12, 0x10(r12)
	fsubs    f3, f0, f4
	stw      r0, 0x20(r1)
	lfd      f0, 0x20(r1)
	fsubs    f4, f0, f4
	mtctr    r12
	bctrl
	bl       getRenderModeObj__6SystemFv
	lhz      r4, 6(r3)
	lis      r0, 0x4330
	lwz      r3, gScissorOffset@sda21(r13)
	stw      r0, 0x28(r1)
	add      r0, r3, r4
	lfd      f1, lbl_805204D0@sda21(r2)
	xoris    r0, r0, 0x8000
	stw      r0, 0x2c(r1)
	lfd      f0, 0x28(r1)
	fsubs    f31, f0, f1
	bl       getRenderModeObj__6SystemFv
	lhz      r4, 4(r3)
	lis      r0, 0x4330
	lfs      f3, lbl_805204B8@sda21(r2)
	addi     r3, r30, 0x190
	stw      r4, 0x34(r1)
	addi     r4, r1, 8
	fadds    f0, f3, f31
	lfd      f2, lbl_805204C0@sda21(r2)
	stw      r0, 0x30(r1)
	lfd      f1, 0x30(r1)
	stfs     f3, 8(r1)
	fsubs    f1, f1, f2
	stfs     f3, 0xc(r1)
	fadds    f1, f3, f1
	stfs     f0, 0x14(r1)
	stfs     f1, 0x10(r1)
	bl       "scissor__14J2DGrafContextFRCQ29JGeometry8TBox2<f>"
	lfs      f1, lbl_80520500@sda21(r2)
	addi     r3, r30, 0x190
	lfs      f2, lbl_80520504@sda21(r2)
	lfs      f3, lbl_80520508@sda21(r2)
	bl       set__13J2DPerspGraphFfff
	psq_l    f31, 72(r1), 0, qr0
	lwz      r0, 0x54(r1)
	lfd      f31, 0x40(r1)
	lwz      r31, 0x3c(r1)
	lwz      r30, 0x38(r1)
	mtlr     r0
	addi     r1, r1, 0x50
	blr
	*/
}

/*
 * --INFO--
 * Address:	804276F0
 * Size:	000020
 */
void Graphics::clearVtxDesc() { GXClearVtxDesc(); }

/*
 * --INFO--
 * Address:	80427710
 * Size:	000028
 */
void Graphics::setVtxDesc(_GXAttr attr, _GXAttrType type) { GXSetVtxDesc(attr, type); }

/*
 * --INFO--
 * Address:	80427738
 * Size:	000034
 */
void Graphics::setVtxAttrFmt(_GXVtxFmt fmt, _GXAttr attr, _GXCompCnt comp, _GXCompType type, u8 a1)
{
	GXSetVtxAttrFmt(fmt, attr, comp, type, a1);
}

/*
 * --INFO--
 * Address:	........
 * Size:	0001DC
 */
void Graphics::drawRectangle(Rectf&, bool)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	8042776C
 * Size:	00003C
 */
void Graphics::disableLight() { GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_VTX, GX_SRC_VTX, GX_LIGHT0, GX_DF_CLAMP, GX_AF_NONE); }

/*
 * --INFO--
 * Address:	........
 * Size:	00004C
 */
void Graphics::disableTexture()
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	804277A8
 * Size:	000100
 */
void Graphics::setTextureGX()
{
	GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_VTX, GX_SRC_VTX, GX_LIGHT0, GX_DF_CLAMP, GX_AF_NONE);
	GXClearVtxDesc();
	GXSetNumTevStages(1);
	GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
	GXSetTevOp(GX_TEVSTAGE0, GX_MODULATE);
	GXSetNumTexGens(1);
	GXSetTexCoordGen2(GX_TEXCOORD0, GX_TG_MTX3X4, GX_TG_TEX0, 0x3c, GX_FALSE, 0x7d);
	GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
	GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
	GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_POS_XYZ, GX_S8, 4);
	GXSetCullMode(GX_CULL_BACK);
	GXSetZMode(GX_FALSE, GX_NEVER, GX_FALSE);
	GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000F0
 */
void Graphics::drawTexture(JUTTexture*, f32, f32, f32, f32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	804278A8
 * Size:	000234
 */
void Graphics::initPerspPrintf(Viewport* vp)
{
	initPrimDraw(vp->getMatrix(false));

	Mtx mtx;
	PSMTXIdentity(mtx);
	GXLoadTexMtxImm(mtx, 0x1e, GX_MTX3x4);
	GXSetZMode(GX_TRUE, GX_LESS, GX_FALSE);
	vp->setProjection();
}

/*
 * --INFO--
 * Address:	80427ADC
 * Size:	0003C4
 */
void Graphics::perspPrintf(PerspPrintfInfo& info, Vector3f& vec, char* format, ...)
{
	va_list args;
	va_start(args, format);
	char buf[256];
	vsprintf(buf, format, args);

	Matrixf mtx;
	mtx.set(info.mScale, vec, mCurrentViewport->getViewMatrix());

	Matrixf concatMtx;
	PSMTXConcat(mCurrentViewport->getViewMatrix()->mMatrix.mtxView, mtx.mMatrix.mtxView, concatMtx.mMatrix.mtxView);

	GXLoadPosMtxImm(concatMtx.mMatrix.mtxView, 0);

	JUtility::TColor color1;
	JUtility::TColor color2;
	color1.set(info.mColorA.r, info.mColorA.g, info.mColorA.b, info.mColorA.a);
	color2.set(info.mColorB.r, info.mColorB.g, info.mColorB.b, info.mColorB.a);

	J2DPrint printer(info.mFont, color1, color2);
	printer.initiate();

	switch (info._0C) {
	case 1:
		printer.print((f32)info._04, (f32)info._08, buf);
		break;

	case 2: {
		f32 width = printer.getWidth(buf);
		f32 val   = (width >= 0.0f) ? 0.5f + width : width - 0.5f;
		int x     = info._04 - (int)val;
		printer.print(x, (f32)info._08, buf);
	} break;
	default: {
		f32 width = 0.5f * printer.getWidth(buf);
		f32 val   = (width >= 0.0f) ? 0.5f + width : width - 0.5f;
		int x     = info._04 - (int)val;
		printer.print(x, (f32)info._08, buf);
	} break;
	}

	/*
	stwu     r1, -0x270(r1)
	mflr     r0
	stw      r0, 0x274(r1)
	stw      r31, 0x26c(r1)
	mr       r31, r4
	stw      r30, 0x268(r1)
	stw      r29, 0x264(r1)
	mr       r29, r5
	stw      r28, 0x260(r1)
	mr       r28, r3
	bne      cr1, lbl_80427B28
	stfd     f1, 0x28(r1)
	stfd     f2, 0x30(r1)
	stfd     f3, 0x38(r1)
	stfd     f4, 0x40(r1)
	stfd     f5, 0x48(r1)
	stfd     f6, 0x50(r1)
	stfd     f7, 0x58(r1)
	stfd     f8, 0x60(r1)

lbl_80427B28:
	addi     r11, r1, 0x278
	addi     r0, r1, 8
	lis      r12, 0x400
	stw      r3, 8(r1)
	addi     r30, r1, 0x80
	addi     r3, r1, 0x148
	stw      r4, 0xc(r1)
	mr       r4, r6
	stw      r5, 0x10(r1)
	mr       r5, r30
	stw      r6, 0x14(r1)
	stw      r7, 0x18(r1)
	stw      r8, 0x1c(r1)
	stw      r9, 0x20(r1)
	stw      r10, 0x24(r1)
	stw      r12, 0x80(r1)
	stw      r11, 0x84(r1)
	stw      r0, 0x88(r1)
	bl       vsprintf
	lwz      r4, 0x25c(r28)
	lwz      r3, 0x44(r4)
	cmplwi   r3, 0
	beq      lbl_80427B9C
	lwz      r12, 0(r3)
	li       r4, 0
	lwz      r12, 0x48(r12)
	mtctr    r12
	bctrl
	b        lbl_80427BA0

lbl_80427B9C:
	lwz      r3, 0x40(r4)

lbl_80427BA0:
	lfs      f2, 0x10(r31)
	lfs      f0, 0(r3)
	fneg     f1, f2
	fmuls    f0, f0, f2
	stfs     f0, 0xbc(r1)
	lfs      f0, 4(r3)
	fmuls    f0, f0, f2
	stfs     f0, 0xcc(r1)
	lfs      f0, 8(r3)
	fmuls    f0, f0, f2
	stfs     f0, 0xdc(r1)
	lfs      f0, 0x10(r3)
	fmuls    f0, f0, f1
	stfs     f0, 0xc0(r1)
	lfs      f0, 0x14(r3)
	fmuls    f0, f0, f1
	stfs     f0, 0xd0(r1)
	lfs      f0, 0x18(r3)
	fmuls    f0, f0, f1
	stfs     f0, 0xe0(r1)
	lfs      f0, 0x20(r3)
	fmuls    f0, f0, f2
	stfs     f0, 0xc4(r1)
	lfs      f0, 0x24(r3)
	fmuls    f0, f0, f2
	stfs     f0, 0xd4(r1)
	lfs      f0, 0x28(r3)
	fmuls    f0, f0, f2
	stfs     f0, 0xe4(r1)
	lfs      f0, 0(r29)
	stfs     f0, 0xc8(r1)
	lfs      f0, 4(r29)
	stfs     f0, 0xd8(r1)
	lfs      f0, 8(r29)
	stfs     f0, 0xe8(r1)
	lwz      r4, 0x25c(r28)
	lwz      r3, 0x44(r4)
	cmplwi   r3, 0
	beq      lbl_80427C54
	lwz      r12, 0(r3)
	li       r4, 0
	lwz      r12, 0x48(r12)
	mtctr    r12
	bctrl
	b        lbl_80427C58

lbl_80427C54:
	lwz      r3, 0x40(r4)

lbl_80427C58:
	addi     r4, r1, 0xbc
	addi     r5, r1, 0x8c
	bl       PSMTXConcat
	addi     r3, r1, 0x8c
	li       r4, 0
	bl       GXLoadPosMtxImm
	li       r7, -1
	lbz      r9, 0x1b(r31)
	stw      r7, 0x68(r1)
	addi     r3, r1, 0xec
	lbz      r8, 0x1a(r31)
	addi     r5, r1, 0x7c
	lbz      r4, 0x19(r31)
	addi     r6, r1, 0x74
	lbz      r0, 0x18(r31)
	stb      r4, 0x69(r1)
	stb      r0, 0x68(r1)
	stb      r8, 0x6a(r1)
	stb      r9, 0x6b(r1)
	lwz      r4, 0x68(r1)
	stw      r7, 0x6c(r1)
	stw      r4, 0x74(r1)
	lbz      r9, 0x17(r31)
	lbz      r8, 0x16(r31)
	lbz      r7, 0x15(r31)
	lbz      r0, 0x14(r31)
	stb      r7, 0x6d(r1)
	stb      r0, 0x6c(r1)
	stb      r8, 0x6e(r1)
	stb      r9, 0x6f(r1)
	lwz      r0, 0x6c(r1)
	stw      r4, 0x70(r1)
	stw      r0, 0x7c(r1)
	stw      r0, 0x78(r1)
	lwz      r4, 0(r31)
	bl       __ct__8J2DPrintFP7JUTFontQ28JUtility6TColorQ28JUtility6TColor
	addi     r3, r1, 0xec
	bl       initiate__8J2DPrintFv
	lwz      r0, 0xc(r31)
	cmpwi    r0, 2
	beq      lbl_80427D58
	bge      lbl_80427DE8
	cmpwi    r0, 1
	bge      lbl_80427D0C
	b        lbl_80427DE8

lbl_80427D0C:
	lwz      r4, 4(r31)
	lis      r5, 0x4330
	lwz      r0, 8(r31)
	addi     r3, r1, 0xec
	xoris    r4, r4, 0x8000
	stw      r5, 0x248(r1)
	xoris    r0, r0, 0x8000
	lfd      f2, lbl_805204D0@sda21(r2)
	stw      r4, 0x24c(r1)
	addi     r4, r1, 0x148
	lfd      f0, 0x248(r1)
	stw      r0, 0x254(r1)
	fsubs    f1, f0, f2
	stw      r5, 0x250(r1)
	lfd      f0, 0x250(r1)
	fsubs    f2, f0, f2
	crset    6
	bl       print__8J2DPrintFffPCce
	b        lbl_80427E74

lbl_80427D58:
	addi     r3, r1, 0xec
	addi     r4, r1, 0x148
	crclr    6
	bl       getWidth__8J2DPrintFPCce
	lfs      f0, lbl_805204B8@sda21(r2)
	addi     r3, r1, 0xec
	fcmpo    cr0, f1, f0
	cror     2, 1, 2
	bne      lbl_80427D88
	lfs      f0, lbl_805204BC@sda21(r2)
	fadds    f0, f0, f1
	b        lbl_80427D90

lbl_80427D88:
	lfs      f0, lbl_805204BC@sda21(r2)
	fsubs    f0, f1, f0

lbl_80427D90:
	fctiwz   f0, f0
	lis      r5, 0x4330
	lwz      r0, 8(r31)
	addi     r4, r1, 0x148
	lwz      r6, 4(r31)
	stfd     f0, 0x250(r1)
	xoris    r0, r0, 0x8000
	lfd      f2, lbl_805204D0@sda21(r2)
	lwz      r7, 0x254(r1)
	stw      r5, 0x248(r1)
	subf     r6, r7, r6
	xoris    r6, r6, 0x8000
	stw      r0, 0x25c(r1)
	stw      r6, 0x24c(r1)
	stw      r5, 0x258(r1)
	lfd      f1, 0x248(r1)
	lfd      f0, 0x258(r1)
	fsubs    f1, f1, f2
	fsubs    f2, f0, f2
	crset    6
	bl       print__8J2DPrintFffPCce
	b        lbl_80427E74

lbl_80427DE8:
	addi     r3, r1, 0xec
	addi     r4, r1, 0x148
	crclr    6
	bl       getWidth__8J2DPrintFPCce
	lfs      f2, lbl_805204BC@sda21(r2)
	addi     r3, r1, 0xec
	lfs      f0, lbl_805204B8@sda21(r2)
	fmuls    f1, f2, f1
	fcmpo    cr0, f1, f0
	cror     2, 1, 2
	bne      lbl_80427E1C
	fadds    f0, f2, f1
	b        lbl_80427E20

lbl_80427E1C:
	fsubs    f0, f1, f2

lbl_80427E20:
	fctiwz   f0, f0
	lis      r5, 0x4330
	lwz      r0, 8(r31)
	addi     r4, r1, 0x148
	lwz      r6, 4(r31)
	stfd     f0, 0x258(r1)
	xoris    r0, r0, 0x8000
	lfd      f2, lbl_805204D0@sda21(r2)
	lwz      r7, 0x25c(r1)
	stw      r5, 0x250(r1)
	subf     r6, r7, r6
	xoris    r6, r6, 0x8000
	stw      r0, 0x24c(r1)
	stw      r6, 0x254(r1)
	stw      r5, 0x248(r1)
	lfd      f1, 0x250(r1)
	lfd      f0, 0x248(r1)
	fsubs    f1, f1, f2
	fsubs    f2, f0, f2
	crset    6
	bl       print__8J2DPrintFffPCce

lbl_80427E74:
	addi     r3, r1, 0xec
	li       r4, -1
	bl       __dt__8J2DPrintFv
	lwz      r0, 0x274(r1)
	lwz      r31, 0x26c(r1)
	lwz      r30, 0x268(r1)
	lwz      r29, 0x264(r1)
	lwz      r28, 0x260(r1)
	mtlr     r0
	addi     r1, r1, 0x270
	blr
	*/
}

/*
 * --INFO--
 * Address:	80427EA0
 * Size:	000060
 */
void Graphics::initGX()
{
	GXClearVtxDesc();
	GXInvalidateVtxCache();
	GXSetCurrentMtx(0);
	GXSetNumChans(0);
	GXSetNumTevStages(1);
	GXSetTevOp(GX_TEVSTAGE0, GX_REPLACE);
	GXSetNumTexGens(1);
	GXSetNumIndStages(0);
	GXSetTevDirect(GX_TEVSTAGE0);
}

/*
 * --INFO--
 * Address:	80427F00
 * Size:	000004
 */
void Graphics::dirtyInitGX() { }

/*
 * --INFO--
 * Address:	80427F04
 * Size:	000060
 */
void Graphics::clearInitGX() { initGX(); }
