#!/bin/sh

## Forensics...

echo "chmod on Forensics directories..."
find /Users/eslcd/ProductionFeed/V3/Forensics/ -type f -exec chmod 644 {} \;

echo "chmod on Forensics files..."
find /Users/eslcd/ProductionFeed/V3/Forensics/ -type d -exec chmod 755 {} \;

echo "pushing Forensics files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/Forensics/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/Forensics/

