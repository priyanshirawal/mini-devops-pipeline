#!/bin/bash
echo "📡 Monitoring Nginx..."

if systemctl is-active --quiet nginx; then
    echo "✅ Nginx is running."
else
    echo "❌ Nginx is down. Restarting..."
    sudo systemctl restart nginx
fi
#!/bin/bash
echo "🚀 Deploying application..."

BUILD_DIR=/home/$USER/build
WEB_DIR=/var/www/html

sudo cp -r $BUILD_DIR/* $WEB_DIR/
sudo systemctl restart nginx

echo "✅ Deployment successful! Visit http://localhost"
