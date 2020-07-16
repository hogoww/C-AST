visiting
visitSubtractionOperator: aSubtractionOperator
	aSubtractionOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aSubtractionOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]