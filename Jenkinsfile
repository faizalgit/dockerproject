def dockerfilePath

node{
	dockerfilePath='/opt/dockerfiles'
	stage("build"){
		dir("${dockerfilePath}"){
			sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
}
