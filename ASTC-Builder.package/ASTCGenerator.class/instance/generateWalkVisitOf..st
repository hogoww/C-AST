generation-visit
generateWalkVisitOf: aFMXClass
	"add an empty behavior visit method"

	| method body aClass visitClass collections singleElements |
	aClass := aFMXClass name asAnInstance.

	visitClass := aFMXClass name asVisitClassSelector.
	body := [ :anInstance | ] asPlainCodeBC.
	
	collections := OrderedCollection new.
	singleElements := OrderedCollection new.
	aFMXClass allRelations do:[:aRelation| aRelation side otherSide isContainer 
		ifTrue:[ aRelation side isMany 
			ifTrue:[ collections add: aRelation side name ] 
			ifFalse: [ singleElements add: aRelation side name ]]].
	
	collections do:[:propertyName|
		body add: [:anInstance| anInstance propertyName
			ifNotNil:[:aCollection| aCollection 
				do:[:aMember| aMember acceptVisitor: self ]]]
		withArguments: {#aCollection -> propertyName . #aMember -> propertyName asAnInstance } asDictionary ].
	
	singleElements do:[:propertyName|
		body add: [:anInstance| anInstance propertyName 
					ifNotNil:[:aPropertyName| aPropertyName acceptVisitor: self ] ] 
			withArguments: {#aPropertyName -> propertyName asAnInstance } asDictionary ].
		
								
	method := visitClass
		asMethodWithBody: body
		withArguments: {(#anInstance -> aClass )} asDictionary.

	walkerVisitorClass compile: method asString classified: 'visiting'