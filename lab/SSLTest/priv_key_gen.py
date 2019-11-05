from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives.asymmetric import rsa
from os import path

# Generate our key
key = rsa.generate_private_key(
     public_exponent=65537,
     key_size=2048,
     backend=default_backend()
	)

# Defines key file path and name
key_file_name = "key.pem"
key_file_path = "/DCNS/etc/serv_cert"

# Checks if key file exists
file_exist_P = path.exists(key_file_path+"/"+key_file_name)

if file_exist_P:
	# Gets list of files id path
	file_list = 


# Write our key to disk for safe keeping
with open("/DCNS/etc/serv_cert/key.pem", "wb") as f:		# Enter complete direction to file
     f.write(key.private_bytes(
         encoding=serialization.Encoding.PEM,
         format=serialization.PrivateFormat.TraditionalOpenSSL,
         encryption_algorithm=serialization.BestAvailableEncryption(b"passphrase"), # Enter password
     	))