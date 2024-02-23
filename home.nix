{ config, pkgs, ... }:

{
  home.stateVersion = "23.11";
  home.username = "frey_do";
  home.homeDirectory = "/Users/frey_do";


  programs.home-manager.enable = true;

  imports = [
    ./config/programs
  ];
}


