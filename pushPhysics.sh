#!/bin/sh

## Physics...

echo "chmod on Physics directories..."
find /Users/eslcd/ProductionFeed/V3/Physics/ -type f -exec chmod 644 {} \;

echo "chmod on Physics files..."
find /Users/eslcd/ProductionFeed/V3/Physics/ -type d -exec chmod 755 {} \;

echo "pushing Physics files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/Physics/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/Physics/

