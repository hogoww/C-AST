visiting
visitBitRightShiftOperator: aBitRightShiftOperator
	aBitRightShiftOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBitRightShiftOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]