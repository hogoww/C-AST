definition
defineHierarchy
	super defineHierarchy.
	"Define the inheritance links between the classes defined in #defineClasses, following the FmxNG syntax."

	project --|> node.
	compilationUnit --|> node.
	
	"preprocessor"
	preprocessorIf --|> expression "not sure about this..".
	preprocessorDefine --|> node.
	preprocessorInclude --|> node.

		"Node Direct SubClasses"
		functionDefinition  --|> node.
		expression --|> node.
		statement --|> node.
		declaration --|> node.
		definition --|> node.
		type --|> node.
		
			"Definition/declaration directSubclasses"
			functionDeclaration --|> declaration.
			functionDefinition --|> definition.
	
			variableDeclaration --|> declaration.
			variableDefinition  --|> definition.
			
			structureDeclaration --|> declaration.
			structureDefinition  --|> definition.
			
		
			"Expression direct Subclasses"
			literal --|> expression.
			functionCall  --|> expression.
			operator --|> expression.
			self defineOperatorsHierarchy.
			identifier --|> expression.
			rawCCode --|> expression.
			expressionList --|> expression.
			
			"Statement direct Subclasses"
			emptyStatement  --|> statement.
			expressionStatement --|> statement.
			declarationStatement --|> statement.
			return --|> statement.
			if  --|> statement.
			switch --|> statement.
			switchCase --|> statement.
			block --|> statement.
			break --|> statement.
				
			"Loops"
			loop --|> statement.
				for --|> loop.				
				abstractWhile --|> loop.
					while --|> abstractWhile.
					doWhile --|> abstractWhile.
			
				"DeclarationStatement subclass"
				rawDeclaration --|> declarationStatement.