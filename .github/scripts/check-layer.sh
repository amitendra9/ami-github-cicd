#!/bin/bash

file_changed=$(git diff --name-only $1 $2)
echo "Files changes: $file_changed"


if [[ $file_changed == *"docs/terraform/"* ]]; then
    directories_changed=$(echo "$file_changed" | grep -oE "docs/terraform/[^/]+" | sort -u )
    echo "Directories changed: $directories_changed"

    if [[ $(echo "$directories_changed" | wc -l ) -gt 1 ]]; then
        echo "Multiple directories changed. Existing..."
    fi

    export LAYER_NAME=$(echo "$directories_changed" | cut -d'/' -f3)
    echo "Layer name: $LAYER_NAME"

else
    echo "No changes in doc/terrform/ directory. skil==pping layer check"
fi
