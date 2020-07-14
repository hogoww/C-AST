tests
testBitNot
	| operator node |
	operator := (ASTCIdentifier new id: #a) bitNot.
	
	operator debugASTCStructure.
	self assert: operator isBitwiseNotOperator.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.