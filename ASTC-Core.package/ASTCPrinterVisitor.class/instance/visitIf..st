visiting
visitIf: anIf
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anIf';
		space.
	currentDepth := currentDepth + 1.
	super visitIf: anIf.
	currentDepth := currentDepth - 1.
	stream << ')'