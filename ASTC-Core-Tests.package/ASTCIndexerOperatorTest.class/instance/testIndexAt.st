tests
testIndexAt
	| operator node |
	operator := (ASTCIdentifier new id: #a) indexAt: (ASTCIdentifier new id: #c).
	
	operator debugASTCStructure.
	self assert: operator isIndexerOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #c.