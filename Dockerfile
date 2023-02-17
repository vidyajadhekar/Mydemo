FROM gradle:6.5.0-jdk11 AS builder

WORKDIR /tmp/build
COPY . .
RUN gradle --no-daemon build

FROM openjdk:11.0.4-jre
ENV PRODUCT_CATLOG_API_HOME=/product-catlog
WORKDIR $PRODUCT_CATLOG_API_HOME
ENV EPSAGON_TOKEN=$EPSAGON_TOKEN
ENV EPSAGON_APP_NAME=$EPSAGON_APP_NAME
RUN curl -o epsagon-agent-1.0.3-all.jar https://epsagon-java-sdk.s3.amazonaws.com/epsagon-agent-1.0.3-all.jar
COPY --from=builder /tmp/build/build/libs/service-springboot-seed-selector-product-catalog-*.jar $PRODUCT_CATLOG_API_HOME/product-catlog.jar
CMD ["java", "-javaagent:./epsagon-agent-1.0.3-all.jar", "-jar", "product-catlog.jar"]
