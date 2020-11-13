//*************************************************************************************************************
//
// タブレット処理 [tablet.cpp]
// Author:IKUTO SEKINE
//
//*************************************************************************************************************
//-------------------------------------------------------------------------------------------------------------
// インクルードファイル
//-------------------------------------------------------------------------------------------------------------
#include "tablet.h"
#include "modelinfo.h"
#include "TabletButton.h"
#include "manager.h"
#include "renderer.h"
#include "camera.h"
#include "picture.h"
#include "game.h"
#include "keyboard.h"
#include "PaintingPen.h"

//-------------------------------------------------------------------------------------------------------------
// マクロ定義
//-------------------------------------------------------------------------------------------------------------
// 定数
#define TABLET_INIMOVECOFF (0.25f)		// 移動係数の初期値
#define TABLET_FILENAME    "data/TEXT/TabletInfo.txt"

// 関数
#define TabletButtonSetPos(cnt) D3DXVECTOR3(100.0f, 0.0f - 30.0f * cnt, -8.0f)

//-------------------------------------------------------------------------------------------------------------
// 静的メンバ変数の初期化
//-------------------------------------------------------------------------------------------------------------
D3DXVECTOR3 CTablet::m_aSetingPos[POS_MAX] = Mybfunc_array(MYLIB_VEC3_UNSET);	// 設定用の位置
float       CTablet::m_fMoveCoeff          = MYLIB_FLOAT_UNSET;					// 移動慣性

//-------------------------------------------------------------------------------------------------------------
// コンストラクタ
//-------------------------------------------------------------------------------------------------------------
CTablet::CTablet()
{
}

//-------------------------------------------------------------------------------------------------------------
// デストラクタ
//-------------------------------------------------------------------------------------------------------------
CTablet::~CTablet()
{
}

//-------------------------------------------------------------------------------------------------------------
// 読み込み
//-------------------------------------------------------------------------------------------------------------
HRESULT CTablet::Load(void)
{
	// ファイル読み込み
	if (CLoadFile::ReadLineByLineFromFile(TABLET_FILENAME, ReadFromLine) != CLoadFile::LR_SUCCESS)
	{
#ifdef _DEBUG
		std::cout << "<<<<<<CPictureのファイル読み込みが失敗しました。>>>>>>\n";
#endif // _DEBUG
		return E_FAIL;
	}
	if (CTablet::LoadError() != S_OK)
	{
		return E_FAIL;
	}
	if (CTabletButton::LoadError() != S_OK)
	{
		return E_FAIL;
	}
	if (CPaintingPen::LoadError() != S_OK)
	{
		return E_FAIL;
	}
	if (CPicture::LoadError() != S_OK)
	{
		return E_FAIL;
	}
	return S_OK;
}

//-------------------------------------------------------------------------------------------------------------
// エラーの検出
//-------------------------------------------------------------------------------------------------------------
HRESULT CTablet::LoadError(void)
{
	return S_OK;
}

//-------------------------------------------------------------------------------------------------------------
// 初期化
//-------------------------------------------------------------------------------------------------------------
HRESULT CTablet::Init()
{
	//モデル情報設定
	BindModelInfo(CModelInfo::GetModelInfo(CModelInfo::MODEL_TABLET));
	CSceneX::Init();

	// 容量を変更
	m_Button.reserve(CTabletButton::TYPE_MAX);

	// ボタン位置の取得
	D3DXVECTOR3 *pButtonPos = &m_aSetingPos[CTablet::POS_PEN];

	// タイプ数分ループ
	for (int nCntTtpe = 0; nCntTtpe < CTabletButton::TYPE_MAX; nCntTtpe++)
	{// 新しい要素を末尾に追加
		m_Button.push_back();
		// 末尾に生成
		m_Button.back() =
			CTabletButton::Create(
				this->GetMtxWorldPtr(),
				pButtonPos[nCntTtpe],
				(CTabletButton::TYPE)nCntTtpe);
	}

	// メンバ変数の初期化
	InitMemberVariables();

	return S_OK;
}

//-------------------------------------------------------------------------------------------------------------
// 更新
//-------------------------------------------------------------------------------------------------------------
void CTablet::Update()
{
	// モード別の処理
	switch (m_mode)
	{
		MLB_CASE(MODE_NORMAL)  NormalProc();	// 通常処理
		MLB_CASE(MODE_MOVEING) MoveingProc();	// 移動処理
		MLB_CASEEND;							// ケース終了
	}

	if (CManager::GetKeyboard()->GetTrigger(DIK_M))
	{
		this->SetDestinationProc(D3DXVECTOR3(0.0f, 0.0f, -300.0f));
	}
	// 変数宣言
	FLOAT3* pPos = (FLOAT3 *)this->GetPosPtr();
	CDebugProc::Print(CDebugProc::PLACE_LEFT, "現在位置 == [%.5f][%.5f][%.5f]\n", pPos->x, pPos->y, pPos->z);
}

//-------------------------------------------------------------------------------------------------------------
// 描画
//-------------------------------------------------------------------------------------------------------------
void CTablet::Draw()
{
	CSceneX::Draw();
}

