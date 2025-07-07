# 🏔️ NixOS Configuration

<div align="center">

![NixOS](https://img.shields.io/badge/NixOS-5277C3?style=for-the-badge&logo=nixos&logoColor=white)
![Hyprland](https://img.shields.io/badge/Hyprland-00D9FF?style=for-the-badge&logo=wayland&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

**A modern, beautiful NixOS configuration with Hyprland**

*Inspired by Frost-Phoenix's configuration*

[Installation](#-installation) •
[Features](#-features) •
[Keybinds](#-keybinds) •
[Credits](#-credits)

</div>

---

## ✨ Features

- 🎨 **Beautiful Hyprland setup** with custom themes and animations
- 🖼️ **Dynamic wallpaper system** with built-in wallpaper picker
- 🎯 **Optimized for both desktop and laptop** configurations
- 🏠 **Home Manager integration** for declarative user environment
- 🎨 **Aseprite support** with custom themes (optional)
- 📦 **Flake-based configuration** for reproducible builds
- 🔒 **Hyprlock** for secure screen locking

## ⌨️ Keybinds

| Key Combination | Action |
|---|---|
| `$mainMod + F1` | View all keybinds |
| `$mainMod + W` | Open wallpaper picker |

> **Note:** By default, `$mainMod` is the **SUPER** key

## 🚀 Installation

> [!CAUTION]
> Applying custom configurations can have unexpected consequences. Please review the configuration before installation and make necessary modifications for your needs.

### Prerequisites

- Fresh NixOS installation (tested with Gnome graphical installer)
- Choose "No desktop" option during installation

### Step 1: Clone the Repository

```bash
nix-shell -p git
git clone https://github.com/Kraus-Mara/NixOS_config.git
cd nixos-config
```

### Step 2: Run Installation Script

> [!TIP]
> Read the [Install Script Walkthrough](#install-script-walkthrough) section before execution to understand what the script does.

```bash
./install.sh
```

> [!WARNING]
> If your system has limited RAM, modify the install script line:
> ```bash
> sudo nixos-rebuild switch --flake .#${HOST}
> ```
> to:
> ```bash
> sudo nixos-rebuild switch --cores <number_of_cores> --flake .#${HOST}
> ```

### Step 3: Reboot

After rebooting, you'll be greeted by hyprlock. Enter your password to access your new desktop environment.

### Step 4: Manual Configuration

Even with Home Manager, some manual configuration is required:

#### 🎨 Aseprite Themes
Set your preferred Aseprite theme from `./nixos-config/modules/home/aseprite/themes/`

#### 🌐 Browser Configuration
Configure your browser settings manually (automated configuration coming soon)

#### 📧 Git Configuration
Update your git information in `./modules/home/git.nix`:

```nix
programs.git = {
  # ...
  userName = "kaaris-270";
  userEmail = "43emeBIMA@example.com";
  # ...
};
```

## 🔧 Install Script Walkthrough

The installation script performs the following steps:

### 1. 👤 Username Setup
- Prompts for your username with confirmation
- Replaces default `CURRENT_USERNAME` with your input

### 2. 📁 Directory Creation
Creates essential directories:
- `~/Music`
- `~/Documents`
- `~/Pictures/wallpapers/others`

### 3. 🖼️ Wallpaper Setup
Copies wallpapers to `~/Pictures/wallpapers/others` for the wallpaper picker

### 4. 🖥️ Hardware Configuration
Automatically copies `/etc/nixos/hardware-configuration.nix` to ensure proper hardware support

### 5. 💻 Host Selection
Choose between:
- **Desktop** configuration
- **Laptop** configuration
- **VM** configuration (experimental)

### 6. 🎨 Aseprite Installation
Optional Aseprite installation (requires compiling 1100+ C++ files - time-intensive)

### 7. 🔨 System Build
Builds the complete system with flake and Home Manager configurations

## 🎯 System Requirements

- **RAM:** 8GB minimum (16GB recommended for compilation)
- **Storage:** 20GB free space minimum
- **CPU:** Multi-core processor recommended
- **Graphics:** Wayland-compatible GPU

## 🐛 Troubleshooting

### Common Issues

**Build gets stuck during compilation:**
- Reduce CPU cores in the build command
- Ensure sufficient RAM is available
- Close unnecessary applications

**Hyprlock doesn't start:**
- Check if your graphics drivers support Wayland
- Verify hardware acceleration is enabled

## 👥 Credits

This configuration is built upon the excellent work of many contributors:

### 🏆 Primary Inspiration
- **[Frost-Phoenix/nixos-config](https://github.com/Frost-Phoenix/nixos-config)** - Base configuration foundation

### 🌟 Additional Contributors
- **[nomadics9/NixOS-Flake](https://github.com/nomadics9/NixOS-Flake)** - NixOS/Hyprland journey starting point
- **[samiulbasirfahim/Flakes](https://github.com/samiulbasirfahim/Flakes)** - General flake structure
- **[justinlime/dotfiles](https://github.com/justinlime/dotfiles)** - Waybar configuration
- **[skiletro/nixfiles](https://github.com/skiletro/nixfiles)** - VSCodium crash prevention
- **[fufexan/dotfiles](https://github.com/fufexan/dotfiles)** - Configuration inspiration
- **[tluijken/.dotfiles](https://github.com/tluijken/.dotfiles)** - Base Rofi configuration
- **[mrh/dotfiles](https://github.com/mrh/dotfiles)** - Base Waybar configuration
- **[ryan4yin/nix-config](https://github.com/ryan4yin/nix-config)** - Advanced Nix patterns
- **[NotAShelf/nyx](https://github.com/NotAShelf/nyx)** - Modern NixOS configuration
- **[sioodmy/dotfiles](https://github.com/sioodmy/dotfiles)** - Dotfiles inspiration
- **[Ruixi-rebirth/flakes](https://github.com/Ruixi-rebirth/flakes)** - Flake configuration patterns

---


</div>
