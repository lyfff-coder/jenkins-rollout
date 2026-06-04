# kubectl rollout undo deployment jenkins-demo  --to-revision=<version> -n <namespace>

# INFO=$(kubectl rollout history deployment.apps/jenkins-demo -n <namespace> |awk '!/deployment/&&!/REVISION/&&NF>0{print $1","substr($0,index($0,"备注:"))}' | head -1)
# # 切割版本号
# REV=$(echo ${INFO} | cut -d',' -f1)
# # 回滚命令：-n 只传1个命名空间
# kubectl rollout undo deployment jenkins-demo --to-revision=${REV} -n <namespace>


NS=$1
REV=$2
kubectl rollout undo deployment jenkins-demo --to-revision=${REV} -n ${NS}
