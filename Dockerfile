# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY ./ ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose a port (if your app listens on a specific port)
EXPOSE 3000

# Specify the command to run your application
CMD ["node", "app.js"]
