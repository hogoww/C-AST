visiting
visitRawDeclaration: aRawDeclaration
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aRawDeclaration';
		space.
	stream print: aRawDeclaration rawDeclaration.
	stream print: aRawDeclaration varName.
	currentDepth := currentDepth + 1.
	super visitRawDeclaration: aRawDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'