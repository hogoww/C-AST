*ASTC-Core-Extensions
assignAndAdd: anExpression
	^ ASTCAssignmentAdditionOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself 