{ config, pkgs, lib, ... }:

{
  options.audio-module = {
    enable = lib.mkEnableOption "enable audio module";
  };

  config = lib.mkIf config.audio-module.enable {
    services.pipewire = {
      enable = true;
      pulse.enable = true;
    };
  };
}