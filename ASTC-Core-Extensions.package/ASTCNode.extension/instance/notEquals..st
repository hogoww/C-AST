*ASTC-Core-Extensions
notEquals: anExpression
	^ ASTCInequalityOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself