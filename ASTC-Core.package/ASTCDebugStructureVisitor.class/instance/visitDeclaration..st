visiting
visitDeclaration: aDeclaration
	super visitDeclaration: aDeclaration.
	aDeclaration id ifNotNil: [ :anId | self assert: anId isIdentifier ]