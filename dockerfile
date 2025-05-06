# Use the official TileServer-GL image as a base
FROM maptiler/tileserver-gl:latest

# Set working directory to /data (where TS-GL looks for .mbtiles, config, styles, etc.)
WORKDIR /data

# Copy your local data folder (with .mbtiles, config.json, sprites/, fonts/) into the container
# Replace "./data" with the path to your assets
COPY ./ /data

# Expose the port TileServer-GL serves on (default 8080)
EXPOSE 8080

# By default the image’s entrypoint is already set to launch tileserver-gl,
# so we just pass any flags we want—here, verbose for logging
CMD ["--verbose"]
