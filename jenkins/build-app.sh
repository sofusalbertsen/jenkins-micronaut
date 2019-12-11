#! /bin/bash
#app/gradlew shadowjar -p app
docker run --rm -u gradle -v "$PWD"/app:/home/gradle/project -w /home/gradle/project gradle:jdk11 gradle clean shadowjar