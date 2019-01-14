#!/bin/sh

## Anatomy And Physiology...

echo "chmod on AnatomyAndPhysiology directories..."
find /Users/eslcd/ProductionFeed/V3/AnatomyAndPhysiology/ -type f -exec chmod 644 {} \;

echo "chmod on AnatomyAndPhysiology files..."
find /Users/eslcd/ProductionFeed/V3/AnatomyAndPhysiology/ -type d -exec chmod 755 {} \;

echo "pushing AnatomyAndPhysiology files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/AnatomyAndPhysiology/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/AnatomyAndPhysiology/

