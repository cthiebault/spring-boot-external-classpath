run-mvn:
	mvn spring-boot:run


run-java:
	mvn clean package
	java -Dloader.path=src/main/config,target/classpath-0.1.0-SNAPSHOT.jar -jar target/classpath-0.1.0-SNAPSHOT.jar
