Feature: print hello world

Scenario: print hello world 
	
	* print 'hello world'
	* print 'hello bikash'

	
Scenario: declare and print variable
	* def balance = 200
	* def tax = 10
	* def fee = 20
	* print 'total amount ->'+ balance + fee + tax
	* print 'total amount ->'+ (balance + fee + tax)
	* print 'hello bikash'