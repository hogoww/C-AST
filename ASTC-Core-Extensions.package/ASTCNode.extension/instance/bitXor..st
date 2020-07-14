*ASTC-Core-Extensions
bitXor: anExpression
	^ ASTCBitwiseXorOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself