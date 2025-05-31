FROM maven:3.9.9-eclipse-temurin-21-alpine AS BUILD_IMAGE
RUN apk add --no-cache git
RUN git clone https://github.com/kshitijhatwar/vprofile-project.git
ENV MAVEN_OPTS="-Xmx2048m"
RUN cd vprofile-project && git checkout main && mvn install

FROM tomcat
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=BUILD_IMAGE vprofile-project/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
