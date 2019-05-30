# Vault Setup

This is an ansible playbook to install a simple Vault Server with Consul as Storage backend.
It is not configured for HA and has SSL termination via an envoy reverse proxy that is configured for SSL certificate hot reloading. 

# Todos:

* Add Backup Support via Minio (poor man's S3)

# Execute Playbook

```bash
ansible-playbook -i hosts -v -e "ssl_cert_src=/Users/.../fullchain.pem" -e "ssl_key_src=/Users/.../privkey.pem" vault.yml
```

The required environment variables are:

* ssl_cert_src: Path where SSL certificate is located
* ssl_key_src: Path where SSL key is located
