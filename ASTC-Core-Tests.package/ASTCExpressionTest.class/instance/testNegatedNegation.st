tests
testNegatedNegation
	| identifier |
	"double negation should be removed"
	identifier := (ASTCIdentifier new id: #a) negated negated.
	
	identifier debugASTCStructure.
	self assert: identifier isIdentifier.
	self assert: identifier id equals: #a.