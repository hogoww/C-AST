visiting
visitLogicalNotOperator: aLogicalNotOperator
	aLogicalNotOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]