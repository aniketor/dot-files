export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# Editor
export EDITOR="nvim"
alias vim="nvim"

# eza (modern ls replacement)
alias ls="eza --icons"
alias la="eza -a --icons"
alias ll="eza -l --icons"
alias lt="eza --tree --icons"

# fzf shell integration
source <(/opt/homebrew/bin/fzf --zsh)

# ghq + fzf repo jump (similar to craftzdog's setup)
alias repos='cd $(ghq list -p | fzf)'

# lazygit shortcut
alias lg="lazygit"

# git shortcut
alias g="git"

# Starship prompt
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
