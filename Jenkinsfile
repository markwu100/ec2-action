// test
pipeline{
    agent any

        stages{
            stage("Apply action"){
                steps{
                    sh 'chmod +x ./asg-restart.sh'
                    sh './asg-restart.sh ${AUTOSCALING_GROUPS}'
                }
            }
        }
}