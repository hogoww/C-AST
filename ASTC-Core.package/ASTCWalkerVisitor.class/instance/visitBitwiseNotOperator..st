visiting
visitBitwiseNotOperator: aBitwiseNotOperator
	aBitwiseNotOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]