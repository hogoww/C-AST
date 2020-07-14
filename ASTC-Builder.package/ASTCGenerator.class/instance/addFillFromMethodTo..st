generation-fillFrom
addFillFromMethodTo: aRootClass
	| methodSTring |
	"since we're using exactly the same, a string's enough. No replacement to do."
	methodSTring := 'fillFrom: aCollection with: aBlock
	"same method as Collection >> #fillFrom:with:"	
	"enables the use of collect."	
	aCollection do: [ :each | self add: (aBlock value: each) ]'.

	aRootClass realClass compile: methodSTring classified: 'enumerating'