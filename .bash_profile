#
# ~/.bash_profile
#
source ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; 
then
  exec startx ### --ignoreABI
fi
