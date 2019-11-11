### Directory /DCNS/lab/SQLScripts

#### Objective

	Store the subfolders which contains the approved SQL queries scripts for creating and modifing the Dream Company Back End Data Base (DCBE), as well as retrieve and modify data.
	Unlike /lab/SQLScripts, which stores testing scripts, this folder stores the real functional and approved scripts

#### Directory and File structure

	1. Files which contain SQL commands scripts must finish with ".sql"

	2. Files which contains DB structure creation/modification must start with "struct.", e.g.:
		
		struct.create-DCBE-database.sql
			which refers to a script which creates the schema of DCBE database in server.

	3. Files which contains data creation/modification must start with "data.", e.g.:
		data.delete-contract.sql
			which refers to a script wich delete a given contract in the contracts table

	4. Files which contain queries that retrieves data from DB must start with "query.", e.g.:
		
		query.fulfilled-customes.sql
			wich refers to a script that retrieves all client that are fulfilled within a given product
 
