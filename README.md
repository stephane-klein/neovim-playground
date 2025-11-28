# My Neovim playground

This playground is based on the method described in the following note: <https://notes.sklein.xyz/2024-05-26_1052/zen/>.

The `./start_sandboxed-neovim.sh` command launches Neovim in sandbox environment.  
This instance reads [`./config/nvim/`](./config/nvim/). Stores Neovim data in `./share/`, `./state/` and `./cache/`.  
As a consequence, there are no risk of disrupting your global Neovim instance on your workstation.


Neovim installation on Fedora:

```sh
$ sudo dnf install neovim
```

```
$ ./start_sandboxed-neovim.sh
:Lazy install
:q
```

Now, you can play with your `./config/nvim/init.lua` with no risk.

Ressources:

- `:checkhealth` contains no error or warning, see output: [`checkhealth.txt`](./checkhealth.txt).
- `:Lazy health` contains no error or warning, see output: [`lazy-health.txt`](./lazy-health.txt).


