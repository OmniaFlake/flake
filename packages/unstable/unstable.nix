{unstable_pkgs, lib, ...}:
{
  imports = [
    ./programs/programs.nix
  ];
  environment.systemPackages = with unstable_pkgs;
  [
    anyrun
    ghostty
    nushell
    neovim
    tor-browser
    zed-editor
    hyprshot
    krita
    firefox
    python3
    git
    sway
    foot
    gnome-disk-utility
    fastfetch
    xfce.thunar
    kitty
  ];


}
