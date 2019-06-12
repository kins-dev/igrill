#!/bin/bash
# Copyright (c) 2019:   Scott Atkins <scott@kins.dev>
#                       (https://git.kins.dev/igrill-smoker)
# License:              MIT License
#                       See the LICENSE file
# shellcheck disable=2034
true
# shellcheck disable=2086
set -$-ue${DEBUG+xv}

VALUE=${IGRILL_BAS_DIR:-}
if [ -z "${VALUE}" ]; then
    # https://stackoverflow.com/questions/59895/get-the-source-directory-of-a-bash-script-from-within-the-script-itself
    SOURCE="${BASH_SOURCE[0]}"
    while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
    IGRILL_BAS_DIR="$(readlink -f "${DIR}/../..")"
    export IGRILL_BAS_DIR
fi

# shellcheck source=paths.sh
source "${IGRILL_BAS_DIR}/scripts/utils/paths.sh"


function SetKasaState() {
    local STATE
    local MSG
    if [ "$#" -eq "1" ]; then
        MSG="Turning hotplate $1"
    elif [ "$#" -eq "2" ]; then
        MSG="Turning hotplate $1 due to $2"
    else
        echo "Wrong number of arguments to SetKasaState"
        echo "Expected 1 or 2, got $#"
        exit 1
    fi
    STATE="$1"
    
    # NOTE: api commands must be blocking as they take a second or two
    # and another state update may come in
    case "$STATE" in
        "on")
            # TODO: Move kasa state to something that can be queried at write time
            KASA_STATE="lightgreen"
            python3 "${IGRILL_SCR_DIR}/kasa.py" --on
        ;;
        "off")
            KASA_STATE="red"
            python3 "${IGRILL_SCR_DIR}/kasa.py" --off
        ;;
        *)
            echo "bad value for hotplate state sent to SetKasaState"
            echo "expected \"on\" or \"off\", got \"$STATE\""
            exit 1
        ;;
    esac
    echo "$MSG"
}

function GetKasaIP() {
    if ! [ "$#" -eq "1" ]; then
        echo "Wrong number of arguments to GetKasaIp"
        echo "Expected 1, got $#"
        exit 1
    fi
    local NAME=$1
    coproc stdbuf -oL tplink-smarthome-api search
    while read -r LINE; do

        # when we find the iGrill_V2 setup that information
        if [[ "${LINE}" = *"${NAME}" ]]; then
            TP_LINK_IP="$(echo "${LINE}" | cut -d " " -f 4)"
            break
        fi
    done <&"${COPROC[0]}"
    kill "${COPROC_PID}"
    export TP_LINK_IP
}