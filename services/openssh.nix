{pkgs, config, lib, ...}:
{
  services.openssh = {
    enable = true;
    settings.X11Forwarding = true;
  };
}
