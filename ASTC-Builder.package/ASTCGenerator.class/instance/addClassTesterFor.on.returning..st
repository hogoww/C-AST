generation-testing
addClassTesterFor: aFMXClass on: aTargetFMXClass returning: aBoolean
	| methodBody isClass |
	isClass := aFMXClass name asTesterSelector.
	self flag: #PPCLiteral.
	methodBody := aBoolean "PlainPharoCode limitation. Should be changed when it'll work well."
		ifTrue: [ isClass asMethodWithBody: [ ^ true ] ]
		ifFalse: [ isClass asMethodWithBody: [ ^ false ] ].

	aTargetFMXClass realClass compile: methodBody asString classified: 'testing'