generation-system
generateMethodsFor: aFMXClass
	self addClassTesterOn: aFMXClass.
	self addComparisonOn: aFMXClass.
	self addAcceptVisitorOf: aFMXClass