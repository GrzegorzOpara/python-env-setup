#!/usr/bin/env bash

programname=$0
function usage {
    echo ""
    echo "Make a GIT commit with a date in the past"
    echo ""
    echo "usage: $programname --date string --message string"
    echo "                          (example: "./git_past.sh --date \""2023-02-03 18:21:15\"" --message \""init\""")"
    echo ""
    echo "  --date string           date of the commit"
    echo "                          (example: \""2023-02-03 18:21:15\"")"
    echo "  --message string        commit message"
    echo "                          (example: \""init commit\"")"
    echo ""
}

function die {
    printf "Script failed: %s\n\n" "$1"
    exit 1
}

while [ $# -gt 0 ]; do
    if [[ $1 == "--help" ]]; then
        usage
        exit 0
    elif [[ $1 == "--"* ]]; then
        v="${1/--/}"
        declare "$v"="$2"
        shift
    fi
    shift
done