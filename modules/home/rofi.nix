{ pkgs, ... }:

let
  catppuccinMocha = {
    rosewater = "#f5e0dc";
    flamingo = "#f2cdcd";
    pink = "#f5c2e7";
    mauve = "#cba6f7";
    red = "#f38ba8";
    maroon = "#eba0ac";
    peach = "#fab387";
    yellow = "#f9e2af";
    green = "#a6e3a1";
    teal = "#94e2d5";
    sky = "#89dceb";
    sapphire = "#74c7ec";
    blue = "#89b4fa";
    lavender = "#b4befe";

    text = "#cdd6f4";
    subtext1 = "#bac2de";
    subtext0 = "#a6adc8";
    overlay2 = "#9399b2";
    overlay1 = "#7f849c";
    overlay0 = "#6c7086";
    surface2 = "#585b70";
    surface1 = "#45475a";
    surface0 = "#313244";
    base = "#1e1e2e";
    mantle = "#181825";
    crust = "#11111b";
  };
in
{
  home.packages = [ pkgs.rofi-wayland ];

  xdg.configFile."rofi/theme.rasi".text = ''
    * {
      bg-col:      ${catppuccinMocha.base};
      bg-col-light:${catppuccinMocha.blue};
      border-col:  ${catppuccinMocha.mauve};
      selected-col:${catppuccinMocha.surface1};
      green:       ${catppuccinMocha.green};
      fg-col:      ${catppuccinMocha.lavender};
      fg-col2:     ${catppuccinMocha.pink};
      grey:        ${catppuccinMocha.surface2};
      highlight:   @green;
    }
  '';

  xdg.configFile."rofi/config.rasi".text = ''
    configuration {
      modi: "run,drun,window";
      lines: 5;
      cycle: false;
      font: "FiraCode Nerd Font 16";
      show-icons: true;
      icon-theme: "Papirus-Dark";
      terminal: "kitty";
      drun-display-format: "{icon} {name}";
      location: 0;
      disable-history: true;
      hide-scrollbar: true;
      display-drun: " Apps ";
      display-run: " Run ";
      display-window: " Window ";
      sidebar-mode: true;
      sorting-method: "fzf";
    }

    @theme "theme"

    element-text, element-icon, mode-switcher {
      background-color: inherit;
      text-color:       inherit;
    }

    window {
      height: 530px;
      width: 400px;
      border: 0px;
      border-color: @border-col;
      background-color: @bg-col;
      border-radius: 6px;
    }

    mainbox {
      background-color: @bg-col;
      border-radius: 6px;
    }

    inputbar {
      children: [prompt, entry];
      background-color: @bg-col-light;
      border-radius: 6px;
      padding: 0px;
    }

    prompt {
      background-color: @bg-col;
      padding: 4px;
      text-color: @bg-col-light;
      border-radius: 6px;
      margin: 10px 0px 10px 10px;
    }

    textbox-prompt-colon {
      expand: false;
      str: ":";
    }

    entry {
      padding: 6px;
      margin: 10px 10px 10px 5px;
      text-color: @fg-col;
      background-color: @bg-col;
      border-radius: 6px;
    }

    listview {
      border: 0px;
      padding: 6px 0px 0px;
      margin: 10px 0px 0px 6px;
      columns: 1;
      background-color: @bg-col;
      cycle: true;
    }

    element {
      padding: 8px;
      margin: 0px 10px 4px 4px;
      background-color: @bg-col;
      text-color: @fg-col;
    }

    element-icon {
      size: 28px;
    }

    element selected {
      background-color: @selected-col;
      text-color: @fg-col2;
      border-radius: 6px;
    }

    mode-switcher {
      spacing: 0;
    }

    button {
      padding: 10px;
      background-color: @bg-col-light;
      text-color: @grey;
      vertical-align: 0.5;
      horizontal-align: 0.5;
      border-radius: 6px;
    }

    button selected {
      background-color: @bg-col;
      text-color: @green;
      border-radius: 6px;
    }
  '';
}
