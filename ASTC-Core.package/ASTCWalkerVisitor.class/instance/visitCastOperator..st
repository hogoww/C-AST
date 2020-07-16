visiting
visitCastOperator: aCastOperator
	aCastOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ].
	aCastOperator type ifNotNil: [ :aType | aType acceptVisitor: self ]