{ ... }:
let
  custom = {
    font = "Fira Mono Nerd Font";
    font_size = "14px";
    font_weight = "bold";
    text_color = "#C3E88D";
    background_0 = "#42314b";
    background_1 = "#222436";
    border_color = "#82AAFF";
    red = "#CC241D";
    green = "#7f6291";
    yellow = "#a6789c";
    blue = "#8c6995";
    magenta = "#997199";
    cyan = "#936d97";
    orange = "#b47d95";
    orange_bright = "#82AAFF";
    opacity = "0.95";
    indicator_height = "2px";
  };
in
{
  programs.waybar.style = with custom; ''
    * {
      border: none;
      border-radius: 0px;
      padding: 0px;
      margin: 0px;
      font-family: ${font};
      font-weight: ${font_weight};
      opacity: ${opacity};
      font-size: ${font_size};
    }

    window#waybar {
      background: #222436;
    
    }

    tooltip {
      background: ${background_1};
      border: 1px solid ${border_color};
    }
    tooltip label {
      margin: 5px;
      color: ${text_color};
    }

    #workspaces {
      padding-left: 6px;
    }
    #workspaces button {
      color: ${text_color};
      padding-left:  5px;
      padding-right: 5px;
      margin-right: 10px;
    }
    #workspaces button.empty {
      color: ${orange_bright};
    }
    #workspaces button.active {
      color: ${red};
    }

    #clock {
      padding-left:  5px;
      padding-right: 5px;
      margin-left: 10px;
      margin-right: 10px;
      color: ${text_color};
    }

    #tray {
      margin-left: 10px;
    }

    #tray menu {
      background: ${background_1};
      border: 1px solid ${border_color};
      opacity: 1;
      padding-left: 5px;
      padding-right: 5px;
      margin-right: 10px;
      margin-left: 10px;
    }
    #tray menuitem {
      padding: 1px;
    }

    #pulseaudio, #network, #cpu, #memory, #disk, #battery, #language, #custom-notification {
      padding-left: 5px;
      padding-right: 5px;
      margin-right: 10px;
      margin-left: 10px;
      color: ${text_color};
    }

    #pulseaudio, #language {
      margin-left: 10px;
    }

    #custom-notification {
      margin-left: 10px;
      padding-right: 2px;
      margin-right: 5px;
    }

    #custom-launcher {
      font-size: 20px;
      color: ${text_color};
      font-weight: bold;
      margin-left: 5px;
      padding-right: 10px;
    }
  '';
}
