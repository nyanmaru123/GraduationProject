//------------------------------------------------------------------------------
//
//モジュールの図形のキーパッド処理  [module_ShapeKeypad.cpp]
//Author:Yoshiki Hosoya
//
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//インクルード
//------------------------------------------------------------------------------
#include "module_No2_ShapeKeypad.h"
#include "module_parts_No2_ShapeKey.h"
#include "renderer.h"
#include "manager.h"
#include "modelinfo.h"
#include "timer.h"
#include "keyboard.h"
#include "game.h"
#include "Mylibrary.h"
#include "scene3D.h"
//------------------------------------------------------------------------------
//静的メンバ変数の初期化
//------------------------------------------------------------------------------sss

//------------------------------------------------------------------------------
//マクロ
//------------------------------------------------------------------------------
#define KEYPAD_NUM						(4)									//パッドの総数
#define KEYPAD_INTERVAL					(D3DXVECTOR3(25.0f,0.0f,0.0f))		//パッドの間隔
#define KEYPAD_OFFSET					(D3DXVECTOR3(1.0f,-15.0f,-20.0f))	//パッドのオフセット座標
#define DISPLAY_SHAPE_OFFSET			(D3DXVECTOR3(-18.0f,18.0f,-25.0f))	//ディスプレイの記号のオフセット間隔
#define DISPLAY_SHAPE_SIZE				(D3DXVECTOR3(20.0f,20.0f,0.0f))		//ディスプレイの記号のサイズ
#define PROGRESS_LAMP_OFFSET			(D3DXVECTOR3(29.0f,7.0f,-26.0f))	//進捗度ランプのオフセット
#define PROGRESS_LAMP_INTERVAL			(D3DXVECTOR3(10.0f,0.0f,0.0f))		//進捗度ランプの間隔
#define PROGRESS_LAMP_SIZE				(D3DXVECTOR3(7.0f,10.0f,0.0f))		//進捗度ランプの大きさ
#define PROGRESS_LAMP_NUM				(4)


//------------------------------------------------------------------------------
//コンストラクタ
//------------------------------------------------------------------------------
CModule_No2_ShapeKeyPad::CModule_No2_ShapeKeyPad()
{
	//初期化
	m_pKeyPadList = {};
	m_pProgressLamp = {};

	m_nSelectNum = PLACE::LEFT_TO_1ST;
	m_NowQuestion = QUESTION::Q_1;
	m_DisplayShape = SHAPE::CIRCLE;
	m_nQuestionChangeCnt = 0;

	//配列の大きさ設定
	m_Memories.resize((int)CModule_No2_ShapeKeyPad::QUESTION::MAX);
}

