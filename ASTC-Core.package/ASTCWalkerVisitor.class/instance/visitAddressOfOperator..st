visiting
visitAddressOfOperator: anAddressOfOperator

	anAddressOfOperator operand ifNotNil: [ :anOperand | 
		anOperand acceptVisitor: self ]