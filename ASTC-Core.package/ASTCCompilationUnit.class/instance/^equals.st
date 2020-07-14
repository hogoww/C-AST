testing
= aCompilationUnit
	super = aCompilationUnit
		ifFalse: [ ^ false ].
	includes = aCompilationUnit includes
		ifFalse: [ ^ false ].
	preamble = aCompilationUnit preamble
		ifFalse: [ ^ false ].
	defines = aCompilationUnit defines
		ifFalse: [ ^ false ].
	structTypes = aCompilationUnit structTypes
		ifFalse: [ ^ false ].
	definitions = aCompilationUnit definitions
		ifFalse: [ ^ false ].
	variableDeclarations = aCompilationUnit variableDeclarations
		ifFalse: [ ^ false ].
	^ true