### Dream Company Back-end Database Descriptive Model

	The Dream Company holds a lot of activities which rely on a reliable database. For this very first requirementes, which starts up the company and it's DB, we will work upon the following services and data-generatin engines:

1. The Dream Company Licensing service, with it's activities:
	1. Receives over the network a license activation request datagram of a client terminal. Datagram must have:
		1. Product_id
		2. Session_id
		3. Customer_id
		4. Trade Server Date
		5. Terminal IP address
	2. Evaluates request datagram. If request format is ok, saves the attempt in DCBE.
	3. Checks DCBE if requested product/service exists
	4. Checks DCBE if requesting client exists
	5. Checks DCBE if this product+client has been request today. If yes, checks if session_id of this request matches the earlier request. If matches, resend it's conclusion. If no match, answer that not matches and asks to customer call SAC. If no previous request for today:
	6. Checks DCBE if client is compliant with all contracted services
		1. If yes, save this result in DCBE request attempt and send to client terminal the digitally signed authorization datagram.
		2. If now, save this result in DCBE request attempt and send to client terminal the plain text explaining the denial.

2. The Billing Engine, which is responsible to generate the billing according to each contract. 
	1. There must be a contract template entity, wich identifyes the contract template attributes:
		1. Code
		2. Short Name
		3. Full Name
		4. List of Products
			4.1. Product code ok
			4.2. Product amount ok
			4.3. Billing recurrence description (copied from products) ok
			4.3.1. Billing recurrence modified? ok
			4.4. Billing schedule creation script file (copied from products) ok
			4.4.1 Billing schd script modified? ok
			4.5. Product duration in days (copied from products) ok
		5. Conctract duration in days ok
	2. There must be a Product template entity with attributes:
		1. Code ok
		2. Name ok
		3. Product description description ok
		4. Product default duration ok
		5. Price descriptor ok
		6. Billing recurrence description ok
		7. Billing schedule script file ok 
	3. There must be a contract instance entity with attributes:
		1. Code ok
		2. Contract template ID ok
		2.1. Contract template modified? ok
		3. Customer ID ok
		4. Sale Agent ID 
		5. Signature date ok
		6. Expiration date (calculated with contract template duration)
		7. Products (auxiliary entity which instances are copied from contract template)
			7.1. Product ID
			7.2. Start date (copied from contract instance signature date)
			7.3. Product duration (coped from contract template service)
			7.3.1. Duration modified?
			7.4. Price descriptor (copyed from contract template service)
			7.4.1 Price modified?	
			7.5. Billing recurrence description (copyed from contract template service)
			7.5.1 Recurrence modified?
			7.6. Billing schedule script file (copyed from contract template service)
			7.6.1 Billing script modified?
		8. Billing schedule (auxiliary entity with instances created by each service billing schedule script)
			1. Billing Schd code
			2. contract ID
			3. Service ID
			4. Date to run Billing script
			5. Billing date
			6. Calculation start date (inclusive)
			7. Calculation end date (inclusive)
			8. Script file to run
			


	
 
		 
