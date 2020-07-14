*ASTC-Core-Extensions
then: aTrueExpression else: aFalseExpression
	^ ASTCIf new
		condition: self;
		then: aTrueExpression;
		else: aFalseExpression;
		yourself