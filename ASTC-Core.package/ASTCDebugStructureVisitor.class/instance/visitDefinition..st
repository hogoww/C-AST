visiting
visitDefinition: aDefinition

	super visitDefinition: aDefinition.
	aDefinition declaration ifNotNil: [ :aDeclaration | 
		self assert: aDeclaration isDeclaration ]