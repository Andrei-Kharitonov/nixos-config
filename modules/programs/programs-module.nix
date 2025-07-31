{ config, pkgs, lib, ... }:

{
  options.programs-module = {
    enable = lib.mkEnableOption "enable programs module";
  };

  config = lib.mkIf config.programs-module.enable {
    environment.systemPackages = with pkgs; [
      vim
      wget
    ];

    programs.firefox.enable = true;
  };
}