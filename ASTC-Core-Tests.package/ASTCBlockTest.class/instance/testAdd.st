tests
testAdd
	| block |
	block := ASTCBlock new.
	block add: ASTCEmptyStatement new.
	self assert: block statements size equals: 0.
	
	block add: ASTCStatement new.
	self assert: block statements size equals: 1.
	
	block add: (ASTCBlock new addStatement: 
		(ASTCRawDeclaration new rawDeclaration: 'int a'; yourself) ; yourself).
	self assert: block statements size equals: 2.