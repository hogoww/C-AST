visiting
visitEqualityOperator: anEqualityOperator

	anEqualityOperator leftOperand ifNotNil: [ :aLeftOperand | 
		aLeftOperand acceptVisitor: self ].
	anEqualityOperator rightOperand ifNotNil: [ :aRightOperand | 
		aRightOperand acceptVisitor: self ]