//-------------------------------------------------------------------------------------------------------------
// ボタンを押しているか
//-------------------------------------------------------------------------------------------------------------
bool CTablet::ItIsPressingButtons(void)
{
	// 変数宣言
	CTabletButton* pButton;	// ボタン情報

	for (int nCntTtpe = 0; nCntTtpe < CTabletButton::TYPE_MAX; nCntTtpe++)
	{
		// ボタン情報の取得
		pButton = m_Button[nCntTtpe].get();
		// 押されたフラグを取得
		if (pButton->GetChangeFlag() ||
			pButton->GetInPressFlag())
		{
			return true;
		}
	}
	return false;
}

//-------------------------------------------------------------------------------------------------------------
// メンバ変数の初期化
//-------------------------------------------------------------------------------------------------------------
void CTablet::InitMemberVariables(void)
{
	m_mode           = MODE_NORMAL;				// モード
	m_fMoveCoeff     = TABLET_INIMOVECOFF;		// 移動係数
	m_posDest        = this->GetPos();			// 目的地
	m_bConstVelocity = false;					// 等速フラグ
	m_move           = MYLIB_VEC3_UNSET;		// 移動量
	m_nDestFrame     = MYLIB_INT_UNSET;			// 目的地までのフレーム
	m_nCntFrame      = MYLIB_INT_UNSET;			// フレーム数のカウント
}

//-------------------------------------------------------------------------------------------------------------
// 通常処理
//-------------------------------------------------------------------------------------------------------------
void CTablet::NormalProc(void)
{
	// 変数宣言
	D3DXVECTOR3*   pNearPos = &CManager::GetRay()->NearPos;	// レイの近い位置
	D3DXVECTOR3*   pFarPos  = &CManager::GetRay()->FarPos;	// レイの遠い位置
	BOOL           bHit     = FALSE;						// ヒットフラグ
	D3DXMATRIX     invmat;									// 算出した逆行列
	D3DXVECTOR3    ray;										// レイ
	D3DXVECTOR3    InvNirePos;								// 算出した近い位置
	D3DXVECTOR3    InvForePos;								// 算出した遠い位置
	CTabletButton* pButton;									// ボタン情報
	LPD3DXMESH     pMesh;									// メッシュ情報

	for (int nCntTtpe = 0; nCntTtpe < CTabletButton::TYPE_MAX; nCntTtpe++)
	{
		// ボタン情報の取得
		pButton = m_Button[nCntTtpe].get();
		// メッシュ情報の取得
		pMesh = pButton->GetModelInfo()->GetMesh();

		/* 対処いう物からみたレイに変換する */
		//	逆行列の取得
		D3DXMatrixInverse(&invmat, NULL, pButton->GetMtxWorldPtr());
		//	逆行列を使用し、レイ始点情報を変換　位置と向きで変換する関数が異なるので要注意
		D3DXVec3TransformCoord(&InvNirePos, pNearPos, &invmat);
		//	レイ終点情報を変換
		D3DXVec3TransformCoord(&InvForePos, pFarPos, &invmat);
		//	レイ方向情報を変換
		D3DXVec3Normalize(&ray, &(InvForePos - InvNirePos));
		//Rayを飛ばす
		D3DXIntersect(pMesh, &InvNirePos, &ray, &bHit, NULL, NULL, NULL, NULL, NULL, NULL);

		// HITしている時
		if (bHit == 1)
		{// モードを変更するためのフラグ処理
			pButton->FlagProcToChangeMode();
			CDebugProc::Print(CDebugProc::PLACE_LEFT, "[%d]当たったものが存在しました。\n", nCntTtpe);
		}
		else
		{// 押されたフラグを消す設定
			pButton->SetToOffPressFlag();
			// 変更フラグの設定処理
			pButton->SetChangeFlagProc();
		}
	}
}

//-------------------------------------------------------------------------------------------------------------
// 移動処理
//-------------------------------------------------------------------------------------------------------------
void CTablet::MoveingProc(void)
{
	// 等速フラグ分岐処理
	switch (m_bConstVelocity) {
		MLB_CASE(true) ConstantVelocityProc();		// 等速処理
		MLB_DEFAULT    NonConstantVelocityProc();	// 不等速処理
	}
}

//-------------------------------------------------------------------------------------------------------------
// 等速処理
//-------------------------------------------------------------------------------------------------------------
void CTablet::ConstantVelocityProc(void)
{
	// 変数宣言
	FLOAT3* pPos = (FLOAT3 *)this->GetPosPtr();	// 位置の取得
	// 位置の更新
	*pPos += m_move;
	// フレーム数を更新
	m_nCntFrame++;
	// フレーム数と同じになったとき
	if (m_nCntFrame == m_nDestFrame)
	{// フレームカウントの初期化
		m_nCntFrame = MYLIB_INT_UNSET;
		// 位置を目的地に設定
		*pPos = m_posDest;
		// 通常モードに設定
		m_mode = MODE_NORMAL;
	}
}

