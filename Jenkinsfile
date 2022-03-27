def dockerfilePath

node{
	dockerfilePath='/var/lib/jenkins/dockerfiles'
	stage("build"){
		dir(dockerfilePath){
			sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
	stage('Push to DockerHub'){
		
		withCredentials([usernamePassword(credentialsId: 'faizaldocker',
                              usernameVariable: 'username',
                              passwordVariable: 'password')]){
                              sh('docker login -u $username --password $password')}
		sh 'docker push faizaldocker/simpleproject'
	}
	
}
