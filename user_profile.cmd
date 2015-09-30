##/********************************************/
##/* ����� ��Ƽ�� DOS �ڵ����� SHELL �Դϴ�. */
##/* �ۼ����� : 2015.09.16                    */
##/* �ۼ��ڸ� : JeongDongHo                   */
##/* �� �� �� : user_profile.cmd              */
##/* ��ɼ��� :                               */
##/*  1. c:/users/uptizen/.bashrc             */
##/********************************************/
##/* 2015.09.16 �űԻ���                      */
##/* 2015.09.18 .user_profile ->              */
##/*            user_profile.cmd���� ����ó�� */
##/* 2015.09.21 user_profile.cmd file merge   */
##/* 2015.09.30 user_profile.cmd notepad ���� */
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
