# docker build -t hola-war-mysql .
# docker run -dp 8000:8080 hola-war-mysql
# docker-compose up -d
# docker exec -it XXXX /bin/sh 
########
FROM tomcat:10.0.2-jdk15-openjdk-oraclelinux7
COPY holamundo2.war /usr/local/tomcat/webapps
#ADD holamundo.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]