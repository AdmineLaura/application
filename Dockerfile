# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Newrelic key environment file
ENV NEW_RELIC_CONFIG_FILE=newrelic.ini

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

RUN echo "Contents of /app:" && ls -lah /app



# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
# CMD ["python3", "/app/app.py"]
CMD ["newrelic-admin", "run-program", "python3", "/app/app.py"]
