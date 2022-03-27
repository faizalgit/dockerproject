def dockerfilePath

node{
	dockerfilePath='/var/lib/jenkins/dockerfiles'
	stage("build"){
		dir(dockerfilePath){
			sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
	stage('Login'){
			DOCKER_CRED=credentials('faizaldocker')
			sh 'echo $DOCKER_CRED | docker login -u $DOCKER_CRED_USR --password-stdin'
	}
	stage("push to dockerhub"){
			sh 'docker push faizaldocker/simpleproject'
	}
}
