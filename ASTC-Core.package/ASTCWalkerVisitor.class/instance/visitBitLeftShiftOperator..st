visiting
visitBitLeftShiftOperator: aBitLeftShiftOperator

	aBitLeftShiftOperator leftOperand ifNotNil: [ :aLeftOperand | 
		aLeftOperand acceptVisitor: self ].
	aBitLeftShiftOperator rightOperand ifNotNil: [ :aRightOperand | 
		aRightOperand acceptVisitor: self ]