pipeline {
      agent any
      
      stages{
            stage("GIT checkout"){
            steps{
                 git 'https://github.com/RAJANI9/boxfuse-sample-java-war-hello.git'
              }
            }
            stage("build"){
                  steps{
                       sh "mvn clean package"
                       sh "mv target/*.war target/boxfuse-sample-java-war-hello.war"
                      }
                       
            }
             stage("depoly"){
                  steps{
                     
                       
                       sshagent(['TOMCAT']) {
                       
                       sh """
                            scp -o StrictHostKeyChecking=no  target/boxfuse-sample-java-war-hello.war ubuntu@13.201.72.89:/home/ubuntu/apache-tomcat-9.0.87/webapps/
                            
                            ssh ubuntu@13.201.72.89 /home/ubuntu/apache-tomcat-9.0.87/bin/shutdown.sh
                            ssh ubuntu@13.201.72.89 /home/ubuntu/apache-tomcat-9.0.87/bin/startup.sh
                            
                          """
    
}
                      
                       }
            }
       }
  }     
