### Set

set fish_greeting
set -g IFS \n\ \t
set -qg __fish_added_user_paths
or set -g __fish_added_user_paths

### Alias

# Exa
alias ls='exa -al --color=always --group-directories-first --icons' # my preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.='exa -a | egrep "^\."'


# pacman e yay
alias pacsyu='sudo pacman -Syu'                  # update only standard pkgs
alias pacsyyu='sudo pacman -Syyu'                # Refresh pkglist & update standard pkgs
alias yaysua='yay -Sua --noconfirm'              # update only AUR pkgs (yay)
alias yaysyu='yay -Syu --noconfirm'              # update standard pkgs and AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'  # remove orphaned packages

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# clear personalizado
alias clr='clear && todo list && jfetch'

### LunarVim
set -gx PATH $HOME/.local/bin:$HOME/.cargo/bin:$PATH

### STARSHIP 
starship init fish | source
fish_add_path /home/wesleyallan/.spicetify

### ASDF
source ~/.asdf/asdf.fish

### JAVA
# source ~/.asdf/plugins/java/set-java-home.fish
. ~/.asdf/plugins/java/set-java-home.fish

### Start

# Todo
todo list

# Jfetch
jfetch
