{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fish
    starship
    fzf
    grc
  ];

  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      hostname = {
        ssh_only = false;
        format = "[$ssh_symbol$hostname]($style) ";
        style = "bold purple";
      };
      character = {
        success_symbol = "[ > ](bold green)";
        error_symbol = "[ > ](bold red)";
      };
      username = {
        show_always = true;
        format = "[$user]($style)@";
      };
      directory = {
        read_only = " 🔒";
        truncation_symbol = "…/";
      };
    };
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      starship init fish | source  # Инициализация starship в fish
      bind \ee 'true' # Отключить комбинации
      bind \er 'ranger'
      export VISUAL=nvim
      export TERMINAL=kitty
      if status is-login
        if test -z "$DISPLAY" -a "$(tty)" = /dev/tty1
           Hyprland
        end
      end
    '';
    shellAliases = {
			"hdr" = "bash $HOME/HyprNix/home-manager/modules/hyprland/hdr.sh";
      "hor" = "home-manager switch --flake ./";
      "vim" = "nvim";
      "nor" = "sudo nixos-rebuild switch --flake ./";
    };
  };

  home.sessionVariables.SHELL = "${pkgs.fish}/bin/fish";
}

