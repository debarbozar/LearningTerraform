#Creat a S3 
resource "aws_s3_bucket" "my-test-bucket142" {
  bucket = "my-tf-test-bucket-1242342534389798"

}

## IN TERMINAL ##

# terraform init
# terraform plan 
# terraform apply

## IN TERMINAL WHEN CHANGE S3##

# terraform validate
# terraform fmt (formatar no padrão do terraform o codigo)
# terraform plan -out="tfplan.out" (vai escrever nesse arquivo o output do terrafom plan)
# terraform apply "tfplan.out"
# terraform destory