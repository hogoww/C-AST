visiting
visitArrayLiteral: anArrayLiteral
	anArrayLiteral literals
		ifNotNil:
			[ :literals | literals do: [ :aLiterals | aLiterals acceptVisitor: self ] ].
	^ self visitExpression: anArrayLiteral