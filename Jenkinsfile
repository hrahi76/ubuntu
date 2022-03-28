pipeline {
  agent any
  
  environment {
    DOCKERHUB_CREDENTIALS = credentials('hrahi-dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t hrahi/hr-ubuntu:18.04 .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push hrahi/hr-ubuntu:18.04'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
