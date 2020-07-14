tests
testAddFunctionDefinitionToCompilationUnit
	| definition cu |
	definition := ASTCFunctionDefinition new 
		declaration: (ASTCFunctionDeclaration new 
			id: (ASTCIdentifier new id: #i; yourself);
				type: (ASTCType new type: SmallInteger asTypeReification ; 
				yourself)
		 yourself);
		yourself.
	cu := ASTCCompilationUnit new.
	
	self assert: definition isFunctionDefinition.
	self assert: cu isCompilationUnit.
	definition debugASTCStructure.
	cu debugASTCStructure.
	
	cu add: definition.
	self assert: cu definitions size equals: 1.
	self assert: cu definitions anyOne equals: definition.
	cu debugASTCStructure.