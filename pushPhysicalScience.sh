#!/bin/sh

## Physical Science...

echo "chmod on PhysicalScience directories..."
find /Users/eslcd/ProductionFeed/V3/PhysicalScience/ -type f -exec chmod 644 {} \;

echo "chmod on PhysicalScience files..."
find /Users/eslcd/ProductionFeed/V3/PhysicalScience/ -type d -exec chmod 755 {} \;

echo "pushing PhysicalScience files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/PhysicalScience/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/PhysicalScience/

