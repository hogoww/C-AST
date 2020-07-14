tests
testRandomId1
	self shouldnt: [ ASTCIdentifier new id: #i ] raise: ReservedKeywordUse 