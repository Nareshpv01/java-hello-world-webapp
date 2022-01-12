pipeline {
agent any
}

stages {
stage('Cloning Git') {
steps {
git([url: 'https://github.com/Nareshpv01/java-hello-world-webapp.git', branch: 'master', credentialsId: 'git'])
}
}
stage('Building image') {
steps{
sh 'mvn clean packege'
}
}
stage('Create Image') {
steps{
sh 'docker build -t deploy .'
}
}
}

