pipeline {
    agent {
        docker {
            image 'hhadzimahmutovic/playground:pantroid-flutter.v2'
        }
    }
    environment {
        FLUTTER_HOME = 'home/usr/local/flutter'
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
                sh 'home/usr/local/flutter/bin/flutter pub get'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the app...'
                sh 'home/usr/local/flutter/bin/flutter build apk'
            }
        }
        stage('Unit Tests') {
            steps {
                echo 'Running unit tests...'
                sh 'home/usr/local/flutter/bin/flutter test test/unit'
            }
        }
        stage('UI Tests') {
            steps {
                echo 'Running ui tests...'
                sh 'home/usr/local/flutter/bin/flutter test test/widget'
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
