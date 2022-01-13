if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Initialize Starship
starship init fish | source

# Overriding fish greeting
function fish_greeting
#   colorscript -e ghosts
end

# Peco setup
function fish_user_key_bindings
  bind \cr peco_select_history  # Ctrl-r
  bind \cf peco_select_file     # Ctrl-f
end

# Git aliases
alias g="git"
alias lg="lazygit"

# ls aliases
alias ll="exa -l -g -a --icons"
alias llt="exa --tree --level=2 -a --icons -I \"node_modules|.git|.idea\""

