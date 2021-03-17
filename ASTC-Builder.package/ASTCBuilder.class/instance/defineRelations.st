definition
defineRelations 
	super defineRelations.
	"Define the relationships between the classes, following the FmxNG syntax."
	
	self flag:#comment.
	"Non container side properties NAMES will be IGNORED, TYPES are USED to generate validation visitor!"

	"Reflexive nodes"
	self flag:#hack. "generates only one parent, because the property have the same names, and one the <> side is the right part of the property, that we 'ignore'. May cause trouble."
	(node property: #parent) <>- (node property: #parent).

	"Management nodes"
	(project property: #compilationUnits) <>-* (compilationUnit property: #project).

	"General nodes"
	(compilationUnit property: #includes) <>-* (preprocessorInclude property: #compilationUnit).
	(compilationUnit property: #preamble) <>- (rawCCode property: #compilationUnit). "Slang uses it, so we have it."
	(compilationUnit property: #defines) <>-* (preprocessorDefine property: #compilationUnit).
	(compilationUnit property: #structTypes) <>-* (structureDefinition property: #compilationUnit).
	(compilationUnit property: #functionDeclarations) <>-* (functionDeclaration property: #compilationUnit).
	(compilationUnit property: #definitions) <>-* (definition property: #compilationUnit).
	(compilationUnit property: #variableDeclarations) <>-* (variableDeclaration property: #compilationUnit).
	
	"preprocessor"
	(preprocessorIf property: #condition) <>- (expression property: #preProssorIfCond).
	(preprocessorIf property: #then) <>-* (node property: #preProssorIfThen).
	(preprocessorIf property: #else) <>-* (node property: #preProssorIfElse).
	
	(preprocessorDefine property: #name) <>- (identifier property: #preProcessorDefineName).
	(preprocessorDefine property: #value) <>- (literal property: #preProcessorDefineValue).

	(declaration property: #id) <>-(identifier property: #id).
	(definition property: #declaration) <>- (declaration property: #definition).

	(functionDeclaration property: #type) <>- (type property: #funcType).	
	(functionDeclaration property: #parameters) <>-* (variableDeclaration property: #arguments).
	
	(functionDefinition property: #body) <>- (block property: #funcDefBody).

	(variableDeclaration property: #type) <>- (type property: #declType).

	(variableDefinition property: #init) <>- (expression property: #initialization).

	(structureDefinition property: #members) <>-* (variableDeclaration property: #structureMembers).
	
	"expressions"
	(arrayLiteral property: #literals) <>-* (literal property: #arrayLiteral).
	(expressionList property: #expressions) <>-* (expression property: #expressionListPart).
	
	"statement"
	(if property: #condition) <>- (expression property: #conditionIf).
	(if property: #then) <>- (statement property: #thenStatement).
	(if property: #else) <>- (statement property: #elseStatement).
	(switch property: #expression) <>- (expression property: #switchExpression).
	(switch property: #cases) <>-* (switchCase property: #switchCases).
	(switch property: #default) <>- (statement property: #switchDefaultCase).
	
	(switchCase property: #expression) <>- (expression property: #switchCaseExpression).
	(switchCase property: #body) <>- (statement property: #switchCaseBody).
	
	(return property: #expression) <>- (expression property: #returnExp).
	
	(expressionStatement property: #expression) <>- (expression property: #expStatement).
	
	(declarationStatement property: #declaration) <>- (declaration property: #declStatement).	

	(unaryOperator property: #operand) <>- (expression property: #unaryOperand).
	(binaryOperator property: #leftOperand) <>- (expression property: #leftBinaryOperand).
	(binaryOperator property: #rightOperand) <>- (expression property: #rightBinaryOperand).
	(ternaryConditionalOperator property: #condition) <>- (expression property: #conditionTernary).
	(ternaryConditionalOperator property: #then) <>- (expression property: #thenStatementTernary).
	(ternaryConditionalOperator property: #else) <>- (expression property: #elseStatementTernary).
	
	
	(castOperator property: #type) <>- (type property: #castOperatorType).
	
	(functionCall property: #id) <>- (expression property: #FunCallId).
	(functionCall property: #arguments) <>-* (expression property: #funcCallArg).
	
	(block property: #statements) <>-* (statement property: #blockStatement).
	(block property: #declarations) <>-* (declarationStatement property: #blockDeclarations).
	
	(loop property: #condition) <>- (expression property: #condition).
	(loop property: #body) <>- (statement property: #body).
		(for property: #iteratorDefinition) <>- (node property: #declIterator).
		(for property: #iteratorModification) <>- (expression property: #modifIterator).
		
		