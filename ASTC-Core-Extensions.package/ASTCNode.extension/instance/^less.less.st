*ASTC-Core-Extensions
<< anExpression
	^ ASTCBitLeftShiftOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself