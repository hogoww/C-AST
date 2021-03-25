comparing
= aVariableDefinition
	super = aVariableDefinition
		ifFalse: [ ^ false ].
	init = aVariableDefinition init
		ifFalse: [ ^ false ].
	^ true