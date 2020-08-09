// test
pipeline{
    agent any

        stages{
            stage("Reboot EC2-Instances"){
                steps{
                    sh 'chmod +x ./asg-restart.sh'
                    sh './asg-restart.sh ${AUTOSCALING_GROUPS}'
                }
            }
        }
}