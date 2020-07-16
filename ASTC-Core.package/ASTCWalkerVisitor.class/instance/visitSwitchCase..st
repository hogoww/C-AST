visiting
visitSwitchCase: aSwitchCase
	aSwitchCase expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ].
	aSwitchCase body ifNotNil: [ :aBody | aBody acceptVisitor: self ]