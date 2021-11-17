visiting
visitMultiplicationOperator: aMultiplicationOperator

	aMultiplicationOperator leftOperand ifNotNil: [ :aLeftOperand | 
		aLeftOperand acceptVisitor: self ].
	aMultiplicationOperator rightOperand ifNotNil: [ :aRightOperand | 
		aRightOperand acceptVisitor: self ]