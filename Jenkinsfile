def dockerfilePath

node{
	dockerfilePath='/opt/dockerfiles'
	stage("build"){
		dir("${dockerfilePath}"){
			docker build -t faizaldocker/simpleproject .
		}
	}
}
