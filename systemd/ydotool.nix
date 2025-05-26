{pkgs, lib, config, ...}:
{
  systemd.user.services.ydotool = {
    enable = true;
    description = "ydotool daemon";
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.ydotool}/bin/ydotoold --socket-path /run/user/1000/.ydotool_socket";
   };
  wantedBy = ["default.target"];
  };
}
