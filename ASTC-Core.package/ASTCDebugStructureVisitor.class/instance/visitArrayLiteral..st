visiting
visitArrayLiteral: anArrayLiteral
	super visitArrayLiteral: anArrayLiteral.
	anArrayLiteral literals
		ifNotNil:
			[ :literals | literals do: [ :aLiterals | self assert: aLiterals isLiteral ] ]