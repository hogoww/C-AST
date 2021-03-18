*ASTC-Core-Extensions
functionNamed: aString extract: aBoolean
	| function |
	function := (implementation functionNamed: aString extract: aBoolean) ifNil: [ ^ nil ].
	self hasHeader ifTrue: [ header removeFunctionNamed: aString ].
	^ function