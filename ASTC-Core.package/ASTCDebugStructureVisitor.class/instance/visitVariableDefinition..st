visiting
visitVariableDefinition: aVariableDefinition

	super visitVariableDefinition: aVariableDefinition.
	aVariableDefinition init ifNotNil: [ :anInit | 
		self assert: anInit isExpression ]