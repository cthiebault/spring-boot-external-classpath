run-mvn:
	export CONFIG_HOME=/home/cthiebault/projects/spring-boot-classpath/src/main/config && \
	mvn spring-boot:run


run-java:
	mvn clean package && \
	export CONFIG_HOME=/home/cthiebault/projects/spring-boot-classpath/src/main/config && \
	java -jar target/classpath-0.1.0-SNAPSHOT.war
