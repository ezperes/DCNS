
import os
from os import path

# Defines key file path and name
key_file_name = "key.pem"
key_file_path = "/DCNS/etc/serv_priv_key"

# Checks if key file exists
file_exist_P = path.exists(key_file_path+"/"+key_file_name)
#print("File Exist?",file_exist_P)

if file_exist_P:
    with os.scandir(key_file_path+'/') as mydirectory:
        for myfile in mydirectory.:
            print(myfile.name)

'''
if file_exist_P == True :

    
	with os.scandir('/DCNS/') as filesindirectory: #key_file_path+"/") as file_list:
        for filehandler in filesindirectory:
        #    print(filehandler.name)
    '''