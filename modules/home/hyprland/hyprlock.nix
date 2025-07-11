{ pkgs, host, ... }:
let
  text = "rgb(251, 241, 199)";
in
{
  home.packages = [ pkgs.hyprlock ];
  xdg.configFile."hypr/hyprlock.conf".text = ''
    # GENERAL
    general {
      toggle_blur = true
      hide_cursor = false
      no_fade_in = false
      grace = 0
      disable_loading_bar = true
      ignore_empty_input = true
      fractional_scaling = 0
    }

    # Time
    label {
      monitor = 
      text = cmd[update:1000] echo "$(date +"%k:%M")"
      color = rgba(235, 219, 178, .9)
      font_size = 115
      font_family = Fira Mono Bold
      shadow_passes = 3
      position = 0, ${if (host == "laptop") then "-150" else "-150"}
      halign = center
      valign = top
    }

    # Day
    label {
      monitor =
      text = cmd[update:1000] echo "- $(date +"%A, %B %d") -"
      color = rgba(235, 219, 178, .9)
      font_size = 18
      font_family = Fira Mono
      shadow_passes = 3
      position = 0, ${if (host == "laptop") then "-350" else "-350"}
      halign = center
      valign = top
    }


    # USER-BOX
    shape {
      monitor =
      size = 500, 90
      color = rgba(102, 92, 84, .33)
      rounding = 10
      border_size = 0
      border_color = rgba(255, 255, 255, 0)
      rotate = 0

      position = 0, ${if (host == "laptop") then "270" else "270"}
      halign = center
      valign = bottom
    }

    # USER
    label {
      monitor =
      text =   $USER
      color = rgba(235, 219, 178, 1)
      font_size = 25
      font_family = Fira Mono Bold
      position = 0, ${if (host == "laptop") then "301" else "281"}
      halign = center
      valign = bottom
    }

    # INPUT FIELD
    input-field {
      monitor =
      size = 500, 90
      outline_thickness = 1
      rounding = 10
      dots_size = 0.25 # Scale of input-field height, 0.2 - 0.8
      dots_spacing = 0.4 # Scale of dots' absolute size, 0.0 - 1.0
      dots_center = true
      outer_color = rgba(102, 92, 84, .33)
      inner_color = rgba(102, 92, 84, .33)
      color = rgba(235, 219, 178, .9)
      font_color = rgba(235, 219, 178, .9)
      font_size = 14
      font_family = Fira Mono Bold
      fade_on_empty = false
      placeholder_text = <i><span foreground="##fbf1c7">Enter Password</span></i>
      hide_input = false
      position = 0, ${if (host == "laptop") then "200" else "200"}
      halign = center
      valign = bottom
    }
  '';
}
