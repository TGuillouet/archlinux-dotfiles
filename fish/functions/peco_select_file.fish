function peco_select_file
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query" --layout=bottom-up
  end

  ag -l | peco $peco_flags --layout=bottom-up| read line
  if test $line
    commandline "$EDITOR $line"
    commandline -f execute
  end
end

