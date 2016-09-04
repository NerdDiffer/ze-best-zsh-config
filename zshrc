PATH_TO_SETTINGS=$HOME/.zsh/settings

source $PATH_TO_SETTINGS/exports.zsh
source $PATH_TO_SETTINGS/colors.zsh
source $PATH_TO_SETTINGS/setopt.zsh
source $PATH_TO_SETTINGS/prompt.zsh
source $PATH_TO_SETTINGS/completion.zsh
source $PATH_TO_SETTINGS/aliases.zsh
source $PATH_TO_SETTINGS/bindkeys.zsh
source $PATH_TO_SETTINGS/functions.zsh
source $PATH_TO_SETTINGS/history.zsh
source $PATH_TO_SETTINGS/zsh_hooks.zsh

precmd() {
  if [[ -n "$TMUX" ]]; then
    tmux setenv "$(tmux display -p 'TMUX_PWD_#D')" "$PWD"
  fi
}
