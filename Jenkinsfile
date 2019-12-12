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
            cleanWs(cleanWhenUnstable: true, cleanWhenSuccess: true, cleanWhenNotBuilt: true, cleanWhenFailure: true, cleanWhenAborted: true)
          }
        }

      }
    }

    stage('Archive the result') {
      steps {
        archiveArtifacts 'app/build/libs/'
      }
    }

  }
}