tests
testRandomId4
	self shouldnt: [ ASTCIdentifier new id: #structu ] raise: ReservedKeywordUse 