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
                              sh('echo $password | docker login -u $username --passwrod-stdin')}
		sh 'docker push faizaldocker/simpleproject'
	}
	
}
