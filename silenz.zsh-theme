function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
      echo "%{$fg_bold[blue]%}(ssh)"
        fi
}

PROMPT='$(ssh_connection)%(?,%{$fg_bold[cyan]%},%{$fg_bold[red]%}) >> '
# RPS1='%{$fg[blue]%}%~%{$reset_color%} '
RPS1='%{$fg[white]%}%2~$(git_prompt_info) %{$fg[cyan]%}// %{$fg_bold[blue]%}%m%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ⚡%{$fg[yellow]%}"
