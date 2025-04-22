{pkgs, lib, ...}:
{
  imports = 
  [
    ./xdg.nix
    ./sddm.nix
    ./xserver.nix
    ./flatpak.nix
  ];
}

