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
	stage('Push to DockerHub'){
		
		withCredentials([usernamePassword(credentialsId: 'FaizalNexus',
                              usernameVariable: 'username',
                              passwordVariable: 'password')]){
                              sh('echo $password | docker login -u $username --password-stdin http://104.196.30.112:9001')}
		//sh 'docker push faizaldocker/simpleproject'
		sh 'docker tag 73875c91fadf 104.196.30.112:9001/simpleproject:simpledocker'
		sh 'docker push http://104.196.30.112:9001:simpleproject:latest'
	}
	
//	docker.withServer('http://104.196.30.112:9001', 'swarm-certs')
//	stage ('push to Git'){
//	withCredentials([usernamePassword(credentialsId: 'FaizalNexus',
 //                             usernameVariable: 'username',
 //                             passwordVariable: 'password')]){
 //                             sh('docker login http://104.196.30.112:9001/repository/docker-repo | echo $password | -u $username --password-stdin')}
//			      sh 'docker push faizaldocker/simpleproject'
//	}
	
}
