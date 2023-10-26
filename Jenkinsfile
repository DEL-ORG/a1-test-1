pipeline {
    agent any

    stages {
        stage('Docker Build') {
            steps {
                script {
                    sh """
                    cd $WORKSPACE/creative
                    build -t test .
                    docker images
                    """
                }
            }
        }

        stage('Docker Deploy') {
            steps {
                script {
                    sh """
                        docker run -itd -p 80:80 test:latest
                        docker ps 
                        docker ps -a
                    """
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
