{config, pkgs, lib, ...}:
{
  services.xserver.displayManager.sddm = {
    enable = true;
    settings = {
      Autologin = {
        Session = "Hyprland";
        User = "omnia";
      };
    wayland.enable = true;
    wayland.compositor = "Hyprland"
    theme = "where_is_my_sddm_theme";
    };

  };

}
