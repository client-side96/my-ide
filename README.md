# My IDE

## Installation

Clone this repository in a desired place. Let's say the home directory (`$HOME/my-ide`).

### Nix

Before proceeding make sure `nix` is installed on your system. You can verify
this by running `nix --version`.

If `nix` is not installed, please follow the official [installation guide](https://nixos.org/manual/nix/unstable/installation/installing-binary.html#installing-a-binary-distribution).

### Home Manager

In order to activate your `home-manager` configuration, you need to symlink
the configuration from the repository with the configuration that nix and
home manager are catching up upon command execution.

```sh
mkdir -p $HOME/.config/home-manager
ln -s $HOME/my-ide/home.nix $HOME/.config/home-manager/home.nix
```
