visiting
visitPreDecrementOperator: aPreDecrementOperator

	aPreDecrementOperator operand ifNotNil: [ :anOperand | 
		anOperand acceptVisitor: self ]