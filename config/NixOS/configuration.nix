{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Boot
  boot.loader.grub = {
    enable = true;
    version = 2;
    device = "/dev/sda";
    useOSProber = true;
  };

  # Network
  networking.hostName = "NixOS";
  networking.networkmanager.enable = true;

  # TimeZone
  time.timeZone = "America/Sao_Paulo";

  # Locale
  i18n.defaultLocale = "pt_BR.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  #   useXkbConfig = true; # use xkbOptions in tty.
  };

  # Interface
  services.xserver = {
    enable = true;
    layout = "us";
    # xkbOptions = "eurosign:e";
    displayManager.lightdm = {
      enable = true;
      background = /home/wesleyNixOs/Imagens/Wallpaper/Dracula/nixos.png;
      greeters.gtk.enable = true;
      greeters.gtk.theme.package = pkgs.dracula-theme;
      greeters.gtk.theme.name = "Dracula";
    };
    displayManager.defaultSession = "none+bspwm";
    windowManager.bspwm.enable = true;
  };

  # Sound
  sound.enable = true;
  # hardware.pulseaudio.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };

  # User
  users.defaultUserShell = pkgs.fish;
  users.users.wesleyNixOs = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" ];
  #  packages = with pkgs; [
  #    firefox
  #   ];
  };

  # Pacotes
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    kitty dmenu firefox-bin brave vivaldi starship polybar feh xfce.thunar vscodium
    vim neovim bat exa wget curl git sxhkd neofetch lm_sensors pavucontrol playerctl unzip unrar ranger xorg.xmodmap rclone pamixer killall xorg.xhost
    xfce.thunar-volman xfce.thunar-archive-plugin xfce.thunar-media-tags-plugin
  ];

  # GVFS
  services.gvfs.enable = true;

  # Docker
  virtualisation.docker.enable = true;

  # Flatpack
  # services.flatpack.enable = true;

  # Fonts
  fonts = {
    enableDefaultFonts = true;
    fonts = with pkgs; [
      noto-fonts
      noto-fonts-emoji
    ];
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.dconf.enable = true;
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  
  system.stateVersion = "22.05";
}
