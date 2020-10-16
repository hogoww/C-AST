tests
testAddDeclarationOfDefinitions
	| definition declaration cu |
	declaration := ASTCFunctionDeclaration new 
			id: #i asCIdentifierNode;
			type: #int asCTypeNode;
		 yourself.
	definition := ASTCFunctionDefinition new 
		declaration: declaration;
		yourself.
	
	cu := ASTCCompilationUnit new.
	cu add: definition.
	cu addDeclarationsOfDefinitions.
	
	self assert: cu functionDeclarations size equals: 1.
	self assert: cu functionDeclarations anyOne equals: declaration.