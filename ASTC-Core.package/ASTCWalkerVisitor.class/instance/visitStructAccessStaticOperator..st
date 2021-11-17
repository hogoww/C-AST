visiting
visitStructAccessStaticOperator: aStructAccessStaticOperator

	aStructAccessStaticOperator leftOperand ifNotNil: [ :aLeftOperand | 
		aLeftOperand acceptVisitor: self ].
	aStructAccessStaticOperator rightOperand ifNotNil: [ :aRightOperand | 
		aRightOperand acceptVisitor: self ]