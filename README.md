### Flask To-Do Application

This repository contains a simple Flask-based to-do application, containerized using Docker and integrated with New Relic for monitoring purposes.


## Features

- **Flask Web Application**: A minimal to-do list application built with Flask.
- **Dockerized Setup**: Easily deployable using Docker and Docker Compose.
- **New Relic Integration**: Monitoring and performance tracking with New Relic Infrastructure agent.


## 📂 Project Structure

<pre>
.
├── .github/
│   └── workflows/              # GitHub Actions workflows
├── templates/                  # HTML templates for the Flask app
│   └── index.html          
├── Dockerfile                  # Dockerfile for the Flask app
├── app.py                      # Main Flask application
├── docker-compose.yml          # Docker Compose configuration
├── newrelic-infra.dockerfile   # Dockerfile for New Relic Infrastructure agent
├── requirements.txt            # Python dependencies 
└── README.md                   # Project documentation
</pre>

  
## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- New Relic account with a valid **API key** and **Account ID**


## Setup & Deployment

1. **Clone the repository**:

   ``` git clone https://github.com/AdmineLaura/application.git ```

   ``` cd application ```


3. Build and run the application:
```docker-compose up --build```

The Flask application will be accessible at http://localhost:5000.


## Monitoring with New Relic

The newrelic-infra.dockerfile sets up the New Relic Infrastructure agent within a Docker container. Ensure your New Relic credentials are correctly set in the .env file. The agent will start alongside the Flask application when you run docker-compose up.
