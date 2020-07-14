tests
testNotEquals
	| operator node |
	operator := (ASTCIdentifier new id: #a) notEquals: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isInequalityOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b