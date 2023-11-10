## ███████╗███████╗████████╗
## ██╔════╝██╔════╝╚══██╔══╝
## ███████╗█████╗     ██║
## ╚════██║██╔══╝     ██║
## ███████║███████╗   ██║
## ╚══════╝╚══════╝   ╚═╝

set fish_greeting
set -gx PATH $HOME/.local/bin:$HOME/.cargo/bin:$PATH
set -g IFS \n\ \t\

##  █████╗ ██╗     ██╗ █████╗ ███████╗
## ██╔══██╗██║     ██║██╔══██╗██╔════╝
## ███████║██║     ██║███████║███████╗
## ██╔══██║██║     ██║██╔══██║╚════██║
## ██║  ██║███████╗██║██║  ██║███████║
## ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝

alias ls='exa -al --color=always --group-directories-first --icons' # my preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.='exa -a | egrep "^\."'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## ██████╗ ██╗   ██╗███╗   ██╗
## ██╔══██╗██║   ██║████╗  ██║
## ██████╔╝██║   ██║██╔██╗ ██║
## ██╔══██╗██║   ██║██║╚██╗██║
## ██║  ██║╚██████╔╝██║ ╚████║
## ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝

source $HOME/.asdf/asdf.fish
starship init fish | source
fish_add_path $HOME/.spicetify
