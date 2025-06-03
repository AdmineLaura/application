# Use an official Python runtime as a parent image
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN apt update
RUN apt install -y python3-pip
RUN pip install --no-cache-dir -r requirements.txt
RUN apt install curl -y
RUN curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash && sudo NEW_RELIC_API_KEY=${{ secrets.NEW_RELIC_API_KEY }} NEW_RELIC_ACCOUNT_ID=6474314 NEW_RELIC_REGION=EU /usr/local/bin/newrelic install -y

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python3", "/app/app.py"]
