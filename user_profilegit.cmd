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
STR_CDDOS="/c/unix/mkl/shl/dos"
STR_CDSYS="/c/Users/uptizen/git/hub/sys"
STR_DATE=$(date '+%F %r')
STR_MMDD=${STR_DATE:5:2}${STR_DATE:8:2}
STR_TARNM="/c/unix/mkl/shl/bak/${STR_MMDD}_bkutz_sys.tar"
STR_ADD="git add . "
STR_COMMIT="git commit -m \"uptizen_autobat_VER_0.${STR_DATE:5:2}${STR_DATE:8:2}\""
STR_PUSH="git push -u origin master"

clear
##입력 파라미터값 확인
if [[ $1 == "init" ]]; then git init;
elif [[ $1 == "remotev" ]]; then git remote -v;
elif [[ $1 == "remote" ]]; then
  if [[ $2 == "" ]]; then git remote add origin https://github.com/suwon8088/sys.git;
  else git remote add origin https://github.com/suwon8088/$2;
  fi
elif [[ $1 == "add" ]]; then
  if [[ $2 == "" ]]; then $STR_ADD; echo $STR_ADD" command ok.";
  else git add $2;
  fi
elif [[ $1 == "commit" ]]; then
  if [[ $2 == "" ]]; then $STR_COMMIT; echo $STR_COMMIT;
  else git commit -m $2;
  fi
elif [[ $1 == "push" ]]; then
  if [[ $2 == "" ]]; then $STR_PUSH; echo $STR_PUSH;
  else git push -u origin $2;
  fi
elif [[ $1 == "stat" ]]; then git status;
elif [[ $1 == "status" ]]; then git status;
elif [[ $1 == "ignore" ]]; then vi ./.ignore;
elif [[ $1 == "sys" ]]; then cd $STR_CDSYS;
elif [[ $1 == "cdsys" ]]; then cd $STR_CDSYS;
elif [[ $1 == "bksys" ]]; then cd $STR_CDDOS; tar -cvf $STR_TARNM user*.cmd; echo $STR_TARNM ok.;
elif [[ $1 == "clsys" ]]; then git clone https://github.com/suwon8088/sys; cd $STR_CDSYS;
elif [[ $1 == "mvsys" ]]; then cp $STR_CDSYS/user*.cmd $STR_CDDOS; cd $STR_CDDOS; echo "clone move ok.";
elif [[ $1 == "cpsys" ]]; then cp $STR_CDDOS/user*.cmd $STR_CDSYS; cd $STR_CDSYS; echo "upload copy ok.";
elif [[ $1 == "rmsys" ]]; then cd $STR_CDSYS; cd ..; rm -rf $STR_CDSYS;
elif [[ $1 == "ggsys" ]]; then cp $STR_CDDOS/user*.cmd $STR_CDSYS; cd $STR_CDSYS; $STR_ADD; $STR_COMMIT; $STR_PUSH; echo "github auto-upload ok.";
elif [[ $1 == "ggz" ]]; then notepad $STR_CDDOS/user_profilegit.cmd;
else
    echo "======================================"
    echo "GIT-HUB UTIL DOCUMENT. Ver0.0930.05"
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
