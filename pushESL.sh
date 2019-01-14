#!/bin/sh

echo "chmod on directories..."
find /Users/eslcd/ProductionFeed/V3/ -type f -exec chmod 644 {} \;

echo "chmod on files..."
find /Users/eslcd/ProductionFeed/V3/ -type d -exec chmod 755 {} \;

echo "pushing files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/
