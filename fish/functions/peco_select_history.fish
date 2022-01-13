function peco_select_history
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query" --layout=bottom-up
  end

  history | peco $peco_flags --layout=bottom-up | read line
  if test $line
    commandline $line
  else
    commandline ''
  end
end

