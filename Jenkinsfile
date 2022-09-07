pipeline {
  agent any 
    environment {
      DOCKERHUB_CREDENTIALS = credentials('dockerhubcredentials')
    }
      stages {
        stage('SCM Checkout') {
          steps {
            git branch: 'main', url: 'https://github.com/subbuto/angular-app-1.git'
          }
        }
        stage('Build Dockerimage') {
          steps {
            sh 'docker build -t subhashinikuruva/nodeapp:$BUILD_NUMBER .'
          }
        }
        stage('login to dockerhub') {
          steps {
            sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
          }
        }
        stage('push image') {
          steps {
            sh 'docker push subhashinikuruva/nodeapp:$BUILD_NUMBER'
          }
        }
        stage('Run container on server') {
          steps {
            sshagent (credentials: ['deploy-dev']) {
               sh 'ssh -o StrictHostKeyChecking=no ec2-user@3.111.213.81'
            
          }
        }
      }
}

          
          
        
