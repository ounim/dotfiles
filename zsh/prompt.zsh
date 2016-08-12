setopt prompt_subst

autoload colors
colors

if  [ "$USER" = "root" ]; then
COLOR_USER=%{$fg[red]%};
else 
COLOR_USER=%{$fg[yellow]%};
fi

export PS1="[$COLOR_USER%n%{$fg[default]%}@%{$fg[green]%}%m%{$fg[default]%}] %{$fg[default]%}%~%{$fg[default]%} $ "
 	

[ $TERM = "dumb" ] && unsetopt zle && export PS1='$ '