//------------------------------------------------------------------------------
//デストラクタ
//------------------------------------------------------------------------------
CModule_No2_ShapeKeyPad::~CModule_No2_ShapeKeyPad()
{
	m_pKeyPadList.clear();
}
//------------------------------------------------------------------------------
//初期化処理
//------------------------------------------------------------------------------
HRESULT CModule_No2_ShapeKeyPad::Init()
{
	//モデル情報設定
	BindModelInfo(CModelInfo::GetModelInfo(CModelInfo::MODEL_MODULE_NO2));

	//ランプ生成
	CModule_Base::CreateLamp();

	//キーパッド生成
	CreateKeyPad();

	//ディスプレイの図英生成
	CreateDisplayShape();

	//進捗度のランプ生成
	CreateProgressLamp();

	//図形シャッフル
	ShapeShuffle();

	//次押すボタンセット
	SetNextPushKey();

	CSceneX::Init();

	return S_OK;
}
//------------------------------------------------------------------------------
//終了処理
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::Uninit()
{
	CSceneX::Uninit();
}
//------------------------------------------------------------------------------
//更新処理
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::Update()
{
	CSceneX::Update();

	//nullcheck
	if (m_pDisplayShape)
	{
		m_pDisplayShape->Update();
	}




}
//------------------------------------------------------------------------------
//描画処理
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::Draw()
{
	CSceneX::Draw();

	//nullcheck
	if (m_pDisplayShape)
	{
		m_pDisplayShape->Draw();
	}
}
//------------------------------------------------------------------------------
//デバッグ情報表記
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::ShowDebugInfo()
{
#ifdef _DEBUG
	ImGui::DragFloat3("pos1", m_pProgressLamp[0]->GetPos(),0.05f);
	ImGui::DragFloat3("pos2", m_pProgressLamp[1]->GetPos(), 0.05f);
	ImGui::DragFloat3("pos3", m_pProgressLamp[2]->GetPos(), 0.05f);
	ImGui::DragFloat3("pos4", m_pProgressLamp[3]->GetPos(), 0.05f);

#endif //DEBUG
}
//------------------------------------------------------------------------------
//キーパッド操作
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::Operation()
{
	int nSelectNumOld = m_nSelectNum;

	//入力が無かった時はbreak
	CHossoLibrary::Selecting((int&)m_nSelectNum, nSelectNumOld, 4, 1);

	for (size_t nCnt = 0; nCnt < m_pKeyPadList.size(); nCnt++)
	{
		//nullcheck
		if (m_pKeyPadList[nCnt].get())
		{
			//現在の選択番号と同じモノだけtrueにしておく
			nCnt == m_nSelectNum ?
				m_pKeyPadList[nCnt]->SetSelect(true) :
				m_pKeyPadList[nCnt]->SetSelect(false);
		}
	}

	if (CManager::GetKeyboard()->GetTrigger(DIK_RETURN))
	{
		if (m_pKeyPadList[m_nSelectNum].get())
		{
			//押したボタンがクリアボタンだった場合
			if (m_pKeyPadList[m_nSelectNum]->GetClearFlag())
			{
				//クリア
				QuestionClear();

				//クリアしたかチェック
				CheckClear();
			}
			else
			{
				//失敗
				Module_Failed();
			}
		}
	}

	//nullcheck
	if (CManager::GetKeyboard()->GetTrigger(DIK_BACKSPACE))
	{
		for (size_t nCnt = 0; nCnt < m_pKeyPadList.size(); nCnt++)
		{
			if (m_pKeyPadList[nCnt].get())
			{
				//現在の選択番号と同じモノだけtrueにしておく
				m_pKeyPadList[nCnt]->SetSelect(false);

				CManager::GetGame()->SetGaze(CGame::GAZE_BOMB);
			}
		}
	}

	CDebugProc::Print(CDebugProc::PLACE_LEFT, "Flag >> ");

	for (size_t nCnt = 0; nCnt < m_pKeyPadList.size(); nCnt++)
	{
		CDebugProc::Print(CDebugProc::PLACE_LEFT, "[%d] ", m_pKeyPadList[nCnt]->GetClearFlag());

	}

	CDebugProc::Print(CDebugProc::PLACE_LEFT, NEWLINE);

	for (size_t nCnt = 0; nCnt < m_Memories.size(); nCnt++)
	{
		CDebugProc::Print(CDebugProc::PLACE_LEFT, "Memories >> Place[%d] Shape[%d]\n", m_Memories[nCnt].place, m_Memories[nCnt].shape);
	}

}

//------------------------------------------------------------------------------
//問題クリア
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::QuestionClear()
{
	//押したボタンを保存
	m_Memories[(int)m_NowQuestion].place = m_nSelectNum;
	m_Memories[(int)m_NowQuestion].shape = m_pKeyPadList[m_nSelectNum]->GetShape();

	//緑に点灯
	m_pProgressLamp[(int)m_NowQuestion]->SetColor(GreenColor);


	for (size_t nCnt = 0; nCnt < m_pKeyPadList.size(); nCnt++)
	{
		//フラグ初期化
		m_pKeyPadList[nCnt]->SetClearFlag(false);
	}

	//次の問題に移行
	int nValue = (int)m_NowQuestion;
	nValue++;
	m_NowQuestion = (QUESTION)nValue;

	//問題全て終えていた場合
	if (m_NowQuestion >= QUESTION::MAX)
	{
		return;
	}

	//図形シャッフル
	ShapeShuffle();

	//次の問題設定
	SetNextPushKey();

}

