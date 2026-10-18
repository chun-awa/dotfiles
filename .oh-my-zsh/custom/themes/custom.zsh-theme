_prompt_precmd() {
  local last_status=$?

  if (( last_status == 127 )); then
    _prompt_symbol='%F{yellow}?%f'
  elif (( last_status != 0 )); then
    _prompt_symbol='%F{red}%%%f'
  else
    _prompt_symbol='%%'
  fi
}

PROMPT="%{$fg[cyan]%}%T%{$reset_color%} %~"
PROMPT+='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}:%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=
ZSH_THEME_GIT_PROMPT_DIRTY='*'

add-zsh-hook precmd _prompt_precmd
PROMPT+=' ${_prompt_symbol} '
