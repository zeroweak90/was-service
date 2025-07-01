FROM tomcat:9-jdk8

COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
COPY application.properties /usr/local/tomcat/config/application.properties

ENV DB_URL=jdbc:mysql://rds.cpmjp0menslk.ap-northeast-2.rds.amazonaws.com/pick1?useUnicode=true
ENV DB_USER=admin
ENV DB_PASS=12andro12

ENV CATALINA_OPTS="-Dspring.config.location=file:/usr/local/tomcat/config/application.properties"

CMD ["catalina.sh", "run"]


