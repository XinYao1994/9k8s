rm -rf /var/lib/cni/flannel/* && rm -rf /var/lib/cni/networks/cbr0/* && ip link delete cni0
rm -rf /var/lib/cni/networks/cni0/*
kubeadm reset --force
iptables -F && iptables -t nat -F && iptables -t mangle -F && iptables -X
ipvsadm --clear
kubeadm join 10.1.2.64:6443 --token a3nmda.geffwqt6nyx7uwye --discovery-token-ca-cert-hash sha256:7a570682ee50a82fa83b9d2fb9eb9963ff39d0e2321d682a074c8d5fcd4545af
