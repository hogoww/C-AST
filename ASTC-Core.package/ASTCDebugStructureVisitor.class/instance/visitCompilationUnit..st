visiting
visitCompilationUnit: aCompilationUnit

	super visitCompilationUnit: aCompilationUnit.
	aCompilationUnit includes ifNotNil: [ :includes | 
		includes do: [ :anIncludes | 
			self assert: anIncludes isPreprocessorInclude ] ].
	aCompilationUnit defines ifNotNil: [ :defines | 
		defines do: [ :aDefines | 
			self assert: aDefines isPreprocessorDefine ] ].
	aCompilationUnit structTypes ifNotNil: [ :structTypes | 
		structTypes do: [ :aStructTypes | 
			self assert: aStructTypes isStructureDefinition ] ].
	aCompilationUnit functionDeclarations ifNotNil: [ 
		:functionDeclarations | 
		functionDeclarations do: [ :aFunctionDeclarations | 
			self assert: aFunctionDeclarations isFunctionDeclaration ] ].
	aCompilationUnit definitions ifNotNil: [ :definitions | 
		definitions do: [ :aDefinitions | 
			self assert: aDefinitions isDefinition ] ].
	aCompilationUnit variableDeclarations ifNotNil: [ 
		:variableDeclarations | 
		variableDeclarations do: [ :aVariableDeclarations | 
			self assert: aVariableDeclarations isVariableDeclaration ] ].
	aCompilationUnit preamble ifNotNil: [ :aPreamble | 
		self assert: aPreamble isRawCCode ]