{
  config,
  pkgs,
  lib,
  ...
}:

let
  background-package = pkgs.stdenvNoCC.mkDerivation {
    name = "background-image";
    src = ../imgs/wallpapers/nix-wallpaper-catppuccin.png;
    dontUnpack = true;
    installPhase = ''
      cp $src $out
    '';
  };
in
{
  services.displayManager.sddm = {
    enable = lib.mkDefault true;
    theme = "breeze";
    wayland.enable = true;
  };

  environment.systemPackages = [
    (pkgs.writeTextDir "share/sddm/themes/breeze/theme.conf.user" ''
      [General]
      background = ${background-package}
    '')
  ];
}
