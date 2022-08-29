node {
  stage('Checkout SCM'){
    git branch:'main', url:'https://github.com/subbuto/angular-app-1.git'
  }
  stage('Install node modules'){
    sh "npm install"
  }
  stage('Build'){
    sh "npm run build:ssr"
  }
  stage('Deploy'){
    sh "pm2 restart all"
  }
}
