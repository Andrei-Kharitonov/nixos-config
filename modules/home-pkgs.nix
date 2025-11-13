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
    konsave # kde config manager
    lazygit # git terminal ui
    yazi # tui file explorer
    yt-dlp # cli youtube video downloader
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
        initial_window_width = "96c";
        initial_window_height = "32c";
        window_padding_width = "2 4";
        placement_strategy = "top-left";
      };
    };

    vscode = {
      enable = true;
    };

    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 4d --keep 3";
      flake = "/home/andrei/nixos-config";
    };

    zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
      autosuggestion.enable = true;
      enableCompletion = true;
      initContent = ''
        # custom prompt line
        autoload -Uz vcs_info promptinit
        precmd() {
          vcs_info
          # new line after output
          if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
            NEW_LINE_BEFORE_PROMPT=1
          elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
            echo ""
          fi
        }
        zstyle ':vcs_info:git:*' formats '%b '
        setopt PROMPT_SUBST
        PROMPT='[%F{4}%n%f] %F{4}%~%f %F{6}${"\${vcs_info_msg_0_}"}%f ${"\${prompt_newline}"} '

        # shell cd whith yazi
        yazi_dir_navigation() {
          local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
          yazi "$@" --cwd-file="$tmp"
          if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
            cd -- "$cwd"
          fi
          rm -f -- "$tmp"
        }
      '';
      oh-my-zsh = {
        enable = true;
      };
      shellAliases = {
        lf = "yazi_dir_navigation";
        clear = "unset NEW_LINE_BEFORE_PROMPT && clear";
      };
    };
  };
}
