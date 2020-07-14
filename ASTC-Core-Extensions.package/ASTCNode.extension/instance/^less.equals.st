*ASTC-Core-Extensions
<= anExpression
	^ ASTCLesserOrEqualOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself