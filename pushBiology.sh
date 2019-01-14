#!/bin/sh

## Biology...

echo "chmod on Biology directories..."
find /Users/eslcd/ProductionFeed/V3/Biology/ -type f -exec chmod 644 {} \;

echo "chmod on Biology files..."
find /Users/eslcd/ProductionFeed/V3/Biology/ -type d -exec chmod 755 {} \;

echo "pushing Biology files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/Biology/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/Biology/

