# takes amazoncorretto as a base image
FROM amazoncorretto:17

# add metadata for the information
LABEL author="practice"
LABEL project="spring-prtclinic"

# download spring petclinic
RUN curl -O https://khajareferenceapps.s3.ap-south-1.amazonaws.com/springpetclinic-3.2.0-SNAPSHOT.jar

# expose 8080 port as spring petclinic needs 8080

EXPOSE 8080

# command to start the application
CMD ["java", "-jar", "spring-petclinic-3.2.0-SNAPSHOT.jar"]