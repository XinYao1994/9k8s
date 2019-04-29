# cni-cleanup
Cleanup CNI.

# To build it

Download the cni-cleanup binary from the following address:

```
$ wget https://github.com/swiftmedical/cni-cleanup/releases/download/1.12.6/cni-cleanup && chmod +x cni-cleanup
```

Build the docker image and push it:
```
$ docker build -t hectorj2f/cni-cleanup .
$ docker push hectorj2f/cni-cleanup
```

Then in Kubernetes use kubectl to create the daemon set that will clean your CNI entries:
```
kubectl create -f cni-cleanup-daemon-set.yaml
```


