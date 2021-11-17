visiting
visitEmptyStatement: anEmptyStatement

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anEmptyStatement';
		space.
	currentDepth := currentDepth + 1.
	super visitEmptyStatement: anEmptyStatement.
	currentDepth := currentDepth - 1.
	stream << ')'