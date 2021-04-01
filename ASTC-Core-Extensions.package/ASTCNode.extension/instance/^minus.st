*ASTC-Core-Extensions
- anExpression
	| exp |
	exp := anExpression class = SmallInteger ifTrue: [ ASTCLiteral value: anExpression ] ifFalse: [ anExpression ].
	^ ASTCSubtractionOperator new
		leftOperand: self;
		rightOperand: exp;
		yourself