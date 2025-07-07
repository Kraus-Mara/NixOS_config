{ pkgs, ... }:
{
  services = {
    hardware.bolt.enable = true;
    gvfs.enable = true;
    gnome = {
      tinysparql.enable = true;
      gnome-keyring.enable = true;
    };
    dbus.enable = true;
    fstrim.enable = true;

    minecraft-server = {
      enable = true;
      eula = true;
      declarative = true;
      serverProperties = {
        gamemode = "survival";
        difficulty = "easy";
        motd = "NixOS Kuras";

      };
    };
    # needed for GNOME services outside of GNOME Desktop
    dbus.packages = with pkgs; [
      gcr
      gnome-settings-daemon
    ];
  };
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';
}
