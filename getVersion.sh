#kubectl rollout history deployment.apps/jenkins-demo -n production |grep -v "deployment" |grep -v "REVISION" |awk '$0!=""{print $1","substr($0,index($0,"备注:"))}' > version.csv

NS=$1
# 先清空旧文件
rm -f version.csv
kubectl rollout history deployment.apps/jenkins-demo -n ${NS} |grep -v "deployment" |grep -v "REVISION" |awk '$0!=""{print $1","substr($0,index($0,"备注:"))}' > version.csv
