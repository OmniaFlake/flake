{config, unstable_pkgs, lib, ...}:
{
  imports = 
  [
    ./git.nix
    ./disk.nix
    ./nh.nix
    ./sway.nix
  ];
}
