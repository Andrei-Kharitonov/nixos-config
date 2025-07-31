{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/system/default.nix
    ./../../modules/programs/default.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  # Enable flakes and nix commands
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Home manager import config
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      andrei = import ./home.nix;
    };
  };  

  # Enable CUPS to print documents.
  services.printing.enable = true;

  
  # Don't change this!
  system.stateVersion = "25.05"; # Did you read the comment?
}