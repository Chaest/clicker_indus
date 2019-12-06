multibranchPipelineJob('{{ deploy_job_name }}') {
    description '''{{ deploy_job_desc }}'''
    branchSources {
        git {
            id '42'
            remote '{{ clicker_github_repo }}'
            credentialsId 'github'
        }
    }
    factory {
        workflowBranchProjectFactory {
            scriptPath('Jenkinsfile')
        }
    }
    orphanedItemStrategy {
        discardOldItems {
            numToKeep(20)
        }
    }
}
