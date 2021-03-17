definition
defineClasses
	"define the classes that appear in the metamodel, and put them in instances variables, following the FmxNG syntax."
	super defineClasses.
	
	"general"
	node := builder newClassNamed: #Node.

		"Node Subclasses"
		project := builder newClassNamed: #Project.
		cFile := builder newClassNamed: #cFile.
		compilationUnit := builder newClassNamed: #CompilationUnit.
		definition := builder newClassNamed: #Definition.
		declaration := builder newClassNamed: #Declaration.
		
		expression := builder newClassNamed: #Expression.
		statement := builder newClassNamed: #Statement.
		type := builder newClassNamed: #Type.
		
			"Definition/declaration"
			functionDeclaration := builder newClassNamed: #FunctionDeclaration.
			functionDefinition := builder newClassNamed: #FunctionDefinition.
	
			variableDeclaration := builder newClassNamed: #VariableDeclaration.
			variableDefinition := builder newClassNamed: #VariableDefinition.
	
			structureDeclaration := builder newClassNamed: #StructureDeclaration.
			structureDefinition := builder newClassNamed: #StructureDefinition.
			
		"Expressions"
		literal := builder newClassNamed: #Literal.
		arrayLiteral := builder newClassNamed: #ArrayLiteral.
		functionCall := builder newClassNamed: #FunctionCall.
		operator := builder newClassNamed: #Operator.
		self defineOperatorClasses.
		identifier := builder newClassNamed: #Identifier.
		rawCCode := builder newClassNamed: #RawCCode.
		expressionList := builder newClassNamed: #ExpressionList.
		
		"Statement"
		emptyStatement := builder newClassNamed: #EmptyStatement.
		expressionStatement := builder newClassNamed: #ExpressionStatement.
		declarationStatement := builder newClassNamed: #DeclarationStatement.
		return := builder newClassNamed: #Return.
		if := builder newClassNamed: #If.
		switch := builder newClassNamed: #Switch.
		switchCase := builder newClassNamed: #SwitchCase.
		block := builder newClassNamed: #Block.
		break := builder newClassNamed: #Break.
		
		"Loops"
		loop := builder newClassNamed: #Loop.
			for := builder newClassNamed: #For.
			abstractWhile := builder newClassNamed: #AbstractWhile.
				while := builder newClassNamed: #While.
				doWhile := builder newClassNamed: #DoWhile.
 
		"DeclarationStatement Subclass"
		rawDeclaration := builder newClassNamed: #RawDeclaration.

		"preprocessor"
		preprocessorIf := builder newClassNamed: #PreprocessorIf.
		preprocessorDefine := builder newClassNamed: #PreprocessorDefine.
		preprocessorInclude := builder newClassNamed: #PreprocessorInclude.