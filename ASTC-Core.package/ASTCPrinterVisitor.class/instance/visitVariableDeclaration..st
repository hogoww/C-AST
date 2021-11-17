visiting
visitVariableDeclaration: aVariableDeclaration

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aVariableDeclaration';
		space.
	currentDepth := currentDepth + 1.
	super visitVariableDeclaration: aVariableDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'