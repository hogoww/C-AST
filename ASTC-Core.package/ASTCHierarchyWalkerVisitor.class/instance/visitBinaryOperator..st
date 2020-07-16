visiting
visitBinaryOperator: aBinaryOperator
	aBinaryOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBinaryOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ].
	^ self visitOperator: aBinaryOperator