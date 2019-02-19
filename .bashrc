#
# ~/.bashrc
#
shopt -s expand_aliases
source ~/.shellscripts/alias.sh


#remove wine kontextmenu
remove_wine_context_menus &

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# sudo tab-completion
complete -cf sudo
# adb completion
#source /home/aik/.config/aik/linux/bash/completion-android.txt

#export PROMPT_COMMAND='printf "\033]0;%s@%s : %s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

export ALTERNATE_EDITOR="emacs"
export EDITOR="emacsclient -t"                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:/home/aik/.config/aik/linux/bin:/opt/android-sdk/tools/:/opt/android-sdk/platform-tools/:/usr/lib/eclipse/:$HOME/.node_modules/bin
export npm_config_prefix=~/.node_modules
