# Use an official Python 3.14 image from Docker Hub
FROM python:3.14-slim-bookworm

# Set the working directory
WORKDIR /app

# Copy your application code
COPY . /app

# Install the dependencies 
RUN pip install -r requirement.txt

# Export the port FastAPI will run on
EXPOSE 5000

# Command to run the FastAPI app
CMD [ "python3", "app.py" ]