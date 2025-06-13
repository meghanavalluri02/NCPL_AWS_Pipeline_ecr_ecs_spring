# Use Amazon Corretto 17 from ECR Public instead of Docker Hub
FROM public.ecr.aws/amazoncorretto/amazoncorretto:17
 
# Set working directory
WORKDIR /app
 
# Copy JAR file to container
COPY target/demo-1.0.0.jar app.jar
 
# Expose port 8080
EXPOSE 8080
 
# Run the JAR
CMD ["java", "-jar", "app.jar", "--server.port=8080"]
