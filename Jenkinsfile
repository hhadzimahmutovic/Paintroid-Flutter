class DockerParameters {
    // 'docker build' would normally copy the whole build-dir to the container, changing the
    // docker build directory avoids that overhead
    def dir = 'docker'
    def args = '--device /dev/kvm:/dev/kvm ' +
            '-m=12G '
    def label = 'LimitedEmulator'
    def image = 'hhadzimahmutovic/playground:pantroid-flutter.v4'
}
def d = new DockerParameters()
pipeline {
    agent {
        docker {
            image d.image
            args d.args
            label d.label
            alwaysPull true
        }
    }

    environment {
        FLUTTER_HOME = 'home/usr/local/flutter'
        PATH = "${env.FLUTTER_HOME}/bin:${env.PATH}"
    }
    stages {
        
        stage('Checkout') {
            agent {
                docker {
                    image d.image
                    args d.args
                    label d.label
                    alwaysPull true
                }
            }
            steps {
                sh """echo "Checking out the code..." """
                checkout scm
            }
        }
        stage('Dependencies') {
            agent {
                docker {
                    image d.image
                    args d.args
                    label d.label
                    alwaysPull true
                }
            }           
            steps {
                sh """ echo "Running flutter pub get..." """
                sh 'flutter pub get'
            }
        }
        stage('Build') {
            agent {
                docker {
                    image d.image
                    args d.args
                    label d.label
                    alwaysPull true
                }
            }
            steps {
                sh """ echo "Building the app..." """
                sh 'flutter build apk'
            }
        }
        stage('Unit Tests') {
            agent {
                docker {
                    image d.image
                    args d.args
                    label d.label
                    alwaysPull true
                }
            }
            steps {
                sh """echo "Running unit tests..." """
                sh 'flutter test test/unit'
            }
        }
        stage('UI Tests') {
            agent {
                docker {
                    image d.image
                    args d.args
                    label d.label
                    alwaysPull true
                }
            }
            steps {
                sh """ echo "Running ui tests..." """
                sh 'flutter test test/widget'
            }
        }
        stage('Archive') {
            agent {
                docker {
                    image d.image
                    args d.args
                    label d.label
                    alwaysPull true
                }
            }
            steps {
                sh """ echo "Archiving build artifacts..." """
                archiveArtifacts artifacts: 'build/app/outputs/flutter-apk/app-release.apk', allowEmptyArchive: true
            }
        }
    }
    post {
        always {
            sh """echo "Cleaning up..." """
            cleanWs()
        }
    }
}
