//------------------------------------------------------------------------------
//
//モデル情報管理  [modelinfo.cpp]
//Author:Yoshiki Hosoya
//
//------------------------------------------------------------------------------
#ifndef _MODELINFO_H_
#define _MODELINFO_H_
//------------------------------------------------------------------------------
//インクルード
//------------------------------------------------------------------------------
#include "main.h"

//------------------------------------------------------------------------------
//クラス定義
//------------------------------------------------------------------------------
//前方宣言
class CModelInfo
{
public:
	CModelInfo();
	~CModelInfo();

	enum MODEL_TYPE
	{
		MODEL_NONE = -1,

		//爆弾関係 100番台
		MODEL_BOMBBOX = 100,					//オブジェクト　ボム

		//モジュール 200番台
		MODEL_MODULE_DEFAULT = 200,				//オブジェクト　モジュール
		MODEL_MODULE_NONE,						//オブジェクト　モジュール　何も入ってない
		MODEL_MODULE_TIMER,						//オブジェクト　タイマー
		MODEL_MODULE_KEYPAD,					//オブジェクト　キーパッド

		//モジュールパーツ 300番台
		MODEL_MODULEPARTS_CLEARLAMP = 300,		//オブジェクト　クリアランプ
		MODEL_MODULEPARTS_KEYPAD,				//オブジェクト　キーパッド

	};


	typedef struct MODELNAME
	{
		std::string modelname;
		MODEL_TYPE modeltype;
	}MODELNAME;

	static void ModelLoad(HWND hwnd);			//モデル生成
	static void ModelUnload();					//モデル生成

	static std::shared_ptr<CModelInfo> GetModelInfo(CModelInfo::MODEL_TYPE modeltype);			//モデル情報取得

	//Get関数
	std::string GetName()		{ return m_aName; };					//モデル名
	LPD3DXMESH GetMesh()		{ return m_mesh; };						//メッシュ情報
	LPD3DXBUFFER GetMatBuff()	{ return m_matBuff; };					//頂点情報
	DWORD GetMatNum()			{ return m_matNum; };					//マテリアル数
	MODEL_TYPE GetModelType()	{ return m_modeltype; };				//モデルタイプ

private:
	static std::vector<std::shared_ptr<CModelInfo>> m_apModelList;		//モデルへのポインタのリスト
	static std::vector<MODELNAME> m_aModelFileNameList;					//モデルのファイル名

	MODEL_TYPE		m_modeltype;		//モデルの種類
	std::string		m_aName;			//モデル名
	LPD3DXMESH		m_mesh;				//メッシュ
	LPD3DXBUFFER	m_matBuff;			//頂点情報
	DWORD			m_matNum;			//マテリアル数

};

#endif


