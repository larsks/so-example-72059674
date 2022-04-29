This repository accompanies my answer to <https://stackoverflow.com/q/72059674/147356>.

## Building the container image

```
podman build -t whatevernameyouchoose .
podman push whatevernameyouchoose registry.example.com/yourname/imagename:tag
```

You can use `docker` instead of `podman` if you want.

## Deploying things into Kubernetes

You'll probably want to edit (a) `config/authorized_keys` to add valid ssh keys, (b) `deploy.yaml` to update the image to whatever you build in the previous step.

When you're ready to deploy:

```
kubectl apply -k .
```

You can re-run the above command after making changes to either `config/sshd_config` or `config/authorized_keys`.
