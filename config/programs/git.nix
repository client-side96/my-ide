{
  pkgs,
  ...
} : let
  const = import ../../shared/constants.nix;
in {
  programs.git = {
    enable = true;

    userName = const.gitUser;
    userEmail = const.email;
  };

  programs.lazygit = {
    enable = true;

    settings = {
      gui.sidePanelWidth = 0.2;
      gui.showCommandLog = false;
      gui.splitDiff = "always";
      gui.border = "rounded";
    };
  };
}

      
