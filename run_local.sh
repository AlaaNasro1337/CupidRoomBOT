#!/bin/sh

export TOKEN="NDg5MTE5MTI5MjM2NjY4NDI2.Dnp-LQ.z5mWQIoXd2flHpo5yXwm7X4PHp8"
export MOD_ROLE_ID="489385510863765504"
export CAN_BAN_ROLE_ID="489386761043312650"
export CAN_KICK_ROLE_ID="489386612778729472"
export WARNING_ROLE_ID="489386099618349076"
export MUTE_ROLE_ID="489038770247696403"
export LOG_CHANNEL_ID="488651356618358787"
export SERVER_ID="488651356618358785"
export OWNER_ID="489004739682500610"
export RESTART_COMMAND="sh run_local.sh"

LATEST_BUILD="$(find ./build/libs | sort --version-sort --field-separator=- --key=2,2 | tail -n 1)"

until java -jar "${LATEST_BUILD}"; do
    echo "BanUtil crashed with exit code $?.  Respawning.." >&2
    sleep 1
done

