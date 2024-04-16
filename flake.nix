{
  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    home-manger.url = "github:nix-community/home-manager";
    flakelight.url = "github:nix-community/flakelight";
    flakelight-darwin.url = "github:cmacrae/flakelight-darwin";
  };

  outputs = { self, flakelight, flakelight-darwin, ... }@inputs:
    flakelight ./. ({ lib, ... }: {
      inherit inputs;
      imports = [ flakelight-darwin.flakelightModules.default ];
      systems = lib.mkDefault lib.systems.flakeExposed;

      nixDirAliases = {
        homeConfigurations = [ "home/configurations" ];
        homeModules = [ "home/modules" ];
        homeModule = [ "home" ];

        nixosConfigurations = [ "client/nixos/configurations" ];
        nixosModules = [ "client/nixos/modules" ];
        nixosModule = [ "client/nixos" ];

        darwinConfigurations = [ "client/macos/configurations" ];
        darwinModules = [ "client/macos/modules" ];
        darwinModule = [ "client/macos" ];
      };
    });
}
