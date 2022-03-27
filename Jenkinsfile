def dockerfilePath

node{
	dockerfilePath='/var/lib/jenkins/dockerfiles'
	stage("build"){
		dir(dockerfilePath){
			sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
	stage('Login'){
			sh 'echo $DOCKERHUB_CRED | docker login -u $DOCKERHUB_CRED_USR --password-stdin'
	}
	stage("push to dockerhub"){
			sh 'docker push faizaldocker/simpleproject'
	}
}
