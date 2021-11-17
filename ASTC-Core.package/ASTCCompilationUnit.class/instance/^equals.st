comparing
= aCompilationUnit

	super = aCompilationUnit ifFalse: [ ^ false ].
	includes = aCompilationUnit includes ifFalse: [ ^ false ].
	preamble = aCompilationUnit preamble ifFalse: [ ^ false ].
	defines = aCompilationUnit defines ifFalse: [ ^ false ].
	structTypes = aCompilationUnit structTypes ifFalse: [ ^ false ].
	functionDeclarations = aCompilationUnit functionDeclarations 
		ifFalse: [ ^ false ].
	definitions = aCompilationUnit definitions ifFalse: [ ^ false ].
	variableDeclarations = aCompilationUnit variableDeclarations 
		ifFalse: [ ^ false ].
	^ true