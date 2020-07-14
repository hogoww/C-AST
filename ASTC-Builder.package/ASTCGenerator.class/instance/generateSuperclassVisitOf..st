generation-visit
generateSuperclassVisitOf: aFMXClass

	| method className |
	
	className := aFMXClass name.
	
	method := className asVisitClassSelector
		asMethodWithBody: (self visitSuperClassBody: aFMXClass)
		withArguments: {#anInstance -> className asAnInstance} asDictionary.
			
	superclassVisitorClass compile: method asString classified: #visiting