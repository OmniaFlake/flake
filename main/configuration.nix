# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{config, pkgs, old_pkgs, unstable_pkgs, lib, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];
  services.xserver.enable = true;
  programs.steam.enable = true;
  programs.hyprland  = {
    enable  = true;
    xwayland.enable = true;
  };
  programs.sway = {
    enable = true;
    xwayland.enable = true;
  };
  hardware.graphics = {
    enable = true;
    
    # Intel-specific packages
    extraPackages = with pkgs; [
      intel-media-driver  # VAAPI driver
      intel-compute-runtime  # OpenCL runtime
      vaapiIntel  # VAAPI support
      vaapiVdpau
      libvdpau-va-gl
    ];
  };
  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
  nixpkgs.config.allowUnfree = true;
  # Bootloader.
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.enable = true;
  services.flatpak.enable = true;
  nix.settings.experimental-features = ["nix-command" "flakes"];
  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  programs.fish.enable = true;
  programs.ssh.askPassword = "";
 # Enable networking
  networking.networkmanager.enable = true;
  # Set your time zone.
  time.timeZone = "Asia/Kathmandu";
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.omnia = {
    isNormalUser = true;
    description = "omnia";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
  # Allow unfree packages
  users.defaultUserShell = pkgs.fish;
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
     pkgs.vim
     pkgs.gcc
     unstable_pkgs.git
     pkgs.helix
     pkgs.wofi
     pkgs.tmux
     unstable_pkgs.kitty
     unstable_pkgs.xfce.thunar
     pkgs.yazi
     pkgs.speechd
     pkgs.cmatrix
     unstable_pkgs.sway
     unstable_pkgs.foot
     unstable_pkgs.gnome-disk-utility
     unstable_pkgs.fastfetch
     pkgs.i3
     pkgs.discord
     pkgs.zellij
     pkgs.waybar
     pkgs.hyprland
     pkgs.steam
     pkgs.vlc
     pkgs.grim
     pkgs.librewolf
     pkgs.bitwarden
     pkgs.oath-toolkit
     unstable_pkgs.python3
     pkgs.alsa-utils
     pkgs.stow
     pkgs.brightnessctl
     unstable_pkgs.firefox
     unstable_pkgs.krita
     pkgs.home-manager
     pkgs.hyprpaper
     pkgs.fish
     unstable_pkgs.hyprshot
     pkgs.rustc
     unstable_pkgs.zed-editor
     pkgs.cargo
     pkgs.river
     unstable_pkgs.tor-browser
     pkgs.fzf
     pkgs.p7zip
     pkgs.wl-clipboard
     pkgs.btop
     unstable_pkgs.anyrun
     unstable_pkgs.ghostty
     unstable_pkgs.neovim
     pkgs.zoxide
     pkgs.wireplumber
     pkgs.pipewire
  ];

  fonts.packages = with pkgs; [
  noto-fonts
  noto-fonts-cjk-sans
  noto-fonts-emoji
  liberation_ttf
  fira-code
  fira-code-symbols
  mplus-outline-fonts.githubRelease
  dina-font
  proggyfonts
];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

}
