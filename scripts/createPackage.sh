#!/bin/bash

# Define the root directory of your applications
rootDir="./../application/CohortManager/src/Functions"

# Define the destination directory for the artifacts
artifactsDir="./artifacts"

# Create the artifacts directory if it doesn't exist
mkdir -p "$artifactsDir"

# Function to check and compress .NET applications
compressDotNetApp() {
    local folder=$1
    local baseFolder=$(basename "$folder")

    # Check if the folder contains a .NET application
    if ls "$folder"/*.csproj 1> /dev/null 2>&1 || ls "$folder"/*.sln 1> /dev/null 2>&1; then
        # Compress the .NET application folder
        echo "Compressing .NET application in $folder..."
        zip -r "$artifactsDir/${baseFolder}.zip" "$folder" -x "*.git*" -x "bin/*" -x "obj/*"
        echo "Compressed and moved to $artifactsDir/${baseFolder}.zip"
    else
        echo "$folder does not contain a .NET application."
    fi
}

# Export the function so it can be used in find -exec
export -f compressDotNetApp
export artifactsDir

# Find all directories in the specified root directory and compress them if they contain a .NET application
find "$rootDir" -type d -exec bash -c 'compressDotNetApp "$0"' {} \;

echo "All .NET applications have been processed."