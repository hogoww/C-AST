*ASTC-Core-Extensions
removeFunctionNamed: aString

	definitions removeAllSuchThat: [ :f | f isNamed: aString ].
	functionDeclarations removeAllSuchThat: [ :f | f isNamed: aString ]