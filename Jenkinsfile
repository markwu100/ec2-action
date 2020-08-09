// test
pipeline{
    agent any
        environment {
            cmd = "aws ec2 ${ec2_action}-instances --instance-ids ${instance_ids}"
        }

        stages{
            stage("Apply action"){
                steps{
                    
                    //sh "${cmd}"
                    sh 'chmod +x ./asg-restart.sh'
                    sh './asg-restart.sh ${AUTOSCALING_GROUPS}'
                }
            }
        }
}