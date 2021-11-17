visiting
visitLiteral: aLiteral

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aLiteral';
		space.
	stream print: aLiteral value.
	currentDepth := currentDepth + 1.
	super visitLiteral: aLiteral.
	currentDepth := currentDepth - 1.
	stream << ')'