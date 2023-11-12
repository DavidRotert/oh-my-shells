# Oh My Shells

Oh My Shells - A practical framework for Bash and ZSH.

The goal of Oh My Shells is to provide a modular structure for your configurations to decrease the amount of copy and paste code for shared configurations, be it accross multiple machines or between multiple users on a system.

The framework also provides helper functions for even more clean configurations of your favorite shell.

## Installation

Oh My Shells can easily be installed by cloning the Git repo:

```
git clone https://github.com/DavidRotert/oh-my-shells.git /usr/local/share/oh-my-shells
```

Now you just need to include the Oh My Shells version for your favorite shell in `~/.bashrc` or `~/.zshrc`:

```
source /usr/local/share/oh-my-shells/bash/oh-my-shells.bash
# or
source /usr/local/share/oh-my-shells/zsh/oh-my-shells.zsh
```

Please note that Oh My Shells works most efficiently if your shell RC file does not contain any additional configuration, because oh-my-shell can provide you with a more modular and flexible structure for that. Just copy the contents of you shell configuration to `~/.oh-my-shells/bash/rc` or `~/.oh-my-shells/zsh/rc` for now if you want to keep the existing configuration and change if later.

If you want to configure some of the default paths or change the location where Oh My Shells is located, you need to configure the environment variables before including the framework.

## Configuration

### Variables

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| `OH_MY_SHELLS_INSTALL_DIR` | Location where oh-my-shells was installed to. This variable needs to be set before including oh-my-shells if you did not install oh-my-shells in the default location | `/usr/local/share/oh-my-shells` |
| `OH_MY_SHELLS_USER_DIR` | Location to the user files. | `~/.oh-my-shells` |
| `OH_MY_SHELLS_GLOBAL_DIR` | Location to global files. Used to share configs between users. | `/usr/local/share/oh-my-shells` |
| `OH_MY_SHELLS_SHARED_MODULE_NAMES` | Names of the shared modules to import. | `(profile env aliases)` |
| `OH_MY_SHELLS_BASH_MODULE_NAMES` | Names of the Bash modules to import. | `(rc env aliases)` |
| `OH_MY_SHELLS_ZSH_MODULE_NAMES` | Names of the ZSH modules to import. | `(rc env aliases)` |
| `OH_MY_SHELLS_DEBUG` | Enable debugging output. | `false` |

## Concepts

### Modules

Oh My Shells modules are just normal shell files. Modules can be found in different locations and should provide a neat way to easily find common configurations. Want to keep all your dozens of ZSH keybinds in one file? Just create a new module `keybinds` in the ZSH folder `~/.oh-my-shells/zsh` and add it to the list of ZSH modules via the environment variable: `OH_MY_SHELLS_ZSH_MODULE_NAMES=(rc env aliases keybinds)`.

Another neat feature of modules is that every module has a `moduleName_custom` file which provides a way to overwrite changes.

Advantages of modules:

- Different shells can share the same set of common functions, aliases, variables etc.
- Multiple users on the same system can share configurations via a global directory
- When sharing configurations between multiple machines it might be needed to overwrite changes just on one machine. Because modules always load a corresponding `_custom` file, you can easily overwrite changes. Just exclude `*_custom` in your `.gitignore` if you manage your changes with Git and you are good to go.
