{ config, pkgs, ... }:

{
  home.stateVersion = "23.11";
  home.username = "frey_do";
  home.homeDirectory = "/Users/frey_do";

  home.packages = [];

  programs.home-manager.enable = true;
}


