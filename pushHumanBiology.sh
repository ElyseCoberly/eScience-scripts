#!/bin/sh

## Human Biology...

echo "chmod on HumanBiology directories..."
find /Users/eslcd/ProductionFeed/V3/HumanBiology/ -type f -exec chmod 644 {} \;

echo "chmod on HumanBiology files..."
find /Users/eslcd/ProductionFeed/V3/HumanBiology/ -type d -exec chmod 755 {} \;

echo "pushing HumanBiology files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/HumanBiology/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/HumanBiology/

