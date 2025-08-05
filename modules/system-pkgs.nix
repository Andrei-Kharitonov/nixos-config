{
  config,
  pkgs,
  lib,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    vim # terminal text editor
    wget # cli utility for downloading from internet
    nh # yet another nix helper
    nil # nix language server
    nixfmt-rfc-style # nix formater
    hiddify-app # proxy gui client
    sing-box # universal proxy platform
  ];

  programs = {
    firefox = {
      enable = true;
      languagePacks = [
        "en-US"
        "ru"
      ];
    };
  };
}
