#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "usage: $0 'new title'"
    exit 1
fi

new_title="$1"

find .. -type f -name "*.html" | while read -r file; do
    sed -i "s|<title>.*</title>|<title>${new_title}</title>|" "$file"
done

echo "titles updated to: $new_title"
