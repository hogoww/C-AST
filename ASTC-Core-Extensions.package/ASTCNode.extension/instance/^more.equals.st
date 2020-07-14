*ASTC-Core-Extensions
>= anExpression
	^ ASTCGreaterOrEqualOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself