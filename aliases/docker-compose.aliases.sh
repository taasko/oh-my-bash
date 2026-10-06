# Docker Compose aliases based on https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/docker-compose/docker-compose.plugin.zsh

# Use the legacy executable when available; otherwise use Compose v2 as a Docker CLI plugin.
if [[ -x "$(type -P docker-compose 2>/dev/null)" ]]; then
  _omb_docker_compose_cmd='docker-compose'
else
  _omb_docker_compose_cmd='docker compose'
fi

alias dc="$_omb_docker_compose_cmd"
alias dco="$_omb_docker_compose_cmd"
alias dcb="$_omb_docker_compose_cmd build"
alias dcc="$_omb_docker_compose_cmd config"
alias dce="$_omb_docker_compose_cmd exec"
alias dcps="$_omb_docker_compose_cmd ps"
alias dcrestart="$_omb_docker_compose_cmd restart"
alias dcrm="$_omb_docker_compose_cmd rm"
alias dcr="$_omb_docker_compose_cmd run"
alias dcstop="$_omb_docker_compose_cmd stop"
alias dcup="$_omb_docker_compose_cmd up"
alias dcupb="$_omb_docker_compose_cmd up --build"
alias dcupd="$_omb_docker_compose_cmd up -d"
alias dcupdb="$_omb_docker_compose_cmd up -d --build"
alias dcdn="$_omb_docker_compose_cmd down"
alias dcl="$_omb_docker_compose_cmd logs"
alias dclf="$_omb_docker_compose_cmd logs -f"
alias dclF="$_omb_docker_compose_cmd logs -f --tail 0"
alias dcpull="$_omb_docker_compose_cmd pull"
alias dcstart="$_omb_docker_compose_cmd start"
alias dck="$_omb_docker_compose_cmd kill"
alias dcv="$_omb_docker_compose_cmd version"
alias dcsts="$_omb_docker_compose_cmd stats"
alias dci="$_omb_docker_compose_cmd images"

unset _omb_docker_compose_cmd
