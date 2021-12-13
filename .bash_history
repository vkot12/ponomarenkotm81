gcloud auth list
gcloud config set account `ACCOUNT`
gcloud config list project
gcloud iam service-accounts create terraform
gcloud projects add-iam-policy-binding ${GOOGLE_CLOUD_PROJECT}   --member serviceAccount:terraform@${GOOGLE_CLOUD_PROJECT}.iam.gserviceaccount.com   --role roles/storage.admin
gcloud projects add-iam-policy-binding ${GOOGLE_CLOUD_PROJECT}   --member serviceAccount:terraform@${GOOGLE_CLOUD_PROJECT}.iam.gserviceaccount.com   --role roles/compute.admin
gcloud iam service-accounts keys create     ~/service-account.json     --iam-account terraform@${GOOGLE_CLOUD_PROJECT}.iam.gserviceaccount.com
GOOGLE_CREDENTIALS=${HOME}/service-account.json
mkdir -p ~/terraform-demo/basic
cd ~/terraform-demo/basic
touch main.tf
cloudshell edit main.tf
terraform init
terraform plan
terraform apply
gcloud
gcloud compute instances list
terraform apply
touch data.sh
cloudshell edit data.sh
terraform apply
gcloud compute instances list
curl http://<GCE_INSTANCE_PUBLIC_IP>:80
curl http://34.78.180.213:80
curl http://<GCE_INSTANCE_PUBLIC_IP>:80
curl http://34.78.180.213:80
curl http://10.132.0.3:80
cd ~/terraform-demo/basic
terraform apply
touch variables.tf
cloudshell edit variables.tf
terraform apply
$ cloudshell edit outputs.tf
touch outputs.tf
cloudshell edit outputs.tf
terraform apply
mkdir -p ~/terraform-demo/backend
cd ~/terraform-demo/backend
touch main.tf
cloudshell edit main.tf
cd ~/terraform-demo/basic
cloudshell edit main.tf
terraform init
gsutil ls -l gs://ita-terraform-state-RANDOM_INTEGER/prod/state
terraform init
terraform apply
terraform init
terraform apply
cd ~/terraform-demo/backend
cloudshell edit main.tf
terraform init
terraform apply
cd ~/terraform-demo/basic
terraform init
terraform apply
gsutil ls -l gs://ita-terraform-state-72936/prod/state
