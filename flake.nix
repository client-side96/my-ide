{
  description = "Home Manager configuration of frey_do";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
      defaultPackage.x86_64-darwin = home-manager.defaultPackage.x86_64-darwin;

      homeConfigurations."frey_do" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        system = system;

        modules = [ ./home.nix ];
      };
    };
}

