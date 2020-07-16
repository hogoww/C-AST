visiting
visitGreaterOperator: aGreaterOperator
	aGreaterOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aGreaterOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]