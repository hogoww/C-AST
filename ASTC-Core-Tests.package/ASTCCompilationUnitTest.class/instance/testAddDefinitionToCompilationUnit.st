tests
testAddDefinitionToCompilationUnit
	| definition cu |
	definition := ASTCVariableDefinition new 
		declaration: (ASTCVariableDeclaration new id: (ASTCIdentifier new id: #i; yourself);
			type: (ASTCType new type: SmallInteger asTypeReification ; yourself)
		 yourself);
		yourself.
	cu := ASTCCompilationUnit new.
	
	self assert: definition isDefinition.
	self assert: cu isCompilationUnit.
	definition debugASTCStructure.
	cu debugASTCStructure.
	
	cu add: definition.
	self assert: cu definitions size equals: 1.
	self assert: cu definitions anyOne equals: definition.
	self assert: cu variableDeclarations size equals: 0.
	cu debugASTCStructure.