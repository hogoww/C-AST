visiting
visitIndexerOperator: anIndexerOperator
	anIndexerOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anIndexerOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]