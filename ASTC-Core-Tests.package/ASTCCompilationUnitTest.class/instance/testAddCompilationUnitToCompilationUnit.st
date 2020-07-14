tests
testAddCompilationUnitToCompilationUnit
	| definition cu targetCu |
	definition := ASTCVariableDefinition new 
		declaration: (ASTCVariableDeclaration new id: (ASTCIdentifier new id: #i; yourself);
			type: (ASTCType new type: SmallInteger asTypeReification ; yourself)
		 yourself);
		yourself.
	cu := ASTCCompilationUnit new.
	cu add: definition.
	self assert: cu definitions size equals: 1.
	self assert: cu definitions anyOne equals: definition.
	self assert: cu variableDeclarations size equals: 0.

	
	targetCu := ASTCCompilationUnit new.
	targetCu add: cu.
	
	self assert: targetCu definitions size equals: 1.
	self assert: targetCu definitions anyOne equals: definition.
	self assert: targetCu variableDeclarations size equals: 0.
	targetCu debugASTCStructure.