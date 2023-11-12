ohmyshells_dir=$(dirname "$(dirname "$(readlink -f "$0")")")

OH_MY_SHELLS_INSTALL_DIR=${OH_MY_SHELLS_INSTALL_DIR:-$ohmyshells_dir}

source "$OH_MY_SHELLS_INSTALL_DIR/framework/functions.sh"
source "$OH_MY_SHELLS_INSTALL_DIR/framework/variables.sh"

unset ohmyshells_dir

# Load POSIX compatible files from global location
omsh_load_modules "$OH_MY_SHELLS_GLOBAL_DIR/shared" "${OH_MY_SHELLS_SHARED_MODULE_NAMES[@]}"

# Load POSIX compatible files from users home location
omsh_load_modules "$OH_MY_SHELLS_USER_DIR/shared" "${OH_MY_SHELLS_SHARED_MODULE_NAMES[@]}"

# Load ZSH files from global location
omsh_load_modules "$OH_MY_SHELLS_GLOBAL_DIR/zsh" "${OH_MY_SHELLS_ZSH_MODULE_NAMES[@]}"

# Load ZSH files from users home location
omsh_load_modules "$OH_MY_SHELLS_USER_DIR/zsh" "${OH_MY_SHELLS_ZSH_MODULE_NAMES[@]}"
