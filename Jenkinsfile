pipeline {
    agent {
        docker {
            image 'hhadzimahmutovic/playground:pantroid-flutter'
        }
    }
    environment {
        FLUTTER_HOME = '/usr/local/flutter'
        PATH = "${env.FLUTTER_HOME}/bin:${env.PATH}"
    }
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out the code...'
                checkout scm
            }
        }
        stage('Dependencies') {
            steps {
                echo 'Running flutter pub get...'
                sh 'sudo chown -R $(whoami):$(whoami) /usr/local/flutter'
                sh 'git config --global --add safe.directory /usr/local/flutter'
                sh 'flutter pub get'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the app...'
                sh 'flutter build apk'
            }
        }
        stage('Unit Tests') {
            steps {
                echo 'Running unit tests...'
                sh 'flutter test test/unit'
            }
        }
        stage('UI Tests') {
            steps {
                echo 'Running ui tests...'
                sh 'flutter test test/widget'
            }
        }
        stage('Archive') {
            steps {
                echo 'Archiving build artifacts...'
                archiveArtifacts artifacts: 'build/app/outputs/flutter-apk/app-release.apk', allowEmptyArchive: true
            }
        }
    }
    post {
        always {
            echo 'Cleaning up...'
            cleanWs()
        }
    }
}
