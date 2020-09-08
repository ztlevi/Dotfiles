alias dkc="docker-compose"
alias dkm="docker-machine"
alias dkl="dk logs"
alias dkcl="dkc logs"

dkclr() {
  dk stop $(docker ps -a -q)
  dk rm $(docker ps -a -q)
}

dke() {
  dk exec -it "$1" "${@:1}"
}

dk() {
  case $(_os) in
  arch | debian) systemctl -q is-active docker || sudo systemctl start docker ;;
  esac
  docker $@
}
compdef dk=docker

alias dkprune="docker system prune -a --filter='until=24h'"
