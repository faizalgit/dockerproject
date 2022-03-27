def dockerfilePath

node{
	dockerfilePath='/dockerfiles'
	stage("build"){
		dir("${dockerfilePath}"){
			sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
}
