pipeline {
  agent any
  stages {
    stage('Hello world') {
      parallel {
        stage('Hello world') {
          steps {
            sh 'ls'
          }
        }

        stage('build app') {
          steps {
            sh 'ls'
            sh 'docker run --rm -u gradle -v "$PWD"/app:/home/gradle/project -w /home/gradle/project gradle:jdk11 gradle clean shadowjar'
            sh 'jenkins/build-app.sh'
            archiveArtifacts 'app/build/libs/'
          }
        }

      }
    }

  }
}