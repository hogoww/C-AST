visiting
visitStructAccessPointerOperator: aStructAccessPointerOperator
	aStructAccessPointerOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aStructAccessPointerOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]