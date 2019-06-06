#!/usr/bin/env bash

set -o errexit

function is_leap_year {
    if [ $# -ne 1 ] || [[ ! $1 =~ [0-9] ]] || [[ $1 =~ (\.[0-9]+) ]];
    then
        echo "Usage: leap.sh <year>"
        exit 1
    fi

    is_leap_year="false"
    year=$1

    if [[ $(( $year % 4 )) == 0 ]]; then
        is_leap_year="true"
    fi

    if [[ $(( $year % 100 )) == 0 ]]; then
        if [[ ! $(( $year % 400 )) == 0 ]]; then
            is_leap_year="false"
        fi
    fi

    echo $is_leap_year
}

is_leap_year "$@"
