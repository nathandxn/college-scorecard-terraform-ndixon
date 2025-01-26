.PHONY: validate-terraform
validate-terraform:
	(cd terraform; terraform init -backend=false; terraform validate)
