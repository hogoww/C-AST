visiting
visitDeclarationStatement: aDeclarationStatement
	aDeclarationStatement declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ].
	^ self visitStatement: aDeclarationStatement