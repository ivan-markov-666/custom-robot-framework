ensure_folder_exists() {
    folderPath="$1"
    if [ ! -d "$folderPath" ]; then
        mkdir -p "$folderPath"
        echo "Created new folder: $folderPath"
    else
        echo "The folder already exists: $folderPath"
    fi
}