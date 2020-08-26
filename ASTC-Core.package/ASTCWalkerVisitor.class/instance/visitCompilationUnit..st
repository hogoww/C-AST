visiting
visitCompilationUnit: aCompilationUnit
	aCompilationUnit includes
		ifNotNil:
			[ :includes | includes do: [ :anIncludes | anIncludes acceptVisitor: self ] ].
	aCompilationUnit defines
		ifNotNil:
			[ :defines | defines do: [ :aDefines | aDefines acceptVisitor: self ] ].
	aCompilationUnit structTypes
		ifNotNil:
			[ :structTypes | structTypes do: [ :aStructTypes | aStructTypes acceptVisitor: self ] ].
	aCompilationUnit functionDeclarations
		ifNotNil: [ :functionDeclarations | 
			functionDeclarations
				do: [ :aFunctionDeclarations | aFunctionDeclarations acceptVisitor: self ] ].
	aCompilationUnit definitions
		ifNotNil:
			[ :definitions | definitions do: [ :aDefinitions | aDefinitions acceptVisitor: self ] ].
	aCompilationUnit variableDeclarations
		ifNotNil: [ :variableDeclarations | 
			variableDeclarations
				do: [ :aVariableDeclarations | aVariableDeclarations acceptVisitor: self ] ].
	aCompilationUnit preamble
		ifNotNil: [ :aPreamble | aPreamble acceptVisitor: self ]