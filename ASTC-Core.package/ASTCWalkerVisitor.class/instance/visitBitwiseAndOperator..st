visiting
visitBitwiseAndOperator: aBitwiseAndOperator
	aBitwiseAndOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBitwiseAndOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]