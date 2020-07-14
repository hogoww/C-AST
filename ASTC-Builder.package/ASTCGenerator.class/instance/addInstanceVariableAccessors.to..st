generation-state
addInstanceVariableAccessors: aProperty to: aFMXClass
	| propertyName  aPropertyName method methodName anElement |
	
	propertyName := aProperty name.
	aPropertyName := (aProperty isRelationSide and:[ aProperty isMany ]) 
		ifTrue: [ aProperty otherSide relatedClass name asAnInstance: aProperty isMany ]
		ifFalse: [ propertyName asAnInstance ].
	"getter"
	method := propertyName asMethodWithBody: 
				[ ^ propertyName ].
	aFMXClass realClass compile: method asString classified: 'accessing'.

	"setter"
	methodName := propertyName,':'. " aProperty: "
	method := methodName asMethodWithBody:
		(((aProperty isTypedProperty or:[ aProperty name = #parent ]) ifTrue:[[]]
		ifFalse:[
			aProperty isMany
			ifTrue:[ [ aPropertyName do:[:each| each parent: self]]]
			ifFalse:[	[ aPropertyName ifNotNil: [aPropertyName parent: self] ]]]) +
		[:anInstance | propertyName := aPropertyName ])
		withArguments:{ #anInstance -> aPropertyName } asDictionary.
	
	aFMXClass realClass compile: method asString classified: 'accessing'.

	(aProperty isRelationSide and: [ aProperty isMany ]) ifFalse:[ ^ self ].

	self flag:#improvement. "Needs to be better to go from plural to singular"
	anElement := ((propertyName first isVowel ifTrue:[ 'an' ] ifFalse:[ 'a' ]) , propertyName capitalized) removeSuffix:'s'. "aProperty from propertys (not a typo..)"
	methodName := 'add' , (propertyName capitalized removeSuffix:'s') , ':'. " addProperty: "
	method :=	 methodName asMethodWithBody: 
		[:anElem| 
		anElem parent: self.
		propertyName add: anElem.
		^ true ] "see self class >> addFillFromSupportTo: for why we return true !"
		withArguments: { #anElem -> anElement } asDictionary.
	
	aFMXClass realClass compile: method asString classified: 'accessing'
