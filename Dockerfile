FROM hashicorp/terraform:latest
ADD . .
ENTRYPOINT [ "/bin/sh" ]