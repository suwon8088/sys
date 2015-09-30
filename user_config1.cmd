::/********************************************/
::/* 여기는 업티즌 DOS 자동실행 SHELL 입니다. */
::/* 작성일자 : 2015.06.11                    */
::/* 작성자명 : JeongDongHo                   */
::/* 파 일 명 : user_config.cmd               */
::/* 기능설명 :                               */
::/*  1.[HKEY_CURRENT_USER\Software\Microsoft */
::/*     \Command Processor] 문자열 생성후    */
::/*     [Autorun]=[경로+user_config.cmd]추가 */
:://  2.기본 shell gg.cmd 연동참조 c:\windows */
::/*     \system32\cmd.exe /K %HOMEDRIVE%     */
::/*     %HOMEPATH%\cmd_profile.cmd           */
::/********************************************/
::/* 2015.07.28 ggvi 주석추가                 */
::/* 2015.07.28 ggvi1 파라메터 추가           */
::/* 2015.09.18 autoexec.cmd -> .user_config  */
::/*            reg등록시 user_config.cmd     */
::/* 2015.09.21 user_config.cmd file merge    */
::/********************************************/
## user variable define
SET USER_DRIVE="c:"

::user display message
cd /D %USER_DRIVE%\unix\mkl\shl\dos
cls
@echo ====================================
@echo user_config.cmd ver0.0930.1 start...
@echo ------------------------------------

::user command line
@DOSKEY h=doskey /history
@DOSKEY rm=del $1 $2 $3 $4 $5
@DOSKEY ls=dir /w
@DOSKEY ll=dir $1 $2 $3 $4 $5
@DOSKEY vi=notepad $1 $2 $3 $4
@DOSKEY mv=move $1 $2
@DOSKEY cp=copy $1 $2 $3 $4 $5
@DOSKEY cat=type $1 $2 $3 $4 $5

::user command line
@DOSKEY gggo=%USER_DRIVE%\unix\mkl\shl\dos\user_config.cmd
@DOSKEY ggconfig=notepad %USER_DRIVE%\unix\mkl\shl\dos\user_config1.cmd
@DOSKEY ggvi=%USER_DRIVE%\unix\mkl\shl\dos\gg.cmd xxz
@DOSKEY qqgo=%USER_DRIVE%\unix\mkl\shl\dos\qq.cmd
@DOSKEY qqvi=notepad %USER_DRIVE%\unix\mkl\shl\dos\qq.cmd $1
@DOSKEY ggsqlr=mysql -uroot -p
@DOSKEY ggsqlp=mysql -uphpmyadmin -p

::dos user directory
@DOSKEY ggwww=cd /D c:\java\APM_Setup\htdocs
@DOSKEY ggapt=cd /D c:\java\APM_Setup\server\apache
@DOSKEY ggaptb=cd /D c:\java\APM_Setup\server\apache\bin
@DOSKEY ggaptv=cd /D c:\java\APM_Setup\server\apache\conf
@DOSKEY ggjava=cd /D c:\java
@DOSKEY ggsql=cd /D c:\java\APM_Setup\server\mysql5\data
@DOSKEY ggtom=cd /D c:\java\apache-tomcat-7.0.52\webapps\ROOT
@DOSKEY ggtomb=cd /D c:\java\apache-tomcat-7.0.52\bin
@DOSKEY ggtomd=c:\java\apache-tomcat-7.0.52\bin\shutdown.bat
@DOSKEY ggtoms=c:\java\apache-tomcat-7.0.52\bin\startup.bat
@DOSKEY ggtomv=c:\java\apache-tomcat-7.0.52\bin\version.bat
@DOSKEY ggegov=cd /D c:\eGovFrame-3.2\bin\eclipse
@DOSKEY ggmvn=cd /D c:\eGovFrame-3.2\maven\repository

::unix user directory
@DOSKEY ggmkl=cd /D %USER_DRIVE%\unix\mkl
@DOSKEY ggcmd=cd /D %USER_DRIVE%\unix\mkl\shl\dos
@DOSKEY ggshl=cd /D %USER_DRIVE%\unix\mkl\shl\dos
@DOSKEY ggsrc=cd /D %USER_DRIVE%\unix\mkl\src
@DOSKEY ggtxt=cd /D %USER_DRIVE%\unix\mkl\txt
@DOSKEY ggtst=cd /D %USER_DRIVE%\unix\mkl\tst
@DOSKEY ggbak=cd /D %USER_DRIVE%\unix\mkl\bak
@DOSKEY ggwar=cd /D %USER_DRIVE%\unix\mkl\src\war
