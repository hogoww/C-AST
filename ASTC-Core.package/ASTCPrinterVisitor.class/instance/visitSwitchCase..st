visiting
visitSwitchCase: aSwitchCase
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aSwitchCase';
		space.
	currentDepth := currentDepth + 1.
	super visitSwitchCase: aSwitchCase.
	currentDepth := currentDepth - 1.
	stream << ')'