tests
testRandomId2
	self shouldnt: [ ASTCIdentifier new id: #druss ] raise: ReservedKeywordUse 