#!/bin/bash

CDIR="$HOME/.config/colors"

MENU=$(echo -e "> Arch Dark\n> Arch Light\n> Noel Red\n> Cabin" | dmenu -i -fn 'FiraCode' -h '40' -i -l '5' -c -bw 3 
)
            case "$MENU" in
				## Colors
				*Arch\ Dark) $CDIR/ArchDark.sh -archdark ;;
				*Arch\ Light) $CDIR/ArchLight.sh -archlight ;;
				*Noel\ Red) $CDIR/NoelRed.sh -noelred ;;
				*Cabin) $CDIR/Cabin.sh -cabin ;;
            esac
