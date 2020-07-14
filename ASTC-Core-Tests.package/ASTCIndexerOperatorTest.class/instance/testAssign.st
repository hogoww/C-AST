tests
testAssign
	| operator node |
	operator := ((ASTCIdentifier new id: #a) indexAt: (ASTCIdentifier new id: #c)) assign: (ASTCLiteral new value: 1).
	
	operator debugASTCStructure.
	self assert: operator isAssignmentOperator.
	
	node := operator leftOperand.
	self assert: node isIndexerOperator.

		node := operator leftOperand leftOperand.
		self assert: node isIdentifier.
		self assert: node id equals: #a.
	
		node := operator leftOperand rightOperand.
		self assert: node isIdentifier.
		self assert: node id equals: #c.
	
	node := operator rightOperand.
	self assert: node isLiteral.
	self assert: node value equals: 1