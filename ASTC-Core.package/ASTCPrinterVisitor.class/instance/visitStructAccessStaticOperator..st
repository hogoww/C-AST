visiting
visitStructAccessStaticOperator: aStructAccessStaticOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aStructAccessStaticOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitStructAccessStaticOperator: aStructAccessStaticOperator.
	currentDepth := currentDepth - 1.
	stream << ')'