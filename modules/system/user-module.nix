{ config, pkgs, lib, ... }:

{
  options.user-module = {
    enable = lib.mkEnableOption "enable user module";
    userName = lib.mkOption {
      default = "user";
      description = "username";
    };
  };

  config = lib.mkIf config.user-module.enable {
    users.users.${config.user-module.userName} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "vboxusers" "vboxsf" ];
      packages = with pkgs; [
        tree
      ];
    };
  };
}