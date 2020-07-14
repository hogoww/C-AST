generation-visit
generateSubclassResponsibilityVisitOf: aFMXClass
	"add an empty behavior visit method"

	| method className |
	className := aFMXClass name.
	method := (className asVisitClassSelector)
		asMethodWithBody: [ :anInstance | self subclassResponsibility ]
		withArguments: { #anInstance -> className asAnInstance } asDictionary.

	subclassResponsibilityVisitorClass compile: method asString classified: 'visiting'