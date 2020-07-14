*ASTC-Core-Extensions
debugASTCStructure
	| validationVisitor |
	validationVisitor := ASTCDebugStructureVisitor new.
	self acceptVisitor: validationVisitor.