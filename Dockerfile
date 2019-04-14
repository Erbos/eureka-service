FROM springci/spring-boot-ci-image:2.0.x

WORKDIR /eureka

COPY . /eureka

ADD startEureka.sh /startEureka.sh

RUN ./mvnw clean install

RUN cp target/eureka-service-*.jar ./eureka-service.jar

EXPOSE 8761

ENTRYPOINT ["java", "-jar", "eureka-service.jar", "&"]