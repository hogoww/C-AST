*ASTC-Core-Extensions
-> anExpression
	^ ASTCStructAccessPointerOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself