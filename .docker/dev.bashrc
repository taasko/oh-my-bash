export OSH=/workspace
OSH_THEME=font

aliases=()
for alias_file in "$OSH"/aliases/*.aliases.{bash,sh}; do
  [[ -f $alias_file ]] || continue
  alias_module=${alias_file##*/}
  alias_module=${alias_module%.aliases.bash}
  alias_module=${alias_module%.aliases.sh}
  aliases+=("$alias_module")
done

plugins=()
for plugin_file in "$OSH"/plugins/*/*.plugin.{bash,sh}; do
  [[ -f $plugin_file ]] || continue
  plugin_module=${plugin_file%/*}
  plugin_module=${plugin_module##*/}
  plugins+=("$plugin_module")
done

completions=()
for completion_file in "$OSH"/completions/*.completion.{bash,sh}; do
  [[ -f $completion_file ]] || continue
  completion_module=${completion_file##*/}
  completion_module=${completion_module%.completion.bash}
  completion_module=${completion_module%.completion.sh}
  completions+=("$completion_module")
done

source "$OSH/oh-my-bash.sh"

function _omb_dev_source_module_files {
  local module_type=$1 module_file module_name
  local -a reloaded_modules=()
  local status=0
  shift

  for module_file in "$@"; do
    [[ -f $module_file ]] || continue

    case $module_type in
    alias)
      module_name=${module_file##*/}
      module_name=${module_name%.aliases.bash}
      module_name=${module_name%.aliases.sh} ;;
    plugin)
      module_name=${module_file%/*}
      module_name=${module_name##*/} ;;
    completion)
      module_name=${module_file##*/}
      module_name=${module_name%.completion.bash}
      module_name=${module_name%.completion.sh} ;;
    esac

    [[ " ${reloaded_modules[*]} " == *" $module_name "* ]] && continue
    reloaded_modules+=("$module_name")
    [[ " $_omb_module_loaded " == *" $module_type:$module_name "* ]] ||
      _omb_module_loaded="$_omb_module_loaded $module_type:$module_name"
    source "$module_file" || status=$?
  done

  return "$status"
}

function omb_reload_modules {
  local status=0

  _omb_dev_source_module_files plugin \
    "$OSH"/plugins/*/*.plugin.bash "$OSH"/plugins/*/*.plugin.sh || status=$?
  _omb_dev_source_module_files alias \
    "$OSH"/aliases/*.aliases.bash "$OSH"/aliases/*.aliases.sh || status=$?
  _omb_dev_source_module_files completion \
    "$OSH"/completions/*.completion.bash "$OSH"/completions/*.completion.sh || status=$?

  return "$status"
}
