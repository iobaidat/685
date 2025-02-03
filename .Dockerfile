# Use the Ubuntu 24.04 base image
FROM ubuntu:24.04

# Set the environment variable to disable interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install GCC, GDB, and other essential build tools
RUN apt-get update && \
    apt-get install -y \
      gcc \
      gdb \
      file \
      nano \
      build-essential \
      make \
      && rm -rf /var/lib/apt/lists/*

# Set the default command to run when the container starts
CMD ["/bin/bash"]