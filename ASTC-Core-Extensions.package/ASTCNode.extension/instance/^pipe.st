*ASTC-Core-Extensions
| anExpression
	^ ASTCBitwiseOrOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself