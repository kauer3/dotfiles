# disable highlighting pasted text
zle_highlight=('paste:none')

## Function to source files if they exist
#function zsh_add_file() {
	#[ -f "/home/kaue/.config/zsh/$1" ] && source "/home/kaue/.config/zsh/$1"
#}
#
#
#function zsh_add_plugin() {
	#PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
	#if [ -d "/home/kaue/.config/zsh/plugins/$PLUGIN_NAME" ]; then 
		## For plugins
		#zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
		#zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
	#else
		#git clone "https://github.com/$1.git" "/home/kaue/.config/zsh/plugins/$PLUGIN_NAME"
	#fi
#}
#
#zsh_add_plugin "zsh-users/zsh-autosuggestions"
#zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

alias config='/usr/bin/git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='eza --icons --no-user --group-directories-first --sort mod -lr'
	alias cat=bat
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cataue/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
eval "$(starship init zsh)"
