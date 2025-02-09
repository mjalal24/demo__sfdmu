# Use the official Node.js 18 image as the base image
FROM node:18

# Update package lists and install Git
RUN  apt-get install -y git && \
     rm -rf /var/lib/apt/lists/*

# Install the Salesforce CLI globally using npm
RUN npm install -g @salesforce/cli

# Set the working directory (change as needed)
WORKDIR /app

# Start an interactive shell by default
CMD [ "bash" ]
