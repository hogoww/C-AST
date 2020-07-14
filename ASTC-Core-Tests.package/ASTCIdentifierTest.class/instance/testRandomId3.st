tests
testRandomId3
	self shouldnt: [ ASTCIdentifier new id: #class ] raise: ReservedKeywordUse 