FROM openjdk:21-oracle
COPY target/*.jar virtual_time_capsule.jar
EXPOSE 8089
ENTRYPOINT ["java", "-jar", "virtual_time_capsule.jar"]