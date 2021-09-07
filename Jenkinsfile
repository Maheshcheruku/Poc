pipeline{
    agent any 
    tools {
        terraform 'terraform'
    }
    stages {
	
		stage('Git Checkout'){
		
		steps {
		
		git branch: 'Dev', url: 'https://github.com/Maheshcheruku/Poc.git'
		
			}
		}
    
        stage('Terraform Init'){
            
            steps {
                   sh 'terraform init'
             }
        }

    }
}