{
  pkgs,
  ...
} : {
  home.packages = [
    pkgs.ripgrep
    pkgs.fzf
  ];
}
