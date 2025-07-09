{pkgs, inputs,  lib, ...}: 
{

  imports = [ ./custom.nix ];
  environment.systemPackages = with pkgs; [
    # Nix

    # Languages
    gcc
    cargo
    go
    
    # Dev tools
    vim
    helix
    tmux
    zellij
    rust-analyzer-unwrapped
    ripgrep
    fzf
    btop
    fish
    zsh
    podman
    podman-tui
    podman-desktop
    
    # General
    chafa
    qbittorrent
    ydotool
    unrar
    ascii-image-converter
    pavucontrol
    pamixer
    wofi
    p7zip
    yazi
    starship
    stow
    tree
    speechd
    cmatrix
    discord
    waybar
    hyprland
    vlc
    grim
    librewolf
    bitwarden
    oath-toolkit
    alsa-utils
    brightnessctl
    hyprpaper
    wl-clipboard
    zoxide
    greetd.greetd
    wireplumber
    pipewire
  ];
}
