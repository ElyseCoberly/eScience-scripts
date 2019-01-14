#!/bin/sh

## Microbiology...

echo "chmod on Microbiolgoy directories..."
find /Users/eslcd/ProductionFeed/V3/Microbiology/ -type f -exec chmod 644 {} \;

echo "chmod on Microbiology files..."
find /Users/eslcd/ProductionFeed/V3/Microbiology/ -type d -exec chmod 755 {} \;

echo "pushing Microbiology files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/Microbiology/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/Microbiology/

