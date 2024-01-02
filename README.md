# Learning Rust and Kubernetes!
In this project, I use Rust with Actix-Web to create a simple web server. I then use Docker to create a container for the web server. Finally, I use MiniKube to create a Kubernetes cluster and deploy the container to the cluster. 



## Create Pod and Port Forward
I will use this to test my Rust code in a Kubernetes cluster. The Docker image `nguyenhiep23/actix-k8s` is on my Docker Hub.


### Create Pod:

```bash
kubectl apply -f hello-kube.yaml
```


### Get Pod:

```bash
kubectl get pods
```


### Port Forward:

```bash
kubectl port-forward pod/hello-kube 8080:8080
```


### Test:

```bash
curl localhost:8080
```

