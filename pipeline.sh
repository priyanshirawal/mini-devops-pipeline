#!/bin/bash
echo "🚀 Starting Mini DevOps Pipeline with Docker..."

# Step 1: Build Docker image
docker build -t myapp .

# Step 2: Stop old container (if running)
docker stop myapp-container 2>/dev/null || true
docker rm myapp-container 2>/dev/null || true

# Step 3: Run new container
docker run -d --name myapp-container -p 8080:80 myapp

echo "🎉 Pipeline complete! Visit http://localhost:8080"
#!/bin/bash
echo "⚙️ Running Mini DevOps Pipeline..."

./build.sh && ./deploy.sh && ./monitor.sh

echo "🎉 Pipeline finished!"
