export JAVA_OPTS="-javaagent:/Users/cdorner/intelipost-workspace/spring-petclinic/opentelemetry-javaagent.jar"
export OTEL_SERVICE_NAME=petclinic
export OTEL_TRACES_EXPORTER=otlp
export OTEL_EXPORTER_OTLP_ENDPOINT=http://10.64.194.250:4317
export OTEL_LOGS_EXPORTER=logging

java -jar $JAVA_OPTS -Dotel.javaagent.debug=false -Dlogging.level.org.springframework.web.filter.CommonsRequestLoggingFilter=DEBUG ./target/spring-petclinic-2.7.0-SNAPSHOT.jar
