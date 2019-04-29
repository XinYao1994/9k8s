```
https://tomoyadeng.github.io/blog/2018/10/12/k8s-in-ubuntu18.04/index.html

编辑/etc/fstab文件，注释掉引用swap的行，保存并重启后输入sudo swapoff -a即可。参考Kubelet/Kubernetes should work with Swap Enabled

https://github.com/kubernetes/dashboard/wiki/Creating-sample-user

kubeadm init --apiserver-advertise-address=10.1.2.64 --pod-network-cidr=10.244.0.0/16  --service-cidr=10.244.0.0/12

kubeadm join 10.1.2.64:6443 --token a3nmda.geffwqt6nyx7uwye --discovery-token-ca-cert-hash sha256:7a570682ee50a82fa83b9d2fb9eb9963ff39d0e2321d682a074c8d5fcd4545af

kubectl config set-context ddl --namespace=kube-ddl --cluster=kubernetes --user=kubernetes-admin

kubectl apply -f k8s-dashboard-admin-user.yaml

kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep xyao | awk '{print $1}')

eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlLXN5c3RlbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJ4eWFvLXRva2VuLTZncTRqIiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6Inh5YW8iLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC51aWQiOiIyNjdkODI2Ni02OGE2LTExZTktOGQwNy0wMDIzYWVmY2Q5YzAiLCJzdWIiOiJzeXN0ZW06c2VydmljZWFjY291bnQ6a3ViZS1zeXN0ZW06eHlhbyJ9.pLlD1Inr6BVw24NRoX0OM2WepbnOaH2v7PBBTO6ZhwNC1iGD3RL9TAiLZah0SZ5MmwRw_1cOyR4GiQGBeit4Of6kXs_i4CJIu3_C2zxOJusLwUUW62UsJp10wfBcs4QYmDxaDBdEcaWpQqDrUeslRWcUsqiFWtBecPFfxLGrwV3LVYIl32XivxzG9mXrsLf2PBK4tJI0drbA6h4LgvBDgeus0pq7pVnwyWeaqUERYVjQI19yJnB1weMJEcaLN-aX1L-IC0WAI7ZvXYLi12htJzmB0pZb7RLHjtDsuRmVY6qSsa44JvtGbtUehxrzo6qp2PqsLbWRdPbXoN-S5UVK1A

https://stackoverflow.com/questions/49457053/crashloopbackoff-on-kubernetes-dashboard
https://orchestration.io/2018/03/15/configuring-kubernetes-dashboard-to-work-with-kubeadm-provisioned-clusters/
 kubectl label node admins73603 dashboard=true
 nodeSelector:
 dashboard: "true"

ssh -Nf -L 10.1.2.64:10864:127.0.0.1:8001 127.0.0.1

kubectl get pods -o wide --all-namespaces

kubectl logs --namespace=kube-system po/heapster-88c8457bc-w6zth

https://www.jianshu.com/p/bd195f7564a4

https://slurm.schedmd.com/documentation.html

https://orchestration.io/2018/03/15/configuring-kubernetes-dashboard-to-work-with-kubeadm-provisioned-clusters/

** kubeadm reset --force

iptables -F && iptables -t nat -F && iptables -t mangle -F && iptables -X

ipvsadm --clear

https://www.cnblogs.com/vincenshen/p/9638162.html

https://github.com/rancher/rke/issues/659
https://github.com/rancher/rke/issues/607
kubernetes:https://kubernetes.default:443?useServiceAccount=true&kubeletHttps=true&kubeletPort=10250&insecure=true

kubectl run cattle --image=kubernetes/serve_hostname --replicas=5
kubectl scale deployments/kubernetes-bootcamp --replicas=4

https://mp.weixin.qq.com/s/H1r4LvUX7zuQdw2q04uv_A

https://921305764930.dkr.ecr.us-east-1.amazonaws.com

docker login -u= -p=

kubectl create secret docker-registry dockerregistrykey \
  --docker-server=docker.io \
  --docker-username= \
  --docker-password= \
  --docker-email=

for ((i=1;i<10;i++));do
    echo "se00$i"
    kubectl delete nodes se00$i
done;

for ((i=10;i<64;i++));do
    echo "se0$i"
    kubectl delete nodes se0$i
done;

for ((i=1;i<10;i++));do
    echo "se00$i"
    ssh se00$i "sh /home/cs/xyao/9k8s/restart_node.sh"
done;

for ((i=10;i<64;i++));do
    echo "se0$i"
    ssh se0$i "sh /home/cs/xyao/9k8s/restart_node.sh"
done;

kubectl config set-context $(kubectl config current-context) --namespace=kube-ddl

docker run -it -d --name ubuntu xinyao1994/ubuntu-ddl:v.1.0.0 bash

kubectl run-container test_container ubuntu:latest --replicas=1

service ssh restart

git config --global --unset http.proxy 
git config --global --unset https.proxy

kubectl config set-context ddl --namespace=kube-ddl --cluster=kubernetes --user=kubernetes-admin

kubectl exec -it shell-demo -- /bin/bash

for ((i=1;i<10;i++));do
    echo "se00$i"
    ssh se00$i cp /home/cs/xyao/9k8s/repo/daemon.json /etc/docker/
done;

for ((i=10;i<65;i++));do
    echo "se0$i"
    ssh se0$i cp /home/cs/xyao/9k8s/repo/daemon.json /etc/docker/
done;

for ((i=1;i<10;i++));do
    echo "se00$i"
    ssh se00$i systemctl restart docker
done;

for ((i=10;i<30;i++));do
    echo "se0$i"
    ssh se0$i systemctl restart docker
done;

for ((i=10;i<65;i++));do
    echo "se0$i"
    ssh se0$i docker login
done;

for each in $(kubectl get pods | awk '{print $1}');
do
  kubectl exec -it $each -- /usr/sbin/service ssh restart
done

kubectl get pods -o wide | awk '{print $6}'

kubectl exec -it monitoring-grafana-cd55c5947-ncgwj -- grafana-cli plugins install grafana-kubernetes-app

kubectl scale deployment monitoring-grafana --replicas=0 -n kube-system

containers:
      - name: myweb
        image: myweb-image
        imagePullPolicy: Never


for ((i=1;i<10;i++));do
    echo "se00$i"
    ssh se00$i systemctl restart docker
done;

for ((i=10;i<65;i++));do
    echo "se0$i"
    ssh se0$i systemctl restart docker
done;

[private_registry ]
sudo docker pull registry
sudo mkdir -p /opt/data/registry
sudo docker run -d -p 5000:5000 -v /opt/data/registry:/var/lib/registry --name repo registry

kubeadm token create --print-join-command
```


