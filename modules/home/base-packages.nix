{ config, pkgs, lib, ... }:

{
  options.base-packages = {
    enable = lib.mkEnableOption "enable base packages module";
  };

  config = lib.mkIf config.base-packages.enable {
    home.packages = with pkgs; [
      git # version control system
      nekoray # proxy connection gui client
      alacritty # terminal emulator
      neovim # vim but better
    ];

    programs = {
      git = {
        enable = true;
        userEmail = "test@gmail.com";
        userName = "andrei";
      };

      alacritty = {
        enable = true;
      };
    };
  };
}