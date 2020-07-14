visiting
visitDeclaration: aDeclaration
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aDeclaration';
		space.
	currentDepth := currentDepth + 1.
	super visitDeclaration: aDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'