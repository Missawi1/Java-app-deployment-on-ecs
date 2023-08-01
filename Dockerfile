# Use the official Tomcat image as the base image
FROM tomcat:9.0-jdk11

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file of your Java web application to the Tomcat webapps directory
COPY target/* /usr/local/tomcat/webapps/

# Expose the default Tomcat port (8080) for external access
EXPOSE 8080

# Start Tomcat when the Docker container starts
CMD ["catalina.sh", "run"]