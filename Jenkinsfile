def dockerfilePath

node{
	dockerfilePath='/var/lib/jenkins/dockerfiles'
	stage("build"){
		dir(dockerfilePath){
			
			sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
}
