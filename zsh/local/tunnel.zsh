function tunnel() {
    if [ -z "$3" ]; then 3="$1"; fi
    echo "Tunnelling '0.0.0.0:$1' ===> '$2:$3'"
    autossh -M 0 -CnNL 0.0.0.0:"$1":localhost:"$3" -o ExitOnForwardFailure=yes "$2"
}
