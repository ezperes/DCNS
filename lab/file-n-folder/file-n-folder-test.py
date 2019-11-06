'''
This test file intends to:
    1. Receive a file name root
    2. Regard file name rule:
        1. File name has pattern:
            1. For the most recently created file:
                file name = root
            2. For the old files:
                1. the oldest is:
                    file name = .root.001.old
                2. The others follow the numeric sequence
    3. Workflow
        1. Checks if file named "root" not exists
            1. True: Create a file named root
            2. False (the file exist)
                1. Find the greatest number of old files (n)
                2. Renames the root file to .root.(n+1).old
                3. Create a file named root

'''

import os
from os import path

# Defines key file path and name
file_name_root = "testfile"
workingdir = "/DCNS/lab/sandbox/"



# Calculates the number of the next file to be created
def next_file_nr():
    
    # Checks if key file exists
    file_exist_P = path.exists(workingdir+file_name_root)
    
    # The magic begins here
    if not file_exist_P:
        # If file does not exist
        #return 1
        
         with open(workingdir+file_name_root,"a") as new_file:
             new_file.write("This is the file # 1")
    else:
        # 
        greatest=0
        with os.scandir(workingdir) as mydirectory:
            for myfile in mydirectory: 
                if myfile.name.endswith(".old"):
                    try:
                        file_seq = myfile.name.split(".")[2]
                        if file_seq.isalnum():
                            #print(myfile.name)
                            seq = int(file_seq)
                            greatest = seq if seq > greatest else greatest
                            print(seq,"old file(s)")
                            #print("Greatest is "+str(greatest)+"\n")
                    except:
                        print(myfile.name)
                        print("File ends in \".old\", but doesn't follow the pattern\n")
            print("The final great count is",greatest,", and the next element shall be",greatest+1)
        try:   
            os.rename(workingdir + file_name_root, workingdir+"."+file_name_root+"."+str(greatest+1)+".old")
            with open(workingdir+file_name_root,"a") as new_file:
                new_file.write("This is the file # "+str(greatest+2))
        except:
            print("Last file doesn't follow the pattern\n")
        #print(workingdir+"."+file_name_root+"."+str(greatest+1)+".old")


next_file_nr()

'''
if file_exist_P == True :

    
	with os.scandir('/DCNS/') as filesindirectory: #key_file_path+"/") as file_list:
        for filehandler in filesindirectory:
        #    print(filehandler.name)
    '''