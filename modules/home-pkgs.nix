{
  config,
  pkgs,
  lib,
  ...
}:

{
  home.packages = with pkgs; [
    git # version control system
    kitty # terminal
    kitty-themes # themes for kitty
    neovim # modern terminal text editor
    vscode # IDE
    libreoffice # office
    tree # display tree directory structure
    btop # terminal task manager
    fastfetch # system info
    qmk # keyboard firmware
    vial # qmk keyboard configuring
    telegram-desktop # messenger
    discord # discord
    wine # run windows programs
    git-graph # git graph branches
    tor-browser # anonymous browser
    flameshot # screenshot
    lazygit # git terminal ui
    yazi # tui file explorer
    yt-dlp # cli youtube video downloader
    fzf # fuzzy finder
    zoxide # smart cd
    tree-sitter # parser (for nvim latex)
  ];

  programs = {
    git = {
      enable = true;
      settings.user = {
        email = "89729599+Andrei-Kharitonov@users.noreply.github.com";
        name = "Andrei-Kharitonov";
      };
    };

    kitty = {
      enable = true;
      themeFile = "Catppuccin-Mocha";
      settings = {
        remember_window_size = "no";
        initial_window_width = "100c";
        initial_window_height = "32c";
        window_padding_width = "2 4";
        placement_strategy = "top-left";
        modify_font = "cell_height 110%";
      };
    };

    vscode = {
      enable = true;
    };

    yazi = {
      enable = true;
      package = pkgs.yazi;
      plugins = {
        "full-border" = pkgs.yaziPlugins.full-border;
      };
    };

    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 4d --keep 3";
      flake = "/home/andrei/nixos-config";
    };

    zoxide = {
      enable = true;
      options = [
        "--cmd cd" # use zoxide instead of cd
      ];
    };

    zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
      autosuggestion.enable = true;
      enableCompletion = true;
      initContent = builtins.readFile ../dotfiles/zsh/.zshrc;
      oh-my-zsh = {
        enable = true;
      };
      shellAliases = {
        lf = "yazi_dir_navigation";
        yz = "yazi_dir_navigation";
        clear = "unset NEW_LINE_BEFORE_PROMPT && clear";
        reset = "unset NEW_LINE_BEFORE_PROMPT && reset";
      };
    };
  };
}
