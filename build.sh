#!/bin/bash
set -e

for RAML in $(find -name \*.raml); do
    IFS='/' read -r -a PATH <<< "$RAML"

    FILE="${PATH[-1]}"

    unset PATH[${#PATH[@]}-1]

    DIRS=""

    for index in ${!PATH[*]}
    do
        if [ "${PATH[$index]}" != "." ]; then
            DIRS="$DIRS/${PATH[$index]}"
        fi
    done
    
    if [ "${DIRS:1}" = "" ]; then
        echo "raml2html -o ${FILE/.raml/.html} $FILE" # temporary
    else
        echo "mkdir -p ${DIRS:1}/ && raml2html -o ${DIRS:1}/${FILE/.raml/.html} $FILE" # temporary
    fi
done