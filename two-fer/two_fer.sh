#!/bin/bash

set -o errexit

function two_fer {
    name="you"

    if [[ ! -z "$1" ]];
    then
        name="$1"
    fi

    echo "One for $name, one for me."
}

two_fer "$@"
