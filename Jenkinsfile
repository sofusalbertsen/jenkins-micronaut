pipeline {
  agent any
  stages {
    stage('clone down and test') {
      agent {
        node {
          label 'swarm'
        }

      }
      steps {
        stash(excludes: '.git', name: 'code')
        deletedir()
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
}