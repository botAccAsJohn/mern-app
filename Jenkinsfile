pipeline {
    agent any
    environment {
        PROJECT_NAME = "MyProject"
    }
  
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Building the project..."'
                // Example: sh './gradlew build' or 'mvn package'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
                // Example: sh './gradlew test' or 'mvn test'
            }
        }

        stage('Deploy') {
            when {
                branch 'main'
            }
            steps {
                sh 'echo "Deploying application..."'
                // Example: sh './deploy.sh'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
