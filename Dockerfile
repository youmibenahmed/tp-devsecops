FROM eclipse-temurin:21-jre

RUN apt-get update \
    && apt-get install -y --only-upgrade apt libapt-pkg7.0 \
    && apt-get upgrade -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY target/democyber-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]