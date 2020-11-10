# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

zle_highlight=('paste:none')

# Which plugins would you like to load?
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

export ZSH="/home/$USER/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# export
export EDITOR='nvim'
export PATH=$HOME/.local/bin:$PATH

