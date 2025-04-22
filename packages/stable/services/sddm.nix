{config, pkgs, lib, ...}:
{
  services.displayManager.sddm = {
    enable = true;
    settings = {
      Autologin = {
        Session = "Hyprland";
        User = "omnia";
      };
    wayland.enable = true;
    wayland.compositor = "Hyprland"
    };

  };

}
