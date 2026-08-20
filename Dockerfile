FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /workspace

# Copy scripts into the image (build context)
COPY scripts/ /opt/scripts/

# Ensure scripts are executable + CRLF-safe, then run them during build
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends ca-certificates curl sed; \
    sed -i 's/\r$//' /opt/scripts/*.sh; \
    chmod +x /opt/scripts/*.sh; \
    /opt/scripts/initialization.sh; \
    /opt/scripts/install-git.sh; \
    /opt/scripts/install-claude-code.sh; \
    /opt/scripts/install-tmux.sh; \
    rm -rf /var/lib/apt/lists/*

# Make sure claude is callable in all shells
ENV PATH="/root/.local/bin:${PATH}"

CMD ["bash"]
