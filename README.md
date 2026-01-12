# Mini DevOps Pipeline

## Project Overview
This is a **Mini DevOps Pipeline project** built using **Bash scripts**, **Docker**, and **Nginx**.  
It demonstrates how a simple CI/CD look like: 

1. **Build** – Prepare your HTML application.  
2. **Deploy** – Deploy the app inside a Dockerized Nginx server.  
3. **Monitor** – Check if Nginx is running and restart if necessary.  
4. **Pipeline** – Automate the above steps using a single `pipeline.sh` script.  

## Project Structure
myapp/
├── index.html # HTML app to display in browser
├── build.sh # Builds the app into a build folder
├── deploy.sh # Deploys app using Docker/Nginx
├── monitor.sh # Monitors the deployment
├── pipeline.sh # Automates build → deploy → monitor
└── Dockerfile # Docker configuration for Nginx container

There are some pre-requisite, in case you dont have them in your pc :-
## Prerequisites
- WSL (Ubuntu) or Linux environment  
- Docker installed and running  
- Git (for version control, optional)
- 
## Setup Instructions

## YOU CAN ALSO Clone the repository (optional); 
bash
git clone https://github.com/<your-username>/Mini-DevOps-Pipeline.git
cd Mini-DevOps-Pipeline 

2. MAKE SCRIPTS EXECUTABLE :- 
chmod +x *.sh

3. BUILD AND RUN THE PIPELINE :-
./pipeline.sh
NOW, WHAT WILL THIS CMD DID TO YOUR SCRIPT.
This will 
- Build your app files.
- Build the Docker image with Nginx.
- Run the Docker container exposing port 8080.
- Monitor the container and restart if needed.

4. ACCESS THE APP :-
   http://localhost:8080
   OPEN THE BROWSER USING THIS ABOVE LINK

## UPDATING YOUR APP 
- Edit index.html with your changes.
- Re-run the pipeline: USING CMD
      ./pipeline.sh
AT LAST, ALL YOU WANT TO DO IS TO REFRESH THE BROWSER TO SEE UPDATED CONTENT 



