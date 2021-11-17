visiting
visitFor: aFor

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aFor';
		space.
	currentDepth := currentDepth + 1.
	super visitFor: aFor.
	currentDepth := currentDepth - 1.
	stream << ')'