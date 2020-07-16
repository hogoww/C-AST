visiting
visitVariableDefinition: aVariableDefinition
	aVariableDefinition declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ].
	aVariableDefinition init
		ifNotNil: [ :anInit | anInit acceptVisitor: self ]