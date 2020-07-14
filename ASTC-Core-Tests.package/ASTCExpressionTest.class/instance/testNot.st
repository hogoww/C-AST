tests
testNot
	| operator node |
	operator := (ASTCIdentifier new id: #a) not.
	
	operator debugASTCStructure.
	self assert: operator isLogicalNotOperator.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.