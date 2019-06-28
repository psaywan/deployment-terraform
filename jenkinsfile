pipeline {
    agent any

    stages {
        stage ('Compile1') {

            steps {
                withTerraform(maven : 'Terraform 0.12.3 darwin (amd64)') {
                    sh 'terraform plan'
                }
            }
        }
    }
}
