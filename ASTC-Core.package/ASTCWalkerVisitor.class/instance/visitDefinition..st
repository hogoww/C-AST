visiting
visitDefinition: aDefinition
	aDefinition declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]