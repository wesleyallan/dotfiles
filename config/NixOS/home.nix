{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "wesleyNixOs";
  home.homeDirectory = "/home/wesleyNixOs";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Programas 
  programs.home-manager.enable = true;
  # programs.rofi.enable = true;
  programs.git = {
    enable = true;
    userEmail = "wesley.allansilva@gmail.com";
    userName = "Wesley Silva";
  };

  # Pacotes
  home.packages = with pkgs; [ btop ];

  # git

  # GTK
  gtk = {
    enable = true;
    theme.name = "Dracula";
    theme.package = pkgs.dracula-theme;
    iconTheme.package = pkgs.papirus-icon-theme;
    iconTheme.name = "Papirus";
  };
}
