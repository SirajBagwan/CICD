pipeline{
    agent any
    stages{
        stage("Copy Code From Git"){
            steps{
                echo "pulling code"
                git url: "https://github.com/SirajBagwan/CICD.git", branch: "master"
            }
        }
        stage("Buiding the image"){
            steps{
                sh "docker build -t cicd:V1.0.0 ." 
            }
        }
        stage("Running the Container"){
            steps{
                sh "docker run -d -p 80:80 cicd:V1.0.0"
            }
        }
    }
}
