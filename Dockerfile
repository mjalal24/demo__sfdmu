# Use an official Node 18 image (satisfies Node >=18.6.0)
FROM node:18

# (Optional) Install any extra OS-level dependencies.
RUN apt-get update && \
    apt-get install -y wget unzip && \
    rm -rf /var/lib/apt/lists/*

# Install the new Salesforce CLI.
RUN npm install -g @salesforce/cli

# Verify that the Salesforce CLI is installed.
RUN echo "Verifying SF CLI installation:" && sf --version

# Install the sfdx-git-delta plugin via the new CLI (auto-confirm with echo y).
RUN echo y | sf plugins install sfdx-git-delta

# Verify that the sfdx-git-delta (sgd) plugin is installed.
RUN echo "Verifying sgd plugin installation:" && sf sgd --help

# Set the working directory where your repository will be mounted.
WORKDIR /workspace

# Default to bash so you can run commands interactively if needed.
CMD ["bash"]
