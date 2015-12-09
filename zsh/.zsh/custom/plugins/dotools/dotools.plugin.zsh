################################
# dotfiles aliases and utilities
################################

# dot-reload
alias dot-reload="echo 'Reloading zsh environment ...'; . ~/.zshenv; . ~/.zshrc"

# dot-env-edit
alias dot-env-edit="nvim $DOT_ENV_CFG; dot-reload"

# commodity aliases
alias dee=dot-env-edit
alias dr=dot-reload
