# Use Node.js as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json before installing dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Expose the app port (adjust based on your app, usually 3000 or 5000)
EXPOSE 5000

# Set the default command to start the app
CMD ["npm", "start"]
