{inputs, pkgs, config, lib, ...}:
{
  systemd.user.services.dotool = {
    enable = true;
    description = "dotool daemon";
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.dotool}/bin/dotoold";
    };
    wantedBy = ["default.target"];
  };
}
