*ASTC-Core-Extensions
structStaticAccess: anIdentifier
	^ ASTCStructAccessStaticOperator new
		leftOperand: self;
		rightOperand: anIdentifier;
		yourself