visiting
visitLesserOrEqualOperator: aLesserOrEqualOperator
	aLesserOrEqualOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aLesserOrEqualOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]