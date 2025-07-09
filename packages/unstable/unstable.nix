{unstable_pkgs, lib, ...}:
{
  environment.systemPackages = with unstable_pkgs;
  [
    #nix
    nh

    #language
    sqlite
    python3
    zig
    
    #dev_tools
    ghostty
    foot 
    kitty
    lapce
    neovim
    zed-editor
    git

    #general
    brave
    anyrun
    sway
    cava
    tor-browser
    hyprshot
    krita
    firefox
    xfce.thunar
    gnome-disk-utility
    fastfetch
  ];


}
