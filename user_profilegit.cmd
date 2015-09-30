##/********************************************/
##/* 여기는 업티즌 DOS 자동실행 SHELL 입니다. */
##/* 작성일자 : 2015.09.21                    */
##/* 작성자명 : JeongDongHo                   */
##/* 파 일 명 : user_profilegit.cmd           */
##/* 기능설명 :                               */
##/*  1. c:/users/uptizen/.bashrc             */
##/********************************************/
##/* 2015.09.21 신규생성                      */
##/* 2015.09.18 .user_profilegit ->           */
##/*            user_profilegit.cmd 변경처리  */
##/* 2015.09.21 user_profilegit.cmd merge처리 */
##/* 2015.09.30 message update                */
##/********************************************/
STR_DRIVE="/c"
STR_DATE=$(date '+%F %r')
STR_MMDD=${STR_DATE:5:2}${STR_DATE:8:2}
STR_TARNM="/c/unix/mkl/shl/bak/${STR_MMDD}_bkutz_sys.tar"
STR_ADD="git add . "
STR_COMMIT="git commit -m \"uptizen_autobat_VER_0.${STR_DATE:5:2}${STR_DATE:8:2}\""
STR_PUSH="git push -u origin master"

clear
##입력 파라미터값 확인
if [[ $1 == "git" ]]; then cd /c/Users/uptizen/git
elif [[ $1 == "hub" ]]; then cd /c/Users/uptizen/git/hub
elif [[ $1 == "init" ]]; then git init
elif [[ $1 == "remotev" ]]; then git remote -v
elif [[ $1 == "remote" ]]; then
  if [[ $2 == "" ]]; then git remote add origin https://github.com/suwon8088/sys.git
  else git remote add origin https://github.com/suwon8088/$2
  fi
elif [[ $1 == "add" ]]; then
  if [[ $2 == "" ]]; then $STR_ADD; echo $STR_ADD" command ok."
  else git add $2
  fi
elif [[ $1 == "commit" ]]; then
  if [[ $2 == "" ]]; then $STR_COMMIT; echo $STR_COMMIT
  else git commit -m $2
  fi
elif [[ $1 == "push" ]]; then
  if [[ $2 == "" ]]; then $STR_PUSH; echo $STR_PUSH
  else git push -u origin $2
  fi
elif [[ $1 == "stat" ]]; then git status
elif [[ $1 == "status" ]]; then git status
elif [[ $1 == "ignore" ]]; then vi ./.ignore
elif [[ $1 == "sys" ]]; then cd /c/Users/uptizen/git/hub/sys
elif [[ $1 == "cdsys" ]]; then cd /c/Users/uptizen/git/hub/sys
elif [[ $1 == "bksys" ]]; then cd $STR_DRIVE/unix/mkl/shl/dos; tar -cvf $STR_TARNM user*.cmd; echo $STR_TARNM ok.
elif [[ $1 == "clsys" ]]; then git clone https://github.com/suwon8088/sys; cd /c/Users/uptizen/git/hub/sys
elif [[ $1 == "mvsys" ]]; then cp /c/Users/uptizen/git/hub/sys/user*.cmd $STR_DRIVE/unix/mkl/shl/dos; cd $STR_DRIVE/unix/mkl/shl/dos; echo "github clone file local move ok."
elif [[ $1 == "ggsys" ]]; then cp $STR_DRIVE/unix/mkl/shl/dos/user*.cmd /c/Users/uptizen/git/hub/sys; cd /c/Users/uptizen/git/hub/sys; $STR_ADD; $STR_COMMIT; $STR_PUSH; echo "github auto-upload ok."
elif [[ $1 == "cpsys" ]]; then cp $STR_DRIVE/unix/mkl/shl/dos/user*.cmd /c/Users/uptizen/git/hub/sys; cd /c/Users/uptizen/git/hub/sys; echo "github upload file local copy ok."
elif [[ $1 == "upsys" ]]; then cp $STR_DRIVE/unix/mkl/shl/dos/user*.cmd /c/Users/uptizen/git/hub/sys; cd /c/Users/uptizen/git/hub/sys; echo "upload DC file move ok.(next ggsys)"
elif [[ $1 == "rmsys" ]]; then cd /c/Users/uptizen/git/hub; rm -rf /c/Users/uptizen/git/hub/sys
elif [[ $1 == "ggsys" ]]; then $STR_ADD; $STR_COMMIT; git push -u origin master; echo ""; echo "gggit add command ok."; echo gg$STR_COMMIT; echo "gggit push command ok."
elif [[ $1 == "ggz" ]]; then notepad $STR_DRIVE/unix/mkl/shl/dos/user_profilegit.cmd
else
    echo "======================================"
    echo "GIT-HUB UTIL DOCUMENT. Ver0.0930.04"
    echo "ex) gggit [add/ commit/ stat/ sys]"
    echo "--------------------------------------"
    echo "$ cdsys >> clsys >> mvsys"
    echo "$ rmsys >> cpsys >> ggsys"
    echo "$ add >> commit >> push"
    echo "$ init stat"
    echo "--------------------------------------"
  if [[ NOTFOUND$1 != "NOTFOUND" ]]; then
    echo "Parameter Not Found. Key=["$1"]"
    echo "--------------------------------------"
  fi
fi
