#! /bin/sh 

for file in ./uninstallers/*; do
    if [ -f "$file" ]; then
        sh "$file"
    fi
done
