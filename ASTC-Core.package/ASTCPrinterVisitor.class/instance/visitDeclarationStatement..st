visiting
visitDeclarationStatement: aDeclarationStatement

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aDeclarationStatement';
		space.
	currentDepth := currentDepth + 1.
	super visitDeclarationStatement: aDeclarationStatement.
	currentDepth := currentDepth - 1.
	stream << ')'