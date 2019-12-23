pipeline {
  agent any
  stages {
    stage('build app') {
      agent {
        docker {
          image 'gradle:jdk11'
        }
      }
      steps {
        sh 'jenkins/build-app.sh'
        archiveArtifacts 'app/build/libs/'
      }       
    }
  }
}
