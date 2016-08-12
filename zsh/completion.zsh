setopt hist_verify

zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'

### If you want zsh's completion to pick up new commands in $path automatically
### comment out the next line and un-comment the following 5 lines
zstyle ':completion:::::' completer _complete _approximate
#_force_rehash() {
#  (( CURRENT == 1 )) && rehash
#  return 1	# Because we didn't really complete anything
#}
#zstyle ':completion:::::' completer _force_rehash _complete _approximate
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'
zstyle ':completion:*:descriptions' format "- %d -"
zstyle ':completion:*:corrections' format "- %d - (errors %e})"
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' verbose yes

zstyle ':completion:*:warnings' format 'Ne trouve pas de: %d'
zstyle ':completion:*' max-errors 3 numeric

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

zstyle ':completion:*:*:*:*:processes' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:*:*:*:processes' command 'ps -Al | grep $UID | awk '\''{print $4" " $14}'\'' '

zstyle ':completion:*' use-compctl false


zstyle ':completion:all-matches::::' completer _all_matches _complete
zstyle ':completion:all-matches:*' old-matches true
zstyle ':completion:all-matches:*' insert true
zstyle ':completion:match-word::::' completer _all_matches _match _ignored
zstyle ':completion:match-word:*' insert-unambiguous true
zstyle ':completion:match-word:*' match-original both
zle -C all-matches complete-word _generic
zle -C match-word complete-word _generic

setopt correct
setopt correct_all
setopt glob_complete                            # Completion avec RegEx
setopt extendedglob

bindkey '^Xx' all-matches
bindkey '\e*' match-word
bindkey '^Xl' list-choices

local knownhosts
knownhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*} )
zstyle ':completion:*:(ssh|scp|sftp):*' hosts $knownhosts

if [[ -x /usr/lib/command-not-found ]] ; then
	function command_not_found_handler() {
		/usr/lib/command-not-found --no-failure-msg -- $1
	}
fi
