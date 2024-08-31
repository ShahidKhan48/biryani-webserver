# Use a Node.js base image
FROM node:14

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container (if any)
COPY package*.json ./

# Install any required dependencies
RUN npm install

# Copy the entire project folder to the container
COPY . .

# Expose the port that the Node.js server will run on
EXPOSE 3000

# Command to run the app
CMD ["node", "server.js"]
