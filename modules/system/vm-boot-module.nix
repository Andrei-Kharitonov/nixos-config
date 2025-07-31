{ config, pkgs, lib, ... }:

{
  options.vm-boot-module = {
    enable = lib.mkEnableOption "enable vm boot module";
  };

  config = lib.mkIf config.vm-boot-module.enable {
    boot = {
      extraModulePackages = with config.boot.kernelPackages; [
        virtualboxGuestAdditions
      ];
      kernelModules = [ "vboxguest" "vboxsf" "vboxvideo" ];
    };
  };
}