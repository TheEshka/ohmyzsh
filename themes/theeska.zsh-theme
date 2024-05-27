# Custom theme from candy


function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo ${SHORT_HOST:-$HOST}
}

function error_code {
    if [[ $1 == '0' ]]; then
        echo ''
    else
        echo "[$1]\n"
    fi
}

export PROMPT=$'%(?  %{$fg_bold[red]%}$(error_code %?)%{$reset_color%} )%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[yellow]%}$(box_name)%{$reset_color%} %{$fg_bold[magenta]%}%D{[%X]} %{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%} $(git_prompt_info)\
%{$fg[blue]%}->%{$fg_bold[blue]%} %#%{$reset_color%} '


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
RPROMPT='%{$fg[red]%}%(?..✘)%{$reset_color%}'