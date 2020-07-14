tests
testPreIncr
	| operator node |
	operator := (ASTCIdentifier new id: #a) preIncr.
	
	operator debugASTCStructure.
	self assert: operator isPreIncrementOperator.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.