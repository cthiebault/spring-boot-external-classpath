run-mvn:
	mvn spring-boot:run -DCONFIG_HOME="/home/cthiebault/projects/spring-boot-classpath/src/main/config"


run-java:
	mvn package
	java -DCONFIG_HOME="/home/cthiebault/projects/spring-boot-classpath/src/main/config" -jar target/classpath-0.1.0-SNAPSHOT.war
