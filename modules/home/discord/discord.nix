{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # discord
    vesktop # Vencord
    #webcord-vencord
  ];
  # xdg.configFile."Vencord/themes/gruvbox.theme.css".source = ./gruvbox.css;
}
