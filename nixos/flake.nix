{
  description = "Hugo's NixOS Configuration";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations.Desktop-Hugo = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
        # ./fingerprint-scanner.nix
        # ./gnome.nix
        # ./mac-randomize.nix
        # ./open-ssh.nix
        # ./printing.nix
        # ./vpn.nix
        ./auto-upgrade.nix
        ./bluetooth.nix
        ./bootloader.nix
        ./display-manager.nix
        ./dns.nix
        ./environment-variables.nix
        ./firewall.nix
        ./fonts.nix
        ./gc.nix
        ./hyprland.nix
        ./info-fetchers.nix
        ./internationalisation.nix
        ./linux-kernel.nix
        ./lsp.nix
        ./networking.nix
        ./nix-settings.nix
        ./nixpkgs.nix
        ./programming-languages.nix
        ./rust.nix
        ./screen.nix
        ./security-services.nix
        ./services.nix
        ./sound.nix
        #./swap.nix
        ./terminal-utils.nix
        ./theme.nix
        ./time.nix
        ./usb.nix
        ./users.nix
        ./utils.nix
        ./virtualisation.nix
        #./wasm.nix
        ./work.nix
        #./yubikey.nix
      ];
    };
  };
}
