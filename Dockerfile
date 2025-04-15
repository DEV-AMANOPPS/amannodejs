FROM node:21-alpine
# Set the working directory 
WORKDIR /usr/src/app
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application code to the working directory
COPY . .
# Expose the application port (if needed)
EXPOSE 3000
# Start the application
CMD ["npm", "start"]
