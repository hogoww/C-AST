tests
testPharoKeyword2
	self shouldnt: [ ASTCIdentifier new id: #super ] raise: ReservedKeywordUse 