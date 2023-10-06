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
                sh "echo \"hello there\""
                sh "echo \"hello there web hook is working \""
            }
        }
    }
}
