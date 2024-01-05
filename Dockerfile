FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war  http://admin:admin@54.242.215.9:8081/repository/snapshot/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20240105.051231-1.war
EXPOSE 8081
CMD ["catalina.sh", "run"]
