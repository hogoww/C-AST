*ASTC-Core-Extensions
indexAt: anExpression
	^ ASTCIndexerOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself