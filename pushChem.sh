#!/bin/sh

## Chemistry...

echo "chmod on Chemistry directories..."
find /Users/eslcd/ProductionFeed/V3/Chemistry/ -type f -exec chmod 644 {} \;

echo "chmod on Chemistry files..."
find /Users/eslcd/ProductionFeed/V3/Chemistry/ -type d -exec chmod 755 {} \;

echo "pushing Chemistry files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/Chemistry/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/Chemistry/

