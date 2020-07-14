enumerating
fillFrom: aCollection with: aBlock
	"same method as Collection >> #fillFrom:with:"	
	"enables the use of collect."	
	aCollection do: [ :each | self add: (aBlock value: each) ]