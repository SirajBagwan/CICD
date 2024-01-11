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
                withCredentials([usernamePassword(credentialsId:"dockerHub", usernameVariable: "dockUser", passwordVariable: "dockPass")]){
                 sh "docker login -u ${env.dockUser} -p ${env.dockPass}"   
                } 
            }
        }
        stage("Running the Container"){
            steps{
                sh "docker-compose down --remove-orphans && docker-compose up -d"
            }
        }
    }
}
