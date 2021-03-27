*ASTC-Core-Extensions
defineIteratorWithType: aType
	"precondition: expects to have a assignement in iteratorDefinition"
	
	self iteratorDefinition isDefinition ifTrue: [ ^ self ].

	self iteratorDefinition:
		(ASTCVariableDefinition new
			declaration:
				(ASTCVariableDeclaration new
					id: iteratorDefinition leftOperand;
					type: aType asCTypeNode;
					yourself);
			init: iteratorDefinition rightOperand;
			yourself).