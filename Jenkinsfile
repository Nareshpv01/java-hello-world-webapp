pipeline {
  agent any
  tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven"
    }
stages {
stage('Cloning Git') {
steps {
git([url: 'https://github.com/Nareshpv01/java-hello-world-webapp.git', branch: 'master', credentialsId: 'git'])
}
}
stage('Building image') {
steps{
sh 'mvn clean package'
}
}
stage('Create Image') {
steps{
sh 'docker build -t deploy .'
}
}
stage('Create container') {
steps{
sh 'docker run -it -d -p 8082:8080 deploy '
}
}
}
}
