pipeline {
    agent {
	label 'windows-agent'
	}   
    

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
      
        stage('Correr Terraform para instalar la infraestrucrtura requerida') {
            steps {
                bat 'terraform init'
		bat 'terraform plan'
		bat 'terraform apply'
            }
        }
      

                stage('Despliegue Development') {
            when {branch 'development'}
            steps {
                sh 'aws s3 cp dist/angular-app/ s3://proyecto-frank-s3-dev --recursive'
              
        
            }
        }


              stage('Despliegue staging') {
            when {branch 'staging'}
            steps {
                sh 'aws s3 cp dist/angular-app/ s3://proyecto-frank-s3-staging --recursive'
              
        
            }
        }


    }
}
