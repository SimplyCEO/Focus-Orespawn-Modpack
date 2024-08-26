#!/bin/sh

# Zip files
printf "Preparing modpack...\n" && sleep 1
cd "./src" && zip -rq "Focus_Orespawn_Modpack.zip" ./* && cd ..

# Move modpack to 'build'
mkdir -p ./build
mv "./src/Focus_Orespawn_Modpack.zip" "./build"

# Generate hash for built file
printf "Modpack prepared. Signing...\n" && sleep 1
sha256sum "./build/Focus_Orespawn_Modpack.zip" | cut -d' ' -f1 > "./build/Focus_Orespawn_Modpack.sha256"

printf "Modpack signed and ready to be used.\n"

