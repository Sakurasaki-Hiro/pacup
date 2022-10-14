#!/bin/bash
function usage() {
    cat <<EOM
Usage: $(basename "$0") [OPTION]...
    -h 		Display help
    -y		Skip input 'y'
EOM

    exit 2
}

function update_y() {
    sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo snap refresh && flatpak update
    exit 0
}

if [ `whoami` != 'root' ]; then
    echo "管理者権限で実行してください"
    exit 0
fi

while getopts ":h:y" optKey; do
    case "$optKey" in
    	y)
    	  update_y
          ;;    	
    	'-h'|'--help'|* )
    	  usage
    	  ;;
    esac
done
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo snap refresh && flatpak update
exit 0
