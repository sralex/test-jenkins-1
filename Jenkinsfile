pipeline {
	agent any
	stages {
		stage('Checkout-git'){
			steps{
				git poll: true, url: 'https://github.com/sralex/test-jenkins-1.git'
			}
		}
		stage('CreateVirtualEnv'){
			steps{
				sh '''
					bash -c "virtualenv env && source ./env/bin/activate"
				'''
			}
		}
		stage('InstallRequirements'){
			steps{
				sh '''
					bash -c "source ./env/bin/activate && pip install -r requirements.txt"
				'''
			}
		}
		stage('Test'){
			steps{
				sh '''
					bash -c "cd src && pytest && cd .."
				'''
			}
		}
		stage('Deploy'){
			steps{
				sh '''
					docker build -t appstest:latest .
				'''
			}
		}
	}
}