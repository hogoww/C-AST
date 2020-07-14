generating-support
addAcceptVisitorOf: aFMXClass
	| method visitClass |
	visitClass := aFMXClass name asVisitClassSelector.
	method := 'acceptVisitor:' asMethodWithBody: [:aVisitor| ^ aVisitor visitClass: {self} ].

	aFMXClass realClass compile: method asString classified: 'visiting'