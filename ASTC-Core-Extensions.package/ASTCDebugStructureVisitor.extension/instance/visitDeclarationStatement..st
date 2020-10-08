*ASTC-Core-Extensions
visitDeclarationStatement: aDeclarationStatement
	super visitDeclarationStatement: aDeclarationStatement.
	self flag: #hack.
	aDeclarationStatement declaration
		ifNotNil: [ :aDeclaration | "self assert: aDeclaration isDeclaration" ]