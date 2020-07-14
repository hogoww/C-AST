generation-visit
generateAbstractVisitOf: aFMXClass
	"add an empty behavior visit method"

	| method className |
	className := aFMXClass name.
	method := (className asVisitClassSelector)
		asMethodWithBody: [ :anInstance | ]
		withArguments: { #anInstance -> className asAnInstance } asDictionary.
	
	abstractVisitorClass compile: method asString classified:  'visiting'