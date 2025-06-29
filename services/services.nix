{pkgs, lib, ...}:
{
  imports = 
  [
    ./xdg.nix
    ./nvidia.nix
    ./greeter.nix
    ./openssh.nix
    ./xserver.nix
    ./flatpak.nix
  ];
}

