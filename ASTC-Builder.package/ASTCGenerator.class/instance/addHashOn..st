generation-testing
addHashOn: aFMXClass
	| method body visitClass propertyName properties relations |


	visitClass :=  aFMXClass name asVisitClassSelector.
	
	properties := aFMXClass properties select: [ :aProperty | aProperty isTypedProperty and: [ (#pharoNode = aProperty name) not ] ] 
		thenCollect: [ :aProperty | aProperty name ].
	relations := aFMXClass relations select: [ :aRelation | (#parent = aRelation side name) not and:[ aRelation side otherSide isContainer ] ]
		thenCollect: [ :aRelation | aRelation side name ].

	body :=[ | hash | hash := 0 ] asPlainCodeBC.
	
	properties , relations do: [ :aSlot |
		body + [ | hash | hash := hash + aSlot hash ]
		].

	body + [ | hash | ^ hash ].
						
	method := 'hash'
		asMethodWithBody: body.
	
	aFMXClass realClass compile: method asString classified: 'comparing'