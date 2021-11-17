accessing
declaration: aDeclaration

	aDeclaration ifNotNil: [ aDeclaration parent: self ].
	declaration := aDeclaration