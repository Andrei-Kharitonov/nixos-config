{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/system-config.nix
    ../../modules/system-pkgs.nix
    ../../modules/kde-pkgs.nix
    ../../modules/sddm-theme.nix
    ../../modules/fonts.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  # Enable flakes and nix commands
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Home manager import config
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    useUserPackages = true;
    useGlobalPkgs = true;
    users = {
      andrei = import ./home.nix;
    };
  };

  networking.hostName = "desktop";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # GRUB menu
  boot.loader.timeout = 4;
  boot.loader.grub.splashImage = null;

  # Don't change this!
  system.stateVersion = "25.05"; # Did you read the comment?
}
