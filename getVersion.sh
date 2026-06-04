kubectl rollout history deployment.apps/jenkins-demo -n production |grep -v "deployment" |grep -v "REVISION" |awk '$0!=""{print $1","substr($0,index($0,"备注:"))}' > version.csv
