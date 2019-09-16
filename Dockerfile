FROM centos
RUN yum -y install maven
COPY pom.xml /home/swathivadlakonda/docker/mavenDoc/pom.xml
COPY src /home/swathivadlakonda/docker/mavenDoc/src
WORKDIR	/home/swathivadlakonda/docker/mavenDoc 
RUN mvn validate
RUN mvn package
CMD ["java","-cp","target/mavenDoc-1.0-SNAPSHOT.jar","com.doc.App"] 

