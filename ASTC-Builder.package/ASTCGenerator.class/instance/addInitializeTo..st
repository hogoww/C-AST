generation-state
addInitializeTo: aFMXClass
	| collectionsToInitialize method |
	
	collectionsToInitialize := (aFMXClass relations 
		select: [:aRelation| aRelation side otherSide isContainer and:[ aRelation side isMany ]] 
		thenCollect:[:aRelation| aRelation side name]) asArray.
	
	collectionsToInitialize ifEmpty:[ ^ self ].
	
	method := 'initialize' asMethodWithBody: [ collectionsToInitialize := collectionsType new ].
	
	aFMXClass realClass compile: method asString classified: 'accessing'