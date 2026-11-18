# Step 1: Use Python as the base image
FROM python:3.12-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements file into the container
COPY requirements.txt .

# Step 4: Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the application files into the container
COPY . .

# Step 6: Expose port 5000
EXPOSE 5000

# Step 7: Start the Python application
CMD ["python", "app.py"]


