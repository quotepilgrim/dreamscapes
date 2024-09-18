#!/bin/bash

cd dreamscapes
unzip -fo ../info.ipk3
output=$(zip -rFS ../dist/dreamscapes.ipk3 .)

echo $output

version_file="version"

if [[ "$output" != *"Archive is current"* ]]; then
    if [ -f "$version_file" ]; then
        version=$(<"$version_file")
        new_version=$((version + 1))
        echo "$new_version" > "$version_file"
        echo "Version updated to $new_version"
        zip -rFS ../dist/dreamscapes.ipk3 .
    else
        echo "Version file does not exist."
    fi
fi