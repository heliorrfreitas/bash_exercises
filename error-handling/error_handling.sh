#!/usr/bin/env bash

function main {
    if [[ $# -ne 1 ]];
    then
        echo "Usage: ./error_handling <greetee>"
        exit 1
    fi
    name="$1"
    echo "Hello, $name"
}

main "$@"
