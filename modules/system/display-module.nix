{ config, pkgs, lib, ... }:

{
  options.display-module = {
    enable = lib.mkEnableOption "enable display module";
  };

  config = lib.mkIf config.display-module.enable {
    services = {
      xserver = {
        enable = true;
        desktopManager.xfce.enable = true;
      };
      displayManager.defaultSession = "xfce";
    };
    
  };
}