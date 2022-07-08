export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	zsh-completions
)

source $ZSH/oh-my-zsh.sh


# ASDF
. $HOME/.asdf/asdf.sh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
# ASDF


# pywal
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
# Pywal

# Path para lvim
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
