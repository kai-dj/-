#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s expand_aliases
source ~/.shellscripts/alias.sh
source ~/.shellscripts/functions.sh
source ~/.shellscripts/colors.sh
source ~/.shellscripts/environment.sh

[[ "$(whoami)" == "root" ]] && PROMT="#" || PROMT="\$"
export PS1='\n\D{%FT%T} [\u@\H:\w] $(ps1_parse_git_branch)\n$(RETVAL=$?;[[ $RETVAL -ne 0 ]] && echo -n "\[\e[31m\]($RETVAL)${PROMT} \[\e[m\] " || echo -n "\[\e[32m\]${PROMT} \[\e[m\] ")'
# sudo tab-completion
complete -cf sudo
