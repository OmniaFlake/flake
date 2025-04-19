{config, pkgs, unstable_stable, lib, ...}:
{
  users.users.omnia = {
    isNormalUser = true;
    description = "omnia";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
  users.defaultUserShell = pkgs.nushell;
  networking.hostName = "nixos"; # Define your hostname.


}

