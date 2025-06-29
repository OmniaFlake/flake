{pkgs, inputs,  lib, ...}: 
{

  imports = [ ./custom.nix ];
  environment.systemPackages = with pkgs; [
    # Nix


    # Languages
    gcc
    rustc
    cargo
    go
    nodejs_20

    
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
    docker
    podman
    podman-tui
    podman-desktop
    
    # General
    chafa
    browsh
    xorg.xhost
    mangojuice
    ydotool
    gh
    unrar
    tdf
    genymotion
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
    steam
    mangohud
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
