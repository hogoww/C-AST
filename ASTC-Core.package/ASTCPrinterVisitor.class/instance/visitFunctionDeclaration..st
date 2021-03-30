visiting
visitFunctionDeclaration: aFunctionDeclaration
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aFunctionDeclaration';
		space.
	currentDepth := currentDepth + 1.
	super visitFunctionDeclaration: aFunctionDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'