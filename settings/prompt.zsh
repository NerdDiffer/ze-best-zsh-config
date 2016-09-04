function git_prompt_info {
  local ref=$(=git symbolic-ref HEAD 2> /dev/null)
  local gitst="$(=git status 2> /dev/null)"

  if [[ -f .git/MERGE_HEAD ]]; then
    if [[ ${gitst} =~ "unmerged" ]]; then
      gitstatus=" %{$fg[red]%}unmerged%{$reset_color%}"
    else
      gitstatus=" %{$fg[green]%}merged%{$reset_color%}"
    fi
  elif [[ ${gitst} =~ "Changes to be committed" ]]; then
    gitstatus=" %{$fg[blue]%}!%{$reset_color%}"
  elif [[ ${gitst} =~ "use \"git add" ]]; then
    gitstatus=" %{$fg[red]%}!%{$reset_color%}"
  elif [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then
    gitstatus=" %{$fg[yellow]%}*%{$reset_color%}"
  else
    gitstatus=''
  fi

  if [[ -n $ref ]]; then
    local branch_name="%{$fg_bold[magenta]%}${ref#refs/heads/}%{$reset_color%}"
    echo " [${branch_name}$gitstatus]"
  fi
}

MY_USERNAME="%{$fg_bold[yellow]%}%n%{$reset_color%}"
AT="%B@"
MY_HOSTNAME="%{$fg_bold[green]%}%m"
MY_CWD="%{$fg_no_bold[white]%}%1~%{$reset_color%}"

PROMPT="${MY_USERNAME}${AT}${MY_HOSTNAME} ${MY_CWD}$(git_prompt_info) %# "
