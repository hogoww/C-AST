*ASTC-Core-Extensions
&& anExpression
	^ ASTCAndOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself