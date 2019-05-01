for i in bin boot etc home media opt root sbin srv tmp usr var; do
   cp -r /home/cs/xyao/5cluster/cluster/data/$1/* /localfs/xyao/k8s/cluster/data/$1
done;
