generation-visitor-classes
generateVisitorsClasses
	self generateAbstractVisitorClass.
		self generateSubclassResponsibilityVisitorClass.
		self generateSuperclassVisitorClass.
		self generateWalkerVisitorClass.
			self generatePrinterVisitorClass.
		self generateHierarchyWalkerVisitorClass.
			self generateDebugStructureVisitorClass.
				self generateStructureValidatorVisitorClass.




