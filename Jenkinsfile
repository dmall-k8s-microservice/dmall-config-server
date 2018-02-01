pipeline {
    agent any
    
    environment {
        DMALL_DOCKER_REGISTRY='ec2-54-95-48-23.ap-northeast-1.compute.amazonaws.com:5000'
        SLUG='dmall'
    }
    
    stages {
        stage('repo clean up'){
            steps {
                step([$class: 'WsCleanup'])
            }
        }

        stage('Checkout') {
            steps {
                step([$class: 'WsCleanup'])
            git  poll: true,  url: 'https://github.com/dmall-k8s-microservice/dmall-config-server.git', branch: 'master'
            }
                
        }

        stage('Build') {
            steps{
                sh './gradlew clean build'
            }
        }

        stage('Docker image') {
            steps{
                sh './genImages.sh'
            }
        }

        stage('Deploy to DEV') {
            steps{
                withCredentials([[$class: 'FileBinding', credentialsId: 'kubectl-config-file', variable: 'KUBECTL_CONFIG_FILE']]) {
        			sh './deployToDEV.sh'
    			}
            }
        }
  }  
}