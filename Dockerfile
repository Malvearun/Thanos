# Start from the Thanos image provided by thanosio
FROM thanosio/thanos:v0.35.1

# Switch to root to perform setup tasks
USER root

# Ensure necessary directories exist and set permissions
RUN mkdir -p /prometheus && \
    touch /prometheus/thanos.shipper.json && \
    chown -R 1001:1001 /prometheus && \
    chmod -R 755 /prometheus

# Set the entrypoint to the Thanos binary
ENTRYPOINT ["/thanos", "sidecar"]
