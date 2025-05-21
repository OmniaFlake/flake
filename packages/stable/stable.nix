{pkgs, inputs,  lib, ...}: 
{
  imports = [
    ./programs/programs.nix
    ./services/services.nix 
    ./custom.nix
  ];
  environment.systemPackages = with pkgs; [
    # Nix


    # Languages
    gcc
    rustc
    cargo
    zig
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
    
    # General
    chafa
    dotool
    tdf
    ascii-image-converter
    wofi
    p7zip
    yazi
    starship
    stow
    tree
    speechd
    cmatrix
    ags
    discord
    waybar
    hyprland
    steam
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
