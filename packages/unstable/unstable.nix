{unstable_pkgs, lib, ...}:
{
  imports = [
    ./programs/programs.nix
  ];
  environment.systemPackages = with unstable_pkgs;
  [
    #nix
    nh

    #language
    sqlite
    python3
    
    #dev_tools
    ghostty
    foot 
    kitty
    lapce
    neovim
    zed-editor
    git

    #general
    anyrun
    sway
    cava
    tor-browser
    hyprshot
    krita
    firefox
    gnome-disk-utility
    xfce.thunar
    fastfetch
  ];


}
