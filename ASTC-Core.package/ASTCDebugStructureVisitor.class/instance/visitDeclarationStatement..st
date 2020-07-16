visiting
visitDeclarationStatement: aDeclarationStatement
	super visitDeclarationStatement: aDeclarationStatement.
	aDeclarationStatement declaration
		ifNotNil: [ :aDeclaration | self assert: aDeclaration isDeclaration ]