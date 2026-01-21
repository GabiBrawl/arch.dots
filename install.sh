#!/bin/bash
# Install stow if not present
sudo pacman -S --needed stow

# List of folders to stow
apps=(
    "bash"
    "hyprland"
)

echo "Stowing..."

for app in "${apps[@]}"; do
    stow "$app"
    echo "Stowed $app"
done

echo "Stowing done."