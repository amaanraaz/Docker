#!/bin/bash

# Get the current hour
HOUR=$(date +%H)

# Determine content based on time range
if [ "$HOUR" -ge 10 ] && [ "$HOUR" -le 12 ]; then
    # CONTENT="Hello from Aman"
    cp /var/www/html/index.aman.html /var/www/html/index.html
elif [ "$HOUR" -ge 16 ] && [ "$HOUR" -le 18 ]; then
    cp /var/www/html/index.defender.html /var/www/html/index.html
else
    cp /var/www/html/index.error.html /var/www/html/index.html
fi

# Write the dynamic content to index.html
# cat <<EOF > /var/www/html/index.html
# <!DOCTYPE html>
# <html>
# <head>
#     <title>Dynamic Static Website</title>
# </head>
# <body>
#     <h1>$CONTENT</h1>
# </body>
# </html>
# EOF

