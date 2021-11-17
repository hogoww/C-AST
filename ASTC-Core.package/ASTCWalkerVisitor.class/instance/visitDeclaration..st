visiting
visitDeclaration: aDeclaration

	aDeclaration id ifNotNil: [ :anId | anId acceptVisitor: self ]