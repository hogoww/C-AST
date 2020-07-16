visiting
visitOrOperator: anOrOperator
	anOrOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anOrOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]