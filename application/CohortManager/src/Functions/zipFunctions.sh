#!/bin/bash
echo "Working on it..."
# Get the absolute path of the script's location
script_dir=$(cd "$(dirname "$0")" && pwd)

# Function to zip a directory if it contains a .csproj file
zip_dotnet_folder() {
  local folder="$1"
  if [ -e "$folder"/*.csproj ]; then
    zip -r "$folder.zip" "$folder"
    echo "Zipped: $folder.zip"
  fi
}

# Find all folders containing .csproj files and zip them
find "$script_dir" -type d -exec bash -c 'zip_dotnet_folder "$0"' {} \;
