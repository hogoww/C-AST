tests
testNegated
	| operator node |
	operator := (ASTCIdentifier new id: #a) negated.
	
	operator debugASTCStructure.
	self assert: operator isNegationOperator.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.