visiting
visitPreIncrementOperator: aPreIncrementOperator
	aPreIncrementOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]