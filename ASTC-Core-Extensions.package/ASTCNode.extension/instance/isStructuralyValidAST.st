*ASTC-Core-Extensions
isStructuralyValidAST 
	| validationVisitor |
	validationVisitor := ASTCStructureValidatorVisitor new.
	self acceptVisitor: validationVisitor.
	^validationVisitor isValidAst