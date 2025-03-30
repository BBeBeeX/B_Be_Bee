#!/bin/bash

# Prompt the user to enter a version number
read -p "Please enter the version number (e.g., 1.0.0): " version

# Ensure the user has entered a version number
if [[ -z "$version" ]]; then
    echo "Error: Version number cannot be empty!"
    exit 1
fi

# Define the source files and their corresponding new names
declare -A files=(
    ["build/app-arm64-v8a-release.apk"]="B_Be_Bee-${version}-android-arm64v8a.apk"
    ["build/app-armeabi-v7a-release.apk"]="B_Be_Bee-${version}-android-arm32v7a.apk"
    ["build/app-x86_64-release.apk"]="B_Be_Bee-${version}-android-x86_64.apk"
    ["build/B_Be_Bee.zip"]="B_Be_Bee-${version}-windows-x86-64.zip"
)

# Iterate over the files and rename them
for src in "${!files[@]}"; do
    if [[ -f "$src" ]]; then
        mv "$src" "build/${files[$src]}"
        echo "Renamed: $src → build/${files[$src]}"
    else
        echo "Warning: File not found - $src"
    fi
done

echo "Renaming process completed!"

