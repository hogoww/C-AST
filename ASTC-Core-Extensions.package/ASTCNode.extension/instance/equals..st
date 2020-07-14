*ASTC-Core-Extensions
equals: anExpression
	^ ASTCEqualityOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself