visiting
visitSwitch: aSwitch
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aSwitch';
		space.
	currentDepth := currentDepth + 1.
	super visitSwitch: aSwitch.
	currentDepth := currentDepth - 1.
	stream << ')'