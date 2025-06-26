{ pkgs, host, ... }:
{
  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
    nameservers = [
      "8.8.8.8"
      "8.8.4.4"
      "1.1.1.1"
    ];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
        80
        443
        59010
        59011
        8000
        3000
        11434
      ];
      allowedUDPPorts = [
        59010
        11434
        27015
        59011
        8889
        8890
        11111
        5173
      ];
    };
  };

  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}
