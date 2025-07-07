{
  inputs,
  username,
  host,
  ...
}:
{
  imports = [
    ./audacious.nix # music player
    ./bat.nix # better cat command
    ./browser.nix
    ./btop.nix # resouces monitor
    ./cava.nix # audio visualizer
    ./discord/discord.nix # discord with gruvbox
    ./fastfetch.nix # fetch tool
    ./flow.nix # terminal text editor
    ./fzf.nix # fuzzy finder
    ./gaming.nix # packages related to gaming
    ./git.nix # version control
    ./gnome.nix # gnome apps
    ./gtk.nix # gtk theme
    ./hyprland # window manager
    ./kitty.nix # terminal
    ./lazygit.nix
    ./micro.nix # nano replacement
    ./nemo.nix # file manager
    ./nvim.nix # neovim editor
    ./obsidian.nix
    ./packages.nix # other packages
    ./retroarch.nix
    ./rofi.nix # launcher
    ./scripts/scripts.nix # personal scripts
    ./ssh.nix # ssh config
    ./spicetify.nix # spotify client
    ./starship.nix # shell prompt
    ./swaylock.nix # lock screen
    ./swayosd.nix # brightness / volume wiget
    ./swaync/swaync.nix # notification deamon
    ./waybar # status bar
    ./waypaper.nix # GUI wallpaper picker
    ./xdg-mimes.nix # xdg config
  ];
}
