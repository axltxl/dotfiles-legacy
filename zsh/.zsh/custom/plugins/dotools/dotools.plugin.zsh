################################
# dotfiles aliases and utilities
################################

# dot-reload
alias dot-reload="echo 'Reloading zsh environment ...'; . ~/.zshenv; . ~/.zshrc"

# dot-env-edit
alias dot-env-edit="rm -f $DOT_ENV_OUT; $EDITOR $DOT_ENV_CFG; dot-reload"

# commodity aliases
alias dee=dot-env-edit
alias dr=dot-reload
