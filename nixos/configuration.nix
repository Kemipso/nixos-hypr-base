# Edit trueconfiguration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ ... }:

{
	console = {
    # font = "Lat2-Terminus16";
		keyMap = "fr";
    # useXkbConfig = true; # use xkb.options in tty.
	};

	environment = {
# Root as tmpfs - machine-id source link
		etc."machine-id".source = "/nix/persist/etc/machine-id";
		variables = { EDITOR = "nvim"; };
		#pathsToLink = [ "/share/zsh" ];
	};

  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  # FIXME: change it to version from your current, fresh and auto-generated after first installation `configuration.nix` config file
  system.stateVersion = "23.11"; # Did you read the comment?

}

