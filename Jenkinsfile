def dockerfilePath

node{
	dockerfilePath='/opt/dockerfile'
	stage("build"){
		dir("${dockerfilePath}"){
			docker build -t faizaldocker/simpleproject
		}
	}
}
