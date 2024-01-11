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
                sh "docker build -t cicd ." 
            }
        }
        stage("Pushing the image"){
            steps{
                withCredentials([usernamePassword(credentialsId:"dockerHub", usernameVariable: "dockUser", passwordVariable: "dockPass")]){
                    sh "docker tag cicd ${env.dockUser}/cicd:v1.0.0"
                    sh "docker login -u ${env.dockUser} -p ${env.dockPass}"
                    sh "docker push ${env.dockUser}/cicd:v1.0.0"
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
