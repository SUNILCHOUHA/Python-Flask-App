# Use official Python image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements.txt first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose port (if using Flask or similar)
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
