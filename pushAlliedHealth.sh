#!/bin/sh

## AlliedHealth...

echo "chmod on AlliedHealth directories..."
find /Users/eslcd/ProductionFeed/V3/AlliedHealth/ -type f -exec chmod 644 {} \;

echo "chmod on AlliedHealth files..."
find /Users/eslcd/ProductionFeed/V3/AlliedHealth/ -type d -exec chmod 755 {} \;

echo "pushing AlliedHealth files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/AlliedHealth/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/AlliedHealth/

