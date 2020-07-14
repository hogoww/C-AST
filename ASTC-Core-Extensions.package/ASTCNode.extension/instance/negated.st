*ASTC-Core-Extensions
negated
	^ self isNegationOperator 
		ifTrue: ["If there's aDouble negation, we become positive !"
			self operand
			]
		ifFalse: ["otherwise, we negate !"
			ASTCNegationOperator new
				operand: self;
				yourself
				]