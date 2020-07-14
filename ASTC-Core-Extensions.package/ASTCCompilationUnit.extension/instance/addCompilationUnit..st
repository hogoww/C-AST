*ASTC-Core-Extensions
addCompilationUnit: aCompilationUnit
	"Does not set the preamble, because I cannot decide here which should be kept if both are sets."
	aCompilationUnit structTypes do: [ :aStructType | self addStructType: aStructType ].
	aCompilationUnit definitions do: [ :aDefinition | self addDefinition: aDefinition ].
	aCompilationUnit variableDeclarations do: [ :aDeclaration | self addVariableDeclaration: aDeclaration ].
	aCompilationUnit includes do: [ :anInclude | self addPreprocessorInclude: anInclude ].
	aCompilationUnit defines do: [ :aDefine | self addPreprocessorDefine: aDefine ].
	^ true