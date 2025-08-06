#!/bin/bash

# Save to temp file first to avoid pipe issues
tmpfile=$(mktemp /tmp/screenshot-XXXXXX.png)

# Let user select area and capture
slurp | grim -g - "$tmpfile"

# Only copy to clipboard if capture was successful
if [ -s "$tmpfile" ]; then
    wl-copy < "$tmpfile"
fi

# Clean up
rm "$tmpfile"

