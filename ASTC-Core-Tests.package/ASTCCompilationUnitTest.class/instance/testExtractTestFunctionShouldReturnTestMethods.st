tests-extractTestFunction
testExtractTestFunctionShouldReturnTestMethods
	| definition cu testMethods |
	"incomplete ASTC nodes should be fine here"
	definition := ASTCFunctionDefinition new.
	definition declaration: (ASTCFunctionDeclaration new id: #testFunction asCIdentifierNode).
	
	cu := ASTCCompilationUnit new.
	cu add: definition.
	
	self assert: cu definitions size equals: 1.
	testMethods := cu extractTestFunctions.
	self assert: testMethods size equals: 1.
	testMethods do: [ :aFunction | self assert: aFunction isTest ]