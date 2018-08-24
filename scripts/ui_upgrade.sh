#!/bin/bash

HOME="/home/pi"
DIR="$HOME/pinkpiui"
SOURCE=$(ls -dt "$DIR/"*"/" | head -1)

# Copy version file
cp "${SOURCE}VERSION" "$DIR"

# Correct permissions
chown pi:pi "$DIR/VERSION"

# Correct file ownership (script executes as root)
chown pi:pi "$DIR/VERSION"

# Correct permissions
chmod 777 "${SOURCE}cache"

# Link latest interface folders
ln -fns "${SOURCE}cache" "$HOME/cache"
ln -fns "${SOURCE}crontab" "$HOME/crontab"
ln -fns "${SOURCE}html" "$HOME/html"
ln -fns "${SOURCE}scripts" "$HOME/scripts"
