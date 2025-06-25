# Use a lightweight Python base image
FROM python:3.11-slim

# Set environment variables to prevent Python from writing .pyc files and buffering stdout
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Copy project files into the image
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Django will run on
EXPOSE 8000

# Start the Django development server
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

