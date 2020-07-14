generation-visit
generateVisitsFor: aFMXClass
	self generateAbstractVisitOf: aFMXClass.
		self generateSubclassResponsibilityVisitOf: aFMXClass.
		self generateSuperclassVisitOf: aFMXClass.
		self generateWalkVisitOf: aFMXClass.
			self generatePrinterVisit: aFMXClass.
			self generateHierarchyWalkVisitOf: aFMXClass.
				self generateDebugVisitOf: aFMXClass.
					self generateValidatorVisitOf: aFMXClass.
