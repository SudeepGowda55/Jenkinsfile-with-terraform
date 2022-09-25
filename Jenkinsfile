pipeline {

    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SudeepGowda55/Jenkinsfile-with-terraform.git'
            }
        }
        stage ('terraform init'){
            steps {
                sh 'terraform init'
            }
        }
        stage ('terraform plan'){
            steps {
                sh 'terraform plan'
            }
        }
        stage ('terraform apply'){
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}