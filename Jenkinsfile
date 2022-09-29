pipeline {

    agent any

    parameters {
        string(name: 'sudeep', description: "hai i am too bad")
    }

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SudeepGowda55/Jenkinsfile-with-terraform.git'
            }
        }
        stage ('initial call'){
            steps {
                echo "hai i am badass"
            }
        }
        stage ('second call'){
            steps {
                echo "hai i am more bad"
            }
        }
        // stage ('terraform plan'){
        //     steps {
        //         sh 'terraform plan'
        //     }
        // }
        // stage ('terraform apply'){
        //     steps {
        //         sh 'terraform apply --auto-approve'
        //     }
        // }
    }
}