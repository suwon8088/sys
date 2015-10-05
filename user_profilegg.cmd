##/********************************************/
##/* 여기는 업티즌 DOS 자동실행 SHELL 입니다. */
##/* 작성일자 : 2015.09.21                    */
##/* 작성자명 : JeongDongHo                   */
##/* 파 일 명 : user_profilegg.cmd            */
##/* 기능설명 :                               */
##/*  1. c:/users/uptizen/.bashrc             */
##/********************************************/
##/* 2015.09.21 신규생성                      */
##/* 2015.09.18 .user_profilegg ->            */
##/*            user_profilegg.cmd 변경처리   */
##/* 2015.09.21 user_profilegg.cmd merge처리  */
##/* 2015.09.30 user_profilegg.cmd notepad변경*/
##/********************************************/
## user variable define
USER_DRIVE="/c"

clear
##입력 파라미터값 확인
if [[ $1 == "" ]]; then
	echo "======================================"
	echo "GIT UTIL DOCUMENT. Ver0.0930.1"
	echo "=> EDIT gg 11z / ggz"
	echo "--------------------------------------"
	echo "aa:[dev:GITCommnad] bb:[dev:HUBCommand]"
	echo "11:[dev:windows]    12:[dev:HotKey]"
	echo "13:[dev:eclipse]    14:[dev:ETC]"
	echo "21:[dev:JAVA]       22:[dev:JSP]"
	echo "31:[dev:MySQL]      32:[dev:AWS]"
	echo "41:[dev:python]     42:[dev:shell]"
elif [[ $1 == "aa" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_git.cmd
elif [[ $1 == "bb" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_hub.cmd
elif [[ $1 == "11" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_windows.cmd
elif [[ $1 == "12" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_hotkey.cmd
elif [[ $1 == "13" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_eclipse.cmd
elif [[ $1 == "14" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_etc.cmd
elif [[ $1 == "21" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_java.cmd
elif [[ $1 == "22" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_jsp.cmd
elif [[ $1 == "31" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_mysql.cmd
elif [[ $1 == "32" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_aws.cmd
elif [[ $1 == "41" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_python.cmd
elif [[ $1 == "42" ]]; then cat $USER_DRIVE/unix/mkl/shl/dos/utz_dev_shell.cmd
##도움말 편집모드
elif [[ $1 == "ggz" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/user_profilegg.cmd
elif [[ $1 == "aaz" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_git.cmd
elif [[ $1 == "bbz" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_hub.cmd
elif [[ $1 == "11z" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_windows.cmd
elif [[ $1 == "12z" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_hotkey.cmd
elif [[ $1 == "13z" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_eclipse.cmd
elif [[ $1 == "14z" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_etc.cmd
elif [[ $1 == "21z" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_java.cmd
elif [[ $1 == "22z" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_jsp.cmd
elif [[ $1 == "31z" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_mysql.cmd
elif [[ $1 == "32z" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_aws.cmd
elif [[ $1 == "41z" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_python.cmd
elif [[ $1 == "42z" ]]; then notepad $USER_DRIVE/unix/mkl/shl/dos/utz_dev_shell.cmd
else
	echo "======================================"
	echo "Input Parameter Not Found. Key=["$1"]"
fi
echo "--------------------------------------"
