accessing
expression: anExpression

	anExpression ifNotNil: [ anExpression parent: self ].
	expression := anExpression