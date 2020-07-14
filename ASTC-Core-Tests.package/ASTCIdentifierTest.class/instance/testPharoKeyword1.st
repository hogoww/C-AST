tests
testPharoKeyword1
	self shouldnt: [ ASTCIdentifier new id: #self ] raise: ReservedKeywordUse 