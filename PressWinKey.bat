@ECHO off
SETLOCAL ENABLEDELAYEDEXPANSION
PROMPT $
cls
ECHO ####################################################################
ECHO # 機能説明  :指定時間（分単位）でWindowsキーを自動押下します。     #
ECHO # 起動方法  :PressWinKey.bat                                       #
ECHO # 設定時間  : n  分単位                                            #
ECHO # 停止方法    :[CTRL + C ] キー同時に押下すると、処理終了する。    #
ECHO ####################################################################

REM 初期処理
SET BASE_DIR=%~dp0
SET JAVA_EXE=%BASE_DIR%\JDK\bin\java

ECHO.
SET /P MIN=設定繰り返し単位時間（分）:

REM javaコマンドを実行する
ECHO %DATE% %TIME% 処理開始
ECHO\

%JAVA_EXE%  %BASE_DIR%PressWinKey.java %MIN%

ECHO %DATE% %TIME% 処理終了
ECHO\


