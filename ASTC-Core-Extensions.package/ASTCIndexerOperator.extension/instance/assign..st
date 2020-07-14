*ASTC-Core-Extensions
assign: anExpression
	^ ASTCAssignmentOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself