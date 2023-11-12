## Helper functions used by oh-my-shells

omsh_debug_log() {
    if [ "$OH_MY_SHELLS_DEBUG" = true ]; then
        echo "$1"
    fi
}

omsh_source_file_if_exists_and_readable() {
    local file="$1"
    if [ -r "$file" ] && [ -f "$file" ]; then
        source $file
        omsh_debug_log "[info] Sourced file '$file'"
    else
        omsh_debug_log "[warning] File '$file' could not be sourced: did not exist"
    fi
}

omsh_load_modules() {
    local base_path="$1"

    # Load optional modules
    for module in "${@:2}"
    do
        omsh_source_file_if_exists_and_readable "$base_path/${module}"
    done

    # Load custom optional modules
    for module in "${@:2}"
    do
        omsh_source_file_if_exists_and_readable "$base_path/${module}_custom"
    done
}
