tests
testGreater
	| operator node |
	operator := (ASTCIdentifier new id: #a) > (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isGreaterOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b