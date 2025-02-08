# Use the official Node.js image as the base.
FROM node:16

# Install any additional OS-level dependencies (if needed).
RUN apt-get update && \
    apt-get install -y wget unzip && \
    rm -rf /var/lib/apt/lists/*

# Install the Salesforce CLI globally via npm.
RUN npm install -g sfdx-cli

# Install sfdx-git-delta globally.
RUN npm install -g sfdx-git-delta

# Create and set the working directory.
WORKDIR /workspace

# (Optional) Expose a port if needed by your application.
# EXPOSE 8080

# Default command (can be overridden by docker run).
CMD ["bash"]
