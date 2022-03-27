def dockerfilePath

node{
	dockerfilePath='/dockerfiles'
	stage("build"){
		dir('/dockerfiles'){
			sh 'id'
			sh 'whoami'
			//sh 'mkdir test'
			//sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
}
