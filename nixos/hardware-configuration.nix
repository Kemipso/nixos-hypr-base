# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ "amdgpu" ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "none";
      fsType = "tmpfs";
      options = ["defaults" "size=8G" "mode=755" ];
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/0AA0-4351";
      fsType = "vfat";
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/5110ab0f-2c99-4a2f-86a9-d85ce70cbd32";
      fsType = "btrfs";
      options = [ "subvol=@home"
	"compress=zstd"
	"discard=async"
	"noatime"
	 ];
    };

  fileSystems."/nix" =
    { device = "/dev/disk/by-uuid/5110ab0f-2c99-4a2f-86a9-d85ce70cbd32";
      fsType = "btrfs";
      options = [ "subvol=@nix"
	"compress=zstd"
	"discard=async"
	"noatime"
	];
    };

  fileSystems."/etc/nixos" =
    { device = "/nix/@nix/persist/etc/nixos";
      fsType = "none";
      options = [ "bind" ];
    };

  fileSystems."/var/log" =
    { device = "/nix/@nix/persist/var/log";
      fsType = "none";
      options = [ "bind" ];
    };

  swapDevices = [ ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.eno1.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware = {
  cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  # Nvidia ?
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
    };
  nvidia.modesetting.enable = true;
  nvidia.open = false;
  nvidia.nvidiaSettings = true;
  nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
  opengl.extraPackages = with pkgs; [ vaapiVdpau ];
  };
}
