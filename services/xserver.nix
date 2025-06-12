{pkgs, lib, ...}:
{
  services.xserver =
    {
      enable = true;
      xkb = {
        layout = "us";
      };

    };

}

