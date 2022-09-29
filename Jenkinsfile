pipeline {

    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SudeepGowda55/Jenkinsfile-with-terraform.git'
            }
        }
        stage ('step init'){
            steps {
                echo "hai i am badass"
            }
        }
    }
}