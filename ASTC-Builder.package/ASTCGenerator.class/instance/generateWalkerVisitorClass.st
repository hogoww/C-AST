generation-visitor-classes
generateWalkerVisitorClass
	"Walker --> Abstract"
	walkerVisitorClass := abstractVisitorClass subclass: (self fullNameOf: #WalkerVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)
