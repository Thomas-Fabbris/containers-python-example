# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the workdir
WORKDIR /app

# Copy the requirements
COPY ./requirements.txt .

# Install the required packages (pip)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python script
COPY ./ascii_image_converter.py .
COPY ./test2.jpg .

# Define environmental variables
ENV PYTHONPATH=/app

# Define the command to run the script
ENTRYPOINT ["python", "/app/ascii_image_converter.py", "--cols", "200", "--file"]
