# 🗃️ Dotfiles

Segue as instruções para instalação e configuração do meu ambiente de estudo e desenvolvimento, seja uma *distro* baseada em Debian/Ubuntu, RedHat ou Arch Linux

## Distro Arch

Arch Linux minha distro preferida atualmente principalmente com o **bspwm ou i3wn como gerenciador de janelas.**
> Altamente recomendado o uso do scrip que existe dentro da própria *ISO*, ou baixar uma isso do projeto [ARCH Gui](https://archlinuxgui.in/), evitando a necessidade da instalação de drivers, ambiente gráfico e gerenciador de usuários na mão, muito util.
>

Pegamos o sistema praticamente cru apos a instalação, então muitas ferramenta básicas ficaram de fora da lista, com a instalação acontecendo quando houver a necessidade do uso, por exemplo instalar o `man`

### Instalar
- [LunarVim](https://github.com/LunarVim/LunarVim) 
- [Neofetch](https://github.com/dylanaraps/neofetch) 
- [Rofi](https://github.com/davatorium/rofi)
- [Polybar](https://github.com/polybar/polybar)
- - [Temas para Polybar](https://github.com/adi1090x/polybar-themes)
- [Picom](https://github.com/yshui/picom)
- [Pywal](https://github.com/dylanaraps/pywal)
- - Configurar Rofi
- - Configurar .bashrc/.zshrc para manter a coloração
- - Plugin VScode (Caso for utilizar VScode)
- - Plugin Firefox, pywal-firefox - AUR
- wmctrl - Nome das janelas.
- [Playerctl](https://github.com/altdesktop/playerctl)
- [Peaclock](https://github.com/octobanana/peaclock)
- [Cava](https://github.com/karlstav/cava)
- Ranger-sixel
- [Spotify-Tui](https://github.com/Rigellute/spotify-tui)
- [SpotifyD](https://github.com/Spotifyd/spotifyd)
- [Mps-Youtube](https://github.com/mps-youtube/mps-youtube)
- [Exa](https://github.com/ogham/exa)
- [Bat](https://github.com/sharkdp/bat)

## Distros Debian/Ubuntu

Inicio com a instalação de alguns pacotes que julgo interessante para o meu ambiente de desenvolvimento.
```sh
sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git curl
```
### Pacote de Codec

Pacote de Codec proprietários, utilizo para melhor qualidade.
```sh
sudo apt install ubuntu-restricted-extras
```

## Distros RedHat (Fedora)

A distro que utilizo baseado no RedHat é o **fedora**, onde usuários criaram uma ferramenta muito interessante que auxilia muito o pós formatação para configurar o ambiente, essa ferramenta se chama [Fedy][fedy] através dessa ferramenta conseguimos des de instalar pacotes de Codecs ate programas que não encontramos no Repositório original da distro como o *Google Chrome*

### Instalação Codecs na mão (Opcional)

Primeiro sera necessário adicionar os repositórios RPMFusion.

>Como pode ser observado no GitHub no [*Fedy*][fedy] também é necessário a instalação desses repositórios pois o *Fedy* vai basicamente baixar desses repositórios os codecs que ele disponibiliza, já outros softwares vem de outro repositório que nas instruções de instalação e necessário adicionar, ou seja, o *fedy* nada mais é que um facilitador, um front-end para instalações importantes normalmente feitas por formatação.
>

```sh
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```
Depois de adicionar os repositórios bastar instalar os Codecs desejados, facilmente encontrado na internet uma lista dos mais importantes.

# Oh My Zsh (Global)
Utilizo *ZSH* como meu shell padrão, gosto das possibilidades de customização que tenho acesso com o [*oh-my-zsh*][oh-my-zsh], segua as instruções de instalação no [Github do projeto][oh-my-zsh]. 

```sh
sudo apt install zsh # Ubuntu
sudo dnf install zsh # Fedora
sudo pacman -S zsh #Arch Linux
```

## Sincronizando Dotfiles
Clonando meu *dotfiles* é criando os *links* simbólicos para sincronização, sincronizar pasta config apenas no Arch Linux.

```sh
git clone https://github.com/Gitashay/dotfiles.git $HOME/.dotfiles
ln -s -f $HOME/.dotfiles/.zshrc $HOME/
ln -s -f $HOME/.dotfiles/.gitconfig $HOME/
ln -s -f $HOME/.dotfiles/.vimrc $HOME/
ln -s $HOME/.dotfiles/config $HOME/.config # Apenas para Arch Linux
```

## Plugins do vim

A partir do vim 8, o vim possui um gerenciador de plugins interno, eu utilizo ele, basta criar o diretório `*&DiretorioVim/pack/<NomeQualquer>/start` (Plugins dentro de start .inicializarão junto com o vim automaticamente), Entre no diretório recém criado, e basta clonar os repositórios dos plugins no *Github*.
 - [Ale](https://github.com/dense-analysis/ale)
 - [Auto-Pairs](https://github.com/jiangmiao/auto-pairs)
 - [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
 - [DevIcons](https://github.com/ryanoasis/vim-devicons)
 - [Polyglot](https://github.com/sheerun/vim-polyglot)
 - [Startify](https://github.com/mhinz/vim-startify)
 - [Surround](https://github.com/tpope/vim-surround)
 - [Emmet](https://github.com/mattn/emmet-vim)
 - [IndentLine](https://github.com/Yggdroot/indentLine)
 - [NerdCommenter](https://github.com/preservim/nerdcommenter)
 - [NerdTree](https://github.com/preservim/nerdtree)

## Plugins do Oh-My-Zsh

Os plugins do *oh-my-zsh* sao instalados no diretório `.oh-my-zsh/custom/plugins`,  também sera necessário inserir o nome do plugin no arquivo `.zshrc` que se encontra na pasta *home* do usuário.
- [zsh-autosuggestion](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)  

Dentro do `~/.zshrc`
```
plugin=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
)
```

## Instalando Coc-Vim

Semelhante a ferramente encontrada no VScode onde ajuda a completar o código e explica brevemente a função daquele código.

### Clonando Repositório no GitHub

```sh
mkdir -p $Diretorio_Vim/pack/coc/start  # Criando Diretório
cd $Diretorio_Vim/pack/coc/start    # Acessando Diretório
git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1   # Clonando Repositório
```
### Criando arquivo `.coc.vimrc`

Ponto "." antes para manter o arquivo oculto.

```sh
cd $HOME
vim .coc.nvim
```
Copiar código disponível no [GITHUB](https://github.com/fberbert/vimrc "Repositório Codiano Hakeado")

### Instalando Plugins

Dentro do VIM usar comando para instalar os plugins

```vim
:CocInstall coc-tsserver coc-sh coc-html coc-css coc-phpls
```

### Criando coc-settings.json

Dentro do vim usar comando `:CocConfig`  
Criara um arquivo *.json* onde podemos setar algumas configuração para os plugins do Coc, qualquer duvida [GitHub do Projeto](https://github.com/neoclide/coc.nvim "Repositório Coc Vim")

### Fonte

Fonte utilizada para instalação e configuração do Coc, Canal [Cotidiano Hackeado](https://www.youtube.com/watch?v=hdZMqMeruSQ&ab_channel=CotidianoHackeado "Youtube Cotidiano Hackeado"
)

[fedy]: <https://github.com/rpmfusion-infra/fedy> "Repositório do Fedy"
[oh-my-zsh]: <https://github.com/ohmyzsh/ohmyzsh> "Repositório Oh-My-Zsh"
