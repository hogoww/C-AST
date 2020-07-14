*ASTC-Core-Extensions
castTo: aType
	self assert: aType isType.
	^ ASTCCastOperator new
		type: aType;
		operand: self;
		yourself