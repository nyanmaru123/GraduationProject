//=============================================================================
//
// メイン処理 [ main.cpp ]
// Author : KANAN NAGANAWA
//
//=============================================================================
#include "main.h"
#include "server.h"

#define _CRTDBG_MAP_ALLOC				// メモリリーク検出に必要
#include <crtdbg.h>						// メモリリーク検出に必要

//=============================================================================
// マクロ定義
//=============================================================================

//=============================================================================
// プロトタイプ関数宣言
//=============================================================================

//=============================================================================
// グローバル変数宣言
//=============================================================================

//=============================================================================
// メイン関数
//=============================================================================
int main(void)
{
	_CrtDumpMemoryLeaks();											// アプリ終了時にメモリリークレポートを表示
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);	// リーク検出に必要
	_CrtSetReportMode(_CRT_ERROR, _CRTDBG_MODE_DEBUG);				// リダイレクトやウィンドウの行き来を可能にする

	//_CrtSetBreakAlloc(163);										// メモリリーク検出用 ()内に番号を入力してブレークポイントを発生させる

	// サーバーをスレッドで管理
	std::thread tServer(CServer::main);
	tServer.detach();

	char cCommand[128];
	printf("終了コマンド : end\n");

	while (1)
	{
		// コマンドを待つ
		scanf("%s", &cCommand);

		// コマンドでサーバー終了
		if (strcmp(cCommand, "end") == 0)
		{
			printf("サーバーを終了します。\n");
			CServer::SetClose(true);
			// ループを抜ける
			break;
		}
	}

	// サーバーの終了
	CServer::UninitServer();

	// 終了
	return 0;
}
