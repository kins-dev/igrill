#!/bin/bash
true
# shellcheck disable=2086
set -$-ue${DEBUG+xv}

function PlaySound () {
    if [ "$#" -ne "1" ]; then
        echo "Wrong number of arguements to SetLEDState"
        echo "Expected 1, got $#"
        exit 1
    fi

    local EVENT="$1"
    case "$EVENT" in
        "low_battery")
            omxplayer -o local /usr/lib/libreoffice/share/gallery/sounds/kling.wav &
        ;;
        "complete")
            omxplayer -o local usr/lib/libreoffice/share/gallery/sounds/train.wav &
        ;;
        *)
            echo "bad value for event sent to PlaySound"
            echo "expected \"low_battery\" or \"complete\", got \"$EVENT\""
            exit 1
        ;;
    esac
}