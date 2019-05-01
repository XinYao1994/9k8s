for i in boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var; do
    mkdir /localfs/xyao/k8s/cluster/data/$i
    chown -R xyao /localfs/xyao/k8s/cluster/data/$i
done;
