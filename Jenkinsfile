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
          agent {
            docker {
              image 'gradle:jdk11'
            }

          }
          steps {
            sh 'ls'
            sh 'jenkins/build-app.sh'
            archiveArtifacts 'app/build/libs/'
            cleanWs(cleanWhenUnstable: true, cleanWhenSuccess: true, cleanWhenNotBuilt: true, cleanWhenFailure: true, cleanWhenAborted: true)
          }
        }

      }
    }

  }
}