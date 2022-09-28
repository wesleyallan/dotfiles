{ pkgs, ... }:

{
  packages = [
    # Comandos
    pkgs.fd
    pkgs.xclip
    pkgs.pfetch
    pkgs.ripgrep
    pkgs.direnv
    pkgs.tree
    pkgs.jq
    pkgs.yt-dlp

    # Programação
    pkgs.gcc
    pkgs.glibc
    pkgs.gnumake
    pkgs.coreutils
    pkgs.nodejs
    pkgs.rustc
    pkgs.cargo
    # pkgs.python310
    # pkgs.python310Packages.pip
    pkgs.cmake
    pkgs.nix-prefetch-git
    # pkgs.mysql-workbench

    # Ambiente
    pkgs.imagemagick
    pkgs.polybar
    pkgs.mpv
    pkgs.obs-studio
    pkgs.shotcut
    pkgs.gimp
    pkgs.mupdf
    pkgs.obsidian
    pkgs.vscodium
    pkgs.xfce.thunar
    pkgs.xfce.thunar-media-tags-plugin
    pkgs.xfce.thunar-archive-plugin
    pkgs.xfce.thunar-volman
    pkgs.chromium
    pkgs.brave
    pkgs.vivaldi
    pkgs.vivaldi-widevine
    pkgs.vivaldi-ffmpeg-codecs
    pkgs.notion-app-enhanced
    pkgs.spotifyd
    pkgs.spotify-tui

    # Pacotes Interessante
    # pkgs.sbt
    # pkgs.bat
    # pkgs.exa
    # pkgs.zathura
    # pkgs.gopass
    # pkgs.xdotool
    # pkgs.xautolock
  ];
}
