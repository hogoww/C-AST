generation-visit
generateDebugVisitOf: aFMXClass
	| method body anInstance visitClass collections singleElements propertyName isType |
	anInstance := aFMXClass name asAnInstance.
	
	visitClass :=  aFMXClass name asVisitClassSelector.
	body := [ :aClass | super visitClass: {aClass} ] asPlainCodeBC.

	collections := OrderedCollection new.
	singleElements := OrderedCollection new.
	
	aFMXClass relations do:[:aRelation| aRelation side otherSide isContainer 
		ifTrue:[ aRelation side isMany 
			ifTrue:[ collections add: aRelation side ] 
			ifFalse: [ singleElements add: aRelation side ]]].
	
	(collections isEmpty and:[singleElements isEmpty]) ifTrue:[ ^ self ].
	
	collections do:[:relationSide|
		propertyName := relationSide name.
		isType := String streamContents:[:s| s << 'is' << relationSide otherSide relatedClass name ].
		body add: [:aClass | aClass propertyName 
			ifNotNil:[:aCollection | 
				aCollection do:[:aMember| self assert: aMember isType ]]]
		withArguments: {#aCollection -> propertyName. #aMember -> (propertyName asAnInstance) } asDictionary ].
	"Extended dictionary because of limitation of plainCode."
	singleElements do:[:relationSide|
		propertyName := relationSide name.
		isType := String streamContents:[:s| s << 'is' << relationSide otherSide relatedClass name ].
		body add: [:aClass| aClass propertyName ifNotNil:[:aPropertyName| self assert: aPropertyName isType ]] 
			withArguments: {#aPropertyName -> relationSide name asAnInstance } asDictionary ].

	method 
	:= visitClass
		asMethodWithBody: body
		withArguments: {(#aClass -> anInstance )} asDictionary.
		
	debugStructureVisitorClass compile: method asString classified: 'visiting'  