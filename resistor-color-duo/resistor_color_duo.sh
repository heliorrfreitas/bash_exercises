#!/usr/bin/env bash

function main {
    declare -A resistor_colors=(
        ["black"]=0
        ["brown"]=1
        ["red"]=2
        ["orange"]=3
        ["yellow"]=4
        ["green"]=5
        ["blue"]=6
        ["violet"]=7
        ["grey"]=8
        ["white"]=9
    )

    if (( $# != 2)) || [[ -z ${resistor_colors["$1"]+x} ]] || [[ -z ${resistor_colors["$2"]+x} ]];
    then
        echo "invalid color"
        exit 1
    fi

    echo "${resistor_colors["$1"]}""${resistor_colors["$2"]}"
}

main "$@"
