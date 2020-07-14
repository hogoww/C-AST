tests
testAssign
	| operator node |
	operator := (ASTCIdentifier new id: #a) assign: (ASTCLiteral new value: 1).
	
	operator debugASTCStructure.
	self assert: operator isAssignmentOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isLiteral.
	self assert: node value equals: 1