pipeline {
    agent {
        kubernetes {
            defaultContainer 'jnlp'
            yamlFile 'agent-pod.yaml'
        }
    }
    
    stages {
        stage('Build Image') {
            steps {
                container('docker') {
                    sh 'docker build -t docker-registry.default.svc:5000/pypiserver/pypiserver:latest .'
                }
            }
        }
        stage('Push Image') {
            steps {
                container('docker') {
                    sh 'docker push docker-registry.default.svc:5000/pypiserver/pypiserver:latest'
                }
            }
        }
    }
}
