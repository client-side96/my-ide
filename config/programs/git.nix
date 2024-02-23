{
  pkgs,
  ...
} : {
  programs.git = {
    enable = true;

    userName = "client-side96";
    userEmail = "dev@clientside.tech";
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

      
