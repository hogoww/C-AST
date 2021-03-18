*ASTC-Core-Extensions
functionNamed: aSelector extract: aBoolean
	cFiles do: [ :aCFile | (aCFile functionNamed: aSelector extract: aBoolean) ifNotNil: [ :res | ^ res ] ].
	^ NotFound signal