def dockerfilePath

node{
	dockerfilePath='/dockerfiles'
	stage("build"){
		dir("${dockerfilePath}"){
			sh 'mkdir test'
			//sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
}
