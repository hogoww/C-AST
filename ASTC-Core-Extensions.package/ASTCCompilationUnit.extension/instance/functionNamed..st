*ASTC-Core-Extensions
functionNamed: aFunctionName
	| function |
	function := self definitions detect: [ :aDefinition |
		aDefinition isFunctionDefinition and: [ aDefinition declaration id id = aFunctionName ] ].
	^ function