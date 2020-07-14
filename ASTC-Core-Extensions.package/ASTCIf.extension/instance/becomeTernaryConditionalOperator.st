*ASTC-Core-Extensions
becomeTernaryConditionalOperator
	"protocol: converting"
	| asTernary |
	asTernary := ASTCTernaryConditionalOperator new
		parent: parent;
		pharoNode: pharoNode;
		condition: condition;
		then: then;
		else: else;
		yourself.
	
	self becomeForward: asTernary