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
                sh "docker run -d -p 8081:8081 my-http-server:stable"
            }
            currentBuild.result = 'SUCCESS'
        } catch(ex) {
            currentBuild.result = 'FAILURE'
        } finally {
            
        }
    }
}