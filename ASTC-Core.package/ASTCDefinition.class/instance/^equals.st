testing
= aDefinition
	super = aDefinition
		ifFalse: [ ^ false ].
	declaration = aDefinition declaration
		ifFalse: [ ^ false ].
	^ true