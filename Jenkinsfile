pipeline {
    agent any
    

    //Declaracion de valores de entorno
    environment {
        AWS_ACCESS_KEY_ID=credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY=credentials('AWS_SECRET_ACCESS_KEY')
        AWS_REGION='us-east-1'
    }


	
    stages {
        stage('Bienvenida!') {
            steps {
                echo "Demostracion de creacion de IaC por medio de Terraform en AWS"
            }
        }

	stage('Proceder a eliminar toda infrastructura creada por Terraform en AWS!') {
            steps {
                bat 'terraform plan -out=plan.out'
		bat 'terraform destroy plan.out'
            }
        }
      

}
}
