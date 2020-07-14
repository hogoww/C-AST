tests
testAssignAndAdd
	| operator node |
	operator := (ASTCIdentifier new id: #a) assignAndAdd: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isAssignmentAdditionOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b