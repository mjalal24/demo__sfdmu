# Use an official Node 18 image (which meets the >=18.6.0 requirement)
FROM node:18

# (Optional) Install any extra OS-level dependencies.
RUN apt-get update && \
    apt-get install -y wget unzip && \
    rm -rf /var/lib/apt/lists/*

# Install the new Salesforce CLI.
RUN npm install -g @salesforce/cli

# Install the sfdx-git-delta plugin via the new CLI.
RUN sf plugins install sfdx-git-delta

# Set the working directory where your repository will be mounted.
WORKDIR /workspace

# Default to bash so you can run commands interactively if needed.
CMD ["bash"]
