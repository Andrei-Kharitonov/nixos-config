# custom prompt line
autoload -Uz vcs_info promptinit
precmd() {
  vcs_info
  # new line after output
  if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
    NEW_LINE_BEFORE_PROMPT=1
  elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
    echo ""
  fi
}
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='[%F{4}%n@%m%f] %F{4}%~%f %F{6}${vcs_info_msg_0_}%f ${prompt_newline} '

# shell cd with yazi
yazi_dir_navigation() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}
