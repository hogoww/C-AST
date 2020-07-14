generation-visitor-classes
generateDebugStructureVisitorClass
	"DebugStructure --|> HierarchyWalker"
	debugStructureVisitorClass :=  hierarchyWalkerVisitorClass subclass: (self fullNameOf: #DebugStructureVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors).
	
