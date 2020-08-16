AWS_DEFAULT_REGION := ap-northeast-1
AWS_BACKEND_BUCKET := sample-project-1234124
AWS_PROFILE :=
PARALLELISM := 30

init:
	cd ./hello && \
	terraform init \
		-backend=true \
		-backend-config="region=$(AWS_DEFAULT_REGION)" \
		-backend-config="profile=$(AWS_PROFILE)" \
		-backend-config="bucket=$(AWS_BACKEND_BUCKET)"

plan:
	cd ./hello && \
	terraform plan \
	  -var-file="terraform.tfvars" \
	  -parallelism=$(PARALLELISM)


apply:
	cd ./hello && \
	terraform apply \
	  -var-file="terraform.tfvars" \
	  -auto-approve=false \
	  -parallelism=$(PARALLELISM)