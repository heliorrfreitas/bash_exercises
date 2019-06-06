#!/usr/bin/env bash

set -o errexit

function reverse_string {
    string="$1"
    reversed_string=""
    for (( i = ${#string}; i >=0 ; i-- )); do
        reversed_string+="${string:$i:1}"
    done

    echo $reversed_string
}

reverse_string "$@"
