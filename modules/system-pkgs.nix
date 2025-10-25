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
    xclip # copy-paste for x
    wl-clipboard # copy-paste for wayland
    nodejs_24 # javascript
    yarn # dependency management for javascript
    python314 # python
    gcc # C, C++
    ripgrep # directory regex searcher
    unzip # extract .zip
    cargo # rust projects downloader
    tmux # multiple terminals in window
  ];

  programs = {
    firefox = {
      enable = true;
      languagePacks = [
        "en-US"
        "ru"
      ];
    };

    # run unpatched dynamic binaries on nixos.
    nix-ld.enable = true;

    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
    };
    # games optimization
    steam.gamescopeSession.enable = true;
    gamemode.enable = true;

    tmux = {
      enable = true;
      clock24 = true;
      plugins = with pkgs; [
        tmuxPlugins.catppuccin
        tmuxPlugins.vim-tmux-navigator
      ];
    };
  };
}
