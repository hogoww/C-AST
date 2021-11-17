visiting
visitBitwiseXorOperator: aBitwiseXorOperator

	aBitwiseXorOperator leftOperand ifNotNil: [ :aLeftOperand | 
		aLeftOperand acceptVisitor: self ].
	aBitwiseXorOperator rightOperand ifNotNil: [ :aRightOperand | 
		aRightOperand acceptVisitor: self ]