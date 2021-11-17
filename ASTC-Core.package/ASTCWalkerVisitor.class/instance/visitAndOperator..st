visiting
visitAndOperator: anAndOperator

	anAndOperator leftOperand ifNotNil: [ :aLeftOperand | 
		aLeftOperand acceptVisitor: self ].
	anAndOperator rightOperand ifNotNil: [ :aRightOperand | 
		aRightOperand acceptVisitor: self ]