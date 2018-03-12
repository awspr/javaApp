# Start from the official Tomcat image, version 8, JRE 8
FROM maven:3.3-jdk-8-onbuild

FROM tomcat:8-jre8
COPY --from=0 /usr/src/app/target/helloWorld-1.0-SNAPSHOT.war ${CATALINA_HOME}/webapps/helloWorld-1.0-SNAPSHOT.war
CMD ["catalina.sh", "run"]
EXPOSE 8081:8080