//------------------------------------------------------------------------------
//ディスプレイの図形生成
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::CreateDisplayShape()
{
	//ディスプレイの記号生成
	m_pDisplayShape = CSceneBase::ScenePolygonCreateSelfManagement<CScene3D>
		(DISPLAY_SHAPE_OFFSET, DISPLAY_SHAPE_SIZE, GreenColor, CTexture::GetSeparateTexture(CTexture::SEPARATE_TEX_MODULEPARTS_MODULE01));

	//親マトリックス設定
	m_pDisplayShape->SetParentMtxPtr(GetMtxWorldPtr());

	//ライティングoff
	m_pDisplayShape->SetLighting(false);
}

//------------------------------------------------------------------------------
//キーパッド生成
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::CreateKeyPad()
{
	//全てのキーに割り当てる
	for (size_t nCnt = 0; nCnt < KEYPAD_NUM; nCnt++)
	{
		//キー生成
		m_pKeyPadList.emplace_back(CModule_Parts_Base::Create_ModuleParts<CModule_Parts_No2_ShapeKey>
			(KEYPAD_OFFSET + D3DXVECTOR3(-((KEYPAD_INTERVAL.x) * (KEYPAD_NUM / 2)) + (KEYPAD_INTERVAL.x * 0.5f) + (KEYPAD_INTERVAL.x * nCnt), 0.0f, 0.0f), GetMtxWorldPtr()));
	}
}

//------------------------------------------------------------------------------
//進捗のランプ生成
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::CreateProgressLamp()
{
	//全てのキーに割り当てる
	for (size_t nCnt = 0; nCnt < KEYPAD_NUM; nCnt++)
	{
		//ランプ生成
		m_pProgressLamp.emplace_back(CSceneBase::ScenePolygonCreateShared<CScene3D>
			(PROGRESS_LAMP_OFFSET + D3DXVECTOR3(((PROGRESS_LAMP_INTERVAL.x) * (PROGRESS_LAMP_NUM / 2)) - (PROGRESS_LAMP_INTERVAL.x * 0.5f) - (PROGRESS_LAMP_INTERVAL.x * nCnt), 0.0f, 0.0f),
				PROGRESS_LAMP_SIZE,
				BlackColor,
				nullptr,
				CScene::OBJTYPE_MODULE_PARTS_SYMBOL));

		//親のマトリックス設定
		m_pProgressLamp[m_pProgressLamp.size() - 1]->SetParentMtxPtr(GetMtxWorldPtr());
		m_pProgressLamp[m_pProgressLamp.size() - 1]->SetLighting(false);
	}
}

//------------------------------------------------------------------------------
//クリアしたかチェック
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::CheckClear()
{
	//問題を全て終えた時
	if (m_NowQuestion >= QUESTION::MAX)
	{
		//モジュールクリア
		CModule_Base::Module_Clear();
	}
}
//------------------------------------------------------------------------------
//図形をシャッフル
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::ShapeShuffle()
{
	//番号が入ってる配列
	std::vector<SHAPE> nShapeList = { SHAPE::CIRCLE,SHAPE::CROSS ,SHAPE::TRIANGLE ,SHAPE::SQUARE };

	//シャッフル
	CHossoLibrary::Vec_Shuffle(nShapeList);

	for (size_t nCnt = 0; nCnt < nShapeList.size(); nCnt++)
	{
		//図形設定
		m_pKeyPadList[nCnt]->SetShape(nShapeList[nCnt]);
	}

	//ディスプレイの図形もランダムで設定
	SetDisplayShape(rand() % KEYPAD_NUM);

}
//------------------------------------------------------------------------------
//アニメーション設定
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::SetDisplayShape(int nShape)
{
	//図形設定
	m_DisplayShape = (SHAPE)nShape;

	//UV設定
	m_pDisplayShape->SetAnimation(CHossoLibrary::CalcUV_StaticFunc(nShape, CTexture::SEPARATE_TEX_MODULEPARTS_MODULE01),
		CTexture::GetSparateTex_UVSize(CTexture::SEPARATE_TEX_MODULEPARTS_MODULE01));
}

