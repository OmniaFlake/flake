{pkgs, lib, ...}:
{
  imports = 
  [
    ./xdg.nix
    ./xserver.nix
    ./flatpak.nix
  ];
}

