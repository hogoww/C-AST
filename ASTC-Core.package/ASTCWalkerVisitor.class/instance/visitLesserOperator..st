visiting
visitLesserOperator: aLesserOperator
	aLesserOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aLesserOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]