visiting
visitFunctionDeclaration: aFunctionDeclaration
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aFunctionDeclaration';
		space.
	stream print: aFunctionDeclaration qualifiers.
	currentDepth := currentDepth + 1.
	super visitFunctionDeclaration: aFunctionDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'