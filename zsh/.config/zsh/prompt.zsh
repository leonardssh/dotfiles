PROMPT="%B%{$fg[blue]%}[%{$fg[white]%}%\leo%{$fg[red]%}@%{$fg[white]%}%\fsociety%{$fg[blue]%}]%{$reset_color%}%  %(?:%{$fg_bold[green]%}λ :%{$fg_bold[red]%}λ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
