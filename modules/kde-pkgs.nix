{
  config,
  pkgs,
  lib,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # KDE
    kdePackages.kcalc # Calculator
    kdePackages.kcharselect # Tool to select and copy special characters from all installed fonts
    kdePackages.kcolorchooser # A small utility to select a color
    kdePackages.kolourpaint # Easy-to-use paint program
    kdePackages.ksystemlog # KDE SystemLog Application
    kdePackages.sddm-kcm # Configuration module for SDDM
    kdePackages.networkmanager-qt

    konsave # kde config manager
    kdiff3 # Compares and merges 2 or 3 files or directories
    hardinfo2 # System information and benchmarks for Linux systems
    haruna # Open source video player built with Qt/QML and libmpv
    wayland-utils # Wayland utilities
  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    # plasma-browser-integration # Comment out this line if you use KDE Connect
    # kdepim-runtime # Unneeded if you use Thunderbird, etc.
    # konsole # Comment out this line if you use KDE's default terminal app
    # oxygen # KDE theme
  ];
}
