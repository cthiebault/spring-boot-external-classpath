run-mvn:
	mvn spring-boot:run


run-java:
	mvn package
	java -jar target/classpath-0.1.0-SNAPSHOT.war
