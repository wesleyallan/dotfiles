{ config, pkgs, ... }:

let
  userInfo = import ./user.nix { };
  myPackages = (import ./packages.nix { inherit pkgs; }).packages;
  browser = [
    "firefox"
  ];
  associations = {
    "application/pdf" = [ "mupdf" ];
    "text/html" = browser;
    "x-scheme-handler/http" = browser;
    "x-scheme-handler/https" = browser;
    "x-scheme-handler/ftp" = browser;
    "x-scheme-handler/chrome" = browser;
    "x-scheme-handler/about" = browser;
    "x-scheme-handler/unknown" = browser;
    "application/x-extension-htm" = browser;
    "application/x-extension-html" = browser;
    "application/x-extension-shtml" = browser;
    "application/xhtml+xml" = browser;
    "application/x-extension-xhtml" = browser;
    "application/x-extension-xht" = browser;
    "application/x-ms-dos-executable" = [ "wine.desktop" ];
    "application/epub+zip" = [ "calibre-ebook-viewer.desktop" ];
  };
in
{
  # Home Manager
  programs.home-manager.enable = true;

  # Usuário
  home.username = userInfo.username;
  home.homeDirectory = userInfo.homeDirectory;

  # Versão
  home.stateVersion = "22.05";

  # Pacotes
  home.packages = myPackages;

  # Git
  programs.git = {
    enable = true;
    userEmail = userInfo.gitEmail;
    userName = userInfo.gitUsername;
  };

  # GTK
  gtk = {
    enable = true;
    theme.name = "Dracula";
    theme.package = pkgs.dracula-theme;
    iconTheme.package = pkgs.papirus-icon-theme;
    iconTheme.name = "Papirus";
  };
}
