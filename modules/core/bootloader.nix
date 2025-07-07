{ pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 10;
  boot.kernelPackages = pkgs.linuxPackages_zen;
  boot.kernelModules = [
    "usbcore"
    "ehci_pci"
    "xhci_pci"
    "ohci_pci"
  ];
  boot.kernelParams = [ "usbcore.autosuspend=-1" ];
  boot.supportedFilesystems = [ "ntfs" ];
  boot.kernel.sysctl = {
    "toggle_waybar" = 1;
  };
}
