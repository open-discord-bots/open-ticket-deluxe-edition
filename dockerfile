# Docker File for Open Ticket v4
# Use the official Node.js 20 image from Docker Hub
FROM node:20-alpine

# Set pterodactyl working directory inside the container
WORKDIR /home/container

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's source code into the container
COPY . .

# Run the bot from index.js
CMD ["node", "index.js"]