def dockerfilePath

node{
	dockerfilePath='/var/lib/jenkins/dockerfiles'
	stage("build"){
		dir(dockerfilePath){
			sh 'id'
			sh 'whoami'
			//sh 'mkdir test'
			//sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
}
