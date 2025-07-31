{ config, pkgs, lib, ... }:

{
  options.boot-module = {
    enable = lib.mkEnableOption "enable boot module";
  };

  config = lib.mkIf config.boot-module.enable {
    boot.loader = {
      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
        useOSProber = true;
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
    };
  };
}