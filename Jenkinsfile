node{

  git branch: "master", url: "https://github.com/jglick/simple-maven-project-with-tests.git", credentialsId: "git" 

  stage ('Build') {
    def "/home/ec2-user/maven/apache-maven-3.8.4"
    sh "mvn clean package"
  }

  stage ('create docker image') {
    sh "docker build -t naresh ."
  }
}
