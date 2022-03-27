def dockerfilePath

node{
	dockerfilePath='/var/lib/jenkins/dockerfiles'
	stage("build"){
		dir(dockerfilePath){
			sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
	stage('Login'){
			sh 'echo $faizaldocker | docker login -u $faizaldocker_USR --password-stdin'
	}
	stage("push to dockerhub"){
			sh 'docker push faizaldocker/simpleproject'
	}
}
