# Dockerfile

FROM eclipse-temurin:21-jre-alpine
LABEL maintainer="trofoz"
WORKDIR /app

# Качаємо офіційний .jar-файл Metabase
RUN apk add --no-cache curl bash fontconfig ttf-dejavu \
  && curl -L -o metabase.jar https://downloads.metabase.com/v0.48.7/metabase.jar

EXPOSE 3000

ENTRYPOINT ["java", "-jar", "metabase.jar"]
