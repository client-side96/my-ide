{
  pkgs,
  lib,
  ...
} : {
  programs.yazi = {
    enable = true;

    settings = {
        manager.ratio = [0 1 0];
        manager.showHidden = true;
        opener.text = [
          { exec = "editor-hx-opener.sh \"$@\""; block = true; }
        ];
        open.rules = [
          { mime = "text/*"; use = "text"; }
          { name = "*.json"; use = ["text"]; }
          { name = "*.nix"; use = ["text"]; }
          { name = "*.js"; use = ["text"]; }
          { name = "*.ts"; use = ["text"]; }
          { name = "*.jsx"; use = ["text"]; }
          { name = "*.tsx"; use = ["text"]; }
          { name = "*.html"; use = ["text"]; }
          { name = "*.dart"; use = ["text"]; }
          { name = "*.hs"; use = ["text"]; }
          { name = "*.rs"; use = ["text"]; }
          { name = "*.go"; use = ["text"]; }
        ];
    };
  };
}
