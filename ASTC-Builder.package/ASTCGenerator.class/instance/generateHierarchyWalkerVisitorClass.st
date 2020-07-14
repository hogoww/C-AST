generation-visitor-classes
generateHierarchyWalkerVisitorClass
	"HierarchyWalker --> Abstract"
	hierarchyWalkerVisitorClass := abstractVisitorClass subclass: (self fullNameOf: #HierarchyWalkerVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)
