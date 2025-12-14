# My Neovim playground

This playground is based on the method described in the following note: <https://notes.sklein.xyz/2024-05-26_1052/zen/>.

The `./start_sandboxed-neovim.sh` command launches Neovim in sandbox environment.  
This instance reads [`./config/nvim/`](./config/nvim/). Stores Neovim data in `./local/`.  
As a consequence, there are no risk of disrupting your global Neovim instance on your workstation.

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

Now, you can play with your `./config/nvim/init.lua` with no risk.

Ressources:

- `:checkhealth` contains no error or warning, see output: [`checkhealth.txt`](./checkhealth.txt).
- `:Lazy health` contains no error or warning, see output: [`lazy-health.txt`](./lazy-health.txt).


