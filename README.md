# My Neovim playground

The `./start_sandboxed-neovim.sh` script launches Neovim in a sandboxed environment
using the [`NVIM_APPNAME`](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME) method.

The script creates a symbolic link from `./config/` to `~/.config/neovim_playground/`,
allowing you to edit the Neovim configuration directly in this repository (in `./config/`).

As a consequence, there is no risk of disrupting your global Neovim instance on your workstation.

**Note:** This playground uses Mise to install a specific version of Neovim, ensuring a consistent
and isolated environment that won't interfere with your system's Neovim installation.

## Prerequisites

### Installing Mise on Fedora Workstation

This project uses [Mise](https://mise.jdx.dev/) to manage the Neovim version, Go toolchain, and other project dependencies.

To install Mise on Fedora Workstation:

```bash
# Install mise using the official installer
$ curl https://mise.run | sh

# Add mise to your shell (for bash)
$ echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
$ source ~/.bashrc

# Or for zsh
$ echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc
$ source ~/.zshrc
```

Once Mise is installed, navigate to the project directory and run:

```bash
$ mise trust
$ mise install
```

This will install the specific version of Neovim and other tools defined in the project configuration.

## Start sandboxed neovim

```
$ ./start_sandboxed-neovim.sh
:Lazy install
:q
```

Now, you can play with your `./config/init.lua` with no risk.

Ressources:

- `:checkhealth` contains no error or warning, see output: [`checkhealth.txt`](./checkhealth.txt).
- `:Lazy health` contains no error or warning, see output: [`lazy-health.txt`](./lazy-health.txt).

## Clean sandbox folders

```
$ mise run clean
```
