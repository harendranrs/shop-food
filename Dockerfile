# Use an official Python runtime as a base image
FROM python:3

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the content of the local src directory to the working directory
COPY . .

# Expose port 8000 to the outside world
EXPOSE 8000

# Run the HTTP server when the container launches
CMD ["python3", "-m", "http.server", "8000"]
