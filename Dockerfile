# Use the official n8n image as base
FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV N8N_SECURE_COOKIE=false
ENV TZ=Asia/Kolkata
ENV WEBHOOK_URL=https://n8n-izhaan.fun
ENV N8N_EDITOR_BASE_URL=https://n8n-izhaan.fun
ENV N8N_PROTOCOL=https

# Expose the port n8n runs on
EXPOSE 5678

# Set the working directory
WORKDIR /home/node

# Create the data directory and set permissions
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Switch to node user
USER node

# Default command (inherited from base image)
CMD ["n8n", "start"]
