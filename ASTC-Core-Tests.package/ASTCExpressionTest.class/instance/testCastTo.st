tests
testCastTo
	| operator node |
	operator := (ASTCIdentifier new id: #a) castTo: (ASTCType new type: SmallInteger asTypeReification).
	
	operator debugASTCStructure.
	self assert: operator isCastOperator.
	
	node := operator type.
	self assert: node isType.
	self assert: node type equals: SmallInteger asTypeReification.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.