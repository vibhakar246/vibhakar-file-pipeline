pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Execute Script') {
            steps {
                sh '''
                    echo "Making script executable..."
                    chmod +x create-vibhakar.sh

                    echo "Running script..."
                    ./create-vibhakar.sh
                '''
            }
        }

        stage('Verify File') {
            steps {
                sh '''
                    if [ -f /opt/vibhakar.txt ]; then
                        echo "File exists"
                        ls -l /opt/vibhakar.txt
                        cat /opt/vibhakar.txt
                    else
                        echo "File not found"
                        exit 1
                    fi
                '''
            }
        }
    }

    post {
        success { echo "Pipeline succeeded!" }
        failure { echo "Pipeline failed!" }
        always { echo "Pipeline execution completed." }
    }
}
