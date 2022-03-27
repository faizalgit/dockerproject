def dockerfilePath

node{
	dockerfilePath='/var/lib/jenkins/dockerfiles'
	stage("build"){
		dir(dockerfilePath){
			sh 'id'
			sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
}
