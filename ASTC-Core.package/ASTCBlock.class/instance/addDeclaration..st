accessing
addDeclaration: aDeclaration

	aDeclaration parent: self.
	declarations add: aDeclaration.
	^ true