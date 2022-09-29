pipeline {

    agent any

    parameters {
        string(name: 'SUDEEP', description: 'hai i am too bad')
    }

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SudeepGowda55/Jenkinsfile-with-terraform.git'
            }
        }
        stage ('sending docker file to ansible over ssh connection'){
            steps{
                sshagent(['Ansible']) {
                    sh 'ssh -o StrictHostKeyChecking=no root@74.220.21.52'
                    sh 'scp /var/lib/jenkins/workspace/kubernetes/* root@74.220.21.52:/home/civostatsd'
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