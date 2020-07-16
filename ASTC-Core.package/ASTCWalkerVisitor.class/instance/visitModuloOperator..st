visiting
visitModuloOperator: aModuloOperator
	aModuloOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aModuloOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]