# Base image
FROM ubuntu:20.04

# Install necessary tools
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter \
    && /usr/local/flutter/bin/flutter doctor

# Add Flutter to PATH
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Pre-cache Flutter dependencies
RUN flutter precache

WORKDIR /app

# Default command
CMD ["flutter", "--version"]
