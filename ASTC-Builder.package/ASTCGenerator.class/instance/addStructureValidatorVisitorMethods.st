generation-visitor-classes
addStructureValidatorVisitorMethods	
	| errors method |
	method := 'initialize' asMethodWithBody: [ errors := 0 ].
	structureValidatorVisitorClass compile: method asString classified: 'initialization'.

	method := 'errors' asMethodWithBody: [ ^ errors ].		
	structureValidatorVisitorClass compile: method asString classified: 'accessing'.

	method := 'isValidAst' asMethodWithBody: [ ^ errors = 0 ].
	structureValidatorVisitorClass compile: method asString classified: 'testing'.
