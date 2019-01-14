#!/bin/sh

## Astronomy 

echo "chmod on Astronomy directories..."
find /Users/eslcd/ProductionFeed/V3/Astronomy/ -type f -exec chmod 644 {} \;

echo "chmod on Astronomy files..."
find /Users/eslcd/ProductionFeed/V3/Astronomy/ -type d -exec chmod 755 {} \;

echo "pushing Astronomy files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/Astronomy/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/Astronomy/

