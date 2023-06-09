mvn clean install
cp  /home/ics/zoo-api/target/animania.war -d /opt/tomcat9/webapps/
service tomcat9 restart
