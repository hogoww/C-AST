visiting
visitAdditionOperator: anAdditionOperator

	anAdditionOperator leftOperand ifNotNil: [ :aLeftOperand | 
		aLeftOperand acceptVisitor: self ].
	anAdditionOperator rightOperand ifNotNil: [ :aRightOperand | 
		aRightOperand acceptVisitor: self ]