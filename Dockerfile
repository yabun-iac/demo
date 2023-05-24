# image mvn java-17
FROM maven:3.8.5-openjdk-17

# copy src to root folder - subfolder src
COPY src /usr/app/src

# copy pom to rrot forlder
COPY pom.xml /usr/app

# create build folder => target
RUN cd /usr/app && mvn clean package

# root directory / target
WORKDIR /usr/app/target

# create ARG JAR_FILE
ARG JAR_FILE=*.jar

# generic name
RUN mv ${JAR_FILE} app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]
