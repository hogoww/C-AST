generation-visitor-classes
generateSubclassResponsibilityVisitorClass
	"SubclassResponsibility --> Abstract"
	subclassResponsibilityVisitorClass := abstractVisitorClass subclass: (self fullNameOf: #SubclassResponsibilityVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)
