pipeline {

    agent any

    parameters {
        string(name: "Sudeep", description: "enter anything")
    }

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SudeepGowda55/Jenkinsfile-with-terraform.git'
            }
        }
        stage ('sending docker file to ansible over ssh connection'){
            steps{
                sshagent(credentials:['ansible-server']) {
                    sh 'ssh -o StrictHostKeyChecking=no root@192.168.1.10'
                    sh 'scp /var/lib/jenkins/workspace/kubernetes/* root@192.168.1.10:/home/civostatsd'
                }
            }
        }
        stage ('second call'){
            steps {
                echo "hai i am more ${params.SUDEEP}"
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