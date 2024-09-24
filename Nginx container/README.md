# Terraform with docker container
### Example: 1 NGINX server container
1. Start Docker Desktop
2. In the working directory, create a file called `main.tf`
3. Initialize the project, which downloads a plugin called a provider that lets Terraform interact with Docker 
```
terraform init
```
4. Provision the `NGINX` server container with`apply`. When Terraform asks you to confirm type yes and press `ENTER` 
```
terraform apply
```
5. To stop the container, run terraform destroy.
```
terraform destroy
```



