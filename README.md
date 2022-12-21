# test_terraform 5

docker build -t terraformimage .
docker run -e AWS_ACCESS_KEY_ID="<YOUR_ACCESS_KEY>" -e AWS_SECRET_ACCESS_KEY="<YOUR_ACCESS_KEY>" terraformimage -c "terraform init;terraform plan"  