pipeline {
    agent any
    

    //Declaracion de valores de entorno
    environment {
        AWS_ACCESS_KEY_ID=credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY=credentials('AWS_SECRET_ACCESS_KEY')
        AWS_REGION='us-east-1'
    }


	
    stages {
        stage('Bienvenidos Estos es una Demostracion de creacion de IaC por medio de Terraform en AWS') {
            steps {
                echo "Demostracion de creacion de IaC por medio de Terraform en AWS"
            }
        }

	stage('Proceder a crear la infrastructura con Terraform en AWS!') {
            steps {
		bat 'terraform init'
		bat 'terraform plan'
		bat 'terraform apply -auto-approve'
            }
        }


   

    }
}
