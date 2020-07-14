*ASTC-Builder
asAnInstance: isPlural
	"returns a string (given as a String) with the following format to the classic arguments names: aClass, anObject [...]"

	"('Generator' asAnInstance: false) >>> 'aGenerator'"
	"('Property' asAnInstance: true) >>> 'properties'"
	"('identifier' asAnInstance: true) >>> 'identifiers'"
	"('expression' asAnInstance: false) >>> 'anExpression'"
	
	^ isPlural
		ifTrue: [ 'some',self capitalized asEnglishPlural ]
		ifFalse: [ self asAnInstance ]