#!/bin/sh

## Sample Labs...

echo "chmod on Sample Lab directories..."
find /Users/eslcd/ProductionFeed/V3/Sample_Labs/ -type f -exec chmod 644 {} \;

echo "chmod on Sample Lab files..."
find /Users/eslcd/ProductionFeed/V3/Sample_Labs/ -type d -exec chmod 755 {} \;

echo "pushing Sample Lab files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/Sample_Labs/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/Sample_Labs/

