#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.cache/zsh/history

setopt HIST_IGNORE_DUPS	# idnore duplicate commands in history
setopt autocd			# automatically cd into directory

PS1="%F{3}┌%B%n in %~%b"$'\n'"└─%B%(!.#.$) %f%b"

# load aliases from file
source ~/.aliases

# some key bindings
bindkey "^[[1;5C" forward-word			# ctrl + right arrow
bindkey "^[[1;5D" backward-word			# ctrl + left arrow
bindkey "^[[H"    beginning-of-line		# home
bindkey "^[[F"    end-of-line			# end

### PLUGINS ###
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_AUTOSUGGEST_STRATEGY=completion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

### PYWAL ###
(cat ~/.cache/wal/sequences &)

# The following lines were added by compinstall
zstyle :compinstall filename '/home/kacper/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
