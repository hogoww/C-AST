visiting
visitFunctionCall: aFunctionCall

	super visitFunctionCall: aFunctionCall.
	aFunctionCall arguments ifNotNil: [ :arguments | 
		arguments do: [ :anArguments | 
			self assert: anArguments isExpression ] ].
	aFunctionCall id ifNotNil: [ :anId | self assert: anId isExpression ]