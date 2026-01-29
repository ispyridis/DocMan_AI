# Use nginx alpine for minimal image size
FROM nginx:alpine

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy application files
COPY . /usr/share/nginx/html/

# Remove unnecessary files from the html directory
RUN rm -f /usr/share/nginx/html/Dockerfile \
    /usr/share/nginx/html/nginx.conf \
    /usr/share/nginx/html/cloudbuild.yaml \
    /usr/share/nginx/html/.gitattributes

# Cloud Run uses PORT environment variable
ENV PORT=8080
EXPOSE 8080

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
