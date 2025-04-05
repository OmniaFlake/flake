# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{config, pkgs, inputs, lib, ... }:
let
    unstable = inputs.unstablenixpkgs.legacyPackages.${pkgs.system};
    old= inputs.veryoldnixpkgs.legacyPackages.${pkgs.system};
in
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];
  services.xserver.enable = true;
  programs.steam.enable = true;
  hardware.opengl = {
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
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
     vim
     unstable.git
     wofi
     tmux
     unstable.kitty
     unstable.xfce.thunar
     yazi
     speechd
     cmatrix
     unstable.sway
     unstable.foot
     gnome-disk-utility
     fastfetch
     discord
     zellij
     waybar
     vlc
     grim
     steam
     librewolf
     bitwarden
     oath-toolkit
     unstable.python3
     alsa-utils
     stow
     brightnessctl
     unstable.firefox
     unstable.krita
     home-manager
     hyprpaper
     fish
     unstable.hyprshot
     rustc
     unstable.zed-editor
     cargo
     river
     unstable.tor-browser
     fzf
     p7zip
     wl-clipboard
     old.hyprland
     btop
     unstable.anyrun
     unstable.ghostty
     unstable.neovim
     zoxide
     wireplumber
     pipewire
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
