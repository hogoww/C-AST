generation-visit
generateValidatorVisitOf: aFMXClass
	"add an empty behavior visit method"

	| method body anInstance visitClass 
	errors | "IV of the visitor"
	anInstance := aFMXClass name asAnInstance.


	visitClass :=  aFMXClass name asVisitClassSelector.
	body := [ :aClass | 
		[ super visitClass: {aClass} ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
		].
	
			
	method := visitClass
		asMethodWithBody: body
		withArguments: {(#aClass -> anInstance )} asDictionary.
		
	structureValidatorVisitorClass compile: method asString classified: 'visiting'  