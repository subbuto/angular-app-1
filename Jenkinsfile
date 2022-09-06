pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('jenkins-docker')
  }
  stages {
    stage('SCM Checkout') {
      steps {
         git 'https://github.com/subbuto/angular-app-1.git'    
      }
    }
     stage('Build dockerimage') {
      steps {
        sh 'docker build -t subhashinikuruva/nodeapp:$BUILD_NUMBER .'
      }
    }
    stage('login to dockerhub') {
      steps {
        sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
      }
    }
    stage('push image') {
      steps {
        sh 'docker push subhashinikuruva/nodeapp:$BUILD_NUMBER'
        }
      }
    }
}
   
