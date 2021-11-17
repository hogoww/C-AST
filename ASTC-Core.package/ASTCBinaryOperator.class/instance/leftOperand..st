accessing
leftOperand: aLeftOperand

	aLeftOperand ifNotNil: [ aLeftOperand parent: self ].
	leftOperand := aLeftOperand