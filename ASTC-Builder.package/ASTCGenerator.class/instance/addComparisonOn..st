generation-testing
addComparisonOn: aFMXClass
	| method body aClass visitClass propertyName |
	aClass := aFMXClass name asAnInstance.

	visitClass :=  aFMXClass name asVisitClassSelector.
	body :=[:anInstance| ] asPlainCodeBC.
	
	aFMXClass classGeneralization ifNotNil:[:aSuper|
		body + [ :anInstance | super = anInstance  ifFalse:[ ^ false ] ].
		].

	aFMXClass properties do:[:aProperty|
		aProperty isTypedProperty ifTrue:[
			propertyName := aProperty name.
			(#(#pharoNode) includes: propertyName) ifFalse:[
				body + [:anInstance| propertyName = anInstance propertyName ifFalse:[ ^ false ]]
			]]
		].

	aFMXClass relations do:[:aRelation| aRelation side otherSide isContainer 
		ifTrue:[
			propertyName := aRelation side name.
			(#(#parent) includes: propertyName) ifFalse: [ 
			body + [:anInstance| propertyName = anInstance propertyName ifFalse:[ ^ false ]]]
		]].
	
	body + [ ^ true ].
						
	method := '='
		asMethodWithBody: body
		withArguments: {(#anInstance -> aClass )} asDictionary.
	
	aFMXClass realClass compile: method asString classified: 'testing'