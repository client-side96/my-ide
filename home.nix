{ 
  config,
  pkgs,
  ...
} : let
  const = import ./shared/constants.nix;
in {
  home.stateVersion = "23.11";
  home.username = const.username;
  home.homeDirectory = const.homeDirectory;

  programs.home-manager.enable = true;

  imports = [
    ./config/programs
  ];
}


