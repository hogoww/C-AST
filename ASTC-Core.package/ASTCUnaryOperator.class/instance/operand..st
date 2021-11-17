accessing
operand: anOperand

	anOperand ifNotNil: [ anOperand parent: self ].
	operand := anOperand