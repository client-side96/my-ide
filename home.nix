{ config, pkgs, ... }:

{
  home.stateVersion = "23.11";
  home.username = "frey_do";
  home.homeDirectory = "/Users/frey_do";

  home.packages = [
    pkgs.git
  ];

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;

    userName = "client-side96";
    userEmail = "dev@clientside.tech";
  };
}


