pipeline{
    agent any
    stages{
        stage("Copy Code From Git"){
            steps{
                echo "pulling code"
                git url: "git@github.com:SirajBagwan/CICD.git", branch: "master"
            }
        }
        stage("Buiding the image"){
            steps{
                sh "docker build -t cicd:1.0.0 ." 
            }
        }
        stage("Running the Container"){
            steps{
                sh "docker-compose down && docker-compose up -d"
            }
        }
    }
}
