{ pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    alacritty # Terminal
    #wezterm # Terminal

    starship # Fancy shell prompt
    helix # Nvim alternative in Rust

    firefox # Browser
    zathura # Document viewer
    mpv # Media player
    imv # Image viewer
  ];
}
