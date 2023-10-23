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

        stage('Corriendo Terraform para instalar la infraestrucrtura y software requerido para nuestra App en Angular!') {
             steps {
                //bat 'dir'
		//bat 'terraform state rm'
		//bat 'dir'
		//bat 'terraform refresh'
		//bat 'dir'
		bat 'terraform destroy -auto-approve'
		//bat 'dir'
		bat 'terraform plan'
		bat 'terraform apply -auto-approve'
		//bat 'dir'
            }
        }


   

    }
}
