# Use the official Salesforce CLI slim image as the base.
FROM salesforce/cli:2.77.1-slim

# Switch to root (if needed) to install sfdx-git-delta.
USER root

# Install sfdx-git-delta globally.
RUN npm install -g sfdx-git-delta

# Switch back to the default non-root user.
USER sfdx

# Set the working directory.
WORKDIR /workspace
