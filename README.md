# 🗃️ Dotfiles

Segue as instruções para instalação e configuração do meu ambiente de estudo e desenvolvimento, seja uma _distro_ baseada em Debian/Ubuntu, RedHat ou Arch Linux

## Distro Arch

Arch Linux minha distro preferida atualmente principalmente com o **bspwm ou i3wn como gerenciador de janelas.**

> Altamente recomendado o uso do scrip que existe dentro da própria _ISO_, ou baixar uma isso do projeto [ARCH Gui](https://archlinuxgui.in/), evitando a necessidade da instalação de drivers, ambiente gráfico e gerenciador de usuários na mão, muito útil.

Pegamos o sistema praticamente cru apos a instalação, então muitas ferramenta básicas ficaram de fora da lista, com a instalação acontecendo quando houver a necessidade do uso, por exemplo instalar o `man`

### Instalar

- [Pomotroid](https://github.com/Splode/pomotroid)
- [Pomatez](https://github.com/roldanjr/pomatez)
- [LunarVim](https://github.com/LunarVim/LunarVim)
- [Neofetch](https://github.com/dylanaraps/neofetch)
  - [Temas para Neofetch](https://github.com/Chick2D/neofetch-themes)
- [Rofi](https://github.com/davatorium/rofi)
- [Polybar](https://github.com/polybar/polybar)
  - [Temas para Polybar](https://github.com/adi1090x/polybar-themes)
- [Picom](https://github.com/yshui/picom)
- [Pywal](https://github.com/dylanaraps/pywal)
  - Configurar Rofi
  - Configurar `.bashrc`/`.zshrc` para manter a coloração
  - Plugin VScode
  - Plugin Firefox, pywal-firefox - AUR
  - wmctrl - Nome das janelas.
- [Playerctl](https://github.com/altdesktop/playerctl)
- [Peaclock](https://github.com/octobanana/peaclock)
- [Cava](https://github.com/karlstav/cava)
- Ranger-sixel
- [Spotify-Tui](https://github.com/Rigellute/spotify-tui)
- [SpotifyD](https://github.com/Spotifyd/spotifyd)
- [youtube-dl]() (yt-dlp, e muito mais rápido)
  - Substituir link simbólico do youtube-dl para yt-dlp
- [Mps-Youtube](https://github.com/mps-youtube/mps-youtube)
- [Exa](https://github.com/ogham/exa)
- [Bat](https://github.com/sharkdp/bat)
- [hdparm (Analisar Discos)](https://github.com/Distrotech/hdparm)
- Firefox Tema, Tema GTK-3, ícones e Fontes
  - Arquivos armazenados no Drive

### Plugins shell fish

Utilizando o gerenciado de extensões _fisher_

- [AutoPair](https://github.com/jorgebucaran/autopair.fish)
- [fzf.fish](https://github.com/PatrickF1/fzf.fish)
- [done](https://github.com/franciscolourenco/done)

### Arquivos .config base

- kitty `/usr/share/doc/kitty/kitty.conf`
- rofi
  - config `/usr/share/doc/rofi/examples`
  - themes `/usr/share/doc/rodi/themes`
- makepkg `/etc/makepkg.conf`
- starship `/example/non/default/path/starship.toml`
- gtk `/usr/share/gtk-3.0/settings.ini`

### Pacotes Default

Utilizado pelo asdf

- npm `.default-npm-packages`
- rust `.default-cargo-packages`
- E assim por diante...

### Instalando Tema Firefox

How to use a userChrome.css theme

1. Type about:config into your URL bar. Click on the I accept the risk button if you're shown a warning.
2. Seach for toolkit.legacyUserProfileCustomizations.stylesheets, layers.acceleration.force-enabled, gfx.webrender.all and svg.context-properties.content.enabled and set them to true.
3. Go to your profile folder:
   - Linux: $HOME/.mozilla/firefox/######.default-release/
   - MacOS: Users/[USERNAME]/Library/Application Support/Firefox/Profiles/######.default-release
   - Windows: C:\Users\[USERNAME]\AppData\Roaming\Mozilla\Firefox\Profiles\######.default-release
4. If it doesn't exist already create a folder called chrome.
5. Copy your desired userChrome.css into that folder.
6. Optional Customise everything to your liking.

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

A distro que utilizo baseado no RedHat é o **fedora**, onde usuários criaram uma ferramenta muito interessante que auxilia muito o pós formatação para configurar o ambiente, essa ferramenta se chama [Fedy][fedy] através dessa ferramenta conseguimos des de instalar pacotes de Codecs ate programas que não encontramos no Repositório original da distro como o _Google Chrome_

### Instalação Codecs na mão (Opcional)

Primeiro sera necessário adicionar os repositórios RPMFusion.

> Como pode ser observado no GitHub no [_Fedy_][fedy] também é necessário a instalação desses repositórios pois o _Fedy_ vai basicamente baixar desses repositórios os codecs que ele disponibiliza, já outros softwares vem de outro repositório que nas instruções de instalação e necessário adicionar, ou seja, o _fedy_ nada mais é que um facilitador, um front-end para instalações importantes normalmente feitas por formatação.

```sh
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

Depois de adicionar os repositórios bastar instalar os Codecs desejados, facilmente encontrado na internet uma lista dos mais importantes.

# Oh My Zsh (Global)

Utilizo _ZSH_ como meu shell padrão, gosto das possibilidades de customização que tenho acesso com o [_oh-my-zsh_][oh-my-zsh], segua as instruções de instalação no [Github do projeto][oh-my-zsh].

```sh
sudo apt install zsh # Ubuntu
sudo dnf install zsh # Fedora
sudo pacman -S zsh #Arch Linux
```

## Extensões Firefox/Chromium

- Dark Reader
- Clear Browsing Data
- ColorZilla
- Material Icons for GitHub
- Enhancer for YouTube
- BrowserStack
- DownThemAll (Firefox)
- CSS Peeper (Chromium)
- Designer Tools (Chromium)
- ModHeader (Chromium)
- StackOverflow Power User (Chromium)

## Plugins do vim

A partir do vim 8, o vim possui um gerenciador de plugins interno, eu utilizo ele, basta criar o diretório `*&DiretorioVim/pack/<NomeQualquer>/start` (Plugins dentro de start .inicializarão junto com o vim automaticamente), Entre no diretório recém criado, e basta clonar os repositórios dos plugins no _Github_.

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

Os plugins do _oh-my-zsh_ sao instalados no diretório `.oh-my-zsh/custom/plugins`, também sera necessário inserir o nome do plugin no arquivo `.zshrc` que se encontra na pasta _home_ do usuário.

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

Copiar código disponível no [GITHUB](https://github.com/fberbert/vimrc 'Repositório Codiano Hakeado')

### Instalando Plugins

Dentro do VIM usar comando para instalar os plugins

```vim
:CocInstall coc-tsserver coc-sh coc-html coc-css coc-phpls
```

### Criando coc-settings.json

Dentro do vim usar comando `:CocConfig`  
Criara um arquivo _.json_ onde podemos setar algumas configuração para os plugins do Coc, qualquer duvida [GitHub do Projeto](https://github.com/neoclide/coc.nvim 'Repositório Coc Vim')

### Fonte

Fonte utilizada para instalação e configuração do Coc, Canal [Cotidiano Hackeado](https://www.youtube.com/watch?v=hdZMqMeruSQ&ab_channel=CotidianoHackeado 'Youtube Cotidiano Hackeado')

[fedy]: https://github.com/rpmfusion-infra/fedy 'Repositório do Fedy'
[oh-my-zsh]: https://github.com/ohmyzsh/ohmyzsh 'Repositório Oh-My-Zsh'
