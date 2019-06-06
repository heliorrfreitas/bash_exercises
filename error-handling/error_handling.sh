#!/usr/bin/env bash

function main {
    if [ $# -eq 0 ] || [ $# -ge 2 ];
    then
        echo "Usage: ./error_handling <greetee>"
        exit 1
    else
        name="$1"
        echo "Hello, $name"
    fi
}

main "$@"
