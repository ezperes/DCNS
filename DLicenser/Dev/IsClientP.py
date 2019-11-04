# IsClientP.py
# V 0.1
#
# AUTHOR: Eduardo Zucarato, 2019 Oct
#
# PURPOSE:
# Hold the IsClientP function, which receives the client_id 
# and returns true if client_id corresponds to an existant 
# active client in database. Returns false otherwise
#
# VERSION PARTICULARITY:
# Simplified version which considers clients.list text file
# as source database
# Record fields are separatede by ';'
# List of fields:
#	client_id
#	client name
#	active/inactive status


# IsClientP workfkow
# 01 - Opens file
# 02 - For each line, read line and separates line in fields by ";"
# 03 - If field 1 == client_id and field 2 == 'active' return (true,field 2[1])
# 04 - return (false)
def IsClientP(client_id):
	with open("clients.list","r") as clients:
		for client in clients:
			if (client.split(";")[0]==client_id and 
				client.split(";")[2]=="ACTIVE"):
				print(client_id,"is a registered client.")
				return (True , client.split(";")[1])
		print(client_id," is not active registered")
		return (False , "")
	
	

testclient = "08574224723"
clienttest = IsClientP(testclient) #str(client_id))
print("Cliente",testclient,clienttest[1])
