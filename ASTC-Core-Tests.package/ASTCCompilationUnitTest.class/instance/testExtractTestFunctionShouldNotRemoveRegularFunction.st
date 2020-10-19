tests-extractTestFunction
testExtractTestFunctionShouldNotRemoveRegularFunction
	| definition cu |
	"incomplete ASTC nodes should be fine here"
	definition := ASTCFunctionDefinition new.
	definition declaration: (ASTCFunctionDeclaration new id: #aFunction asCIdentifierNode).
	
	cu := ASTCCompilationUnit new.
	cu add: definition.
	
	self assert: cu definitions size equals: 1.
	cu extractTestFunctions.
	self assert: cu definitions size equals: 1