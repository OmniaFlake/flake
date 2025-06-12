{config, unstable_pkgs, lib, ...}:
{
  imports = 
    [
      ./disk.nix
      ./fonts.nix
      ./git.nix
      ./graphics.nix
      ./hyprland.nix
      ./nh.nix
      ./shell.nix
      ./ssh.nix
      ./starship.nix
      ./steam.nix
      ./sway.nix
      ./xwayland.nix
    ];
}
