function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\/git:\1/'
}

function pair_info {
  local pairname=$(git config --get user.initials)
  if [[ ${pairname} == 'ch' ]]; then
    pairname=''
  else
    pairname=" ($pairname)"
  fi
  echo "$pairname"
}

function git_prompt_info {
  local ref=$(git symbolic-ref HEAD 2> /dev/null)
  local gitst="$(git status 2> /dev/null)"
  local pairname=$(git config --get user.initials)
  if [[ ${pairname} == 'ch' ]]; then
    pairname=''
  else
    pairname=" ($pairname)"
  fi

  if [[ -f .git/MERGE_HEAD ]]; then
    if [[ ${gitst} =~ "unmerged" ]]; then
      gitstatus=" %{$fg[red]%}unmerged%{$reset_color%} "
    else
      gitstatus=" %{$fg[green]%}merged%{$reset_color%} "
    fi
  elif [[ ${gitst} =~ "Changes to be committed" ]]; then
    gitstatus=" %{$fg[blue]%}☂%{$reset_color%} "
  elif [[ ${gitst} =~ "use \"git add" ]]; then
    gitstatus=" %{$fg[red]%}☁%{$reset_color%} "
  elif [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then
    gitstatus=" %{$fg[yellow]%}☀%{$reset_color%} "
  else
    gitstatus=' '
  fi

  if [[ -n $ref ]]; then
    echo "%{$fg_bold[green]%}/${ref#refs/heads/}%{$reset_color%}$gitstatus$pairname"
  fi
}

# PROMPT='%~%<< $(git_prompt_info)${PR_BOLD_WHITE}>%{${reset_color}%} '
PROMPT="%~%<< ${vcs_info_msg_0_}> "