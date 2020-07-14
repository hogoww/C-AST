tests
testThenElse
	| operator node |
	operator := (ASTCIdentifier new id: #a) then: (ASTCIdentifier new id: #b) asStatement else: (ASTCIdentifier new id: #c) asStatement.
	
	operator debugASTCStructure.
	self assert: operator isIf.
	
	node := operator condition.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator then.
	self assert: node isExpressionStatement.
	self assert: node expression isIdentifier.
	self assert: node expression id equals: #b.
	
	node := operator else.
	self assert: node isExpressionStatement.
	self assert: node expression isIdentifier.
	self assert: node expression id equals: #c