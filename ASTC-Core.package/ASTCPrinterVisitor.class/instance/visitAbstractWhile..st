visiting
visitAbstractWhile: anAbstractWhile

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anAbstractWhile';
		space.
	currentDepth := currentDepth + 1.
	super visitAbstractWhile: anAbstractWhile.
	currentDepth := currentDepth - 1.
	stream << ')'