//------------------------------------------------------------------------------
//次の押すキー設定
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::SetNextPushKey()
{
	//現在が何問目か
	switch (m_NowQuestion)
	{
	case CModule_No2_ShapeKeyPad::QUESTION::Q_1:
		switch (m_DisplayShape)
		{
		case CModule_No2_ShapeKeyPad::SHAPE::CIRCLE:
			SetNextPushKey_FromPlace(PLACE::LEFT_TO_2ND);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::CROSS:
			SetNextPushKey_FromPlace(PLACE::LEFT_TO_4TH);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::TRIANGLE:
			SetNextPushKey_FromShape(SHAPE::TRIANGLE);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::SQUARE:
			SetNextPushKey_FromShape(SHAPE::CROSS);
			break;
		}
		break;

	case CModule_No2_ShapeKeyPad::QUESTION::Q_2:
		switch (m_DisplayShape)
		{
		case CModule_No2_ShapeKeyPad::SHAPE::CIRCLE:
			SetNextPushKey_FromPlace(m_Memories[(int)QUESTION::Q_1].place);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::CROSS:
			SetNextPushKey_FromPlace(PLACE::LEFT_TO_4TH);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::TRIANGLE:
			SetNextPushKey_FromPlace(PLACE::LEFT_TO_2ND);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::SQUARE:
			SetNextPushKey_FromShape(SHAPE::CIRCLE);
			break;
		}
		break;

	case CModule_No2_ShapeKeyPad::QUESTION::Q_3:
		switch (m_DisplayShape)
		{
		case CModule_No2_ShapeKeyPad::SHAPE::CIRCLE:
			SetNextPushKey_FromPlace(PLACE::LEFT_TO_3RD);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::CROSS:
			SetNextPushKey_FromShape(m_Memories[(int)QUESTION::Q_1].shape);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::TRIANGLE:
			SetNextPushKey_FromShape(SHAPE::SQUARE);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::SQUARE:
			SetNextPushKey_FromPlace(PLACE::LEFT_TO_1ST);
			break;
		}
		break;

	case CModule_No2_ShapeKeyPad::QUESTION::Q_4:
		switch (m_DisplayShape)
		{
		case CModule_No2_ShapeKeyPad::SHAPE::CIRCLE:
			SetNextPushKey_FromPlace(m_Memories[(int)QUESTION::Q_2].place);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::CROSS:
			SetNextPushKey_FromPlace(PLACE::LEFT_TO_2ND);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::TRIANGLE:
			SetNextPushKey_FromShape(SHAPE::CIRCLE);
			break;

		case CModule_No2_ShapeKeyPad::SHAPE::SQUARE:
			SetNextPushKey_FromShape(SHAPE::CIRCLE);
			break;
		}
		break;

	}
}

//------------------------------------------------------------------------------
//次の押すキー設定　図形を基に設定
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::SetNextPushKey_FromShape(SHAPE shape)
{
	//入力されたshapeと同じキー検索
	auto itr = std::find_if(m_pKeyPadList.begin(), m_pKeyPadList.end(),
		[shape](std::shared_ptr<CModule_Parts_No2_ShapeKey> pPtr) {return (SHAPE)pPtr->GetShape() == shape; });

	//nullcheck
	if (itr != m_pKeyPadList.end())
	{
		//クリアフラグ設定
		itr->get()->SetClearFlag(true);
	}
}

//------------------------------------------------------------------------------
//次の押すキー設定　場所を基に設定
//------------------------------------------------------------------------------
void CModule_No2_ShapeKeyPad::SetNextPushKey_FromPlace(PLACE place)
{
	m_pKeyPadList[place]->SetClearFlag(true);
}
