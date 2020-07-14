generation-visitor-classes
generateStructureValidatorVisitorClass
	"StructureValidator --|> DebugStructure"
	structureValidatorVisitorClass := debugStructureVisitorClass subclass: (self fullNameOf: #StructureValidatorVisitor)
		instanceVariableNames: 'errors'
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors).
	self addStructureValidatorVisitorMethods
