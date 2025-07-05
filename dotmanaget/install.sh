#! /bin/sh 

for file in ./installers/*; do
    if [ -f "$file" ]; then
        sh "$file"
    fi
done
