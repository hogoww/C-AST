generation-visitor-classes
generateSuperclassVisitorClass
	"Superclass --> Abstract"
	superclassVisitorClass := abstractVisitorClass subclass: (self fullNameOf: #SuperclassVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)