visiting
visitUnaryOperator: anUnaryOperator

	anUnaryOperator operand ifNotNil: [ :anOperand | 
		anOperand acceptVisitor: self ].
	^ self visitOperator: anUnaryOperator