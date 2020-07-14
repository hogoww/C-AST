generation-visitor-classes
generateAbstractVisitorClass
	"Abstract --> Object"
	abstractVisitorClass := Object subclass: (self fullNameOf: #Visitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)