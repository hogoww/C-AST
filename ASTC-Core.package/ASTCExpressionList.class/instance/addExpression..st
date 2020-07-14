accessing
addExpression: anExpression
	anExpression parent: self.
	expressions add: anExpression.
	^ true