@ECHO off
SETLOCAL ENABLEDELAYEDEXPANSION
PROMPT $
cls
ECHO ####################################################################
ECHO # �@�\����  :�w�莞�ԁi���P�ʁj��Windows�L�[�������������܂��B     #
ECHO # �N�����@  :PressWinKey.bat                                       #
ECHO # �ݒ莞��  : n  ���P��                                            #
ECHO # ��~���@    :[CTRL + C ] �L�[�����ɉ�������ƁA�����I������B    #
ECHO ####################################################################

REM ��������
SET BASE_DIR=%~dp0
SET JAVA_EXE=%BASE_DIR%\JDK\bin\java

ECHO.
SET /P MIN=�ݒ�J��Ԃ��P�ʎ��ԁi���j:

REM java�R�}���h�����s����
ECHO %DATE% %TIME% �����J�n
ECHO\

%JAVA_EXE%  %BASE_DIR%PressWinKey.java %MIN%

ECHO %DATE% %TIME% �����I��
ECHO\


