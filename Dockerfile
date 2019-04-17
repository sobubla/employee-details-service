FROM openjdk:8u171-alpine3.7
RUN apk --no-cache add curl
COPY target/employee-details-service*.jar employee-details-service.jar
CMD java ${JAVA_OPTS} -jar employee-details-service.jar