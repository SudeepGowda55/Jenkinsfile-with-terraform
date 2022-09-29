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
                // add credentials by clicking on manage credentials then add global cred and then go to add credentials and select sshagent and then add a server by clicking on add and select jenkins, then add credentials along with direct privatekey generated by ssh-keygen
                    sh 'ssh -o StrictHostKeyChecking=no root@192.168.1.10'
                    sh 'scp /var/lib/jenkins/workspace/kubernetes/* root@192.168.1.10:/home/civostatsd'
                }
            }
        }
        stage ('building a docker image in ansible server'){
            steps {
                sshagent(credentials:['ansible-server']) {
                    sh 'ssh -o StrictHostKeyChecking=no root@192.168.1.10 cd /root/docker-build'
                    sh 'ssh -o StrictHostKeyChecking=no root@192.168.1.10 docker image build -t $JOB_NAME:v1.$BUILD_ID /root/docker-build/'
                }
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