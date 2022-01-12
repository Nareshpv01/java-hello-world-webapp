node{

  git branch: "master", url: "https://github.com/jglick/simple-maven-project-with-tests.git", credentialsId: "git" 

  stage ('Build') {
    sh "mvn clean package"
  }

  stage ('create docker image') {
    sh "docker build -t naresh ."
  }
}
