pipeline{
    agent any
    stages{
        stage("pulling"){
            steps{
                echo "pulling"
            }
        }
        stage ("getting system details"){
            steps{
                sh "lscpu"
                sh "lsblk"
                sh "free -h"
            }
        }
    }
}
