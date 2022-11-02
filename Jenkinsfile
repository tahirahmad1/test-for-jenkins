timestamps {
    node (""){
        try {
            stage("Checkout code") {
                checkout scm
            }
            stage("Build Docker image") {
                sh "docker build . -t my-http-server:stable"
            }
            stage("Run Docker image") {
                sh "docker stop frankfurt1 || true"
                
                sh "docker rm frankfurt1"
                
                sh "docker run -d -p 8081:8081 --name frankfurt my-http-server:stable"
            }
            currentBuild.result = 'SUCCESS'
        } catch(ex) {
            currentBuild.result = 'FAILURE'
        } finally {
            
        }
    }
}
