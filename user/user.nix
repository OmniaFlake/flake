{config, pkgs, unstable_stable, lib, ...}:
{
  users.users.omnia = {
    isNormalUser = true;
    description = "omnia";
    extraGroups = [ "networkmanager" "ydotool" "wheel"];
    packages = with pkgs; [];
  };
  users.defaultUserShell = pkgs.fish;
  networking.hostName = "flake"; # Define your hostname.


}

