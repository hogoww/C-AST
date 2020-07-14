tests
testasAddressOf
	| operator node |
	operator := (ASTCIdentifier new id: #a) asAddressOf.
	
	operator debugASTCStructure.
	self assert: operator isAddressOfOperator.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.