{ pkgs,  ... }:

{
  #Bootloader.
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    loader.timeout = 2;
    initrd.enable = true;
    initrd.systemd.enable = true;
    plymouth = {
      enable = true;
      font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono-Regular.ttf";
      themePackages = [ pkgs.catppuccin-plymouth ];
      theme = "catppuccin-macchiato";
    };
		supportedFilesystems= [ "btrfs" "zfs" ];
		zfs.forceImportRoot = false;
		zfs.extraPools = [ "storage" ];
  };
}
