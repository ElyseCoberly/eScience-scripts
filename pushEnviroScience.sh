#!/bin/sh

## Environmental Science...

echo "chmod on EnvironmentalScience directories..."
find /Users/eslcd/ProductionFeed/V3/EnvironmentalScience/ -type f -exec chmod 644 {} \;

echo "chmod on EnvironmentalScience files..."
find /Users/eslcd/ProductionFeed/V3/EnvironmentalScience/ -type d -exec chmod 755 {} \;

echo "pushing EnvironmentalScience files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/EnvironmentalScience/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/EnvironmentalScience/

