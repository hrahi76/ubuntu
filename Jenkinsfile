ubuntu {
  agent any
  
  environment {
    DOCKERHUB_CREDENTIALS = credentials('hrahi-dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t hrahi/hr-ubuntu:latest .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push hrahi/hr-ubuntu:latest'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
