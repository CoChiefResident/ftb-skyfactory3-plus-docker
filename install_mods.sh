#!/bin/sh

filename="/minecraft-mods/mods.txt"
basedir="$1"

# Copy jar files
while read var ; 
do
    # Skip comments
    case "$var" in
        \#*) continue;;
        *) echo "installing mod: $var" ;;
    esac
    
    # Make sure the mods folder exists
    mkdir -p $basedir/mods
    
    # Copy over mod file
    wget -O $basedir/mods/`basename $var` $var

done < $filename

# Copy config files
cp -r /minecraft-mods/config /minecraft/
