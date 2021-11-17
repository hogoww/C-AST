visiting
visitNegationOperator: aNegationOperator

	aNegationOperator operand ifNotNil: [ :anOperand | 
		anOperand acceptVisitor: self ]