generation-fillFrom
addAddMethodOn: aRootClass
	"Methods adding to a collection should return true if they actually added a node to a collection.
	return false by default.
	This allows to generate a general add method, with overridable hooks that will allow #fill:from:, and therefore collect & co usage."
	| body method |
	
	body := [ :aNode | ] asPlainCodeBC.
	
	builder classes do: [ :aClass |
			| isClass addClass |
			isClass := aClass name asTesterSelector.
			addClass := aClass name asAddSelector.
			body addFirst: [ :aNode | (aNode isClass and: [ self addClass: { aNode } ]) ifTrue: [ ^ self ] ].
			
			"By default, we can't add anything to a node of the RootClass, therefore everything returns false"
			aRootClass realClass compile:
				(addClass asMethodWithBody: [ :aNode | ^ false ]) asString 
				classified: 'fillFram-support'
		].
	body + [ :aNode | TypeError new actualType: aNode class name; signal ].
	
	method := #add: asMethodWithBody: body.

	aRootClass realClass compile: method asString classified: 'fillFram-support'