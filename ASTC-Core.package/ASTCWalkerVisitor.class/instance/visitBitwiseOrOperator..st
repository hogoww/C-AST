visiting
visitBitwiseOrOperator: aBitwiseOrOperator

	aBitwiseOrOperator leftOperand ifNotNil: [ :aLeftOperand | 
		aLeftOperand acceptVisitor: self ].
	aBitwiseOrOperator rightOperand ifNotNil: [ :aRightOperand | 
		aRightOperand acceptVisitor: self ]