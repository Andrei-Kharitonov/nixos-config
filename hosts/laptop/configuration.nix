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

  networking.hostName = "laptop";

  # Keyboard remap
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = {
            capslock = "leftcontrol";
            rightalt = "esc";
            kpenter = "capslock";
            # numpad arrows
            kp2 = "down";
            kp4 = "left";
            kp5 = "down";
            kp6 = "right";
            kp8 = "up";
            # numpad navigation
            kp7 = "home";
            kp1 = "end";
            kp9 = "pageup";
            kp3 = "pagedown";
            kp0 = "insert";
            kpdot = "delete";
          };
        };
      };
    };
  };

  # Don't change this!
  system.stateVersion = "25.05"; # Did you read the comment?
}
