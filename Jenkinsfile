def dockerfilePath

node{
	dockerfilePath='/var/lib/jenkins/dockerfiles'
	stage("build"){
		dir(dockerfilePath){
			sh 'docker build -t faizaldocker/simpleproject .'
		}
	}
//	stage('Push to DockerHub'){
		
//		withCredentials([usernamePassword(credentialsId: 'faizaldocker',
//                              usernameVariable: 'username',
//                              passwordVariable: 'password')]){
//                              sh('echo $password | docker login -u $username --password-stdin')}
//		sh 'docker push faizaldocker/simpleproject'
//	}
	
	stage ('push to Git'){
	withCredentials([usernamePassword(credentialsId: 'FaizalNexus',
                              usernameVariable: 'username',
                              passwordVariable: 'password')]){
                              sh('docker login http://${username}:${password}@104.196.30.112:9001/repository/docker-repo')}
			      sh 'docker push faizaldocker/simpleproject'
	}
	
}
