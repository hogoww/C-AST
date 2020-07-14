generation-visit
generatePrinterVisit: aFMXClass
	"generate a #printProperties selector that will call every property asString"
	"The result will keep the order of the definitions in the metamodel"
	| method visitSomething stream currentDepth aClassWithQuotes aClass propertiesNames |
	aClass := aFMXClass name asAnInstance.
	aClassWithQuotes:= '''',aClass,''''.
	visitSomething := aFMXClass name asVisitClassSelector.
	
	propertiesNames := aFMXClass properties 
		select: [:aProp| aProp isTypedProperty and:[ aProp name ~= #pharoNode] ] 
		thenCollect:#name.

	method := visitSomething asMethodWithBody:[:anInstance|
		stream cr.

		self printTabCount: currentDepth.
		stream << $( ;
			<< aClassWithQuotes ;
			space.

		stream print: anInstance propertiesNames.
		
		currentDepth := currentDepth+1.
		super visitSomething:{aClass}.
		currentDepth := currentDepth-1.
		stream << ')'.
	] withArguments: {#anInstance -> aClass} asDictionary.
	printerVisitorClass compile: method asString classified:  'visiting'.	