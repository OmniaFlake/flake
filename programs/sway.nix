{pkgs, lib, ...}:

{
   programs.sway = {
    enable = true;
    xwayland.enable = true;
  };
}