//-------------------------------------------------------------------------------------------------------------
// 不等速処理
//-------------------------------------------------------------------------------------------------------------
void CTablet::NonConstantVelocityProc(void)
{
	// 変数宣言
	FLOAT3* pPos = (FLOAT3 *)this->GetPosPtr();
	// 位置の差分
	VEC3 posDiff = m_posDest - *pPos;

	// 差分が無くなったとき
	if (posDiff.LengthSq() < MYLIB_OX_EPSILON)
	{// 位置を目的地に設定
		*pPos = m_posDest;
		// 通常モードに設定
		m_mode = MODE_NORMAL;
		return;
	}
	// 位置の更新
	*pPos += posDiff* m_fMoveCoeff;
}

//-------------------------------------------------------------------------------------------------------------
// 生成
//-------------------------------------------------------------------------------------------------------------
std::shared_ptr<CTablet> CTablet::Create(void)
{
	// スマートポインタの生成
	std::shared_ptr<CTablet> pTablet = std::make_shared<CTablet>();
	pTablet->SetPos(m_aSetingPos[CTablet::POS_TABLET]);
	pTablet->Init();

	//Sceneで管理
	pTablet->SetObjType(OBJTYPE_PICTURE);
	pTablet->AddSharedList(pTablet);
	return pTablet;
}

//-------------------------------------------------------------------------------------------------------------
// 等速処理の設定 （目的地を設定する前）
//-------------------------------------------------------------------------------------------------------------
void CTablet::SetConstVelocityProc(const bool bConstVelocity, const int nDestFrame)
{
	// 通常時以外の時は設定できない
	if (m_mode != MODE_NORMAL) {
		return;
	}
	// 等速フラグの設定
	SetConstVelocity(bConstVelocity);
	// 目的地までのフレームの設定
	SetDestFrame(nDestFrame);
}

//-------------------------------------------------------------------------------------------------------------
// 目的地を設定する処理
//-------------------------------------------------------------------------------------------------------------
void CTablet::SetDestinationProc(CONST D3DXVECTOR3 & posDest)
{
	// 変数宣言
	FLOAT3 &pos = (FLOAT3 &)this->GetPos();

	// 距離と位置が同じとき
	if (VEC3(posDest - pos).LengthSq() < MYLIB_OX_EPSILON)
	{// 処理を抜ける
		return;
	}

	// 移動モードに設定
	m_mode = CTablet::MODE_MOVEING;

	// 目的地の設定
	SetPosDest(posDest);

	// 等速フラグが立っていない時かつ目的地までのフレームが0以下の時
	if (m_bConstVelocity == false ||
		m_nDestFrame <= MYLIB_INT_UNSET)
	{// 処理を抜ける
		m_bConstVelocity = false;
		return;
	}
	// 移動量を設定
	m_move = (m_posDest - pos) / (float)m_nDestFrame;
}

//-------------------------------------------------------------------------------------------------------------
// 1行から情報を読み取る
//-------------------------------------------------------------------------------------------------------------
void CTablet::ReadFromLine(CONST_STRING cnpLine, CONST_STRING cnpEntryType, CONST_STRING cnpEntryData)
{
	if (strcmp(cnpEntryType, "Tablet") == 0)
	{
		CTablet::SetFromString(cnpLine);
	}
	else if (strcmp(cnpEntryType, "TabletButton") == 0)
	{
		CTabletButton::SetFromString(cnpLine);
	}
	else if (strcmp(cnpEntryType, "Pen") == 0)
	{
		CPaintingPen::SetFromString(cnpLine);
	}
	else if (strcmp(cnpEntryType, "Picture") == 0)
	{
		CPicture::SetFromString(cnpLine);
	}
}

//-------------------------------------------------------------------------------------------------------------
// 文字列から設定する
//-------------------------------------------------------------------------------------------------------------
void CTablet::SetFromString(CONST_STRING str)
{
	// 変数宣言
	float       fData;
	D3DXVECTOR3 F3Data = MYLIB_2DVECTOR_ZERO;
	// 位置
	if (sscanf(str, "pos = %f %f %f", &F3Data.x, &F3Data.y, &F3Data.z) == 3)
	{
		m_aSetingPos[CTablet::POS_TABLET] = F3Data;
	}
	// 移動係数
	else if (sscanf(str, "MoveCoeff = %f", &fData) == 1)
	{
		m_fMoveCoeff = fData;
	}
	// ペンボタンの位置
	else if (sscanf(str, "PenButtonPos = %f %f %f", &F3Data.x, &F3Data.y, &F3Data.z) == 3)
	{
		m_aSetingPos[CTablet::POS_PEN] = F3Data;
	}
	// 消しゴムボタンの位置
	else if (sscanf(str, "EraserButtonPos = %f %f %f", &F3Data.x, &F3Data.y, &F3Data.z) == 3)
	{
		m_aSetingPos[CTablet::POS_ERASER] = F3Data;
	}
	// 送信ボタンの位置
	else if (sscanf(str, "SendButtonPos = %f %f %f", &F3Data.x, &F3Data.y, &F3Data.z) == 3)
	{
		m_aSetingPos[CTablet::POS_SEND] = F3Data;
	}
}
