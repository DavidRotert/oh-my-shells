###
### To load oh-m-shells in Bash, source this files in ~/.bashrc:
###     source oh-my-shells.bash
###
### Note that oh-my-shells works best if your .bashrc is empty. To keep it's contents,
### move them to one of the oh-my-shells locations, for example ~/.oh-my-shells/bash/rc
### or ~/.oh-my-shells/bash/rc_custom 
###

OH_MY_SHELLS_INSTALL_DIR=${OH_MY_SHELLS_INSTALL_DIR:-"/usr/local/share/oh-my-shells"}

source "$OH_MY_SHELLS_INSTALL_DIR/framework/functions.sh"
source "$OH_MY_SHELLS_INSTALL_DIR/framework/variables.sh"

# Load POSIX compatible files from global location
omsh_load_modules "$OH_MY_SHELLS_GLOBAL_DIR/shared" "${OH_MY_SHELLS_SHARED_MODULE_NAMES[@]}"

# Load POSIX compatible files from users home location
omsh_load_modules "$OH_MY_SHELLS_USER_DIR/shared" "${OH_MY_SHELLS_SHARED_MODULE_NAMES[@]}"

# Load ZSH files from global location
omsh_load_modules "$OH_MY_SHELLS_GLOBAL_DIR/bash" "${OH_MY_SHELLS_BASH_MODULE_NAMES[@]}"

# Load ZSH files from users home location
omsh_load_modules "$OH_MY_SHELLS_USER_DIR/bash" "${OH_MY_SHELLS_BASH_MODULE_NAMES[@]}"
