{ lib, pkgs, ... }:

{
  # Systemd services setup
  systemd.packages = with pkgs; [
    auto-cpufreq
  ];
  
  # Enable Services
  services.geoclue2.enable = true;
  programs.direnv.enable = true;
  services.upower.enable = true;
  programs.fish.enable = true;
  programs.dconf.enable = true;
  services.dbus.enable = true;
  services.dbus.packages = with pkgs; [
  	#xfce.xfconf
  	#gnome2.GConf
  ];
  services.mpd.enable = true;
  programs.thunar.enable = true;
  services.tumbler.enable = true; 
  services.fwupd.enable = true;
  services.auto-cpufreq.enable = true;

  # Btrfs scrubbing once a month
  services.btrfs.autoScrub.enable = true;
  # ZFS scrubbing once a week
  services.zfs.autoScrub.enable = true;

  # services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  # Nvidia
  services.xserver.videoDrivers = lib.mkDefault [ "nvidia" ];

  environment.systemPackages = with pkgs; [
    at-spi2-atk
    qt6.qtwayland
    psi-notify
    poweralertd
    swaylock-effects
    swayidle
    playerctl
    psmisc
    grim
    slurp
    imagemagick
    swappy
    ffmpeg_6-full
    # wl-screenrec
    wf-recorder
    wl-clipboard
    cliphist
    clipboard-jh
    xdg-utils
    wtype
    wlrctl
    hyprpicker
    pyprland
    waybar
    rofi-wayland
    dunst
    #avizo
    wlogout
    wpaperd
    # swww
    #gifsicle
  ];
}
