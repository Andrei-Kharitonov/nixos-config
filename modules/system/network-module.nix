{ config, pkgs, lib, ... }:

{
  options.network-module = {
    enable = lib.mkEnableOption "enable network module";
  };

  config = lib.mkIf config.network-module.enable {
    networking = {
      hostName = "nixos";
      networkmanager.enable = true;
    };
    services.openssh.enable = true;
  };
}