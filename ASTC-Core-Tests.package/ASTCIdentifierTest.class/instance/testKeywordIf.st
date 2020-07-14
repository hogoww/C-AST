tests
testKeywordIf
	self should: [ ASTCIdentifier new id: #if ] raise: ReservedKeywordUse 