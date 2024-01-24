# Use an official Node runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages specified in requirements.txt
RUN npm install

# Make port 80 available to the world outside this container
EXPOSE 90

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["node", "-e", "require('http').createServer((req, res) => res.end(require('fs').readFileSync('index.html'))).listen(90)"]

