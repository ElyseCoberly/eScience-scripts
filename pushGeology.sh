#!/bin/sh

## Geology...

echo "chmod on Geology directories..."
find /Users/eslcd/ProductionFeed/V3/Geology/ -type f -exec chmod 644 {} \;

echo "chmod on Geology files..."
find /Users/eslcd/ProductionFeed/V3/Geology/ -type d -exec chmod 755 {} \;

echo "pushing Geology files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/Geology/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/Geology/

