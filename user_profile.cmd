##/********************************************/
##/* 여기는 업티즌 DOS 자동실행 SHELL 입니다. */
##/* 작성일자 : 2015.09.16                    */
##/* 작성자명 : JeongDongHo                   */
##/* 파 일 명 : user_profile.cmd              */
##/* 기능설명 :                               */
##/*  1. c:/users/uptizen/.bashrc             */
##/********************************************/
##/* 2015.09.16 신규생성                      */
##/* 2015.09.18 .user_profile ->              */
##/*            user_profile.cmd으로 변경처리 */
##/* 2015.09.21 user_profile.cmd file merge   */
##/* 2015.09.30 user_profile.cmd notepad 변경 */
##/********************************************/
## user variable define
USER_DRIVE="/c"
STR_DATE=$(date '+%F %r')
STR_COMM_VER="\"Uptizen autobat VER 0.${STR_DATE:5:2}${STR_DATE:8:2}\""

## statting message
clear
echo "user_profile.cmd ver0.0930.01 start..."
cd c:/Users/uptizen/git

## system command line
alias cls='clear'
alias ll='ls -al'
alias ls='ls'
alias dir='ls'

## system file edit
alias gggit='. '$USER_DRIVE'/unix/mkl/shl/dos/user_profilegit.cmd'
alias gggitvi='notepad '$USER_DRIVE'/unix/mkl/shl/dos/user_profilegit.cmd'

alias gg='. '$USER_DRIVE'/unix/mkl/shl/dos/user_profilegg.cmd'
alias ggvi='notepad '$USER_DRIVE'/unix/mkl/shl/dos/user_profilegg.cmd'

alias gggo='. '$USER_DRIVE'/unix/mkl/shl/dos/user_profile.cmd'
alias ggconfig='notepad '$USER_DRIVE'/unix/mkl/shl/dos/user_profile.cmd'

## ssh connection
alias ggdo='ssh root@107.170.205.143'
alias ggcafe='ssh suwon8088@uptizen.com'
alias ggaws='ssh root@52.68.38.200'

## git user directory move
alias ggwks='cd /c/sts/workspace'
alias gghub='cd /c/Users/uptizen/git/hub'

## dos user directory move
alias ggmkl='cd '$USER_DRIVE'/unix/mkl'
alias ggshl='cd '$USER_DRIVE'/unix/mkl/shl'
alias ggcmd='cd '$USER_DRIVE'/unix/mkl/shl/dos'
alias ggbak='cd '$USER_DRIVE'/unix/mkl/shl/bak'
