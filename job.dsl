#!/usr/bin/env groovy

pipelineJob(jobName) {
    parameters {
        choiceParam('ec2_action', ['terminate','describe','start','stop'])
        stringParam('instance_ids','','space separated list of instance ids')
    }

    description('Execute action on an ec2 instance')

    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url("https://github.com/markwu100/ec2-action.git")
                        credentials('github-id')
                    }
                    branch("master")
                }
            }
            scriptPath(folderPath + '/Jenkinsfile')
        }
    }
}