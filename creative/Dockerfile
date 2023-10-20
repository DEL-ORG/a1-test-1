FROM httpd:latest

WORKDIR /usr/local/apache2/htdocs/

# Copy your local HTML file to the default Apache web root directory.
COPY .  .
# Expose the HTTPS port (443), or you can use a different port if needed.
EXPOSE 80

# Start Apache in the foreground when the container runs.
CMD ["httpd-foreground"]