pipeline {

    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: ''
            }
        }
        stage (){
            steps {
                sh ter
            }
        }
    }
}