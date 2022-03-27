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
	withCredentials([usernamePassword(credentialsId: 'FaizalGit',
                              usernameVariable: 'username',
                              passwordVariable: 'password')]){
                              sh('docker login https://${username}:${password}@github.com/faizalgit/dockerproject	')}
			      sh 'docker push faizaldocker/simpleproject'
	}
	
}
