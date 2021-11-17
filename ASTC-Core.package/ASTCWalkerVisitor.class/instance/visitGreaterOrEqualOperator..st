visiting
visitGreaterOrEqualOperator: aGreaterOrEqualOperator

	aGreaterOrEqualOperator leftOperand ifNotNil: [ :aLeftOperand | 
		aLeftOperand acceptVisitor: self ].
	aGreaterOrEqualOperator rightOperand ifNotNil: [ :aRightOperand | 
		aRightOperand acceptVisitor: self ]