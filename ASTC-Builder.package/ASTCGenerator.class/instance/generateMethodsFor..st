generation-system
generateMethodsFor: aFMXClass
	self addClassTesterOn: aFMXClass.
	self addComparisonOn: aFMXClass.
	self addHashOn: aFMXClass.
	self addAcceptVisitorOf: aFMXClass