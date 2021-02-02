#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


# appends a directory to $PATH to run user custom commands
export PATH=$PATH:$HOME/.local/bin:$HOME/.scripts:$HOME/.config/nvim/plugged/vim-live-latex-preview/bin
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

# Setting default applications
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"

# HOME directory cleanup:
export XAUTHORITY=$XDG_RUNTIME_DIR/xauthority
# export VIMINIT='source "$XDG_CONFIG_HOME/vim/vimrc"'
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export SQLITE_HISTORY=$XDG_DATA_HOME/sqlite_history

# NNN file manager config
export NNN_BMS='h:~/;m:/mnt;r:/run/media;s:/mnt/Collections/Study/4th year/1st_term/;p:/mnt/Collections/Projects/'
export NNN_FIFO=/tmp/nnn.fifo
export NNN_COLORS='2134'
export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'  # change later 
# Commming soon:
#export NNN_PLUG='p:preview-tabbed;n:nuke'
#export NNN_OPENER=$XDG_CONFIG_HOME/.config/nnn/plugins/nuke

# excutes startx automatically after logging in
if [[ "$(tty)" = "/dev/tty1" ]]; then  # if the running tty is tty1 (the default tty)
	pgrep dwm || startx  # find i3 in the processes if not running startx, could change the default wm from ~/.xinitrc, this line could just be startx
fi

