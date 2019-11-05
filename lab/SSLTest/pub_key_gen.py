from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives.asymmetric import rsa

# Loads existing private key
with open("/DCNS/etc/serv_key/key.pem", "rb") as key_file: 	# Enter complete direction to file
     private_key = serialization.load_pem_private_key(
         key_file.read(),
         password=b"passphrase",							# Enter password
         backend=default_backend()
     )

# Generates public key and writes to disk
public_key = private_key.public_key()

# Write public key to disk
with open("public_key.pem", "wb") as public_key_file:
	public_key_file.write(public_key.public_bytes(
		encoding=serialization.Encoding.PEM,
		format=serialization.PublicFormat.SubjectPublicKeyInfo,
		))


