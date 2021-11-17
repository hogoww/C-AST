visiting
visitArrayLiteral: anArrayLiteral

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anArrayLiteral';
		space.
	currentDepth := currentDepth + 1.
	super visitArrayLiteral: anArrayLiteral.
	currentDepth := currentDepth - 1.
	stream << ')'