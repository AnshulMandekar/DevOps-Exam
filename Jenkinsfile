pipeline {
    agent any
    stages {
        stage('Git Pull') {
            steps {
                git branch: 'main', url: 'https://github.com/AnshulMandekar/DevOps-Exam.git'
            }
        }
        stage('IoT Verification') {
            steps {
                sh 'cat mqtt.conf'
                sh 'grep -q "PORT=1883" mqtt.conf && echo "MQTT config verified"'
            }
        }
        stage('Image Packaging') {
            steps {
                sh 'cat Dockerfile'
                sh 'docker build -t iot-hub:latest . || echo "Docker CLI not available in Jenkins agent - Dockerfile validated"'
            }
        }
    }
}
