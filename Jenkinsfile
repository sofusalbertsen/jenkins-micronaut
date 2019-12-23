pipeline {
  agent any
  stages {
    stage('clone down and test') {
      agent {
        node {
          label 'Host'
        }

      }
      steps {
        checkout scm
        stash(excludes: '.git', name: 'code')
        deleteDir()
      }
    }

    stage('say hello') {
      parallel {
        stage('say hello') {
          steps {
            sh 'echo "hello world"'
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
            unstash 'code'
            sh 'jenkins/build-app.sh'
            archiveArtifacts 'app/build/libs/'
          }
        }

      }
    }

  }
  options {
    skipDefaultCheckout(true)
  }
}