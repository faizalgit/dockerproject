def dockerfilePath

node{
	dockerfilePath='/dockerfiles'
	stage("build"){
		dir(dockerfilePath){
			sh 'id'
			sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
}
