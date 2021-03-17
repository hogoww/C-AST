fillFram-support
add: aNode
	(aNode isPreprocessorInclude
		and: [ self addPreprocessorInclude: aNode ])
		ifTrue: [ ^ self ].
	(aNode isPreprocessorDefine
		and: [ self addPreprocessorDefine: aNode ])
		ifTrue: [ ^ self ].
	(aNode isPreprocessorIf and: [ self addPreprocessorIf: aNode ])
		ifTrue: [ ^ self ].
	(aNode isRawDeclaration and: [ self addRawDeclaration: aNode ])
		ifTrue: [ ^ self ].
	(aNode isDoWhile and: [ self addDoWhile: aNode ])
		ifTrue: [ ^ self ].
	(aNode isWhile and: [ self addWhile: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAbstractWhile and: [ self addAbstractWhile: aNode ])
		ifTrue: [ ^ self ].
	(aNode isFor and: [ self addFor: aNode ])
		ifTrue: [ ^ self ].
	(aNode isLoop and: [ self addLoop: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBreak and: [ self addBreak: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBlock and: [ self addBlock: aNode ])
		ifTrue: [ ^ self ].
	(aNode isSwitchCase and: [ self addSwitchCase: aNode ])
		ifTrue: [ ^ self ].
	(aNode isSwitch and: [ self addSwitch: aNode ])
		ifTrue: [ ^ self ].
	(aNode isIf and: [ self addIf: aNode ])
		ifTrue: [ ^ self ].
	(aNode isReturn and: [ self addReturn: aNode ])
		ifTrue: [ ^ self ].
	(aNode isDeclarationStatement
		and: [ self addDeclarationStatement: aNode ])
		ifTrue: [ ^ self ].
	(aNode isExpressionStatement
		and: [ self addExpressionStatement: aNode ])
		ifTrue: [ ^ self ].
	(aNode isEmptyStatement and: [ self addEmptyStatement: aNode ])
		ifTrue: [ ^ self ].
	(aNode isExpressionList and: [ self addExpressionList: aNode ])
		ifTrue: [ ^ self ].
	(aNode isRawCCode and: [ self addRawCCode: aNode ])
		ifTrue: [ ^ self ].
	(aNode isIdentifier and: [ self addIdentifier: aNode ])
		ifTrue: [ ^ self ].
	(aNode isNegationOperator and: [ self addNegationOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitwiseNotOperator
		and: [ self addBitwiseNotOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitwiseOrOperator and: [ self addBitwiseOrOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitwiseXorOperator
		and: [ self addBitwiseXorOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAssignmentAdditionOperator
		and: [ self addAssignmentAdditionOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitRightShiftOperator
		and: [ self addBitRightShiftOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitLeftShiftOperator
		and: [ self addBitLeftShiftOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAddressOfOperator and: [ self addAddressOfOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isStructAccessStaticOperator
		and: [ self addStructAccessStaticOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isModuloOperator and: [ self addModuloOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitwiseAndOperator
		and: [ self addBitwiseAndOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isStructAccessPointerOperator
		and: [ self addStructAccessPointerOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isLesserOrEqualOperator
		and: [ self addLesserOrEqualOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isLesserOperator and: [ self addLesserOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isGreaterOrEqualOperator
		and: [ self addGreaterOrEqualOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isGreaterOperator and: [ self addGreaterOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isInequalityOperator
		and: [ self addInequalityOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isEqualityOperator and: [ self addEqualityOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAndOperator and: [ self addAndOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isOrOperator and: [ self addOrOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isIndexerOperator and: [ self addIndexerOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isDivisionOperator and: [ self addDivisionOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isMultiplicationOperator
		and: [ self addMultiplicationOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isSubtractionOperator
		and: [ self addSubtractionOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAdditionOperator and: [ self addAdditionOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAssignmentOperator
		and: [ self addAssignmentOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isLogicalNotOperator
		and: [ self addLogicalNotOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isCastOperator and: [ self addCastOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isPreDecrementOperator
		and: [ self addPreDecrementOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isPreIncrementOperator
		and: [ self addPreIncrementOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isTernaryConditionalOperator
		and: [ self addTernaryConditionalOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBinaryOperator and: [ self addBinaryOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isUnaryOperator and: [ self addUnaryOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isOperator and: [ self addOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isFunctionCall and: [ self addFunctionCall: aNode ])
		ifTrue: [ ^ self ].
	(aNode isArrayLiteral and: [ self addArrayLiteral: aNode ])
		ifTrue: [ ^ self ].
	(aNode isLiteral and: [ self addLiteral: aNode ])
		ifTrue: [ ^ self ].
	(aNode isStructureDefinition
		and: [ self addStructureDefinition: aNode ])
		ifTrue: [ ^ self ].
	(aNode isStructureDeclaration
		and: [ self addStructureDeclaration: aNode ])
		ifTrue: [ ^ self ].
	(aNode isVariableDefinition
		and: [ self addVariableDefinition: aNode ])
		ifTrue: [ ^ self ].
	(aNode isVariableDeclaration
		and: [ self addVariableDeclaration: aNode ])
		ifTrue: [ ^ self ].
	(aNode isFunctionDefinition
		and: [ self addFunctionDefinition: aNode ])
		ifTrue: [ ^ self ].
	(aNode isFunctionDeclaration
		and: [ self addFunctionDeclaration: aNode ])
		ifTrue: [ ^ self ].
	(aNode isType and: [ self addType: aNode ])
		ifTrue: [ ^ self ].
	(aNode isStatement and: [ self addStatement: aNode ])
		ifTrue: [ ^ self ].
	(aNode isExpression and: [ self addExpression: aNode ])
		ifTrue: [ ^ self ].
	(aNode isDeclaration and: [ self addDeclaration: aNode ])
		ifTrue: [ ^ self ].
	(aNode isDefinition and: [ self addDefinition: aNode ])
		ifTrue: [ ^ self ].
	(aNode isCompilationUnit and: [ self addCompilationUnit: aNode ])
		ifTrue: [ ^ self ].
	(aNode isProject and: [ self addProject: aNode ])
		ifTrue: [ ^ self ].
	(aNode isNode and: [ self addNode: aNode ])
		ifTrue: [ ^ self ].
	TypeError new
		actualType: aNode class name;
		signal