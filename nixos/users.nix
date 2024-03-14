{ pkgs, ... }:

{
  users = { 
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.hvigne = {
      isNormalUser = true;
      description = "hugo";
			initialHashedPassword = "$6$MGj8XEDtrgNNCUqE$GLfHOmChebdcxtBsNaAmRdxabUFJmYEBSfOwl.apa390VUg4qrxGlXgHq9aJaWqTl5nhlPFhUUKOzCt1lI2k7.";
      extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" "storage" ];
      shell = pkgs.fish;
      packages = with pkgs; [
        #spotify
    	#cool-retro-term # Terminal to annoy your neighbours
        youtube-music
        discord
        tdesktop
        vscode
	keepassxc
	rclone
	exfat
	parted
        #brave
      ];
    };
  };


# User service for Rclone mounting
#
# Place in ~/.config/systemd/user/
# File must include the '@' (ex rclone@.service)
# As your normal user, run 
#   systemctl --user daemon-reload
# You can now start/enable each remote by using rclone@<remote>
#   systemctl --user enable --now rclone@dropbox

#  systemd.services.protonCloud = {
#      wantedBy = [ "default.target" ];
#      # systemd service unit declarations involve specifying dependencies and order of execution
#      # of systemd nodes; here we are saying that we want our service to start after the network has 
#      # set up (as our IRC client needs to relay over the network)
#      after = [ "network-online.target" ];
#      wants = [ "network-online.target" ];
#      description = "Remote FUSE filesystem for cloud storage config %i";
#      documentation = [ "man:rclone(1)" ];
#      serviceConfig = {
#        Type = "notify";
#        User = "hvigne";
#	ExecStartPre="/run/current-system/sw/bin/mkdir -p %h/mnt/%i";
#	  #/usr/bin/rclone mount \
#	ExecStart= ''
#	    ${pkgs.rclone}/bin/rclone mount \
#	    --config=%h/.config/rclone/rclone.conf \
#	    --vfs-cache-mode writes \
#	    --vfs-cache-max-size 100M \
#	    --log-level INFO \
#	    --log-file /tmp/rclone-%i.log \
#	    --umask 022 \
#	    --allow-other \
#	    %i: %h/mnt/%i
#	    '';
#	ExecStop="fusermount -u %h/mnt/%i";
#      	Environment = [ "PATH=/run/wrappers/bin:$PATH" ];
#      };
#	
#  };
#
  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";
}
