SELF HOSTED CLOUD STORAGE Y'ALL
```
kubectl apply -f minio.pvc.yaml
kubectl apply -f minio.dp.yaml
kubectl apply -f minio.svc.yaml
open $(minikube service minio-service --url)
```
use creds in minio.dp.yaml to log in
SO FRICKEN EASY

ALSO:
https://github.com/minio/minfs
mount a minio/s3 bucket as if it were a local directory!