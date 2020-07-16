visiting
visitDivisionOperator: aDivisionOperator
	aDivisionOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aDivisionOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]