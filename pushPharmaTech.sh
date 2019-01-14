#!/bin/sh

## Pharma Technician...

echo "chmod on PharmaTech directories..."
find /Users/eslcd/ProductionFeed/V3/PharmacyTechnician/ -type f -exec chmod 644 {} \;

echo "chmod on PharmaTech files..."
find /Users/eslcd/ProductionFeed/V3/PharmacyTechnician/ -type d -exec chmod 755 {} \;

echo "pushing PharmaTech files..."
rsync --progress -e "ssh -i /Users/eslcd/devweb-110513.pem" --perms -avz /Users/eslcd/ProductionFeed/V3/PharmacyTechnician/ admin@esciencelabs.com:/var/www/esl/public_html/sites/default/files/V3/PharmacyTechnician/

