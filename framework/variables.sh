OH_MY_SHELLS_DEBUG=${OH_MY_SHELLS_DEBUG:-false}

OH_MY_SHELLS_GLOBAL_DIR=${OH_MY_SHELLS_GLOBAL_DIR:-"/usr/local/share/oh-my-shells"}
OH_MY_SHELLS_USER_DIR=${OH_MY_SHELLS_USER_DIR:-"$HOME/.oh-my-shells"}

if [ -z "$OH_MY_SHELLS_SHARED_MODULE_NAMES" ]; then
    OH_MY_SHELLS_SHARED_MODULE_NAMES=(profile env aliases)
fi

if [ -z "$OH_MY_SHELLS_BASH_MODULE_NAMES" ]; then
    OH_MY_SHELLS_BASH_MODULE_NAMES=(rc env aliases)
fi

if [ -z "$OH_MY_SHELLS_ZSH_MODULE_NAMES" ]; then
    OH_MY_SHELLS_ZSH_MODULE_NAMES=(rc env aliases)
fi
