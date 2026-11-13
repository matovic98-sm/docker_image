# Use Node.js version 16 as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install the application's required dependencies
RUN npm install

# Copy the remaining application files into the container
COPY . .

# Make port 3000 available to the application
EXPOSE 3000

# Start the application when the container runs
CMD ["npm", "start"]
