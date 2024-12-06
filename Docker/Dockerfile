# Base image
FROM debian:bullseye

ARG USER_ID=1000
ARG USER_HOME=/home/usr
ARG GROUP_ID=1000
ARG KVM_GROUP_ID=999

# Install necessary tools
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

RUN if [ ! $(getent group $GROUP_ID) ]; then groupadd -g $GROUP_ID user; fi
RUN groupadd -g $KVM_GROUP_ID kvm
RUN useradd -m -u $USER_ID -g $GROUP_ID -G $KVM_GROUP_ID -d $USER_HOME -s /usr/sbin/nologin user
# Run all other commands as user
USER user

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git home/usr/local/flutter \
    && /home/usr/local/flutter/bin/flutter doctor

# Add Flutter to PATH
ENV PATH="/home/usr/local/flutter/bin:${PATH}"

# Pre-cache Flutter dependencies
RUN flutter precache

WORKDIR /app

# Default command
CMD ["flutter", "--version"]
