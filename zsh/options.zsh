umask 002

unsetopt clobber                                # >| to overwrite a file
setopt print_exit_value                         # Print exit value if not 0
unsetopt ignore_eof
unsetopt rm_star_silent                         # ask before executing 'rm *'
autoload -U zmv
autoload -U zargs

#usually Ctrl-S is bind to stop terminal flow
#and mask the forward-search-history of the shell
#i never use stop terminal flow
stty -ixon

