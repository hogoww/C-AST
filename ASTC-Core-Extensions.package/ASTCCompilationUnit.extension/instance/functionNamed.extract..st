*ASTC-Core-Extensions
functionNamed: aFunctionName extract: aBoolean
	| funcDef |
	funcDef := definitions detect: [ :aDefinition | 
		(aDefinition isFunctionDefinition and: [ aDefinition declaration id id = aFunctionName ]) ]
		ifNone: nil.
	
	funcDef ifNil: [ ^ nil ].
	aBoolean ifTrue: [ definitions remove: funcDef ].

	^ funcDef