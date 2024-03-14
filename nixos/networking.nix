{ ... }:

{
  # Enable networking
	networking = {
		hostId = "0cd8f190";
    #hardware.enableAllFirmware = true;
    #nixpkgs.config.allowUnfree = true;
		hostName = "Desktop-Hugo";
    # networking.wireless.enable = true;
		networkmanager.enable = true;
	};

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
}
