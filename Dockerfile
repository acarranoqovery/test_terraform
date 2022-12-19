FROM hashicorp/terraform:latest
ADD . .
ENTRYPOINT [ "terraform" ]
CMD ["init"]