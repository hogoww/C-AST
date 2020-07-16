visiting
visitVariableDefinition: aVariableDefinition
	aVariableDefinition init
		ifNotNil: [ :anInit | anInit acceptVisitor: self ].
	^ self visitDefinition: aVariableDefinition