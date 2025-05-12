# Use official tileserver-gl base image
FROM maptiler/tileserver-gl:latest

# Set working directory inside container
WORKDIR /data

# Copy config file and all MBTiles files into the container
COPY config.json .
COPY *.mbtiles .

# Expose default HTTP port
EXPOSE 8080

# Start tileserver-gl with custom config
CMD ["--config", "/data/config.json"]
